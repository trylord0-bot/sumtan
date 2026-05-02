import 'package:intl/intl.dart';

String toIso8601(DateTime dt) => dt.toIso8601String();

DateTime fromIso8601(String s) => DateTime.parse(s);

String formatDate(DateTime dt) =>
    DateFormat('yyyy년 MM월 dd일 (E)', 'ko').format(dt);

String formatTime(DateTime dt) =>
    DateFormat('HH:mm', 'ko').format(dt);

String formatDateTime(DateTime dt) =>
    DateFormat('yyyy.MM.dd HH:mm', 'ko').format(dt);

String formatMonthDay(DateTime dt) =>
    DateFormat('M월 d일', 'ko').format(dt);

String formatMonthYear(DateTime dt) =>
    DateFormat('yyyy년 M월', 'ko').format(dt);

String timeAgo(DateTime dt) {
  final diff = DateTime.now().difference(dt);
  if (diff.inMinutes < 60) return '${diff.inMinutes}분 전';
  if (diff.inHours < 24) return '${diff.inHours}시간 전';
  return '${diff.inDays}일 전';
}
