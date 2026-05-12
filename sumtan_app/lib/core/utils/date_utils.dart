import 'package:intl/intl.dart';

String toIso8601(DateTime dt) => dt.toIso8601String();

DateTime fromIso8601(String s) => DateTime.parse(s);

String get _locale => Intl.defaultLocale ?? 'en';

String formatDate(DateTime dt) => DateFormat.yMMMMEEEEd(_locale).format(dt);

String formatTime(DateTime dt) => DateFormat.jm(_locale).format(dt);

String formatDateTime(DateTime dt) =>
    DateFormat.yMd(_locale).add_jm().format(dt);

String formatMonthDay(DateTime dt) => DateFormat.MMMd(_locale).format(dt);

String formatMonthYear(DateTime dt) => DateFormat.yMMMM(_locale).format(dt);

String timeAgo(DateTime dt) {
  final diff = DateTime.now().difference(dt);
  if (_locale.startsWith('ko')) {
    if (diff.inMinutes < 60) return '${diff.inMinutes}분 전';
    if (diff.inHours < 24) return '${diff.inHours}시간 전';
    return '${diff.inDays}일 전';
  }
  if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
  if (diff.inHours < 24) return '${diff.inHours} hr ago';
  return '${diff.inDays} days ago';
}
