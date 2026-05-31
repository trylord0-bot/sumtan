import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

double? parseLocalizedDecimal(String text) {
  final normalized = _normalizeDecimalText(text);
  if (normalized.isEmpty) return null;
  return double.tryParse(normalized);
}

String formatLocalizedDecimal(
  BuildContext context,
  num value, {
  int? decimalDigits,
}) {
  final formatter = NumberFormat.decimalPattern(
    Localizations.localeOf(context).toLanguageTag(),
  );
  if (decimalDigits != null) {
    formatter
      ..minimumFractionDigits = decimalDigits
      ..maximumFractionDigits = decimalDigits;
  }
  return formatter.format(value);
}

String _normalizeDecimalText(String text) {
  var value = text.trim().replaceAll(RegExp(r'\s'), '');
  if (value.isEmpty) return '';

  final lastComma = value.lastIndexOf(',');
  final lastDot = value.lastIndexOf('.');

  if (lastComma >= 0 && lastDot >= 0) {
    final decimalSeparator = lastComma > lastDot ? ',' : '.';
    final groupingSeparator = decimalSeparator == ',' ? '.' : ',';
    value = value.replaceAll(groupingSeparator, '');
    return value.replaceAll(decimalSeparator, '.');
  }

  if (lastComma >= 0) {
    final parts = value.split(',');
    final hasGroupingShape =
        parts.length > 2 || (parts.length == 2 && parts.last.length == 3);
    if (hasGroupingShape) return value.replaceAll(',', '');
    return value.replaceAll(',', '.');
  }

  return value;
}
