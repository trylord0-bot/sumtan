import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/import_service.dart';

enum ImportStatus { idle, loading, success, error }

class ImportState {
  final ImportStatus status;
  final double progress;
  final String message;
  final String? errorMessage;

  const ImportState({
    this.status = ImportStatus.idle,
    this.progress = 0,
    this.message = '',
    this.errorMessage,
  });

  ImportState copyWith({
    ImportStatus? status,
    double? progress,
    String? message,
    String? errorMessage,
  }) {
    return ImportState(
      status: status ?? this.status,
      progress: progress ?? this.progress,
      message: message ?? this.message,
      errorMessage: errorMessage,
    );
  }
}

class ImportNotifier extends StateNotifier<ImportState> {
  ImportNotifier(this._service) : super(const ImportState());

  final ImportService _service;

  Future<void> startImport(String zipFilePath) async {
    state = const ImportState(
      status: ImportStatus.loading,
      progress: 0,
      message: '가져오기를 준비 중...',
    );
    try {
      await _service.importZip(
        zipFilePath: zipFilePath,
        onProgress: (progress, message) {
          state = state.copyWith(progress: progress, message: message);
        },
      );
      state = state.copyWith(
        status: ImportStatus.success,
        progress: 1,
        message: '가져오기 완료!',
      );
    } catch (error) {
      state = state.copyWith(
        status: ImportStatus.error,
        errorMessage: error.toString(),
      );
    }
  }

  void reset() => state = const ImportState();
}

final importProvider = StateNotifierProvider<ImportNotifier, ImportState>(
  (ref) => ImportNotifier(ImportService()),
);
