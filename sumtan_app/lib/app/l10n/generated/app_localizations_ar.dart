// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'بت سمتان';

  @override
  String get appTagline => 'تطبيق رعاية صحة الحيوانات الأليفة';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navJournal => 'السجل';

  @override
  String get navNotifications => 'التنبيهات';

  @override
  String get navProfile => 'الملف';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get navAddAlarm => 'إضافة تنبيه';

  @override
  String get drawerService => 'الخدمات';

  @override
  String get drawerNearbyHospitals => 'البحث عن عيادات قريبة';

  @override
  String get drawerNearbyHospitalsSub => 'عيادات بيطرية قريبة من موقعك';

  @override
  String get drawerHealthGuide => 'دليل الرعاية الصحية';

  @override
  String get drawerHealthGuideSub => 'دليل صحة الحيوانات الأليفة';

  @override
  String get drawerApp => 'التطبيق';

  @override
  String get drawerHelp => 'المساعدة';

  @override
  String get dialogExternalTitle => 'فتح صفحة خارجية';

  @override
  String get dialogExternalHospitalBody =>
      'للعثور على عيادات بيطرية قريبة\nتحتاج إلى فتح صفحة ويب خارجية.\n\nالانتقال الآن؟';

  @override
  String get commonCancel => 'إلغاء';

  @override
  String get commonGo => 'انتقال';

  @override
  String get commonDelete => 'حذف';

  @override
  String get commonSave => 'حفظ';

  @override
  String get commonLoading => 'جارٍ التحضير...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'اضغط مرة أخرى للخروج';

  @override
  String get toastNeedPet =>
      'لا يوجد حيوان أليف بعد. يُرجى التسجيل من ملفك الشخصي أولاً!';

  @override
  String get settingsNotifications => 'الإشعارات';

  @override
  String get settingsPushNotifications => 'السماح بالإشعارات';

  @override
  String get settingsPushNotificationsSub => 'أذونات إشعارات الجهاز';

  @override
  String get settingsLanguageSection => 'اللغة';

  @override
  String get settingsLanguage => 'لغة التطبيق';

  @override
  String get settingsLanguageSystem => 'استخدام إعدادات الجهاز';

  @override
  String get settingsLanguageChanged => 'تم تغيير لغة التطبيق';

  @override
  String get settingsData => 'إدارة البيانات';

  @override
  String get settingsExport => 'تصدير البيانات';

  @override
  String get settingsExportSub => 'حفظ كملف ZIP';

  @override
  String get settingsImport => 'استيراد البيانات';

  @override
  String get settingsImportSub => 'استعادة من ملف ZIP';

  @override
  String get settingsAppInfo => 'معلومات التطبيق';

  @override
  String get settingsVersion => 'إصدار التطبيق';

  @override
  String get settingsPrivacy => 'سياسة الخصوصية';

  @override
  String get settingsFeedback => 'إرسال ملاحظات';

  @override
  String get settingsFeedbackSubject => 'ملاحظات Pet Sumtan';

  @override
  String get settingsEmailAppMissing => 'لم يتم العثور على تطبيق بريد إلكتروني';

  @override
  String get settingsImportConfirmBody =>
      'سيتم حذف جميع البيانات الموجودة واستبدالها ببيانات ملف النسخ الاحتياطي.\n\nهل تريد المتابعة؟';

  @override
  String get settingsImportAction => 'استيراد';

  @override
  String get settingsImporting => 'جارٍ استيراد البيانات';

  @override
  String get settingsImportSuccess => 'تمت استعادة النسخة الاحتياطية';

  @override
  String get settingsImportFailed => 'فشل الاستيراد';

  @override
  String get settingsExportTitle => 'تصدير البيانات';

  @override
  String get settingsExportBenefitTitle => 'احتفظ بسجلاتك الثمينة بأمان';

  @override
  String get settingsExportBenefitPets => 'جميع ملفات الحيوانات الأليفة والصور';

  @override
  String get settingsExportBenefitRecords =>
      'جميع السجلات الصحية والمذكرات والأوزان';

  @override
  String get settingsExportBenefitMedia => 'يشمل الصور ومقاطع الفيديو المرفقة';

  @override
  String get settingsStoreUnavailable =>
      'تعذّر الاتصال بالمتجر حالياً.\nyُرجى المحاولة مرة أخرى لاحقاً.';

  @override
  String settingsPayAndExport(String price) {
    return 'دفع $price وتصدير';
  }

  @override
  String get settingsUnlocked => 'تم الفتح';

  @override
  String get settingsExportUnlockedBody =>
      'احفظ جميع معلومات وسجلات حيواناتك الأليفة في ملف ZIP.\nيمكنك استيراد الملف المحفوظ واستعادته مجاناً في أي وقت.';

  @override
  String get settingsExporting => 'جارٍ التصدير...';

  @override
  String get settingsExportZip => 'تصدير بصيغة ZIP';

  @override
  String get settingsExportConfirmBody =>
      'تصدير جميع المعلومات والسجلات وملفات الوسائط إلى ملف ZIP.';

  @override
  String get settingsExportAction => 'تصدير';

  @override
  String get settingsExportSuccess => 'ملف النسخ الاحتياطي جاهز للمشاركة';

  @override
  String get settingsExportFailed => 'فشل التصدير';

  @override
  String get settingsPurchaseFailed => 'فشل الدفع';

  @override
  String get settingsPurchaseProductLoadFailed =>
      'تعذّر تحميل معلومات المنتج. يُرجى المحاولة بعد قليل.';

  @override
  String get settingsPurchaseStartFailed =>
      'تعذّر بدء الدفع. يُرجى المحاولة بعد قليل.';

  @override
  String get errorDbInit =>
      'حدثت مشكلة أثناء تحضير بيانات التطبيق.\nyُرجى إعادة التشغيل بعد قليل.';

  @override
  String get help => 'المساعدة';

  @override
  String get healthGuide => 'دليل الرعاية الصحية';

  @override
  String get dog => 'كلب';

  @override
  String get cat => 'قط';

  @override
  String get tabDog => '🐶 كلب';

  @override
  String get tabCat => '🐱 قط';

  @override
  String get savedMsg => 'تم الحفظ';

  @override
  String get cancel => 'إلغاء';

  @override
  String get delete => 'حذف';

  @override
  String get deleteAction => 'حذف';

  @override
  String get save => 'حفظ';

  @override
  String get memo => 'ملاحظة';

  @override
  String get memoPlaceholder => 'اكتب ملاحظة بحرية';

  @override
  String get addBtn => '+ إضافة';

  @override
  String get errorOccurred => 'حدث خطأ';

  @override
  String errorOccurredWithDetail(String error) {
    return 'حدث خطأ\n$error';
  }

  @override
  String get pet => 'حيوان أليف';

  @override
  String get selectPet => 'اختيار الحيوان الأليف';

  @override
  String get addNewPet => 'إضافة حيوان أليف جديد';

  @override
  String get noAlarms => 'لا توجد تنبيهات بعد';

  @override
  String alarmEmptyDesc(String petName) {
    return 'حافظ على صحة $petName اليوم.\nاضغط على إضافة تنبيه للبدء.';
  }

  @override
  String get scheduledAlarms => 'التنبيهات المجدولة';

  @override
  String get swipeToDelete => 'اسحب للحذف';

  @override
  String get selectAlarmType => 'اختيار نوع التنبيه';

  @override
  String get vetAppointment => 'موعد بيطري';

  @override
  String get medication => 'دواء';

  @override
  String get mealTime => 'وقت الوجبة';

  @override
  String get dailyReminder => 'تذكير يومي';

  @override
  String get alarmLabel => 'تنبيه';

  @override
  String get notificationChannelName => 'تنبيهات Pet Sumtan';

  @override
  String get notificationChannelDescription =>
      'تذكيرات رعاية صحة الحيوان الأليف';

  @override
  String alarmNotificationTitle(String type) {
    return 'تنبيه $type';
  }

  @override
  String get alarmBodyVaccination => 'يُرجى التحقق من تاريخ التطعيم.';

  @override
  String get alarmBodyVetAppointment => 'موعدك البيطري يقترب.';

  @override
  String get alarmBodyMedication => 'حان وقت الدواء.';

  @override
  String get alarmBodyMealTime => 'تذكر وقت الوجبة.';

  @override
  String get alarmBodyDailyReminder => 'يُرجى إضافة سجل صحة اليوم.';

  @override
  String get alarmBodyDefault => 'تنبيه رعاية صحة الحيوان الأليف.';

  @override
  String get alarmDeleted => 'تم حذف التنبيه';

  @override
  String get hidePastAlarms => 'إخفاء التنبيهات السابقة';

  @override
  String get showPastAlarms => 'عرض التنبيهات السابقة';

  @override
  String get deleteAll => 'حذف الكل';

  @override
  String get deletePastAlarms => 'حذف التنبيهات السابقة';

  @override
  String deletePastAlarmsConfirm(int count) {
    return 'حذف جميع التنبيهات السابقة ($count)؟';
  }

  @override
  String get pastAlarmsDeleted => 'تم حذف جميع التنبيهات السابقة';

  @override
  String get pastLabel => 'ماضٍ';

  @override
  String get today => 'اليوم';

  @override
  String get tomorrowSameTime => 'غداً، نفس الوقت';

  @override
  String get snoozeQuestion => 'متى تريد أن نذكّرك مجدداً؟';

  @override
  String get snooze5min => 'بعد 5 دقائق';

  @override
  String get snooze10min => 'بعد 10 دقائق';

  @override
  String get snooze30min => 'بعد 30 دقيقة';

  @override
  String get snooze1hour => 'بعد ساعة';

  @override
  String get snooze3hour => 'بعد 3 ساعات';

  @override
  String get snoozeCustom => 'اختيار يدوي';

  @override
  String get snoozeAtThisTime => 'تذكيري في هذا الوقت';

  @override
  String snoozeConfirm(String time) {
    return 'سنذكّرك في الساعة $time';
  }

  @override
  String get selectFutureTime => 'يُرجى اختيار وقت مستقبلي';

  @override
  String recordCheckHint(String typeLabel) {
    return 'يمكنك الاطلاع عليه في السجل > $typeLabel.';
  }

  @override
  String get pushAlsoCancel => 'سيتم إلغاء الإشعار المجدول أيضاً.';

  @override
  String get reschedule => 'إعادة جدولة';

  @override
  String get deleteThisAlarm => 'حذف هذا التنبيه';

  @override
  String get vaccineNameRequired => 'اسم اللقاح *';

  @override
  String get vaccineNameExample => 'مثال: الكلب، لقاح مركّب';

  @override
  String get scheduledDateRequired => 'التاريخ *';

  @override
  String get reminderTiming => 'توقيت التذكير';

  @override
  String get sameDay => 'نفس اليوم';

  @override
  String get reminderTimeRequired => 'وقت التذكير *';

  @override
  String get memoInputHint => 'أدخل ملاحظة';

  @override
  String get visitPurposeRequired => 'غرض الزيارة *';

  @override
  String get visitPurposeExample => 'مثال: فحص روتيني، علاج جلدي';

  @override
  String get appointmentDateTimeRequired => 'تاريخ ووقت الموعد *';

  @override
  String get hospitalName => 'اسم العيادة';

  @override
  String get hospitalNameHint => 'أدخل اسم العيادة';

  @override
  String get medicineNameRequired => 'اسم الدواء *';

  @override
  String get medicineNameExample =>
      'مثال: دواء الديدان القلبية، مضاد للطفيليات';

  @override
  String get repeatRequired => 'التكرار *';

  @override
  String get none => 'لا يوجد';

  @override
  String get daily => 'يومياً';

  @override
  String get weekly => 'أسبوعياً';

  @override
  String get monthly => 'شهرياً';

  @override
  String get weekdays => 'أيام العمل';

  @override
  String get weekdaysOnly => 'أيام العمل فقط';

  @override
  String get weekends => 'عطلة نهاية الأسبوع';

  @override
  String get weekendsOnly => 'عطلة نهاية الأسبوع فقط';

  @override
  String get medicationDateTimeRequired => 'تاريخ ووقت الدواء *';

  @override
  String get medicationTimeRequired => 'وقت الدواء *';

  @override
  String get alarmNameRequired => 'اسم التنبيه *';

  @override
  String get mealTimeExample => 'مثال: وجبة الإفطار، العشاء';

  @override
  String get mealTimeRequired => 'وقت الوجبة *';

  @override
  String get alarmMessage => 'رسالة التنبيه';

  @override
  String get alarmMessageExample => 'مثال: هل أضفت سجل اليوم؟ 🐾';

  @override
  String get alarmPastDueMsg =>
      'تاريخ هذا التنبيه قد مضى.\nيمكنك اختيار تاريخ جديد أو حذفه.';

  @override
  String get reselectDate => 'إعادة اختيار التاريخ';

  @override
  String get selectDate => 'اختيار التاريخ';

  @override
  String get selectTime => 'اختيار الوقت';

  @override
  String get todayStatus => 'الحالة اليوم';

  @override
  String get addRecord => '+ إضافة سجل';

  @override
  String get todayReminders => 'تذكيرات اليوم';

  @override
  String get todayRecords => 'سجلات اليوم';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get weekStats => 'إحصائيات الصحة';

  @override
  String get pottyCount => 'عدد الإخراج';

  @override
  String get mealCount => 'عدد الوجبات';

  @override
  String get waterLevel => 'مستوى الماء';

  @override
  String get timesUnit => 'مرات';

  @override
  String get mealsUnit => 'وجبات';

  @override
  String get pointsUnit => 'نقاط';

  @override
  String get recordDeleted => 'تم حذف السجل';

  @override
  String get recordUpdated => 'تم تحديث السجل';

  @override
  String get deleteRecordConfirm => 'حذف هذا السجل؟';

  @override
  String get deleteConfirmBody => 'لا يمكن التراجع عن الحذف! 😢';

  @override
  String get deleteConfirmOk => 'احذفه';

  @override
  String get deleteThisRecord => 'حذف هذا السجل';

  @override
  String get typeLabel => 'النوع';

  @override
  String get statusLabel => 'الحالة';

  @override
  String get conditionScore => 'نقاط الحالة';

  @override
  String get symptomTags => 'علامات الأعراض';

  @override
  String get medicineName => 'اسم الدواء';

  @override
  String get dose => 'الجرعة';

  @override
  String get medicationMethod => 'طريقة إعطاء الدواء';

  @override
  String get weightKg => 'الوزن (كغ)';

  @override
  String get measurementMethod => 'طريقة القياس';

  @override
  String get mealType => 'نوع الوجبة';

  @override
  String get mealAmount => 'كمية الوجبة';

  @override
  String get servingAmount => 'حجم الحصة';

  @override
  String get waterAmount => 'كمية الماء';

  @override
  String get visitType => 'نوع الزيارة';

  @override
  String get diagnosisName => 'التشخيص';

  @override
  String get vaccineType => 'نوع اللقاح';

  @override
  String get sideEffects => 'الآثار الجانبية';

  @override
  String get groomingType => 'نوع العناية';

  @override
  String get shopName => 'اسم الصالون';

  @override
  String get cost => 'التكلفة';

  @override
  String get nextAppointment => 'الموعد التالي';

  @override
  String get brushingArea => 'منطقة التمشيط';

  @override
  String get duration => 'المدة';

  @override
  String get walkTime => 'وقت النزهة';

  @override
  String get distance => 'المسافة';

  @override
  String get title => 'العنوان';

  @override
  String get priority => 'الأولوية';

  @override
  String get stool => 'البراز';

  @override
  String get urine => 'البول';

  @override
  String get vomiting => 'القيء';

  @override
  String get normal => 'طبيعي';

  @override
  String get loose => 'ليّن';

  @override
  String get hard => 'صلب';

  @override
  String get bloodInStool => 'دم في البراز';

  @override
  String get cough => 'السعال';

  @override
  String get lethargy => 'الخمول';

  @override
  String get lossOfAppetite => 'فقدان الشهية';

  @override
  String get diarrhea => 'الإسهال';

  @override
  String get runnyNose => 'سيلان الأنف';

  @override
  String get sneezing => 'العطس';

  @override
  String get trembling => 'الرعشة';

  @override
  String get bloodInUrine => 'دم في البول';

  @override
  String get oral => 'فموي';

  @override
  String get injection => 'حقن';

  @override
  String get topical => 'موضعي';

  @override
  String get eyeDrops => 'قطرات للعين';

  @override
  String get earDrops => 'قطرات للأذن';

  @override
  String get vetHospital => 'عيادة بيطرية';

  @override
  String get homeScale => 'ميزان منزلي';

  @override
  String get holdAndWeigh => 'وزن بالحمل';

  @override
  String get breakfast => 'الإفطار';

  @override
  String get lunch => 'الغداء';

  @override
  String get dinner => 'العشاء';

  @override
  String get snack => 'وجبة خفيفة';

  @override
  String get veryLittle => 'قليل جداً';

  @override
  String get little => 'قليل';

  @override
  String get much => 'كثير';

  @override
  String get veryMuch => 'كثير جداً';

  @override
  String get general => 'عادي';

  @override
  String get regularCheckup => 'فحص روتيني';

  @override
  String get emergency => 'طارئ';

  @override
  String get mild => 'خفيف';

  @override
  String get severe => 'شديد';

  @override
  String get bath => 'استحمام';

  @override
  String get fullGrooming => 'عناية كاملة';

  @override
  String get partialGrooming => 'عناية جزئية';

  @override
  String get nails => 'الأظافر';

  @override
  String get earCleaning => 'تنظيف الأذن';

  @override
  String get tartarRemoval => 'إزالة الجير';

  @override
  String get analGlands => 'الغدد الشرجية';

  @override
  String get all => 'الكل';

  @override
  String get back => 'الظهر';

  @override
  String get belly => 'البطن';

  @override
  String get tail => 'الذيل';

  @override
  String get face => 'الوجه';

  @override
  String get paws => 'الأقدام';

  @override
  String get important => 'مهم';

  @override
  String get photosAndVideos => 'الصور · الفيديو';

  @override
  String get addMedia => 'إضافة وسائط';

  @override
  String get selectMediaMethod => 'اختيار طريقة إضافة الوسائط';

  @override
  String get useCamera => 'استخدام الكاميرا';

  @override
  String get takePhotoOrVideo => 'التقاط صورة أو فيديو';

  @override
  String get chooseFromGallery => 'الاختيار من المعرض';

  @override
  String get multiSelectHint => 'تحديد صور وفيديوهات متعددة';

  @override
  String get takePhoto => 'التقاط صورة';

  @override
  String get takePhotoDesc => 'التقاط صورة بالكاميرا';

  @override
  String get recordVideo => 'تسجيل فيديو';

  @override
  String get recordVideoDesc => 'تسجيل فيديو بالكاميرا';

  @override
  String get deleteThisPhoto => 'حذف الصورة';

  @override
  String get deletePhotoConfirm => 'حذف هذه الصورة؟';

  @override
  String get deleteThisVideo => 'حذف الفيديو';

  @override
  String get deleteVideoConfirm => 'حذف هذا الفيديو؟';

  @override
  String get muted => 'كتم الصوت';

  @override
  String get soundOn => 'الصوت مفعّل';

  @override
  String get allowPermissionInSettings => 'يُرجى السماح بالإذن في الإعدادات';

  @override
  String get openSettings => 'فتح الإعدادات';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get contactDeveloper => 'التواصل مع المطوّر';

  @override
  String get contact => 'تواصل';

  @override
  String get settingsLabel => 'الإعدادات';

  @override
  String get exportData => 'تصدير البيانات';

  @override
  String get importData => 'استيراد البيانات';

  @override
  String get sendFeedback => 'إرسال ملاحظات';

  @override
  String get faq => 'الأسئلة الشائعة';

  @override
  String get homeScreen => 'الشاشة الرئيسية';

  @override
  String get journalScreen => 'شاشة السجل';

  @override
  String get alarmScreen => 'شاشة التنبيهات';

  @override
  String get petManagement => 'إدارة الحيوانات الأليفة';

  @override
  String get recordCategories => 'فئات السجلات';

  @override
  String get whatIsPetSumtan => 'ما هو Pet Sumtan؟';

  @override
  String get todayRecordSummary => 'ملخص سجل اليوم';

  @override
  String get weeklyStats => 'الإحصائيات الأسبوعية';

  @override
  String get weightChangeChart => 'مخطط تغير الوزن';

  @override
  String get findNearbyHospitals => 'العثور على عيادات قريبة';

  @override
  String get addNewRecord => 'إضافة سجل جديد (+)';

  @override
  String get viewRecordList => 'عرض السجلات';

  @override
  String get editDeleteRecord => 'تعديل وحذف السجلات';

  @override
  String get attachMedia => 'إرفاق صور/فيديو';

  @override
  String get addAlarm => 'إضافة تنبيه';

  @override
  String get repeatAlarm => 'تنبيهات متكررة';

  @override
  String get advanceAlarmHint => 'تنبيهات مبكرة (D-7, D-3, D-1)';

  @override
  String get completeAlarm => 'إكمال التنبيهات';

  @override
  String get deleteAlarm => 'حذف التنبيهات';

  @override
  String get registerPet => 'تسجيل حيوان أليف';

  @override
  String get editProfile => 'تعديل الملف الشخصي';

  @override
  String get manageMultiplePets => 'إدارة عدة حيوانات أليفة';

  @override
  String get dogHealthGuide => 'دليل صحة الكلاب';

  @override
  String get catHealthGuide => 'دليل صحة القطط';

  @override
  String get notificationSettings => 'إعدادات الإشعارات';

  @override
  String get dogHealthCareGuide => 'دليل رعاية صحة الكلاب';

  @override
  String get catHealthCareGuide => 'دليل رعاية صحة القطط';

  @override
  String get healthGuideSubtitle => 'دليل صحي متخصص\nمبني على توصيات بيطرية.';

  @override
  String get vaccination => 'التطعيم';

  @override
  String get coreVaccines => 'اللقاحات الأساسية';

  @override
  String get required => 'إلزامي';

  @override
  String get nonCoreVaccines => 'اللقاحات الاختيارية';

  @override
  String get recommended => 'موصى به';

  @override
  String get parasitePrevention => 'الوقاية من الطفيليات';

  @override
  String get heartworm => 'الدودة القلبية';

  @override
  String get monthlyFreq => 'شهرياً';

  @override
  String get externalParasites => 'طفيليات خارجية (البراغيث/القراد)';

  @override
  String get internalParasites => 'طفيليات داخلية';

  @override
  String get threeToSixMonths => '3-6 أشهر';

  @override
  String get nutritionManagement => 'التغذية';

  @override
  String get dentalCare => 'العناية بالأسنان';

  @override
  String get healthCheckup => 'فحوصات صحية';

  @override
  String get emergencySigns => 'علامات طارئة';

  @override
  String get age => 'العمر';

  @override
  String get checkupCycle => 'دورية الفحص';

  @override
  String get mainItems => 'العناصر الرئيسية';

  @override
  String get exerciseLevel => 'مستوى النشاط';

  @override
  String get breedExamples => 'أمثلة السلالات';

  @override
  String get low => 'منخفض';

  @override
  String get high => 'مرتفع';

  @override
  String get menu => 'القائمة';

  @override
  String get helloGreeting => 'مرحباً! ';

  @override
  String get healthyTodayMsg => '\nهل أنت بصحة جيدة اليوم؟ 🐾';

  @override
  String get noRecordsYet => 'لا توجد سجلات بعد';

  @override
  String lastRecord(String time) {
    return 'آخر سجل · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return 'متوسط $value$unit/يوم';
  }

  @override
  String get weightTrend => '⚖️ اتجاه الوزن';

  @override
  String get weightChange => '⚖️ تغير الوزن';

  @override
  String get noWeightData => 'لا توجد بيانات وزن بعد';

  @override
  String get measuredWeight => 'الوزن المقاس';

  @override
  String get standardRange => 'النطاق المعياري';

  @override
  String get noTodayRecords => 'لا توجد سجلات لليوم بعد';

  @override
  String get homeNoRecordHint =>
      'سجّل الحالة والإخراج والوزن\nللعناية بصحة حيوانك الأليف.';

  @override
  String noRecordsForDate(String date) {
    return 'لا توجد سجلات لـ $date';
  }

  @override
  String recordsForDate(String date, String count) {
    return 'سجلات $date ($count)';
  }

  @override
  String get daySun => 'أح';

  @override
  String get dayMon => 'إث';

  @override
  String get dayTue => 'ثل';

  @override
  String get dayWed => 'أر';

  @override
  String get dayThu => 'خم';

  @override
  String get dayFri => 'جم';

  @override
  String get daySat => 'سب';

  @override
  String get whatToRecord => '📝 ماذا تريد أن تسجّل؟';

  @override
  String saveErrorMsg(String error) {
    return 'حدث خطأ أثناء الحفظ: $error';
  }

  @override
  String get alarmUpdated => 'تم تحديث التنبيه';

  @override
  String get alarmAdded => 'تمت إضافة التنبيه';

  @override
  String get editAlarm => 'تعديل التنبيه';

  @override
  String get deleteAlarmConfirm => 'حذف هذا التنبيه؟';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return 'سيتم حذف $name،\nوإلغاء الإشعار المجدول أيضاً.';
  }

  @override
  String get doneMsg => '✅ تم';

  @override
  String get laterMsg => '🕐 لاحقاً';

  @override
  String get saveCompletion => '✅ حفظ الإتمام';

  @override
  String completedQuestion(String type) {
    return 'هل أتممت $type؟';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'سيتم حفظ\n$name تلقائياً في سجلات اليوم.';
  }

  @override
  String completionSaved(String name) {
    return 'تم حفظ إتمام $name';
  }

  @override
  String get tapAlarmTypeHint => '👆 اضغط على نوع التنبيه الذي تريده';

  @override
  String countUnit(int count) {
    return '$count';
  }

  @override
  String dateCompleted(String date) {
    return '$date · مكتمل';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date مضى · اضغط لإعادة الجدولة';
  }

  @override
  String get completedLabel => 'مكتمل';

  @override
  String get edit => 'تعديل';

  @override
  String recordDeleteCannotUndo(String category) {
    return 'سيتم حذف سجل $category\nولا يمكن استعادته.';
  }

  @override
  String get hintMedicineNameAndDose => 'يُرجى إدخال اسم الدواء والجرعة';

  @override
  String get hintMedicineName => 'يُرجى إدخال اسم الدواء';

  @override
  String get hintDose => 'يُرجى إدخال الجرعة';

  @override
  String get hintWeightNumber => 'يُرجى إدخال الوزن كرقم';

  @override
  String get hintWeight => 'يُرجى إدخال الوزن';

  @override
  String get hintWeightIsNumber => 'يُرجى إدخال الوزن كرقم';

  @override
  String get hintWalkTime => 'يُرجى إدخال وقت النزهة';

  @override
  String get hintWalkTimeIsNumber => 'يُرجى إدخال وقت النزهة كرقم';

  @override
  String get hintWalkTimeNumber => 'يُرجى إدخال وقت النزهة كرقم';

  @override
  String get hintSelectBrushingArea =>
      'يُرجى اختيار منطقة تمشيط واحدة على الأقل';

  @override
  String get hintSelectVaccineType => 'يُرجى اختيار نوع لقاح واحد على الأقل';

  @override
  String get hintSelectGroomingType => 'يُرجى اختيار نوع عناية واحد على الأقل';

  @override
  String get hintTitle => 'يُرجى إدخال عنوان';

  @override
  String get hintVaccineName => 'يُرجى إدخال اسم اللقاح';

  @override
  String get hintSelectScheduledDate => 'يُرجى اختيار تاريخ';

  @override
  String get hintSelectScheduledTime => 'يُرجى اختيار وقت';

  @override
  String get hintVisitPurpose => 'يُرجى إدخال غرض الزيارة';

  @override
  String get hintSelectAppointmentDate => 'يُرجى اختيار تاريخ الموعد';

  @override
  String get hintSelectAppointmentTime => 'يُرجى اختيار وقت الموعد';

  @override
  String get hintMedicineNameInput => 'يُرجى إدخال اسم الدواء';

  @override
  String get hintSelectMedicationDate => 'يُرجى اختيار تاريخ الدواء';

  @override
  String get hintSelectMedicationTime => 'يُرجى اختيار وقت الدواء';

  @override
  String get hintAlarmName => 'يُرجى إدخال اسم التنبيه';

  @override
  String get hintSelectMealTime => 'يُرجى اختيار وقت الوجبة';

  @override
  String get hintSelectAlarmTime => 'يُرجى اختيار وقت التنبيه';

  @override
  String get noPetRegisterFirst =>
      'لا يوجد حيوان أليف بعد 🐾 يُرجى التسجيل من ملفك الشخصي أولاً!';

  @override
  String get alarmRescheduled => 'تمت إعادة جدولة التنبيه';

  @override
  String get examplePetName => 'مثال: سعدان';

  @override
  String get exampleBreed => 'مثال: مالطي';

  @override
  String get exampleBreedMulti => 'مثال: مالطي، فارسي';

  @override
  String get example30 => 'مثال: 30';

  @override
  String get example80 => 'مثال: 80';

  @override
  String get example200 => 'مثال: 200';

  @override
  String get example25 => 'مثال: 2.5';

  @override
  String get example35000 => 'مثال: 35000';

  @override
  String get example50000 => 'مثال: 50000';

  @override
  String get enterNameHint => 'يُرجى إدخال اسم';

  @override
  String get addNewPetTitle => 'إضافة حيوان أليف جديد';

  @override
  String get basicInfo => 'المعلومات الأساسية';

  @override
  String get idInfo => 'معلومات التعريف';

  @override
  String get idInfoOptional => 'معلومات التعريف (اختياري)';

  @override
  String get name => 'الاسم';

  @override
  String get petKind => 'النوع';

  @override
  String get breed => 'السلالة';

  @override
  String get weight => 'الوزن';

  @override
  String get microchip => 'الشريحة';

  @override
  String get registrationNumber => 'رقم التسجيل';

  @override
  String get birthDate => 'تاريخ الميلاد';

  @override
  String get gender => 'الجنس';

  @override
  String get male => 'ذكر';

  @override
  String get female => 'أنثى';

  @override
  String get maleSym => 'ذكر ♂';

  @override
  String get femaleSym => 'أنثى ♀';

  @override
  String get neutered => 'تعقيم';

  @override
  String get done => 'مكتمل';

  @override
  String get notDone => 'غير مكتمل';

  @override
  String get notEntered => 'غير مدخل';

  @override
  String get notRegistered => 'غير مسجل';

  @override
  String get dogEmoji => 'كلب 🐶';

  @override
  String get catEmoji => 'قط 🐱';

  @override
  String get otherEmoji => 'أخرى 🐾';

  @override
  String get noPetsRegistered => 'لا توجد حيوانات أليفة مسجّلة';

  @override
  String get registerPetPrompt => 'أضف حيواناً أليفاً و\nأدر صحته معاً.';

  @override
  String get registerPetBtn => 'إضافة حيوان أليف';

  @override
  String get editPet => 'تعديل الحيوان الأليف';

  @override
  String get neuteringStatus => 'حالة التعقيم';

  @override
  String get neuteredDone => 'تم التعقيم';

  @override
  String get notNeutered => 'لم يتم التعقيم';

  @override
  String get selectDateHint => 'اختر تاريخاً';

  @override
  String get saveChanges => 'حفظ التغييرات';

  @override
  String get registerBtn => 'تسجيل';

  @override
  String deletePetName(String name) {
    return 'حذف $name';
  }

  @override
  String deletePetConfirm(String name) {
    return 'حذف $name؟';
  }

  @override
  String deletePetWarning(String name) {
    return 'سيتم حذف جميع سجلات وتنبيهات $name ولا يمكن استعادتها.';
  }

  @override
  String petDeleted(String name) {
    return 'تم حذف $name';
  }

  @override
  String petAdded(String name) {
    return 'تمت إضافة $name';
  }

  @override
  String get storeUnavailableMsg =>
      'تعذّر الاتصال بالمتجر الآن. يُرجى المحاولة لاحقاً.';

  @override
  String get checkingPaymentMsg =>
      'جارٍ التحقق من معلومات الدفع. يُرجى المحاولة مجدداً.';

  @override
  String get paymentCompleteMsg =>
      'تم الدفع. يُرجى إدخال معلومات حيوانك الأليف الجديد.';

  @override
  String get addNewFamilyMember => 'إضافة فرد عائلة جديد؟';

  @override
  String get firstPetFreeDesc =>
      'الحيوان الأليف الأول مجاني. من الثاني فصاعداً، يلزم دفع رسوم لكل حيوان.';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '$count حيوانات أليفة مسجّلة\nيُرجى المحاولة عند توفر المتجر.';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '$count حيوانات أليفة مسجّلة\nادفع $price لإضافة فرد عائلة جديد.';
  }

  @override
  String get maybeLater => 'ربما لاحقاً';

  @override
  String get unavailable => 'غير متاح';

  @override
  String payAndAdd(String price) {
    return 'ادفع $price وأضف';
  }

  @override
  String get addNextAppointment => '+ إضافة الموعد التالي';

  @override
  String get pottyRecordSaved => 'تم تسجيل الإخراج';

  @override
  String get conditionRecordSaved => 'تم تسجيل الحالة';

  @override
  String get medicationRecordSaved => 'تم تسجيل الدواء';

  @override
  String get weightRecordSaved => 'تم تسجيل الوزن';

  @override
  String get mealRecordSaved => 'تم تسجيل الوجبة';

  @override
  String get waterRecordSaved => 'تم تسجيل الماء';

  @override
  String get vetVisitRecordSaved => 'تم تسجيل الزيارة البيطرية';

  @override
  String get vaccinationRecordSaved => 'تم تسجيل التطعيم';

  @override
  String get groomingRecordSaved => 'تم تسجيل العناية';

  @override
  String get brushingRecordSaved => 'تم تسجيل التمشيط';

  @override
  String get walkRecordSaved => 'تم تسجيل النزهة';

  @override
  String get memoSaved => 'تم حفظ الملاحظة';

  @override
  String get moreQuestions => 'هل لديك المزيد من الأسئلة؟';

  @override
  String get contactViaSendFeedback =>
      'تواصل معنا من الإعدادات > إرسال ملاحظات.\nسنردّ عليك قريباً.';

  @override
  String get contactViaSendFeedbackLong =>
      'تواصل معنا عبر إرسال ملاحظات في الإعدادات.\nسنردّ بسرعة.';

  @override
  String get privacyPolicyEffectiveDate =>
      'تسري سياسة الخصوصية هذه اعتباراً من 1 يناير 2026.\nآخر تحديث: 8 مايو 2026';

  @override
  String get privacyCollectedInfo =>
      'تُستخدم المعلومات المجمّعة فقط للأغراض المذكورة أدناه.';

  @override
  String get privacyDataFeatures =>
      'يوفر Pet Sumtan ميزات تصدير البيانات (النسخ الاحتياطي) واستيرادها (الاستعادة).';

  @override
  String get privacyPolicyMayUpdate =>
      'قد تُحدَّث سياسة الخصوصية هذه بسبب تغييرات قانونية أو في الخدمة.';

  @override
  String get privacyPolicyContact =>
      'لأي أسئلة حول سياسة الخصوصية هذه، يُرجى التواصل معنا أدناه.';

  @override
  String get catMeal => 'وجبة';

  @override
  String get catWater => 'الماء';

  @override
  String get catGrooming => 'العناية';

  @override
  String get catBrushing => 'تمشيط';

  @override
  String get catWalk => 'نزهة';

  @override
  String get catHospital => 'عيادة';

  @override
  String get catCondition => 'الحالة';

  @override
  String get catPotty => 'إخراج';

  @override
  String get mealFormTitle => '🍽️ تسجيل الوجبة';

  @override
  String get walkFormTitle => '🦮 تسجيل النزهة';

  @override
  String get weightFormTitle => '⚖️ تسجيل الوزن';

  @override
  String get waterFormTitle => '💧 تسجيل الماء';

  @override
  String get medicationFormTitle => '💊 تسجيل الدواء';

  @override
  String get groomingFormTitle => '✂️ تسجيل العناية';

  @override
  String get brushingFormTitle => '🪥 تسجيل التمشيط';

  @override
  String get conditionFormTitle => '🌡️ تسجيل الحالة';

  @override
  String get poopFormTitle => '💩 تسجيل الإخراج';

  @override
  String get vaccinationFormTitle => '💉 تسجيل التطعيم';

  @override
  String get hospitalFormTitle => '🏥 تسجيل العيادة';

  @override
  String get memoFormTitle => '📝 ملاحظة';

  @override
  String get measureMethod => 'طريقة القياس';

  @override
  String get feedAmount => 'الكمية المُعطاة';

  @override
  String get mlInputLabel => 'إدخال مل مباشرةً';

  @override
  String get alarmRescheduleNote =>
      'انتهى تاريخ هذا التنبيه المجدول.\nيمكنك تحديد تاريخ جديد أو حذفه.';

  @override
  String get nailTrim => 'قص الأظافر';

  @override
  String get shopNameExample => 'مثال: صالون الحيوانات الأليفة';

  @override
  String get poopRecordSaved => '💩 تم تسجيل قضاء الحاجة';

  @override
  String get memoRecordSaved => '📝 تم تسجيل المذكرة';

  @override
  String get other => 'أخرى';

  @override
  String get whole => 'الجسم كله';

  @override
  String get paw => 'مخلب';

  @override
  String get importance => 'الأهمية';

  @override
  String get timeTaken => 'الوقت المستغرق';

  @override
  String get example10 => 'مثال: 10';

  @override
  String get hospitalNameExample => 'مثال: مستشفى الحيوانات السعيد';

  @override
  String get diagnosisExample => 'مثال: التهاب الأمعاء، التهاب الجلد';

  @override
  String get memoTitlePlaceholder => 'أدخل عنوان المذكرة';

  @override
  String get hintMemoTitle => '💡 يرجى إدخال عنوان';

  @override
  String get poopType => 'النوع';

  @override
  String get poopStatus => 'الحالة';

  @override
  String get feces => 'براز';

  @override
  String get bloody => 'براز دموي';

  @override
  String get vaccineDhppl => 'لقاح DHPPL المركب';

  @override
  String get vaccineCorona => 'التهاب الأمعاء التاجي';

  @override
  String get vaccineKennelCough => 'سعال الكنيل';

  @override
  String get vaccineRabies => 'داء الكلب';

  @override
  String get vaccineInfluenza => 'الإنفلونزا';

  @override
  String get vaccineFvrcp => 'لقاح FVRCP المركب';

  @override
  String get vaccineFelv => 'سرطان الدم القطي (FeLV)';

  @override
  String get vaccineChlamydia => 'الكلاميديا';

  @override
  String get mute => 'كتم الصوت';

  @override
  String get photoVideo => 'صورة · فيديو';

  @override
  String photoVideoCount(String count) {
    return 'صورة · فيديو · $count';
  }

  @override
  String get selectMediaSource => 'اختر مصدر الوسائط';

  @override
  String get cameraCapture => 'الكاميرا';

  @override
  String get cameraCaptureSubtitle => 'التقاط صورة أو فيديو';

  @override
  String get selectFromGallery => 'المعرض';

  @override
  String get selectFromGallerySubtitle => 'اختر صور · فيديوهات';

  @override
  String get takePhotoSubtitle => 'التقاط صورة بالكاميرا';

  @override
  String get recordVideoSubtitle => 'تسجيل فيديو بالكاميرا';

  @override
  String get permissionRequired => 'يرجى السماح بالإذن في الإعدادات';

  @override
  String get confirmDeletePhoto => 'حذف هذه الصورة؟';

  @override
  String get confirmDeleteVideo => 'حذف هذا الفيديو؟';

  @override
  String get hintMedicineAndDose => '💡 يرجى إدخال اسم الدواء والجرعة';

  @override
  String deleteRecordBody(String category) {
    return 'سيتم حذف سجل $category\nولا يمكن التراجع عن ذلك.';
  }

  @override
  String dayCountShort(int days) {
    return '$days يوم';
  }

  @override
  String get helpIntroContent =>
      'بت سمتان هو تطبيق يمكنك من خلاله تسجيل وإدارة صحة حيوانك الأليف وحياته اليومية في مكان واحد.\nيمكنك بسهولة حفظ سجلات صحية متنوعة مثل الوجبات، شرب الماء، الإخراج، الوزن، الدواء وزيارات الطبيب البيطري، كما يمكنك استخدام التنبيهات حتى لا تفوّت المواعيد المهمة.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'اعرض جميع السجلات المضافة اليوم بنظرة واحدة. اضغط على أي سجل لعرض التفاصيل أو تعديله.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'تحقق من عدد مرات الإخراج، وكمية الطعام، وكمية الماء لهذا الأسبوع عبر الرسوم البيانية. يساعدك ذلك على فهم نمط حياة حيوانك الأليف.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'يعرض سجلات الوزن الأخيرة في رسم بياني حتى تتمكن من متابعة تغيرات الوزن بسهولة.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'اضغط على الزر للبحث عن المستشفيات البيطرية القريبة في خرائط Naver.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'اضغط على زر + أسفل الشاشة لاختيار فئة السجل وإضافة سجل جديد.';

  @override
  String get helpRecordCategoriesIntro =>
      'يمكنك تسجيل الحياة اليومية لحيوانك الأليف ضمن 12 فئة.';

  @override
  String get helpCategoryPottyName => 'الإخراج';

  @override
  String get helpCategoryPottyDesc =>
      'سجّل نشاط الإخراج وحالته. يمكنك أيضًا إرفاق صور.';

  @override
  String get helpCategoryConditionName => 'الحالة';

  @override
  String get helpCategoryConditionDesc => 'سجّل الحالة العامة لحيوانك الأليف.';

  @override
  String get helpCategoryMedicationName => 'الدواء';

  @override
  String get helpCategoryMedicationDesc =>
      'سجّل اسم الدواء، الجرعة ووقت إعطاء الدواء.';

  @override
  String get helpCategoryWeightName => 'الوزن';

  @override
  String get helpCategoryWeightDesc =>
      'سجّل الوزن بالكيلوغرام. يمكنك متابعة تغير الوزن من شاشة الرئيسية.';

  @override
  String get helpCategoryMealName => 'الوجبة';

  @override
  String get helpCategoryMealDesc =>
      'سجّل كمية الطعام ونوعه. يمكنك أيضًا إرفاق صور ومقاطع فيديو.';

  @override
  String get helpCategoryWaterName => 'الماء';

  @override
  String get helpCategoryWaterDesc =>
      'سجّل كمية الماء بالملليلتر. يمكنك أيضًا إرفاق صور ومقاطع فيديو.';

  @override
  String get helpCategoryHospitalName => 'المستشفى';

  @override
  String get helpCategoryHospitalDesc =>
      'سجّل اسم المستشفى وتفاصيل الزيارة. يمكنك أيضًا إرفاق صور ومقاطع فيديو.';

  @override
  String get helpCategoryVaccinationName => 'التطعيم';

  @override
  String get helpCategoryVaccinationDesc => 'سجّل نوع اللقاح وتاريخ التطعيم.';

  @override
  String get helpCategoryGroomingName => 'العناية';

  @override
  String get helpCategoryGroomingDesc =>
      'سجّل تفاصيل العناية وأرفق صورًا أو مقاطع فيديو.';

  @override
  String get helpCategoryDentalName => 'تنظيف الأسنان';

  @override
  String get helpCategoryDentalDesc =>
      'سجّل ما إذا تم تنظيف الأسنان وأضف ملاحظة.';

  @override
  String get helpCategoryWalkName => 'النزهة';

  @override
  String get helpCategoryWalkDesc => 'سجّل مسافة النزهة ومدتها.';

  @override
  String get helpCategoryMemoName => 'ملاحظة';

  @override
  String get helpCategoryMemoDesc => 'اترك أي ملاحظة بحرية.';

  @override
  String get helpJournalViewRecordListDesc =>
      'اعرض جميع السجلات حسب التاريخ. تساعدك شارات الفئات على تمييز نوع كل سجل بسرعة.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'اضغط على سجل لفتح صفحة التعديل. يمكنك تحديث المحتوى أو حذفه.';

  @override
  String get helpJournalAttachMediaDesc =>
      'في بعض الفئات مثل الوجبة، الماء، المستشفى، العناية والإخراج، يمكنك إرفاق صور أو مقاطع فيديو.';

  @override
  String get helpAlarmAddDesc =>
      'يمكنك إضافة أنواع مختلفة من التنبيهات مثل التطعيم، الدواء، زيارة الطبيب البيطري والعناية. اختر أولًا نوع التنبيه، ثم حدد التاريخ والوقت.';

  @override
  String get helpAlarmRepeatDesc =>
      'يمكنك ضبط قواعد التكرار مثل يوميًا، أسبوعيًا أو شهريًا. هذا مفيد للأدوية المنتظمة أو الوقاية من الدودة القلبية.';

  @override
  String get helpAlarmAdvanceDesc =>
      'للمواعيد المهمة مثل التطعيم، يمكنك تلقي تنبيهات مسبقة قبل 7 أيام، و3 أيام، ويوم واحد.';

  @override
  String get helpAlarmCompleteDesc =>
      'اضغط على تنبيه لتمييزه كمكتمل. يمكنك مراجعة التنبيهات المكتملة في قائمة التنبيهات السابقة.';

  @override
  String get helpAlarmDeleteDesc => 'اسحب التنبيه إلى اليسار لحذفه.';

  @override
  String get helpPetRegisterDesc =>
      'أضف حيوانك الأليف بإدخال الاسم، النوع، السلالة، الجنس، تاريخ الميلاد وحالة التعقيم.';

  @override
  String get helpPetEditProfileDesc =>
      'في شاشة الملف الشخصي، يمكنك تعديل الاسم، السلالة، الوزن، رقم الشريحة الإلكترونية، رقم التسجيل وصورة الملف الشخصي.';

  @override
  String get helpPetManageMultipleDesc =>
      'يمكنك إضافة عدة حيوانات أليفة. اضغط على شريحة الحيوان الأليف في الأعلى للتبديل إلى الحيوان الذي تريد إدارته.';

  @override
  String get helpDogHealthGuideDesc =>
      'يوفر معلومات صحية مبنية على إرشادات بيطرية، بما في ذلك جداول التطعيمات الأساسية والاختيارية، الوقاية من الدودة القلبية والطفيليات الخارجية، العناية بالأسنان والتغذية.';

  @override
  String get helpCatHealthGuideDesc =>
      'تحقق من جداول التطعيم الخاصة بالقطط، والوقاية من الطفيليات، والعناية بالأسنان، ومعلومات التغذية.';

  @override
  String get helpSettingsNotificationDesc =>
      'قم بتشغيل أو إيقاف جميع إشعارات التطبيق.';

  @override
  String get helpSettingsExportDesc =>
      'صدّر جميع البيانات المسجلة كملف ZIP. استخدمه كنسخة احتياطية عند تغيير الجهاز.';

  @override
  String get helpSettingsImportDesc =>
      'استورد ملف نسخة احتياطية ZIP تم تصديره مسبقًا لاستعادة بياناتك.';

  @override
  String get helpSettingsFeedbackDesc =>
      'أرسل لنا أي مشكلة أو اقتراح للتحسين عبر البريد الإلكتروني. يساعدنا ذلك كثيرًا في تحسين التطبيق.';

  @override
  String get helpFaqDeletePetQ =>
      'إذا حذفت حيوانًا أليفًا، هل سيتم حذف جميع سجلاته أيضًا؟';

  @override
  String get helpFaqDeletePetA =>
      'نعم. عند حذف حيوان أليف، سيتم أيضًا حذف جميع السجلات والتنبيهات المرتبطة به. يرجى عمل نسخة احتياطية باستخدام تصدير البيانات قبل الحذف.';

  @override
  String get helpFaqMultipleMediaQ => 'هل يمكنني إرفاق عدة صور بسجل واحد؟';

  @override
  String get helpFaqMultipleMediaA =>
      'نعم. يمكنك إرفاق عدة صور ومقاطع فيديو. يمكنك اختيارها من المعرض أو التقاطها مباشرة بالكاميرا.';

  @override
  String get helpFaqNoNotificationQ => 'لا أتلقى التنبيهات.';

  @override
  String get helpFaqNoNotificationA =>
      'تحقق مما إذا كانت تنبيهات بت سمتان مسموحًا بها في إعدادات التنبيهات على جهازك. تحقق أيضًا من أن تنبيهات التطبيق مفعلة من الإعدادات > إعدادات التنبيهات.';

  @override
  String get helpFaqMoveDataQ => 'هل يمكنني نقل بياناتي إلى جهاز جديد؟';

  @override
  String get helpFaqMoveDataA =>
      'نعم. على جهازك القديم، احفظ ملف نسخة احتياطية من الإعدادات > تصدير البيانات. ثم استعده على الجهاز الجديد من الإعدادات > استيراد البيانات.';

  @override
  String get helpFaqMultiplePetsQ => 'هل يمكنني إضافة عدة حيوانات أليفة؟';

  @override
  String get helpFaqMultiplePetsA =>
      'افتراضيًا، يمكنك إضافة حيوان أليف واحد مجانًا. إضافة المزيد من الحيوانات الأليفة متاحة كميزة مدفوعة.';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan هو تطبيق يمكن استخدامه دون تسجيل عضوية، ويتم تخزين جميع البيانات على جهاز المستخدم فقط. لا ننقل المعلومات الشخصية إلى خوادم خارجية، ونحمي معلومات حيواناتك الأليفة الثمينة بأمان.';

  @override
  String get privacySection1Title => 'عناصر المعلومات الشخصية التي يتم جمعها';

  @override
  String get privacySection1Body =>
      'يمكن استخدام Pet Sumtan دون تسجيل عضوية، ولا يجمع معلومات منفصلة يمكن أن تحدد هوية المستخدم الشخصية. ومع ذلك، قد يتم تخزين المعلومات التالية على الجهاز لتوفير وظائف التطبيق.';

  @override
  String get privacyLocalStorageInfo => 'المعلومات المخزنة محليًا على الجهاز';

  @override
  String get privacyPetInfo =>
      'معلومات الحيوان الأليف: الاسم، النوع، السلالة، تاريخ الميلاد، الجنس، الوزن، حالة التعقيم، رقم الشريحة الإلكترونية، ورقم تسجيل الحيوان';

  @override
  String get privacyHealthRecords =>
      'السجلات الصحية: الإخراج، الوجبات، شرب الماء، الوزن، الدواء، التطعيم، المستشفى، العناية، تنظيف الأسنان، النزهة، الحالة، الملاحظات، وغيرها من السجلات التي يدخلها المستخدم مباشرة';

  @override
  String get privacyAttachedMedia =>
      'الوسائط المرفقة: الصور ومقاطع الفيديو التي يلتقطها المستخدم أو يختارها مباشرة';

  @override
  String get privacyNotificationSettings =>
      'إعدادات التنبيهات: نوع التنبيه، التاريخ والوقت المجدولان، وقواعد التكرار';

  @override
  String get privacyInAppPurchaseTitle => 'المشتريات داخل التطبيق';

  @override
  String get privacyPaymentProcessing =>
      'تتم معالجة المدفوعات عبر Apple App Store أو Google Play Store، ولا يجمع التطبيق معلومات الدفع أو يخزنها مباشرة.';

  @override
  String get privacyReceiptVerification =>
      'تتم معالجة الحد الأدنى فقط من المعلومات اللازمة للتحقق من إيصالات الشراء وفقًا لسياسات كل منصة.';

  @override
  String get privacySection2Title =>
      'الغرض من جمع المعلومات الشخصية واستخدامها';

  @override
  String get privacyPurposeRecords => 'حفظ سجلات صحة الحيوانات الأليفة وعرضها';

  @override
  String get privacyPurposeStats =>
      'توفير إحصاءات الشاشة الرئيسية، مثل حالة الإخراج والوجبات وشرب الماء الأسبوعية، بالإضافة إلى مخططات تغيّر الوزن';

  @override
  String get privacyPurposeReminders =>
      'إرسال تنبيهات متعلقة بالصحة، مثل التطعيم والدواء وزيارات المستشفى';

  @override
  String get privacyPurposeBackupRestore =>
      'توفير ميزات النسخ الاحتياطي واستعادة البيانات';

  @override
  String get privacyPurposePaidEligibility =>
      'التحقق من أهلية استخدام الميزات المدفوعة';

  @override
  String get privacySection3Title => 'الاحتفاظ بالمعلومات الشخصية وحذفها';

  @override
  String get privacyRetentionBody =>
      'يتم تخزين جميع بيانات Pet Sumtan فقط في قاعدة البيانات المحلية (SQLite) على جهاز المستخدم، ولا يتم إرسالها إلى خوادم خارجية.';

  @override
  String get privacyDataDeletionMethod => 'طريقة حذف البيانات';

  @override
  String get privacyDeleteInApp =>
      'يمكنك حذف معلومات الحيوانات الأليفة والسجلات مباشرة من الإعدادات > إدارة البيانات داخل التطبيق.';

  @override
  String get privacyDeleteUninstall =>
      'عند حذف التطبيق، سيتم أيضًا حذف جميع البيانات المخزنة على الجهاز.';

  @override
  String get privacyDeleteBackupWarning =>
      'يرجى ملاحظة أنه إذا لم تقم بعمل نسخة احتياطية (تصدير) قبل حذف التطبيق، فلن تتمكن من استعادة البيانات.';

  @override
  String get privacySection4Title => 'تقديم المعلومات الشخصية إلى أطراف ثالثة';

  @override
  String get privacyThirdPartyBody =>
      'لا يقدم Pet Sumtan المعلومات الشخصية للمستخدمين إلى جهات خارجية. ومع ذلك، تُستثنى الحالات التالية.';

  @override
  String get privacyThirdPartyUserExport =>
      'عندما يستخدم المستخدم بنفسه ميزة تصدير البيانات، مثل مشاركة ملف النسخة الاحتياطية';

  @override
  String get privacyThirdPartyLegalRequest =>
      'عندما يكون ذلك مطلوبًا بموجب القانون أو بناءً على طلب قانوني من سلطات التحقيق';

  @override
  String get privacySection5Title => 'إرشادات أذونات الوصول';

  @override
  String get privacyPermissionsBody =>
      'قد يطلب التطبيق الأذونات التالية لتوفير وظائفه. حتى إذا لم تمنح إذنًا معينًا، يمكنك استخدام بقية الوظائف بشكل طبيعي باستثناء الوظيفة التي تتطلب ذلك الإذن.';

  @override
  String get privacyPermissionCameraName => 'الكاميرا';

  @override
  String get privacyPermissionCameraDesc =>
      'تُستخدم لالتقاط الصور أو تسجيل مقاطع الفيديو مباشرة وإرفاقها بالسجلات الصحية.';

  @override
  String get privacyPermissionMediaName => 'الوصول إلى الصور والوسائط';

  @override
  String get privacyPermissionMediaDesc =>
      'يُستخدم لاختيار الصور ومقاطع الفيديو من المعرض وإرفاقها بالسجلات.';

  @override
  String get privacyPermissionNotificationName => 'الإشعارات';

  @override
  String get privacyPermissionNotificationDesc =>
      'تُستخدم لإرسال تنبيهات متعلقة بالصحة، مثل التطعيم والدواء وزيارات المستشفى.';

  @override
  String get privacyPermissionFileName => 'الوصول إلى الملفات (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'يُستخدم لحفظ ملفات النسخ الاحتياطي للبيانات أو تحميلها.';

  @override
  String get privacySection6Title => 'النسخ الاحتياطي للبيانات واستعادتها';

  @override
  String get privacyBackupExport =>
      'التصدير: يمكنك حفظ جميع بيانات التطبيق أو مشاركتها كملف (.zip).';

  @override
  String get privacyBackupImport =>
      'الاستيراد: يمكنك تحميل ملف نسخة احتياطية تم تصديره سابقًا واستعادة البيانات.';

  @override
  String get privacyBackupWarning =>
      'يدير المستخدم ملفات النسخ الاحتياطي مباشرة. يرجى الحرص على عدم مشاركة الملفات مع الآخرين.';

  @override
  String get privacySection7Title => 'حماية المعلومات الشخصية للأطفال';

  @override
  String get privacyChildrenBody =>
      'لا يجمع Pet Sumtan معلومات شخصية منفصلة من الأطفال دون سن 14 عامًا. يتم تخزين جميع بيانات التطبيق على الجهاز فقط ولا يتم إرسالها إلى خوادم خارجية، لذلك يمكن للأطفال أيضًا استخدام التطبيق بأمان.';

  @override
  String get privacySection8Title => 'تغييرات سياسة الخصوصية';

  @override
  String get privacyPolicyChangeNotice =>
      'في حال حدوث تغييرات، سنبلغك من خلال ملاحظات تحديث التطبيق أو الإشعارات داخل التطبيق.';

  @override
  String get privacyPolicyChangeEffective =>
      'تدخل السياسة المعدلة حيز التنفيذ بعد مرور 7 أيام من الإشعار.';

  @override
  String get privacySection9Title => 'الاستفسارات';

  @override
  String get hgDogHeroTitle => 'دليل العناية بصحة الكلاب';

  @override
  String get hgCatHeroTitle => 'دليل العناية بصحة القطط';

  @override
  String get hgHeroSubtitle => 'دليل صحي احترافي\nمبني على توصيات بيطرية.';

  @override
  String get hgVaccination => 'التطعيم';

  @override
  String get hgCoreVaccines => 'اللقاحات الأساسية (Core Vaccine)';

  @override
  String get hgNonCoreVaccines => 'اللقاحات غير الأساسية (Non-Core)';

  @override
  String get hgRequired => 'إلزامي';

  @override
  String get hgRecommended => 'موصى به';

  @override
  String get hgParasitePrevention => 'الوقاية من الطفيليات';

  @override
  String get hgHeartworm => 'الدودة القلبية';

  @override
  String get hgMonthly => 'شهريًا';

  @override
  String get hgExternalParasites => 'الطفيليات الخارجية (البراغيث والقراد)';

  @override
  String get hgInternalParasites => 'الطفيليات الداخلية';

  @override
  String get hgThreeToSixMonths => 'كل 3 إلى 6 أشهر';

  @override
  String get hgRegular => 'دوري';

  @override
  String get hgRegularCheckup => 'فحص صحي دوري';

  @override
  String get hgDentalCare => 'العناية بالأسنان والفم';

  @override
  String get hgForbiddenFoods => 'أطعمة ممنوعة تمامًا';

  @override
  String get hgEmergencySymptoms => 'أعراض تتطلب زيارة فورية للطبيب البيطري';

  @override
  String get hgExerciseMentalHealth => 'التمارين والصحة النفسية';

  @override
  String get hgWalk => 'النزهة';

  @override
  String get hgDaily => 'يوميًا';

  @override
  String get hgBreedExerciseAmount => 'كمية التمارين الموصى بها حسب السلالة';

  @override
  String get hgPlayBrainStimulation => 'اللعب وتحفيز الدماغ';

  @override
  String get hgStressSignals => 'التعرّف على علامات التوتر';

  @override
  String get hgCaution => 'تنبيه';

  @override
  String get hgSocialization => 'التنشئة الاجتماعية والتحفيز البيئي';

  @override
  String get hgDogCoreDhppl =>
      '**DHPPL (لقاح مركّب)** — ديستمبر، التهاب الكبد، بارفو، نظير الإنفلونزا، والليبتوسبيرا.\nالجرعة الأولى في عمر 6 إلى 8 أسابيع، 3 جرعات بفاصل 3 إلى 4 أسابيع، ثم جرعة معززة سنوية';

  @override
  String get hgDogCoreRabies =>
      '**داء الكلب** — الجرعة الأولى بعد عمر 3 أشهر، ثم مرة واحدة سنويًا (تطعيم إلزامي قانونيًا)';

  @override
  String get hgDogCoreCorona =>
      '**التهاب الأمعاء التاجي** — يبدأ في عمر 6 إلى 8 أسابيع، جرعتان بفاصل 3 إلى 4 أسابيع، ثم جرعة معززة سنوية';

  @override
  String get hgDogNonCoreKennel =>
      '**سعال الكنيل** — موصى به للكلاب في بيئات متعددة الحيوانات أو عند استخدام صالونات العناية أو الفنادق. يتوفر بشكل أنفي أو حقن';

  @override
  String get hgDogNonCoreFlu =>
      '**إنفلونزا الكلاب** — موصى بها للكلاب كثيرة النشاط في الخارج أو التي تخالط كلابًا أخرى كثيرًا';

  @override
  String get hgDogHeartworm1 =>
      'خلال موسم نشاط البعوض وما حوله (مارس إلى نوفمبر)، يُوصى بإعطاء دواء الوقاية **مرة واحدة شهريًا**';

  @override
  String get hgDogHeartworm2 =>
      'العدوى صعبة العلاج وقد تكون قاتلة — **الوقاية هي أفضل حماية**';

  @override
  String get hgDogHeartworm3 =>
      'قبل بدء الدواء، يجب إجراء اختبار للتأكد من عدم وجود عدوى';

  @override
  String get hgDogHeartworm4 =>
      'الوقاية طوال العام أكثر أمانًا وغالبًا ما يوصي بها الأطباء البيطريون';

  @override
  String get hgDogExternalParasites1 =>
      'إعطاء أدوية الوقاية الموضعية أو الفموية **شهريًا**';

  @override
  String get hgDogExternalParasites2 =>
      'بعد النزهة، افحص الأذنين وبين الأصابع وتحت الإبطين للتأكد من عدم وجود قراد';

  @override
  String get hgDogExternalParasites3 =>
      'عند إزالة القراد، استخدم ملقطًا واسحب ببطء إلى الأعلى بشكل مستقيم دون لف';

  @override
  String get hgDogInternalParasites1 =>
      'الديدان الأسطوانية والديدان الخطافية والديدان السوطية: إعطاء دواء الديدان **كل 3 إلى 6 أشهر**';

  @override
  String get hgDogInternalParasites2 =>
      'للجراء من عمر أسبوعين: إزالة الديدان 4 مرات بفاصل أسبوعين، ثم الاستمرار بالمتابعة الدورية';

  @override
  String get hgDental1 =>
      'تنظيف الأسنان يوميًا هو الأفضل — ويُنصح به على الأقل **3 مرات أسبوعيًا**';

  @override
  String get hgDental2 =>
      'استخدم دائمًا **معجون أسنان مخصصًا للحيوانات الأليفة**. لا تستخدم معجون أسنان بشريًا يحتوي على الزيليتول';

  @override
  String get hgDental3 =>
      'تراكم الجير الشديد يتطلب تنظيفًا احترافيًا في عيادة بيطرية تحت التخدير العام';

  @override
  String get hgDental4 =>
      'يمكن أن تساعد مكافآت الأسنان وألعاب الأسنان كوسائل عناية إضافية';

  @override
  String get hgDogForbiddenFoodAlert =>
      'الأطعمة التالية سامة للكلاب. حتى الكميات الصغيرة قد تكون خطيرة، لذلك لا تقدّمها أبدًا.';

  @override
  String get hgDogForbiddenGrape =>
      '**العنب والزبيب** — قد يسببان فشلًا كلويًا، وحتى الكميات الصغيرة قد تكون قاتلة';

  @override
  String get hgDogForbiddenChocolate =>
      '**الشوكولاتة والكاكاو** — تسمم بالثيوبرومين، فشل قلبي، وتشنجات';

  @override
  String get hgDogForbiddenOnion =>
      '**البصل والثوم والكراث** — تدمّر خلايا الدم الحمراء وتسبب فقر الدم الانحلالي';

  @override
  String get hgDogForbiddenXylitol =>
      '**الزيليتول** — يسبب إفرازًا مفرطًا للأنسولين، نقص سكر الدم، وفشلًا كبديًا';

  @override
  String get hgDogForbiddenMacadamia =>
      '**مكسرات المكاديميا** — ضعف عضلي، حمى عالية، وقيء';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**العجين النيء والكحول** — تسمم بالإيثانول ونقص سكر الدم';

  @override
  String get hgDogForbiddenAvocado =>
      '**الأفوكادو** — يحتوي على مادة البرسين وقد يسبب القيء والإسهال';

  @override
  String get hgEmergencyAlert =>
      'إذا ظهرت أي من الأعراض التالية، توجّه فورًا إلى عيادة بيطرية.';

  @override
  String get hgDogEmergency1 => 'فقدان كامل للشهية لأكثر من 24 ساعة';

  @override
  String get hgDogEmergency2 =>
      'تكرار القيء أو الإسهال 3 مرات أو أكثر في اليوم';

  @override
  String get hgDogEmergency3 =>
      'انتفاخ البطن ومحاولات قيء غير منتجة، احتمال تمدد أو التواء المعدة';

  @override
  String get hgDogEmergency4 => 'صعوبة في التنفس، شحوب اللثة، أو الزرقة';

  @override
  String get hgDogEmergency5 => 'نوبات، تشنجات، أو فقدان الوعي';

  @override
  String get hgDogEmergency6 => 'عدم التبول لأكثر من 12 ساعة';

  @override
  String get hgDogEmergency7 => 'إصابة واضحة، كسر، أو نزيف شديد';

  @override
  String get hgDogExerciseAlert =>
      'بالنسبة للكلاب، قلة التمارين ليست مجرد مشكلة لياقة. فقد تكون سببًا رئيسيًا للتوتر والقلق والسلوكيات التخريبية.';

  @override
  String get hgDogWalk1 =>
      'السلالات الصغيرة: على الأقل **20 إلى 30 دقيقة** يوميًا؛ السلالات المتوسطة والكبيرة: يُوصى بـ **ساعة واحدة أو أكثر**';

  @override
  String get hgDogWalk2 =>
      'النزهة ليست فقط لقضاء الحاجة — فهي توفر **تحفيزًا شميًا، وتنشئة اجتماعية، وتخفيفًا للتوتر**';

  @override
  String get hgDogWalk3 =>
      'اسمح بوقت كافٍ للشم — فهو فعّال جدًا في تخفيف الإرهاق الذهني';

  @override
  String get hgDogWalk4 =>
      'في الصيف، انتبه لحروق الأسفلت — يُنصح بالمشي قبل الساعة 7 صباحًا أو في المساء';

  @override
  String get hgDogPlay1 =>
      '**لعبة إحضار الكرة وشد الحبل** — تساعد على تفريغ الطاقة الجسدية وتقوية الرابط مع المالك';

  @override
  String get hgDogPlay2 =>
      '**ألعاب الشم** — تحفّز الدماغ وقد تعطي تأثيرًا مشابهًا لنزهة مدتها 30 دقيقة خلال 15 دقيقة فقط';

  @override
  String get hgDogPlay3 =>
      '**ألعاب الألغاز وألعاب كونغ** — تساعد على تقليل قلق الانفصال أثناء البقاء وحيدًا';

  @override
  String get hgDogPlay4 =>
      'مجرد **10 إلى 15 دقيقة** من اللعب المركز يوميًا يمكن أن يقلل التوتر بشكل ملحوظ';

  @override
  String get hgDogStress1 =>
      'تدمير الأثاث أو الأشياء والنباح المفرط قد يشيران إلى نقص التمارين أو التحفيز';

  @override
  String get hgDogStress2 =>
      'عض الذيل أو اللعق المفرط للقدمين أو الجسم قد يدل على سلوك قهري أو محاولة لتخفيف التوتر';

  @override
  String get hgDogStress3 =>
      'القلق الشديد عند خروج المالك وحدوث أخطاء في قضاء الحاجة قد يشيران إلى قلق الانفصال';

  @override
  String get hgDogStress4 =>
      'إذا استمرت الأعراض، استشر طبيبًا بيطريًا أو اختصاصي سلوك حيواني';

  @override
  String get hgDogSocial1 =>
      'العمر بين **3 و14 أسبوعًا** هو الفترة الذهبية للتنشئة الاجتماعية — التعرض لمختلف الأشخاص والأصوات والبيئات مهم';

  @override
  String get hgDogSocial2 =>
      'التفاعل مع الكلاب الأخرى — يمكن أن تساعد حدائق الكلاب ودروس الجراء';

  @override
  String get hgDogSocial3 =>
      'تجربة أماكن وروائح وأصوات جديدة تساهم في الإثراء الذهني';

  @override
  String get hgDogSocial4 =>
      'التدريب بالتعزيز الإيجابي، مثل النقرات والمكافآت، يحفّز الدماغ ويقوّي الرابط في الوقت نفسه';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP (لقاح مركّب)** — فيروس الهربس القطي، الكاليسي، ونقص الكريات البيضاء الشامل.\nالجرعة الأولى في عمر 6 إلى 8 أسابيع، 3 جرعات بفاصل 3 إلى 4 أسابيع، ثم كل 1 إلى 3 سنوات';

  @override
  String get hgCatCoreRabies =>
      '**داء الكلب** — إلزامي للقطط التي تخرج إلى الخارج، وموصى به أيضًا للقطط المنزلية (إلزامي قانونيًا)';

  @override
  String get hgCatNonCoreFelv =>
      '**سرطان الدم القطي (FeLV)** — موصى به بشدة للقطط التي تخرج وللمنازل متعددة القطط';

  @override
  String get hgCatNonCoreChlamydia =>
      '**كلاميديا القطط** — تساعد في الوقاية من التهاب الملتحمة في البيئات متعددة القطط';

  @override
  String get hgCatNonCoreFiv =>
      '**فيروس نقص المناعة القطي (FIV)** — مهم خصوصًا للقطط الذكور التي تخرج، وينتقل عبر جروح العراك';

  @override
  String get hgCatExternalParasites1 =>
      'القطط التي تخرج: إعطاء وقاية من البراغيث والقراد **مرة واحدة شهريًا**';

  @override
  String get hgCatExternalParasites2 =>
      'حتى القطط المنزلية قد تتعرض للبراغيث التي تدخل عبر الملابس أو الأحذية → يُوصى بالوقاية **كل 3 أشهر**';

  @override
  String get hgCatExternalParasites3 =>
      'عند استخدام المنتجات الموضعية، ضعها بدقة على مؤخرة الرقبة';

  @override
  String get hgCatInternalHeartworm => 'الطفيليات الداخلية والدودة القلبية';

  @override
  String get hgCatInternalParasites1 =>
      'الديدان الأسطوانية والشريطية: إعطاء دواء الديدان **كل 3 إلى 6 أشهر**';

  @override
  String get hgCatInternalParasites2 =>
      'إذا كانت تتناول لحمًا أو سمكًا نيئًا، يُوصى بإجراء فحوصات أكثر تكرارًا';

  @override
  String get hgCatHeartworm1 =>
      'الدودة القلبية — لا يوجد للقطط **علاج شافٍ، لذلك الوقاية هي الخيار الوحيد**. يُوصى بشدة بالوقاية الشهرية للقطط التي تخرج';

  @override
  String get hgCatMajorDiseases => 'أهم أمراض القطط التي يجب الانتباه لها';

  @override
  String get hgCatDiseaseAlert =>
      'تميل القطط إلى إخفاء الألم والمرض، لذلك غالبًا لا تظهر الأعراض إلا بعد تقدم الحالة. الفحوصات الدورية مهمة بشكل خاص.';

  @override
  String get hgCatDiseaseFlutd =>
      '**مرض الجهاز البولي السفلي لدى القطط (FLUTD)** — شائع لدى الذكور. عدم القدرة على التبول حالة طارئة فورية';

  @override
  String get hgCatDiseaseCkd =>
      '**مرض الكلى المزمن (CKD)** — من أبرز أسباب الوفاة لدى القطط المسنة. فحص الكلى الدوري ضروري ابتداءً من عمر 7 سنوات';

  @override
  String get hgCatDiseaseDiabetes =>
      '**سكري القطط** — الخطر أعلى لدى القطط البدينة والمسنة. راقب زيادة العطش والتبول';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**فرط نشاط الغدة الدرقية** — شائع لدى القطط فوق 10 سنوات. راقب فقدان الوزن وزيادة الشهية وفرط النشاط';

  @override
  String get hgCatDiseaseStomatitis =>
      '**التهاب الفم** — شائع جدًا لدى القطط. يجب فحص رائحة الفم الكريهة أو سيلان اللعاب أو فقدان الشهية';

  @override
  String get hgCatDiseaseFhv =>
      '**فيروس الهربس القطي (FHV-1)** — بعد الإصابة يبقى كامنًا مدى الحياة. يمكن أن يسبب التوتر عودة الأعراض مثل العطاس وإفرازات العين والتهاب الملتحمة';

  @override
  String get hgHydrationDiet => 'الترطيب وإدارة النظام الغذائي';

  @override
  String get hgCatHydrationAlert =>
      'القطط بطبيعتها تشرب كمية قليلة من الماء، وهي عرضة لأمراض المسالك البولية. تشجيع شرب الماء مهم جدًا.';

  @override
  String get hgCatHydration1 =>
      'يُوصى بالطعام الرطب، مثل العلب أو الأكياس، للمساعدة في زيادة الترطيب';

  @override
  String get hgCatHydration2 =>
      'تفضّل العديد من القطط الماء الجاري — يمكن أن تكون **نافورة الماء** فعالة';

  @override
  String get hgCatHydration3 =>
      'ضع وعاء الماء بعيدًا عن وعاء الطعام؛ غالبًا ما تفضّل القطط الأوعية الواسعة والضحلة';

  @override
  String get hgCatHydration4 =>
      'كمية الماء المستهدفة: حوالي **40 إلى 60 مل** لكل كغ من وزن الجسم يوميًا';

  @override
  String get hgCatForbiddenFoodAlert =>
      'الأطعمة التالية سامة للقطط. حتى الكميات الصغيرة قد تكون خطيرة، لذلك لا تقدّمها أبدًا.';

  @override
  String get hgCatForbiddenOnion =>
      '**البصل والثوم والكراث** — تدمّر خلايا الدم الحمراء وتسبب فقر الدم الانحلالي؛ القطط أكثر حساسية من الكلاب';

  @override
  String get hgCatForbiddenGrape =>
      '**العنب والزبيب** — قد يسببان فشلًا كلويًا';

  @override
  String get hgCatForbiddenChocolate =>
      '**الشوكولاتة والكافيين** — سامة للقلب والجهاز العصبي';

  @override
  String get hgCatForbiddenRawFish =>
      '**السمك النيء عند تقديمه باستمرار** — قد يسبب نقص الثيامين، فيتامين B1';

  @override
  String get hgCatForbiddenMilk =>
      '**الحليب ومنتجات الألبان** — كثير من القطط البالغة لديها عدم تحمل اللاكتوز وقد تصاب بالإسهال';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**الزيليتول والكحول** — سامان للكبد والجهاز العصبي';

  @override
  String get hgCatForbiddenAvocado =>
      '**الأفوكادو** — يحتوي على البرسين وقد يسبب القيء والإسهال';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**بياض البيض النيء** — الأفيدين يمنع امتصاص البيوتين وقد يسبب مشاكل في الجلد والفراء';

  @override
  String get hgCatEmergency1 =>
      '**عدم القدرة على التبول أو وجود دم في البول** — انسداد الإحليل حالة طارئة، خصوصًا لدى الذكور';

  @override
  String get hgCatEmergency2 =>
      'فقدان كامل للشهية لأكثر من 24 ساعة، مع خطر الإصابة بالكبد الدهني';

  @override
  String get hgCatEmergency3 =>
      '**التنفس والفم مفتوح** — ليس طبيعيًا أبدًا لدى القطط ويتطلب رعاية طارئة فورية';

  @override
  String get hgCatEmergency4 =>
      'شلل مفاجئ في الساقين الخلفيتين أو برودتهما، احتمال وجود جلطة';

  @override
  String get hgCatEmergency5 => 'نوبات، تشنجات، أو فقدان الوعي';

  @override
  String get hgCatEmergency6 => 'شحوب اللثة أو اللسان، أو اصفرار/يرقان';

  @override
  String get hgCatEmergency7 =>
      'تكرار القيء أو الإسهال 3 مرات أو أكثر في اليوم، أو وجود دم في البراز/القيء';

  @override
  String get hgCatEmergency8 => 'إصابة واضحة، كسر، أو نزيف شديد';

  @override
  String get hgEnvironmentMentalHealth => 'البيئة والصحة النفسية';

  @override
  String get hgIndoorEnvironment => 'إدارة البيئة الداخلية';

  @override
  String get hgStressManagement => 'إدارة التوتر';

  @override
  String get hgCatEnvironment1 =>
      '**صناديق الرمل**: عدد القطط + 1 أو أكثر، مع التنظيف اليومي';

  @override
  String get hgCatEnvironment2 =>
      '**ألواح الخدش**: على الأقل 2، مع الجمع بين الأنواع الرأسية والأفقية';

  @override
  String get hgCatEnvironment3 =>
      '**المساحات المرتفعة**: وفر أبراج قطط أو رفوفًا أو مساحات عمودية لإشباع غريزة تحديد المنطقة';

  @override
  String get hgCatEnvironment4 =>
      '**أماكن الاختباء**: وفر صناديق أو أنفاقًا أو أماكن آمنة يمكن للقط الاختباء فيها';

  @override
  String get hgCatStress1 =>
      'يرتبط التوتر لدى القطط مباشرة بانخفاض المناعة وFLUTD وعودة فيروس الهربس القطي';

  @override
  String get hgCatStress2 =>
      'أثناء التغييرات البيئية الكبيرة مثل الانتقال أو قدوم فرد جديد للعائلة، قد يساعد ناشر الفيرومونات مثل Feliway';

  @override
  String get hgCatStress3 =>
      'وفّر ما لا يقل عن **10 إلى 15 دقيقة** من اللعب التفاعلي بالألعاب يوميًا';

  @override
  String get hgCatStress4 =>
      'في المنازل متعددة القطط، افصل الموارد مثل أوعية الطعام وصناديق الرمل وأماكن النوم حسب عدد القطط';

  @override
  String get hgAge => 'العمر';

  @override
  String get hgCheckupCycle => 'دورة الفحص';

  @override
  String get hgMainItems => 'العناصر الرئيسية';

  @override
  String get hgAge1to6 => 'من 1 إلى 6 سنوات';

  @override
  String get hgAge7to10 => 'من 7 إلى 10 سنوات';

  @override
  String get hgAge11Plus => '11 سنة فأكثر';

  @override
  String get hgYearlyOnce => 'مرة واحدة سنويًا';

  @override
  String get hgYearlyTwice => 'مرتان سنويًا';

  @override
  String get hgEvery3to4Months => 'كل 3 إلى 4 أشهر';

  @override
  String get hgDogCheckupItems1 => 'فحص دم، سماع القلب، الوزن، فحص الأسنان';

  @override
  String get hgDogCheckupItems2 =>
      'الدم، البول، الأشعة السينية، ضغط الدم، المفاصل';

  @override
  String get hgDogCheckupItems3 =>
      'فحوصات دم شاملة، تصوير بالموجات فوق الصوتية، وظائف الكلى والكبد';

  @override
  String get hgCatCheckupItems1 => 'فحص دم، فحص بول، الوزن، فحص الأسنان';

  @override
  String get hgCatCheckupItems2 =>
      'قيم الكلى والكبد، ضغط الدم، الغدة الدرقية T4';

  @override
  String get hgCatCheckupItems3 =>
      'فحوصات دم شاملة، تصوير بطني بالموجات فوق الصوتية، مراقبة مكثفة للكلى';

  @override
  String get hgExerciseAmount => 'مستوى التمرين';

  @override
  String get hgBreedExamples => 'أمثلة على السلالات';

  @override
  String get hgLow => 'منخفض';

  @override
  String get hgNormal => 'متوسط';

  @override
  String get hgHigh => 'مرتفع';

  @override
  String get hgBreedLowExamples => 'بولدوغ، باسيت هاوند، شيه تزو، مالتيز';

  @override
  String get hgBreedNormalExamples => 'بودل، بيشون فريز، كوكر سبانيل، بيغل';

  @override
  String get hgBreedHighExamples =>
      'لابرادور، غولدن ريتريفر، هاسكي، بوردر كولي';

  @override
  String get hgDisclaimer =>
      'يقدّم هذا الدليل معلومات عامة للعناية الصحية، وقد تختلف الرعاية المطلوبة حسب حالة حيوانك الأليف. إذا ظهرت أعراض غير طبيعية أو كانت هناك حاجة للعلاج، فاستشر طبيبًا بيطريًا دائمًا.';
}
