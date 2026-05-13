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
  String get weekStats => 'إحصائيات هذا الأسبوع';

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
}
