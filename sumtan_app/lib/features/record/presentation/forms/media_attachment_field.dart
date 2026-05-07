import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';
import 'package:video_player/video_player.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import 'form_widgets.dart';

enum RecordMediaType {
  photo,
  video;

  String get jsonValue => this == RecordMediaType.photo ? 'photo' : 'video';

  static RecordMediaType fromPath(String path) {
    final ext = p.extension(path).toLowerCase();
    return ['.mp4', '.mov', '.m4v', '.avi', '.webm'].contains(ext)
        ? RecordMediaType.video
        : RecordMediaType.photo;
  }
}

class RecordMediaItem {
  final RecordMediaType type;
  final String path;
  final String? fileName;
  final bool saved;

  const RecordMediaItem({
    required this.type,
    required this.path,
    this.fileName,
    this.saved = false,
  });

  Map<String, dynamic> toJson() => {
        'type': type.jsonValue,
        'file_name': fileName ?? p.basename(path),
        'path': path,
      };

  factory RecordMediaItem.fromJson(Map<String, dynamic> json) {
    final type = json['type'] == 'video'
        ? RecordMediaType.video
        : RecordMediaType.photo;
    final path = json['path'] as String? ?? '';
    return RecordMediaItem(
      type: type,
      path: path,
      fileName: json['file_name'] as String?,
      saved: true,
    );
  }
}

class RecordMediaController extends ChangeNotifier {
  final List<RecordMediaItem> _items;

  RecordMediaController({List<RecordMediaItem> initialItems = const []})
      : _items = List.of(initialItems);

  List<RecordMediaItem> get items => List.unmodifiable(_items);

  void addPicked(XFile file) {
    _items.add(RecordMediaItem(
      type: RecordMediaType.fromPath(file.path),
      path: file.path,
    ));
    notifyListeners();
  }

  void addPickedMany(List<XFile> files) {
    if (files.isEmpty) return;
    _items.addAll(files.map((file) => RecordMediaItem(
          type: RecordMediaType.fromPath(file.path),
          path: file.path,
        )));
    notifyListeners();
  }

  void remove(RecordMediaItem item) {
    _items.remove(item);
    notifyListeners();
  }

  Future<List<Map<String, dynamic>>> saveToLocalFiles() async {
    if (kIsWeb) return [];
    final dir = Directory(
      p.join((await getApplicationDocumentsDirectory()).path, 'record_media'),
    );
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }

    final persisted = <RecordMediaItem>[];
    for (final item in _items) {
      if (item.saved) {
        persisted.add(item);
        continue;
      }
      final source = File(item.path);
      if (!await source.exists()) continue;
      final ext = p.extension(item.path).isEmpty
          ? (item.type == RecordMediaType.video ? '.mp4' : '.jpg')
          : p.extension(item.path);
      final fileName = '${const Uuid().v4()}$ext';
      final destPath = p.join(dir.path, fileName);
      await source.copy(destPath);
      persisted.add(RecordMediaItem(
        type: item.type,
        path: destPath,
        fileName: fileName,
        saved: true,
      ));
    }

    _items
      ..clear()
      ..addAll(persisted);
    notifyListeners();
    return persisted.map((item) => item.toJson()).toList();
  }
}

class RecordMediaAttachmentField extends StatefulWidget {
  final RecordMediaController controller;

  const RecordMediaAttachmentField({
    super.key,
    required this.controller,
  });

  @override
  State<RecordMediaAttachmentField> createState() =>
      _RecordMediaAttachmentFieldState();
}

class _RecordMediaAttachmentFieldState
    extends State<RecordMediaAttachmentField> {
  final _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onChanged);
  }

  @override
  void didUpdateWidget(covariant RecordMediaAttachmentField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_onChanged);
      widget.controller.addListener(_onChanged);
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onChanged);
    super.dispose();
  }

  void _onChanged() => setState(() {});

  Future<void> _showPickerSheet() async {
    await showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => _MediaPickerSheet(
        onCamera: _pickFromCamera,
        onGallery: _pickFromGallery,
      ),
    );
  }

  Future<void> _pickFromCamera() async {
    Navigator.pop(context);
    final choice = await showModalBottomSheet<RecordMediaType>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => const _CameraModeSheet(),
    );
    if (choice == null) return;
    try {
      final picked = choice == RecordMediaType.video
          ? await _picker.pickVideo(source: ImageSource.camera)
          : await _picker.pickImage(source: ImageSource.camera);
      if (picked != null) widget.controller.addPicked(picked);
    } catch (_) {
      if (mounted) await _showPermissionDialog();
    }
  }

  Future<void> _pickFromGallery() async {
    Navigator.pop(context);
    try {
      final picked = await _picker.pickMultipleMedia();
      widget.controller.addPickedMany(picked);
    } catch (_) {
      if (mounted) await _showPermissionDialog();
    }
  }

  Future<void> _showPermissionDialog() async {
    final openSettings = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('설정에서 권한을 허용해 주세요'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('취소'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('설정 열기'),
          ),
        ],
      ),
    );
    if (openSettings == true) {
      await openAppSettings();
    }
  }

  Future<void> _openPreview(RecordMediaItem item) async {
    final deleted = item.type == RecordMediaType.video
        ? await Navigator.of(context).push<bool>(
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (_) => _VideoPreviewPage(item: item),
            ),
          )
        : await Navigator.of(context).push<bool>(
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (_) => _PhotoPreviewPage(item: item),
            ),
          );
    if (deleted == true) widget.controller.remove(item);
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.controller.items;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormFieldLabel(
          items.isEmpty ? '사진 · 동영상' : '사진 · 동영상 · ${items.length}개',
          required: false,
        ),
        const SizedBox(height: AppSpacing.space2),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final item in items)
              _MediaThumbnail(
                item: item,
                onTap: () => _openPreview(item),
              ),
            _AddMediaButton(
              showLabel: items.isEmpty,
              onTap: _showPickerSheet,
            ),
          ],
        ),
      ],
    );
  }
}

class _MediaThumbnail extends StatelessWidget {
  final RecordMediaItem item;
  final VoidCallback onTap;

  const _MediaThumbnail({required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: 72,
          height: 72,
          child: Stack(
            fit: StackFit.expand,
            children: [
              if (item.type == RecordMediaType.photo)
                Image.file(File(item.path), fit: BoxFit.cover)
              else
                _VideoThumb(path: item.path),
              if (item.type == RecordMediaType.video)
                Container(
                  color: Colors.black.withValues(alpha: 0.22),
                  alignment: Alignment.center,
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.85),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      size: 18,
                      color: AppColors.gray900,
                    ),
                  ),
                ),
              Positioned(
                left: 4,
                bottom: 4,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.55),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Icon(
                    item.type == RecordMediaType.photo
                        ? Icons.photo_camera
                        : Icons.movie,
                    size: 12,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _VideoThumb extends StatefulWidget {
  final String path;

  const _VideoThumb({required this.path});

  @override
  State<_VideoThumb> createState() => _VideoThumbState();
}

class _VideoThumbState extends State<_VideoThumb> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    if (!kIsWeb) {
      _controller = VideoPlayerController.file(File(widget.path))
        ..initialize().then((_) {
          if (mounted) setState(() {});
        });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;
    if (controller != null && controller.value.isInitialized) {
      return FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: controller.value.size.width,
          height: controller.value.size.height,
          child: VideoPlayer(controller),
        ),
      );
    }
    return Container(
      color: AppColors.gray900,
      child: const Icon(Icons.movie, color: AppColors.gray300),
    );
  }
}

class _AddMediaButton extends StatelessWidget {
  final bool showLabel;
  final VoidCallback onTap;

  const _AddMediaButton({required this.showLabel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomPaint(
        painter: _DashedBorderPainter(),
        child: SizedBox(
          width: 72,
          height: 72,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add, size: 24, color: AppColors.gray400),
              if (showLabel)
                const Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Text(
                    '미디어 추가',
                    style: TextStyle(fontSize: 9, color: AppColors.gray400),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.gray300
      ..strokeWidth = 1.6
      ..style = PaintingStyle.stroke;
    final rrect = RRect.fromRectAndRadius(
      Offset.zero & size,
      const Radius.circular(10),
    );
    final path = Path()..addRRect(rrect);
    for (final metric in path.computeMetrics()) {
      var distance = 0.0;
      while (distance < metric.length) {
        canvas.drawPath(metric.extractPath(distance, distance + 5), paint);
        distance += 9;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _MediaPickerSheet extends StatelessWidget {
  final VoidCallback onCamera;
  final VoidCallback onGallery;

  const _MediaPickerSheet({
    required this.onCamera,
    required this.onGallery,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: const EdgeInsets.only(bottom: 28),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 36,
              height: 4,
              margin: const EdgeInsets.only(top: 14, bottom: 8),
              decoration: BoxDecoration(
                color: AppColors.gray300,
                borderRadius: BorderRadius.circular(999),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                '미디어 추가 방법 선택',
                style: TextStyle(fontSize: 13, color: AppColors.gray400),
              ),
            ),
            _PickerRow(
              icon: Icons.photo_camera,
              iconBg: AppColors.primary100,
              title: '카메라로 촬영',
              subtitle: '사진 또는 동영상 촬영',
              onTap: onCamera,
            ),
            const Divider(height: 1, color: AppColors.gray100, indent: 20, endIndent: 20),
            _PickerRow(
              icon: Icons.photo_library,
              iconBg: AppColors.info200,
              title: '갤러리에서 선택',
              subtitle: '사진 · 동영상 다중 선택 가능',
              onTap: onGallery,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.gray100,
                    foregroundColor: AppColors.gray700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('취소'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CameraModeSheet extends StatelessWidget {
  const _CameraModeSheet();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _PickerRow(
              icon: Icons.photo_camera,
              iconBg: AppColors.primary100,
              title: '사진 촬영',
              subtitle: '카메라로 사진을 촬영',
              onTap: () => Navigator.pop(context, RecordMediaType.photo),
            ),
            _PickerRow(
              icon: Icons.videocam,
              iconBg: AppColors.info200,
              title: '동영상 촬영',
              subtitle: '카메라로 동영상을 촬영',
              onTap: () => Navigator.pop(context, RecordMediaType.video),
            ),
          ],
        ),
      ),
    );
  }
}

class _PickerRow extends StatelessWidget {
  final IconData icon;
  final Color iconBg;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _PickerRow({
    required this.icon,
    required this.iconBg,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(color: iconBg, shape: BoxShape.circle),
              child: Icon(icon, color: AppColors.gray700),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gray900,
                  )),
                  const SizedBox(height: 2),
                  Text(subtitle, style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.gray400,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PhotoPreviewPage extends StatelessWidget {
  final RecordMediaItem item;

  const _PhotoPreviewPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: InteractiveViewer(
              minScale: 0.8,
              maxScale: 4,
              child: Image.file(File(item.path), fit: BoxFit.contain),
            ),
          ),
          _PreviewCloseButton(onTap: () => Navigator.pop(context, false)),
          _PreviewDeleteButton(
            label: '이 사진 삭제',
            onTap: () async {
              final ok = await _confirmDelete(context, '사진을 삭제할까요?');
              if (ok && context.mounted) Navigator.pop(context, true);
            },
          ),
        ],
      ),
    );
  }
}

class _VideoPreviewPage extends StatefulWidget {
  final RecordMediaItem item;

  const _VideoPreviewPage({required this.item});

  @override
  State<_VideoPreviewPage> createState() => _VideoPreviewPageState();
}

class _VideoPreviewPageState extends State<_VideoPreviewPage> {
  late final VideoPlayerController _controller;
  Timer? _fadeTimer;
  bool _visible = true;
  bool _muted = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(File(widget.item.path))
      ..initialize().then((_) {
        if (!mounted) return;
        _controller
          ..setVolume(0)
          ..play();
        setState(() {});
        _scheduleFade();
      });
    _controller.addListener(_syncState);
  }

  void _syncState() {
    if (mounted) setState(() {});
  }

  void _scheduleFade() {
    _fadeTimer?.cancel();
    if (!_controller.value.isPlaying) return;
    _fadeTimer = Timer(const Duration(seconds: 3), () {
      if (mounted && _controller.value.isPlaying) {
        setState(() => _visible = false);
      }
    });
  }

  void _showControls() {
    setState(() => _visible = true);
    _scheduleFade();
  }

  @override
  void dispose() {
    _fadeTimer?.cancel();
    _controller
      ..removeListener(_syncState)
      ..dispose();
    super.dispose();
  }

  String _format(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final initialized = _controller.value.isInitialized;
    final playing = _controller.value.isPlaying;
    final controlsVisible = _visible || !playing;

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _showControls,
        child: Stack(
          children: [
            Center(
              child: initialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          VideoPlayer(_controller),
                          if (!playing)
                            const Center(
                              child: Icon(
                                Icons.play_arrow,
                                size: 60,
                                color: AppColors.white,
                              ),
                            ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: AnimatedOpacity(
                              opacity: controlsVisible ? 1 : 0,
                              duration: const Duration(milliseconds: 250),
                              child: _VideoControls(
                                controller: _controller,
                                muted: _muted,
                                format: _format,
                                onPlayToggle: () {
                                  playing ? _controller.pause() : _controller.play();
                                  _showControls();
                                },
                                onMuteToggle: () {
                                  setState(() => _muted = !_muted);
                                  _controller.setVolume(_muted ? 0 : 1);
                                  _showControls();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : const CircularProgressIndicator(color: AppColors.primary500),
            ),
            AnimatedOpacity(
              opacity: controlsVisible ? 1 : 0,
              duration: const Duration(milliseconds: 250),
              child: _PreviewCloseButton(
                onTap: () {
                  _controller.pause();
                  Navigator.pop(context, false);
                },
              ),
            ),
            AnimatedOpacity(
              opacity: controlsVisible ? 1 : 0,
              duration: const Duration(milliseconds: 250),
              child: _PreviewDeleteButton(
                label: '이 동영상 삭제',
                onTap: () async {
                  final wasPlaying = _controller.value.isPlaying;
                  await _controller.pause();
                  final ok = await _confirmDelete(context, '동영상을 삭제할까요?');
                  if (ok && context.mounted) {
                    Navigator.pop(context, true);
                  } else if (wasPlaying) {
                    await _controller.play();
                    _scheduleFade();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _VideoControls extends StatelessWidget {
  final VideoPlayerController controller;
  final bool muted;
  final String Function(Duration duration) format;
  final VoidCallback onPlayToggle;
  final VoidCallback onMuteToggle;

  const _VideoControls({
    required this.controller,
    required this.muted,
    required this.format,
    required this.onPlayToggle,
    required this.onMuteToggle,
  });

  @override
  Widget build(BuildContext context) {
    final value = controller.value;
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 28, 14, 12),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Color(0xBF000000)],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(format(value.position), style: _timeStyle),
              Expanded(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: AppColors.primary500,
                    inactiveTrackColor: Colors.white30,
                    thumbColor: AppColors.white,
                    trackHeight: 3,
                  ),
                  child: Slider(
                    min: 0,
                    max: value.duration.inMilliseconds <= 0
                        ? 1.0
                        : value.duration.inMilliseconds.toDouble(),
                    value: value.position.inMilliseconds
                        .clamp(0, value.duration.inMilliseconds)
                        .toDouble(),
                    onChanged: (v) {
                      controller.seekTo(Duration(milliseconds: v.round()));
                    },
                  ),
                ),
              ),
              Text(format(value.duration), style: _timeStyle),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: onPlayToggle,
                icon: Icon(
                  value.isPlaying ? Icons.pause : Icons.play_arrow,
                  color: AppColors.white,
                ),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: onMuteToggle,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white.withValues(alpha: 0.15),
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                icon: Icon(muted ? Icons.volume_off : Icons.volume_up, size: 16),
                label: Text(muted ? '음소거' : '소리 켜짐'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static const _timeStyle = TextStyle(
    fontSize: 10,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
}

class _PreviewCloseButton extends StatelessWidget {
  final VoidCallback onTap;

  const _PreviewCloseButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 12, right: 16),
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close, color: AppColors.white, size: 20),
            ),
          ),
        ),
      ),
    );
  }
}

class _PreviewDeleteButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _PreviewDeleteButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: TextButton.icon(
            onPressed: onTap,
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xDDEF4444),
              foregroundColor: AppColors.white,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            icon: const Icon(Icons.delete_outline, size: 18),
            label: Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
          ),
        ),
      ),
    );
  }
}

Future<bool> _confirmDelete(BuildContext context, String title) async {
  return await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(title, textAlign: TextAlign.center),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              style: TextButton.styleFrom(
                backgroundColor: AppColors.gray100,
                foregroundColor: AppColors.gray700,
              ),
              child: const Text('취소'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFEF4444),
                foregroundColor: AppColors.white,
              ),
              child: const Text('삭제'),
            ),
          ],
        ),
      ) ??
      false;
}
