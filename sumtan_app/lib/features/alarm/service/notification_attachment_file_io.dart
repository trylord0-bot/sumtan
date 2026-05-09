import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

const _notificationIconAsset = 'assets/icon/app_icon.png';

Future<String?> notificationIconAttachmentPath() async {
  try {
    final data = await rootBundle.load(_notificationIconAsset);
    final directory = await getTemporaryDirectory();
    final file = File('${directory.path}/sumtan_notification_icon.png');
    final bytes = data.buffer.asUint8List(
      data.offsetInBytes,
      data.lengthInBytes,
    );

    await file.writeAsBytes(bytes, flush: true);
    return file.path;
  } catch (_) {
    return null;
  }
}
