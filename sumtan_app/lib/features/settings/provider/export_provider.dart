import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/export_service.dart';

enum ExportStatus { idle, loading, success, error }

class ExportState {
  final ExportStatus status;
  final double progress;
  final String message;
  final String? errorMessage;

  const ExportState({
    this.status = ExportStatus.idle,
    this.progress = 0,
    this.message = '',
    this.errorMessage,
  });

  ExportState copyWith({
    ExportStatus? status,
    double? progress,
    String? message,
    String? errorMessage,
  }) {
    return ExportState(
      status: status ?? this.status,
      progress: progress ?? this.progress,
      message: message ?? this.message,
      errorMessage: errorMessage,
    );
  }
}

class ExportNotifier extends StateNotifier<ExportState> {
  ExportNotifier(this._service) : super(const ExportState());

  final ExportService _service;

  Future<void> startExport({Rect? sharePositionOrigin}) async {
    state = const ExportState(
      status: ExportStatus.loading,
      progress: 0,
      message: '내보내기를 준비 중...',
    );
    try {
      await _service.exportAndShare(
        onProgress: (progress, message) {
          state = state.copyWith(progress: progress, message: message);
        },
        sharePositionOrigin: sharePositionOrigin,
      );
      state = state.copyWith(
        status: ExportStatus.success,
        progress: 1,
        message: '내보내기 완료!',
      );
    } catch (error) {
      state = state.copyWith(
        status: ExportStatus.error,
        errorMessage: error.toString(),
      );
    }
  }

  void reset() => state = const ExportState();
}

final exportProvider = StateNotifierProvider<ExportNotifier, ExportState>(
  (ref) => ExportNotifier(ExportService()),
);
