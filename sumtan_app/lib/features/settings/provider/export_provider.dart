import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/export_service.dart';

enum ExportStatus { idle, loading, success, error }

class ExportState {
  final ExportStatus status;
  final double progress;
  final String message;
  final String? errorMessage;
  final List<ExportHistoryItem> history;

  const ExportState({
    this.status = ExportStatus.idle,
    this.progress = 0,
    this.message = '',
    this.errorMessage,
    this.history = const [],
  });

  ExportState copyWith({
    ExportStatus? status,
    double? progress,
    String? message,
    String? errorMessage,
    List<ExportHistoryItem>? history,
  }) {
    return ExportState(
      status: status ?? this.status,
      progress: progress ?? this.progress,
      message: message ?? this.message,
      errorMessage: errorMessage,
      history: history ?? this.history,
    );
  }
}

class ExportNotifier extends StateNotifier<ExportState> {
  ExportNotifier(this._service) : super(const ExportState()) {
    loadHistory();
  }

  final ExportService _service;

  Future<void> loadHistory() async {
    try {
      final history = await _service.loadHistory();
      state = state.copyWith(history: history);
    } catch (_) {}
  }

  Future<void> startExport({Rect? sharePositionOrigin}) async {
    state = ExportState(
      status: ExportStatus.loading,
      progress: 0,
      message: '내보내기를 준비 중...',
      history: state.history,
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
        history: await _service.loadHistory(),
      );
    } catch (error) {
      state = state.copyWith(
        status: ExportStatus.error,
        errorMessage: error.toString(),
      );
    }
  }

  Future<void> shareHistoryItem(
    ExportHistoryItem item, {
    Rect? sharePositionOrigin,
  }) async {
    try {
      await _service.shareHistoryItem(
        item,
        sharePositionOrigin: sharePositionOrigin,
      );
      state = state.copyWith(history: await _service.loadHistory());
    } catch (error) {
      state = state.copyWith(
        status: ExportStatus.error,
        errorMessage: error.toString(),
        history: await _service.loadHistory(),
      );
    }
  }

  void reset() => state = ExportState(history: state.history);
}

final exportProvider = StateNotifierProvider<ExportNotifier, ExportState>(
  (ref) => ExportNotifier(ExportService()),
);
