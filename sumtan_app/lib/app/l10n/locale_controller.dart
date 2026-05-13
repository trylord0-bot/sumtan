import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'generated/app_localizations.dart';

final localeControllerProvider =
    AsyncNotifierProvider<LocaleController, Locale?>(LocaleController.new);

class LocaleController extends AsyncNotifier<Locale?> {
  static const _storageKey = 'app_locale';

  @override
  Future<Locale?> build() async {
    final prefs = await SharedPreferences.getInstance();
    final tag = prefs.getString(_storageKey);
    if (tag == null || tag == 'system') return null;
    return AppLocalizations.supportedLocales.firstWhere(
      (l) => l.toLanguageTag() == tag,
      orElse: () => const Locale('en'),
    );
  }

  Future<void> setLocale(Locale? locale) async {
    final prefs = await SharedPreferences.getInstance();
    if (locale == null) {
      await prefs.setString(_storageKey, 'system');
    } else {
      await prefs.setString(_storageKey, locale.toLanguageTag());
    }
    state = AsyncData(locale);
  }
}

// ── Supported locale items ────────────────────────────────────────────────────

class SupportedAppLocale {
  const SupportedAppLocale({
    required this.locale,
    required this.nativeName,
    required this.englishName,
  });
  final Locale locale;
  final String nativeName;
  final String englishName;
}

const supportedLocaleItems = [
  SupportedAppLocale(locale: Locale('ko'), nativeName: '한국어', englishName: 'Korean'),
  SupportedAppLocale(locale: Locale('en'), nativeName: 'English', englishName: 'English'),
  SupportedAppLocale(locale: Locale('ja'), nativeName: '日本語', englishName: 'Japanese'),
  SupportedAppLocale(locale: Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'), nativeName: '简体中文', englishName: 'Chinese (Simplified)'),
  SupportedAppLocale(locale: Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'), nativeName: '繁體中文', englishName: 'Chinese (Traditional)'),
  SupportedAppLocale(locale: Locale('es'), nativeName: 'Español', englishName: 'Spanish'),
  SupportedAppLocale(locale: Locale('fr'), nativeName: 'Français', englishName: 'French'),
  SupportedAppLocale(locale: Locale('de'), nativeName: 'Deutsch', englishName: 'German'),
  SupportedAppLocale(locale: Locale('ar'), nativeName: 'العربية', englishName: 'Arabic'),
  SupportedAppLocale(locale: Locale('pt'), nativeName: 'Português', englishName: 'Portuguese'),
];

String localeTag(Locale locale) {
  final countryCode = locale.countryCode;
  if (countryCode == null || countryCode.isEmpty) return locale.languageCode;
  return '${locale.languageCode}-$countryCode';
}
