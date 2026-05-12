import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final localeControllerProvider =
    AsyncNotifierProvider<LocaleController, Locale?>(LocaleController.new);

class LocaleController extends AsyncNotifier<Locale?> {
  static const _storageKey = 'app_locale';

  @override
  Future<Locale?> build() async {
    final prefs = await SharedPreferences.getInstance();
    final tag = prefs.getString(_storageKey);
    if (tag == null || tag == 'system') return null;
    return AppLocalizations.localeFromTag(tag);
  }

  Future<void> setLocale(Locale? locale) async {
    final prefs = await SharedPreferences.getInstance();
    if (locale == null) {
      await prefs.setString(_storageKey, 'system');
    } else {
      await prefs.setString(_storageKey, AppLocalizations.localeTag(locale));
    }
    state = AsyncData(locale);
  }
}

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

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static const supportedLocaleItems = [
    SupportedAppLocale(
      locale: Locale('ko'),
      nativeName: '한국어',
      englishName: 'Korean',
    ),
    SupportedAppLocale(
      locale: Locale('en'),
      nativeName: 'English',
      englishName: 'English',
    ),
    SupportedAppLocale(
      locale: Locale('ja'),
      nativeName: '日本語',
      englishName: 'Japanese',
    ),
    SupportedAppLocale(
      locale: Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
      nativeName: '简体中文',
      englishName: 'Chinese (Simplified)',
    ),
    SupportedAppLocale(
      locale: Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
      nativeName: '繁體中文',
      englishName: 'Chinese (Traditional)',
    ),
    SupportedAppLocale(
      locale: Locale('es'),
      nativeName: 'Español',
      englishName: 'Spanish',
    ),
    SupportedAppLocale(
      locale: Locale('fr'),
      nativeName: 'Français',
      englishName: 'French',
    ),
    SupportedAppLocale(
      locale: Locale('de'),
      nativeName: 'Deutsch',
      englishName: 'German',
    ),
    SupportedAppLocale(
      locale: Locale('ar'),
      nativeName: 'العربية',
      englishName: 'Arabic',
    ),
    SupportedAppLocale(
      locale: Locale('pt'),
      nativeName: 'Português',
      englishName: 'Portuguese',
    ),
  ];

  static List<Locale> get supportedLocales =>
      supportedLocaleItems.map((item) => item.locale).toList(growable: false);

  static const delegate = _AppLocalizationsDelegate();

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static Locale? localeFromTag(String tag) {
    final normalized = tag.replaceAll('_', '-').toLowerCase();
    for (final item in supportedLocaleItems) {
      if (localeTag(item.locale).toLowerCase() == normalized) {
        return item.locale;
      }
    }
    return null;
  }

  static String localeTag(Locale locale) {
    final countryCode = locale.countryCode;
    if (countryCode == null || countryCode.isEmpty) return locale.languageCode;
    return '${locale.languageCode}-$countryCode';
  }

  static Locale resolve(Locale? deviceLocale, Iterable<Locale> supported) {
    if (deviceLocale == null) return const Locale('en');

    for (final locale in supported) {
      if (locale.languageCode == deviceLocale.languageCode &&
          locale.countryCode == deviceLocale.countryCode) {
        return locale;
      }
    }
    for (final locale in supported) {
      if (locale.languageCode == deviceLocale.languageCode &&
          locale.countryCode == null) {
        return locale;
      }
    }
    if (deviceLocale.languageCode == 'zh') {
      return deviceLocale.scriptCode == 'Hant'
          ? const Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW')
          : const Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN');
    }
    return const Locale('en');
  }

  String get languageCode {
    if (locale.languageCode == 'zh') {
      return locale.countryCode == 'TW' ? 'zh-TW' : 'zh-CN';
    }
    return locale.languageCode;
  }

  bool get isRtl => locale.languageCode == 'ar';

  String t(String key, {Map<String, String> args = const {}}) {
    final table = _localizedValues[languageCode] ??
        _localizedValues[locale.languageCode] ??
        _localizedValues['en']!;
    var value = table[key] ?? _localizedValues['en']![key] ?? key;
    for (final entry in args.entries) {
      value = value.replaceAll('{${entry.key}}', entry.value);
    }
    return value;
  }

  String text(String source, {Map<String, String> args = const {}}) {
    if (languageCode == 'ko') {
      var value = source;
      for (final entry in args.entries) {
        value = value.replaceAll('{${entry.key}}', entry.value);
      }
      return value;
    }

    final table = _rawTextValues[languageCode] ??
        _rawTextValues[locale.languageCode] ??
        _rawTextValues['en']!;
    var value = table[source] ??
        _rawTextValues['en']![source] ??
        _looseEnglishFallback(source);
    for (final entry in args.entries) {
      value = value.replaceAll('{${entry.key}}', entry.value);
    }
    return value;
  }

  String _looseEnglishFallback(String source) {
    var value = source;
    for (final entry in _rawWordFallback.entries) {
      value = value.replaceAll(entry.key, entry.value);
    }
    return value;
  }
}

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
  String lt(String source, {Map<String, String> args = const {}}) =>
      l10n.text(source, args: args);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.supportedLocales.any((supported) {
        return supported.languageCode == locale.languageCode;
      });

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

const _localizedValues = <String, Map<String, String>>{
  'ko': {
    'app.name': '반려숨탄',
    'app.tagline': '반려동물 건강관리 앱',
    'nav.home': '홈',
    'nav.journal': '일지',
    'nav.notifications': '알림',
    'nav.profile': '프로필',
    'nav.settings': '설정',
    'nav.addAlarm': '알림 추가',
    'drawer.service': '서비스',
    'drawer.nearbyHospitals': '주변 병원 찾기',
    'drawer.nearbyHospitalsSub': '내 위치 기반 동물병원',
    'drawer.healthGuide': '건강관리 가이드',
    'drawer.healthGuideSub': '반려동물 건강 안내서',
    'drawer.app': '앱',
    'drawer.help': '도움말',
    'dialog.externalTitle': '외부 웹페이지로 이동해요',
    'dialog.externalHospitalBody':
        '주변 동물병원을 찾으려면\n외부 웹페이지가 필요해요.\n\n지금 바로 이동할까요?',
    'common.cancel': '취소',
    'common.go': '이동할게요',
    'common.delete': '삭제',
    'common.save': '저장하기',
    'common.loading': '준비 중...',
    'common.percent': '{percent}%',
    'toast.backToExit': '한 번 더 누르면 앱을 종료합니다',
    'toast.needPet': '아직 반려동물이 없네요. 프로필에서 먼저 등록해 주세요!',
    'settings.notifications': '알림',
    'settings.pushNotifications': '푸시 알림 허용',
    'settings.pushNotificationsSub': '기기 알림 권한 설정',
    'settings.languageSection': '언어',
    'settings.language': '앱 언어',
    'settings.languageSystem': '기기 설정 사용',
    'settings.languageChanged': '앱 언어가 변경됐어요',
    'settings.data': '데이터 관리',
    'settings.export': '데이터 내보내기',
    'settings.exportSub': 'ZIP 파일로 저장',
    'settings.import': '데이터 가져오기',
    'settings.importSub': 'ZIP 파일에서 복원',
    'settings.appInfo': '앱 정보',
    'settings.version': '앱 버전',
    'settings.privacy': '개인정보 처리방침',
    'settings.feedback': '피드백 보내기',
    'settings.feedbackSubject': '반려숨탄 피드백',
    'settings.emailAppMissing': '이메일 앱을 찾을 수 없어요',
    'settings.importConfirmBody':
        '기존의 모든 데이터가 삭제되고 백업 파일의 데이터로 교체됩니다.\n\n계속하시겠습니까?',
    'settings.importAction': '가져오기',
    'settings.importing': '데이터 가져오기',
    'settings.importSuccess': '백업 데이터를 복원했어요',
    'settings.importFailed': '가져오기에 실패했어요',
    'settings.exportTitle': '데이터 내보내기',
    'settings.exportBenefitTitle': '내 소중한 기록을 안전하게',
    'settings.exportBenefitPets': '모든 반려동물 프로필 & 사진',
    'settings.exportBenefitRecords': '건강 기록 · 일지 · 체중 전체',
    'settings.exportBenefitMedia': '첨부 이미지 & 영상 포함',
    'settings.storeUnavailable': '현재 스토어에 연결할 수 없어요.\n잠시 후 다시 시도해 주세요.',
    'settings.payAndExport': '{price} 결제하고 내보내기',
    'settings.unlocked': '잠금 해제됨',
    'settings.exportUnlockedBody':
        '모든 반려동물 정보와 기록을 ZIP 파일로 저장합니다.\n저장된 파일은 언제든 무료로 가져오기 복원할 수 있어요.',
    'settings.exporting': '내보내는 중...',
    'settings.exportZip': 'ZIP 파일로 내보내기',
    'settings.exportConfirmBody': '모든 반려동물 정보와 기록, 첨부 미디어를 ZIP 파일로 내보냅니다.',
    'settings.exportAction': '내보내기',
    'settings.exportSuccess': '백업 파일을 공유할 수 있어요',
    'settings.exportFailed': '내보내기에 실패했어요',
    'settings.purchaseFailed': '결제에 실패했어요',
    'error.dbInit': '앱 데이터를 준비하는 중 문제가 발생했습니다.\n잠시 후 다시 실행해 주세요.',
  },
  'en': {
    'app.name': 'Pet Sumtan',
    'app.tagline': 'Pet health care app',
    'nav.home': 'Home',
    'nav.journal': 'Journal',
    'nav.notifications': 'Alerts',
    'nav.profile': 'Profile',
    'nav.settings': 'Settings',
    'nav.addAlarm': 'Add alert',
    'drawer.service': 'Services',
    'drawer.nearbyHospitals': 'Find nearby hospitals',
    'drawer.nearbyHospitalsSub': 'Animal hospitals near you',
    'drawer.healthGuide': 'Health guide',
    'drawer.healthGuideSub': 'Pet health handbook',
    'drawer.app': 'App',
    'drawer.help': 'Help',
    'dialog.externalTitle': 'Open an external page',
    'dialog.externalHospitalBody':
        'Finding nearby animal hospitals requires an external web page.\n\nOpen it now?',
    'common.cancel': 'Cancel',
    'common.go': 'Go',
    'common.delete': 'Delete',
    'common.save': 'Save',
    'common.loading': 'Preparing...',
    'common.percent': '{percent}%',
    'toast.backToExit': 'Press again to exit the app',
    'toast.needPet': 'No pet yet. Please add one from Profile first.',
    'settings.notifications': 'Notifications',
    'settings.pushNotifications': 'Allow push notifications',
    'settings.pushNotificationsSub': 'Device notification permission',
    'settings.languageSection': 'Language',
    'settings.language': 'App language',
    'settings.languageSystem': 'Use device settings',
    'settings.languageChanged': 'App language changed',
    'settings.data': 'Data management',
    'settings.export': 'Export data',
    'settings.exportSub': 'Save as a ZIP file',
    'settings.import': 'Import data',
    'settings.importSub': 'Restore from a ZIP file',
    'settings.appInfo': 'App info',
    'settings.version': 'App version',
    'settings.privacy': 'Privacy policy',
    'settings.feedback': 'Send feedback',
    'settings.feedbackSubject': 'Pet Sumtan feedback',
    'settings.emailAppMissing': 'No email app found',
    'settings.importConfirmBody':
        'All existing data will be deleted and replaced with the backup file.\n\nContinue?',
    'settings.importAction': 'Import',
    'settings.importing': 'Import data',
    'settings.importSuccess': 'Backup data restored',
    'settings.importFailed': 'Import failed',
    'settings.exportTitle': 'Export data',
    'settings.exportBenefitTitle': 'Keep your precious records safe',
    'settings.exportBenefitPets': 'All pet profiles and photos',
    'settings.exportBenefitRecords':
        'All health records, journals, and weights',
    'settings.exportBenefitMedia': 'Includes attached images and videos',
    'settings.storeUnavailable':
        'Cannot connect to the store right now.\nPlease try again later.',
    'settings.payAndExport': 'Pay {price} and export',
    'settings.unlocked': 'Unlocked',
    'settings.exportUnlockedBody':
        'Save all pet information and records as a ZIP file.\nYou can import and restore saved files for free anytime.',
    'settings.exporting': 'Exporting...',
    'settings.exportZip': 'Export as ZIP',
    'settings.exportConfirmBody':
        'Export all pet information, records, and attached media as a ZIP file.',
    'settings.exportAction': 'Export',
    'settings.exportSuccess': 'Backup file is ready to share',
    'settings.exportFailed': 'Export failed',
    'settings.purchaseFailed': 'Payment failed',
    'error.dbInit':
        'There was a problem preparing app data.\nPlease try again later.',
  },
  'ja': {
    'app.name': 'ペットスムタン',
    'app.tagline': 'ペット健康管理アプリ',
    'nav.home': 'ホーム',
    'nav.journal': '日誌',
    'nav.notifications': '通知',
    'nav.profile': 'プロフィール',
    'nav.settings': '設定',
    'nav.addAlarm': '通知を追加',
    'settings.language': 'アプリの言語',
    'settings.languageSystem': '端末の設定を使用',
    'settings.languageChanged': 'アプリの言語を変更しました',
  },
  'zh-CN': {
    'app.name': '宠物 Sumtan',
    'app.tagline': '宠物健康管理应用',
    'nav.home': '首页',
    'nav.journal': '日记',
    'nav.notifications': '提醒',
    'nav.profile': '档案',
    'nav.settings': '设置',
    'nav.addAlarm': '添加提醒',
    'settings.language': '应用语言',
    'settings.languageSystem': '使用设备设置',
    'settings.languageChanged': '应用语言已更改',
  },
  'zh-TW': {
    'app.name': '寵物 Sumtan',
    'app.tagline': '寵物健康管理 App',
    'nav.home': '首頁',
    'nav.journal': '日誌',
    'nav.notifications': '提醒',
    'nav.profile': '檔案',
    'nav.settings': '設定',
    'nav.addAlarm': '新增提醒',
    'settings.language': 'App 語言',
    'settings.languageSystem': '使用裝置設定',
    'settings.languageChanged': 'App 語言已變更',
  },
  'es': {
    'app.name': 'Pet Sumtan',
    'app.tagline': 'App de salud para mascotas',
    'nav.home': 'Inicio',
    'nav.journal': 'Diario',
    'nav.notifications': 'Alertas',
    'nav.profile': 'Perfil',
    'nav.settings': 'Ajustes',
    'nav.addAlarm': 'Añadir alerta',
    'settings.language': 'Idioma de la app',
    'settings.languageSystem': 'Usar ajustes del dispositivo',
    'settings.languageChanged': 'Idioma cambiado',
  },
  'fr': {
    'app.name': 'Pet Sumtan',
    'app.tagline': 'App de santé pour animaux',
    'nav.home': 'Accueil',
    'nav.journal': 'Journal',
    'nav.notifications': 'Alertes',
    'nav.profile': 'Profil',
    'nav.settings': 'Réglages',
    'nav.addAlarm': 'Ajouter une alerte',
    'settings.language': 'Langue de l’app',
    'settings.languageSystem': 'Utiliser la langue de l’appareil',
    'settings.languageChanged': 'Langue de l’app modifiée',
  },
  'de': {
    'app.name': 'Pet Sumtan',
    'app.tagline': 'App für Tiergesundheit',
    'nav.home': 'Start',
    'nav.journal': 'Tagebuch',
    'nav.notifications': 'Alarme',
    'nav.profile': 'Profil',
    'nav.settings': 'Einstellungen',
    'nav.addAlarm': 'Alarm hinzufügen',
    'settings.language': 'App-Sprache',
    'settings.languageSystem': 'Geräteeinstellungen verwenden',
    'settings.languageChanged': 'App-Sprache geändert',
  },
  'ar': {
    'app.name': 'بت سمتان',
    'app.tagline': 'تطبيق رعاية صحة الحيوانات الأليفة',
    'nav.home': 'الرئيسية',
    'nav.journal': 'السجل',
    'nav.notifications': 'التنبيهات',
    'nav.profile': 'الملف',
    'nav.settings': 'الإعدادات',
    'nav.addAlarm': 'إضافة تنبيه',
    'settings.language': 'لغة التطبيق',
    'settings.languageSystem': 'استخدام إعدادات الجهاز',
    'settings.languageChanged': 'تم تغيير لغة التطبيق',
  },
  'pt': {
    'app.name': 'Pet Sumtan',
    'app.tagline': 'App de saúde para pets',
    'nav.home': 'Início',
    'nav.journal': 'Diário',
    'nav.notifications': 'Alertas',
    'nav.profile': 'Perfil',
    'nav.settings': 'Configurações',
    'nav.addAlarm': 'Adicionar alerta',
    'settings.language': 'Idioma do app',
    'settings.languageSystem': 'Usar configurações do dispositivo',
    'settings.languageChanged': 'Idioma do app alterado',
  },
};

const _rawTextValues = <String, Map<String, String>>{
  'en': {
    '도움말': 'Help',
    '건강관리 가이드': 'Health guide',
    '강아지': 'Dog',
    '고양이': 'Cat',
    '🐶 강아지': '🐶 Dog',
    '🐱 고양이': '🐱 Cat',
    '저장됐어요': 'Saved',
    '취소': 'Cancel',
    '삭제': 'Delete',
    '삭제하기': 'Delete',
    '저장하기': 'Save',
    '메모': 'Memo',
    '자유롭게 메모를 남겨보세요': 'Add a memo freely',
    '+ 추가': '+ Add',
    '오류가 발생했어요': 'An error occurred',
    '오류가 발생했어요\n{error}': 'An error occurred\n{error}',
    '반려동물': 'Pet',
    '반려동물 선택': 'Select pet',
    '새 반려동물 추가하기': 'Add a new pet',
    '등록된 알림이 없네요': 'No alerts yet',
    '{petName}는 오늘도 건강하게 지내봐요!\n아래 알림 추가 버튼을 눌러 시작해보세요.':
        'Keep {petName} healthy today.\nTap Add alert below to get started.',
    '예정된 알림': 'Scheduled alerts',
    '스와이프하면 삭제할 수 있어요': 'Swipe to delete',
    '알림 종류 선택': 'Select alert type',
    '병원 예약': 'Vet appointment',
    '투약': 'Medication',
    '식사 시간': 'Meal time',
    '일일 리마인더': 'Daily reminder',
    '알림': 'Alert',
    '예방접종 예정일을 확인해 주세요.': 'Please check the vaccination date.',
    '병원 예약 시간이 다가왔어요.': 'Your vet appointment is coming up.',
    '투약할 시간이에요.': 'It is time for medication.',
    '식사 시간을 챙겨 주세요.': 'Please remember meal time.',
    '오늘의 건강 기록을 남겨 주세요.': 'Please add today’s health record.',
    '반려동물 건강관리 알림입니다.': 'Pet health care alert.',
    '알림이 삭제됐어요 🗑️': 'Alert deleted',
    '지난 알림 숨기기': 'Hide past alerts',
    '지난 알림 보기': 'Show past alerts',
    '전체 삭제': 'Delete all',
    '지난 알림 삭제': 'Delete past alerts',
    '지난 알림 {count}개를 모두 삭제할까요?': 'Delete all {count} past alerts?',
    '지난 알림이 모두 삭제됐어요': 'All past alerts deleted',
    '지남': 'Past',
    '오늘': 'Today',
    '내일 같은 시간': 'Tomorrow, same time',
    '언제 다시 알려드릴까요?': 'When should we remind you again?',
    '직접 지정': 'Choose manually',
    '이 시간에 다시 알림': 'Remind me at this time',
    '지금 이후의 시간을 선택해주세요': 'Please choose a future time',
    '기록 → {typeLabel} 항목에서 확인할 수 있어요':
        'You can check it under Record > {typeLabel}.',
    '예정된 푸시 알림도 함께 취소돼요.':
        'The scheduled push notification will also be canceled.',
    '재예약하기': 'Reschedule',
    '이 알림 삭제하기': 'Delete this alert',
    '백신 이름 *': 'Vaccine name *',
    '예) 광견병, 종합백신 등': 'e.g. Rabies, combo vaccine',
    '예정일 *': 'Date *',
    '알림 시점': 'Reminder timing',
    '당일': 'Same day',
    '알림 시각 *': 'Reminder time *',
    '메모를 입력하세요': 'Enter a memo',
    '방문 목적 *': 'Visit purpose *',
    '예) 정기검진, 피부 진료 등': 'e.g. Checkup, skin treatment',
    '예약 일시 *': 'Appointment date and time *',
    '병원명': 'Hospital name',
    '병원 이름을 입력하세요': 'Enter hospital name',
    '약품 이름 *': 'Medicine name *',
    '예) 심장사상충, 구충제 등': 'e.g. Heartworm, dewormer',
    '반복 *': 'Repeat *',
    '없음': 'None',
    '매일': 'Daily',
    '매주': 'Weekly',
    '매달': 'Monthly',
    '평일': 'Weekdays',
    '평일만': 'Weekdays only',
    '주말': 'Weekends',
    '주말만': 'Weekends only',
    '투약 일시 *': 'Medication date and time *',
    '투약 시각 *': 'Medication time *',
    '알림 이름 *': 'Alert name *',
    '예) 아침 식사, 저녁 밥 등': 'e.g. Breakfast, dinner',
    '식사 시각 *': 'Meal time *',
    '알림 문구': 'Alert message',
    '예) 콩이 오늘 기록 남기셨나요? 🐾': 'e.g. Did you add today’s record?',
    '이 알림의 예정일이 지났어요.\n새 날짜로 변경하거나 삭제할 수 있어요.':
        'This alert date has passed.\nYou can choose a new date or delete it.',
    '날짜 재선택': 'Select date again',
    '날짜 선택': 'Select date',
    '시각 선택': 'Select time',
    '오늘의 상태': 'Today’s status',
    '+ 기록하기': '+ Add record',
    '오늘의 리마인더': 'Today’s reminders',
    '오늘의 기록': 'Today’s records',
    '전체 보기': 'View all',
    '이번 주 통계': 'This week’s stats',
    '배변 횟수': 'Potty count',
    '식사 횟수': 'Meal count',
    '음수 단계': 'Water level',
    '회': 'times',
    '끼': 'meals',
    '점': 'pts',
    '기록이 삭제됐어요 🗑️': 'Record deleted',
    '기록이 수정됐어요': 'Record updated',
    '기록을 삭제할까요?': 'Delete this record?',
    '이 기록 삭제하기': 'Delete this record',
    '유형': 'Type',
    '상태': 'Status',
    '컨디션 점수': 'Condition score',
    '증상 태그': 'Symptom tags',
    '약품명': 'Medicine name',
    '용량': 'Dose',
    '투약 방법': 'Medication method',
    '체중 (kg)': 'Weight (kg)',
    '측정 방법': 'Measurement method',
    '식사 종류': 'Meal type',
    '식사량': 'Meal amount',
    '급여량': 'Serving amount',
    '음수량': 'Water amount',
    '진료 유형': 'Visit type',
    '진단명': 'Diagnosis',
    '백신 종류': 'Vaccine type',
    '부작용': 'Side effects',
    '미용 종류': 'Grooming type',
    '샵 이름': 'Shop name',
    '비용': 'Cost',
    '다음 예약일': 'Next appointment',
    '빗질 부위': 'Brushing area',
    '소요 시간': 'Duration',
    '산책 시간': 'Walk time',
    '거리': 'Distance',
    '제목': 'Title',
    '중요도': 'Priority',
    '대변': 'Stool',
    '소변': 'Urine',
    '구토': 'Vomiting',
    '정상': 'Normal',
    '묽음': 'Loose',
    '딱딱함': 'Hard',
    '혈변': 'Blood in stool',
    '기침': 'Cough',
    '무기력': 'Lethargy',
    '식욕부진': 'Loss of appetite',
    '설사': 'Diarrhea',
    '콧물': 'Runny nose',
    '재채기': 'Sneezing',
    '떨림': 'Trembling',
    '혈뇨': 'Blood in urine',
    '경구': 'Oral',
    '주사': 'Injection',
    '외용': 'Topical',
    '점안': 'Eye drops',
    '점이': 'Ear drops',
    '동물병원': 'Vet hospital',
    '가정용 체중계': 'Home scale',
    '안고 측정': 'Hold and weigh',
    '아침': 'Breakfast',
    '점심': 'Lunch',
    '저녁': 'Dinner',
    '간식': 'Snack',
    '매우 적음': 'Very little',
    '적음': 'Little',
    '보통': 'Normal',
    '많음': 'Much',
    '매우 많음': 'Very much',
    '일반': 'Normal',
    '정기검진': 'Checkup',
    '응급': 'Emergency',
    '경미': 'Mild',
    '심각': 'Severe',
    '목욕': 'Bath',
    '전체미용': 'Full grooming',
    '부분미용': 'Partial grooming',
    '발톱': 'Nails',
    '귀청소': 'Ear cleaning',
    '치석제거': 'Tartar removal',
    '항문낭': 'Anal glands',
    '전체': 'All',
    '등': 'Back',
    '배': 'Belly',
    '꼬리': 'Tail',
    '얼굴': 'Face',
    '발': 'Paws',
    '중요': 'Important',
    '사진 · 동영상': 'Photos · Videos',
    '미디어 추가': 'Add media',
    '미디어 추가 방법 선택': 'Choose how to add media',
    '카메라로 촬영': 'Use camera',
    '사진 또는 동영상 촬영': 'Take a photo or video',
    '갤러리에서 선택': 'Choose from gallery',
    '사진 · 동영상 다중 선택 가능': 'Select multiple photos and videos',
    '사진 촬영': 'Take photo',
    '카메라로 사진을 촬영': 'Take a photo with camera',
    '동영상 촬영': 'Record video',
    '카메라로 동영상을 촬영': 'Record a video with camera',
    '이 사진 삭제': 'Delete this photo',
    '사진을 삭제할까요?': 'Delete this photo?',
    '이 동영상 삭제': 'Delete this video',
    '동영상을 삭제할까요?': 'Delete this video?',
    '음소거': 'Muted',
    '소리 켜짐': 'Sound on',
    '설정에서 권한을 허용해 주세요': 'Please allow permission in Settings',
    '설정 열기': 'Open settings',
    '개인정보 처리방침': 'Privacy policy',
    '개발자에게 문의하기': 'Contact the developer',
    '문의': 'Contact',
    '설정': 'Settings',
    '데이터 내보내기': 'Export data',
    '데이터 가져오기': 'Import data',
    '피드백 보내기': 'Send feedback',
    '자주 묻는 질문': 'FAQ',
    '홈 화면': 'Home screen',
    '일지 화면': 'Journal screen',
    '알림 화면': 'Alerts screen',
    '반려동물 관리': 'Pet management',
    '기록 카테고리': 'Record categories',
    '반려숨탄이란?': 'What is Pet Sumtan?',
    '오늘의 기록 요약': 'Today’s record summary',
    '주간 통계': 'Weekly stats',
    '체중 변화 그래프': 'Weight change chart',
    '주변 병원 찾기': 'Find nearby hospitals',
    '새 기록 추가 (+)': 'Add new record (+)',
    '기록 목록 보기': 'View records',
    '기록 수정 및 삭제': 'Edit and delete records',
    '사진·영상 첨부': 'Attach photos/videos',
    '알림 추가': 'Add alert',
    '반복 알림': 'Repeating alerts',
    '사전 알림 (D-7, D-3, D-1)': 'Advance alerts (D-7, D-3, D-1)',
    '알림 완료 처리': 'Complete alerts',
    '알림 삭제': 'Delete alerts',
    '반려동물 등록': 'Add a pet',
    '프로필 수정': 'Edit profile',
    '여러 마리 관리': 'Manage multiple pets',
    '강아지 건강 가이드': 'Dog health guide',
    '고양이 건강 가이드': 'Cat health guide',
    '알림 설정': 'Notification settings',
    '강아지 건강관리 가이드': 'Dog health care guide',
    '고양이 건강관리 가이드': 'Cat health care guide',
    '수의사 권장 기준을 바탕으로\n작성된 전문 건강 안내서예요.':
        'A professional health guide\nbased on veterinary recommendations.',
    '예방접종': 'Vaccination',
    '핵심 필수 접종 (Core Vaccine)': 'Core vaccines',
    '필수': 'Required',
    '선택 접종 (Non-Core)': 'Non-core vaccines',
    '권장': 'Recommended',
    '기생충 예방': 'Parasite prevention',
    '심장사상충': 'Heartworm',
    '매월': 'Monthly',
    '외부기생충 (벼룩·진드기)': 'External parasites (fleas/ticks)',
    '내부기생충': 'Internal parasites',
    '3~6개월': '3-6 months',
    '영양 관리': 'Nutrition',
    '치아 관리': 'Dental care',
    '건강검진': 'Health checkups',
    '응급 신호': 'Emergency signs',
    '나이': 'Age',
    '검진 주기': 'Checkup cycle',
    '주요 항목': 'Main items',
    '운동량': 'Exercise level',
    '해당 품종 예시': 'Breed examples',
    '낮음': 'Low',
    '높음': 'High',
    '메뉴': 'Menu',
    '안녕하세요! ': 'Hello! ',
    '\n오늘도 건강한가요? 🐾': '\nFeeling healthy today?',
    '아직 기록이 없어요': 'No records yet',
    '마지막 기록 · {time}': 'Last record · {time}',
    '평균 {value}{unit}/일': 'Avg {value}{unit}/day',
    '⚖️ 체중 추이': '⚖️ Weight trend',
    '⚖️ 체중 변화': '⚖️ Weight change',
    '체중 데이터가 없어요': 'No weight data yet',
    '실측 체중': 'Measured weight',
    '표준 범위': 'Standard range',
    '아직 오늘의 기록이 없어요': 'No records for today yet',
    '반려동물의 컨디션, 배변, 체중을\n기록해 건강을 관리해 보세요!':
        'Track condition, potty, and weight\nto care for your pet’s health.',
    '{date}의 기록이 없어요': 'No records for {date}',
    '{date} 기록 ({count}건)': '{date} records ({count})',
    '일': 'Sun',
    '월': 'Mon',
    '화': 'Tue',
    '수': 'Wed',
    '목': 'Thu',
    '금': 'Fri',
    '토': 'Sat',
    '📝 무엇을 기록할까요?': '📝 What would you like to record?',
    '저장 중 오류가 발생했어요: {error}': 'An error occurred while saving: {error}',
    '✅ 알림이 수정됐어요': 'Alert updated',
    '🔔 알림이 추가됐어요': 'Alert added',
    '알림 수정': 'Edit alert',
    '알림을 삭제할까요?': 'Delete this alert?',
    '{name}이 삭제되고\n예정된 푸시 알림도 함께 취소돼요.':
        '{name} will be deleted,\nand its scheduled push notification will be canceled.',
    '✅ 완료했어요': '✅ Done',
    '🕐 나중에': '🕐 Later',
    '✅ 완료 저장': '✅ Save completion',
    '{type}을 완료했나요?': 'Did you complete {type}?',
    '{name} 을(를)\n오늘 기록에 자동으로 저장할게요.':
        'We will automatically save\n{name} to today’s records.',
    '{name} 완료가 기록됐어요 ✅': '{name} completion saved',
    '👆 원하는 알림 종류를 탭하세요': '👆 Tap the alert type you want',
    '{count}개': '{count}',
    '{date} · 완료됨': '{date} · Completed',
    '⚠️ {date} 지남 · 탭해서 재예약': '⚠️ {date} past · Tap to reschedule',
    '완료됨': 'Completed',
    '수정': 'Edit',
    '{category} 기록이 삭제되고\n되돌릴 수 없어요.':
        '{category} record will be deleted\nand cannot be restored.',
    '💡 약품명과 용량을 입력해 주세요': 'Please enter medicine name and dose',
    '💡 체중을 숫자로 입력해 주세요': 'Please enter weight as a number',
    '💡 산책 시간을 숫자로 입력해 주세요': 'Please enter walk time as a number',
    '💡 빗질 부위를 하나 이상 선택해 주세요': 'Please select at least one brushing area',
    '💡 백신 종류를 하나 이상 선택해 주세요': 'Please select at least one vaccine type',
    '💡 미용 종류를 하나 이상 선택해 주세요': 'Please select at least one grooming type',
    '💡 제목을 입력해 주세요': 'Please enter a title',
    '예: 콩이': 'e.g. Kong',
    '예: 말티즈': 'e.g. Maltese',
    '예: 말티즈, 페르시안': 'e.g. Maltese, Persian',
    '예: 30': 'e.g. 30',
    '예: 80': 'e.g. 80',
    '예: 200': 'e.g. 200',
    '예: 2.5': 'e.g. 2.5',
    '예: 35000': 'e.g. 35000',
    '예: 50000': 'e.g. 50000',
    '이름을 입력해 주세요': 'Please enter a name',
    '새 반려동물 추가': 'Add new pet',
    '기본 정보': 'Basic info',
    '식별 정보': 'Identification info',
    '식별 정보 (선택)': 'Identification info (optional)',
    '이름': 'Name',
    '종류': 'Type',
    '품종': 'Breed',
    '체중': 'Weight',
    '마이크로칩': 'Microchip',
    '등록번호': 'Registration number',
    '생년월일': 'Birth date',
    '성별': 'Gender',
    '수컷': 'Male',
    '암컷': 'Female',
    '수컷 ♂': 'Male ♂',
    '암컷 ♀': 'Female ♀',
    '중성화': 'Neutered',
    '완료': 'Done',
    '미완료': 'Not done',
    '미입력': 'Not entered',
    '미등록': 'Not registered',
    '강아지 🐶': 'Dog 🐶',
    '고양이 🐱': 'Cat 🐱',
    '기타 🐾': 'Other 🐾',
    '등록된 반려동물이 없어요': 'No pets registered',
    '반려동물을 등록하고\n건강을 함께 관리해봐요!': 'Add a pet and\nmanage health together.',
    '반려동물 등록하기': 'Add pet',
    '반려동물 편집': 'Edit pet',
    '중성화 여부': 'Neutering status',
    '중성화 완료': 'Neutered',
    '중성화 안 함': 'Not neutered',
    '날짜를 선택하세요': 'Select a date',
    '수정 완료': 'Save changes',
    '등록하기': 'Register',
    '{name} 삭제하기': 'Delete {name}',
    '{name}을(를) 삭제할까요?': 'Delete {name}?',
    '{name}의 모든 기록과 알림이 함께 삭제되며 복구할 수 없어요.':
        'All records and alerts for {name} will be deleted and cannot be restored.',
    '{name}이(가) 삭제됐어요': '{name} deleted',
    '{name}이(가) 추가됐어요 🐾': '{name} added',
    '지금은 스토어에 연결할 수 없어요. 잠시 후 다시 시도해 주세요.':
        'Cannot connect to the store right now. Please try again later.',
    '결제 정보를 확인 중이에요. 잠시 후 다시 눌러 주세요.':
        'Checking payment info. Please try again shortly.',
    '결제가 완료됐어요. 이제 새 친구 정보를 입력해 주세요.':
        'Payment complete. Please enter your new pet’s info.',
    '새 가족을 추가할까요?': 'Add a new family member?',
    '첫 번째 반려동물은 무료로 등록할 수 있고, 두 번째 가족부터는 한 가족당 결제가 필요해요.':
        'The first pet is free. From the second pet, each additional pet requires payment.',
    '현재 등록된 반려동물 {count}마리\n스토어 연결이 가능할 때 다시 시도해 주세요.':
        '{count} pets registered\nPlease try again when the store is available.',
    '현재 등록된 반려동물 {count}마리\n{price} 결제 후 새 가족을 추가할 수 있어요.':
        '{count} pets registered\nPay {price} to add a new family member.',
    '다음에 할게요': 'Maybe later',
    '연결 불가': 'Unavailable',
    '{price} 결제하고 추가': 'Pay {price} and add',
    '+ 다음 예약일 추가': '+ Add next appointment',
    '더 궁금한 점이 있으신가요?': 'Have more questions?',
    '설정 > 피드백 보내기를 통해 문의해 주세요.\n빠르게 답변 드릴게요 🐾':
        'Contact us from Settings > Send feedback.\nWe will get back to you soon.',
    '설정 화면의 [피드백 보내기] 버튼을 통해 문의하시면\n빠르게 답변드리겠습니다.':
        'Contact us through Send feedback in Settings.\nWe will reply quickly.',
    '본 개인정보 처리방침은 2026년 1월 1일부터 시행됩니다.\n최종 수정일: 2026년 5월 8일':
        'This privacy policy is effective from January 1, 2026.\nLast updated: May 8, 2026',
    '수집된 정보는 아래 목적으로만 사용됩니다.':
        'Collected information is used only for the purposes below.',
    '반려숨탄은 데이터 내보내기(백업) 및 가져오기(복원) 기능을 제공합니다.':
        'Pet Sumtan provides data export (backup) and import (restore) features.',
    '본 개인정보 처리방침은 법령 또는 서비스 변경에 따라 업데이트될 수 있습니다.':
        'This privacy policy may be updated due to legal or service changes.',
    '개인정보 처리방침에 관한 문의사항은 아래 방법으로 연락해 주세요.':
        'For questions about this privacy policy, please contact us below.',
  },
};

const _rawWordFallback = <String, String>{
  '반려숨탄': 'Pet Sumtan',
  '반려동물': 'pet',
  '강아지': 'dog',
  '고양이': 'cat',
  '건강관리': 'health care',
  '가이드': 'guide',
  '예방접종': 'vaccination',
  '알림': 'alert',
  '기록': 'record',
  '설정': 'settings',
  '프로필': 'profile',
  '일지': 'journal',
  '홈': 'home',
  '데이터': 'data',
  '내보내기': 'export',
  '가져오기': 'import',
  '삭제': 'delete',
  '저장': 'save',
  '취소': 'cancel',
  '추가': 'add',
  '선택': 'select',
  '확인': 'check',
  '병원': 'hospital',
  '식사': 'meal',
  '음수': 'water',
  '배변': 'potty',
  '체중': 'weight',
  '투약': 'medication',
  '미용': 'grooming',
  '산책': 'walk',
  '메모': 'memo',
  '사진': 'photo',
  '동영상': 'video',
  '카메라': 'camera',
  '갤러리': 'gallery',
  '오늘': 'today',
  '이번 주': 'this week',
  '전체': 'all',
  '필수': 'required',
  '권장': 'recommended',
  '매월': 'monthly',
  '보통': 'normal',
  '없음': 'none',
};
