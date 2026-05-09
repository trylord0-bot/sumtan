import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_spacing.dart';

Future<DateTime?> showLocalizedDatePicker({
  required BuildContext context,
  required DateTime initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
}) {
  return showDatePicker(
    context: context,
    locale: Localizations.localeOf(context),
    initialDate: initialDate,
    firstDate: firstDate ?? DateTime(1),
    lastDate: lastDate ?? DateTime(9999, 12, 31),
    calendarDelegate: const _FlexibleGregorianCalendarDelegate(),
  );
}

class _FlexibleGregorianCalendarDelegate extends GregorianCalendarDelegate {
  const _FlexibleGregorianCalendarDelegate();

  @override
  DateTime? parseCompactDate(
    String? inputString,
    MaterialLocalizations localizations,
  ) {
    final defaultParsed = super.parseCompactDate(inputString, localizations);
    if (defaultParsed != null) return defaultParsed;

    final digits = inputString?.replaceAll(RegExp(r'\D'), '') ?? '';
    if (digits.length < 6 || digits.length > 8) return null;

    final localeOrder = _datePartOrder(localizations);
    final candidates = <DateTime?>[
      ..._parseYearFirst(digits),
      if (digits.length == 8) _parseByOrder(digits, localeOrder),
      if (digits.length == 8)
        _parseByOrder(
            digits, const [_DatePart.day, _DatePart.month, _DatePart.year]),
      if (digits.length == 8)
        _parseByOrder(
            digits, const [_DatePart.month, _DatePart.day, _DatePart.year]),
    ];

    for (final candidate in candidates) {
      if (candidate != null) return candidate;
    }
    return null;
  }

  List<_DatePart> _datePartOrder(MaterialLocalizations localizations) {
    final formatted = localizations.formatCompactDate(DateTime(1998, 11, 22));
    final parts = <MapEntry<int, _DatePart>>[
      MapEntry(formatted.indexOf('1998'), _DatePart.year),
      MapEntry(formatted.indexOf('11'), _DatePart.month),
      MapEntry(formatted.indexOf('22'), _DatePart.day),
    ]..removeWhere((entry) => entry.key < 0);

    if (parts.length != 3) {
      return const [_DatePart.year, _DatePart.month, _DatePart.day];
    }

    parts.sort((a, b) => a.key.compareTo(b.key));
    return parts.map((entry) => entry.value).toList(growable: false);
  }

  Iterable<DateTime?> _parseYearFirst(String digits) sync* {
    if (digits.length < 6 || digits.length > 8) return;

    final year = int.tryParse(digits.substring(0, 4));
    if (year == null) return;

    final rest = digits.substring(4);
    final monthLengths = switch (rest.length) {
      2 => const [1],
      3 => const [2, 1],
      4 => const [2],
      _ => const <int>[],
    };

    for (final monthLength in monthLengths) {
      final dayLength = rest.length - monthLength;
      if (dayLength < 1 || dayLength > 2) continue;

      final month = int.tryParse(rest.substring(0, monthLength));
      final day = int.tryParse(rest.substring(monthLength));
      yield _validDate(year, month, day);
    }
  }

  DateTime? _parseByOrder(String digits, List<_DatePart> order) {
    final values = <_DatePart, int>{};

    var index = 0;
    for (final part in order) {
      final length = part == _DatePart.year ? 4 : 2;
      values[part] =
          int.tryParse(digits.substring(index, index + length)) ?? -1;
      index += length;
    }

    return _validDate(
      values[_DatePart.year],
      values[_DatePart.month],
      values[_DatePart.day],
    );
  }

  DateTime? _validDate(int? year, int? month, int? day) {
    if (year == null || month == null || day == null) return null;
    if (year < 1 || month < 1 || month > 12 || day < 1) return null;

    final date = DateTime(year, month, day);
    if (date.year != year || date.month != month || date.day != day) {
      return null;
    }
    return date;
  }
}

enum _DatePart { year, month, day }

Future<TimeOfDay?> showWheelTimePicker({
  required BuildContext context,
  required TimeOfDay initialTime,
  int minuteInterval = 1,
}) {
  final now = DateTime.now();
  var selectedTime = DateTime(
    now.year,
    now.month,
    now.day,
    initialTime.hour,
    initialTime.minute,
  );

  return showModalBottomSheet<TimeOfDay>(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) {
      final mediaQuery = MediaQuery.of(sheetContext);
      final materialLocalizations = MaterialLocalizations.of(sheetContext);
      final locale = Localizations.localeOf(sheetContext);

      return Localizations.override(
        context: sheetContext,
        locale: locale,
        child: SafeArea(
          top: false,
          child: Container(
            height: 320,
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.space2,
                    AppSpacing.space2,
                    AppSpacing.space2,
                    0,
                  ),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(sheetContext),
                        child: Text(materialLocalizations.cancelButtonLabel),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () => Navigator.pop(
                          sheetContext,
                          TimeOfDay.fromDateTime(selectedTime),
                        ),
                        child: Text(materialLocalizations.okButtonLabel),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1, color: AppColors.gray100),
                Expanded(
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.time,
                    initialDateTime: selectedTime,
                    minuteInterval: minuteInterval,
                    use24hFormat: mediaQuery.alwaysUse24HourFormat,
                    onDateTimeChanged: (value) => selectedTime = value,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
