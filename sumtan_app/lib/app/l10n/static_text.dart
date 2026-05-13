import 'package:flutter/widgets.dart';
import 'generated/app_localizations.dart';

String localizedDayCountShort(BuildContext context, int days) {
  return AppLocalizations.of(context)!.dayCountShort(days);
}
