// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'Pet Sumtan';

  @override
  String get appTagline => 'تطبيق صحة الحيوانات الأليفة';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navJournal => 'اليوميات';

  @override
  String get navNotifications => 'التنبيهات';

  @override
  String get navProfile => 'الملف الشخصي';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get navAddAlarm => 'إضافة تنبيه';

  @override
  String get drawerService => 'الخدمات';

  @override
  String get drawerNearbyHospitals => 'العيادات البيطرية القريبة';

  @override
  String get drawerNearbyHospitalsSub => 'ابحث عن عيادة بيطرية';

  @override
  String get drawerHealthGuide => 'الدليل الصحي';

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
      'للبحث عن العيادات البيطرية القريبة، نحتاج إلى فتح صفحة ويب خارجية.\n\nهل ترغب في فتحها الآن؟';

  @override
  String get commonCancel => 'إلغاء';

  @override
  String get commonGo => 'الذهاب';

  @override
  String get commonDelete => 'حذف';

  @override
  String get commonSave => 'حفظ';

  @override
  String get commonLoading => 'جاري التحميل...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'اضغط مرة أخرى للخروج';

  @override
  String get toastNeedPet =>
      'لا يوجد حيوان أليف بعد. يرجى إضافة واحد في الملف الشخصي أولاً.';

  @override
  String get settingsNotifications => 'الإشعارات';

  @override
  String get settingsPushNotifications => 'السماح بإشعارات الدفع';

  @override
  String get settingsPushNotificationsSub => 'أذونات الجهاز';

  @override
  String get settingsLanguageSection => 'اللغة';

  @override
  String get settingsLanguage => 'لغة التطبيق';

  @override
  String get settingsLanguageSystem => 'لغة النظام';

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
  String get settingsFeedbackSubject => 'ملاحظات حول تطبيق Pet Sumtan';

  @override
  String get settingsEmailAppMissing => 'لم يتم العثور على تطبيق بريد إلكتروني';

  @override
  String get settingsImportConfirmBody =>
      'سيتم حذف جميع البيانات الحالية واستبدالها بملف النسخة الاحتياطية.\n\nهل ترغب في المتابعة؟';

  @override
  String get settingsImportAction => 'استيراد';

  @override
  String get settingsImporting => 'جاري استيراد البيانات...';

  @override
  String get settingsImportSuccess =>
      'تمت استعادة بيانات النسخة الاحتياطية بنجاح';

  @override
  String get settingsImportFailed => 'فشل الاستيراد';

  @override
  String get settingsExportTitle => 'تصدير البيانات';

  @override
  String get settingsExportBenefitTitle => 'حافظ على سجلاتك آمنة';

  @override
  String get settingsExportBenefitPets =>
      'ملفات تعريف وصور جميع حيواناتك الأليفة';

  @override
  String get settingsExportBenefitRecords =>
      'جميع السجلات الطبية، اليوميات، والأوزان';

  @override
  String get settingsExportBenefitMedia => 'يتضمن الصور ومقاطع الفيديو المرفقة';

  @override
  String get settingsStoreUnavailable =>
      'لا يمكن الاتصال بالمتجر في الوقت الحالي.\nيرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String settingsPayAndExport(String price) {
    return 'ادفع $price وقم بالتصدير';
  }

  @override
  String get settingsUnlocked => 'تم الفتح';

  @override
  String get settingsExportUnlockedBody =>
      'احفظ جميع معلومات وسجلات حيواناتك الأليفة كملف ZIP.\nيمكنك استيراد واستعادة هذا الملف في أي وقت مجانًا.';

  @override
  String get settingsExporting => 'جاري التصدير...';

  @override
  String get settingsExportZip => 'تصدير كملف ZIP';

  @override
  String get settingsExportConfirmBody =>
      'تصدير جميع المعلومات والسجلات والوسائط كملف ZIP.';

  @override
  String get settingsExportAction => 'تصدير';

  @override
  String get settingsExportSuccess => 'ملف النسخة الاحتياطية جاهز للمشاركة';

  @override
  String get settingsExportFailed => 'فشل التصدير';

  @override
  String get settingsPurchaseFailed => 'فشل الدفع';

  @override
  String get settingsPurchaseProductLoadFailed =>
      'تعذر تحميل معلومات المنتج. يرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get settingsPurchaseStartFailed =>
      'تعذر بدء عملية الدفع. يرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get errorDbInit =>
      'حدثت مشكلة أثناء إعداد بيانات التطبيق.\nيرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get help => 'المساعدة';

  @override
  String get healthGuide => 'الدليل الصحي';

  @override
  String get dog => 'كلب';

  @override
  String get cat => 'قطة';

  @override
  String get tabDog => '🐶 كلب';

  @override
  String get tabCat => '🐱 قطة';

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
  String get memoPlaceholder => 'أضف ملاحظة هنا';

  @override
  String get addBtn => '＋ إضافة';

  @override
  String get errorOccurred => 'حدث خطأ';

  @override
  String errorOccurredWithDetail(String error) {
    return 'حدث خطأ\n$error';
  }

  @override
  String get pet => 'حيوان أليف';

  @override
  String get selectPet => 'اختر حيواناً أليفاً';

  @override
  String get addNewPet => 'إضافة حيوان أليف جديد';

  @override
  String get noAlarms => 'لا توجد تنبيهات';

  @override
  String alarmEmptyDesc(String petName) {
    return 'دعنا نعتني بصحة $petName اليوم.\nاضغط على \'إضافة تنبيه\' أدناه للبدء.';
  }

  @override
  String get scheduledAlarms => 'التنبيهات المجدولة';

  @override
  String get swipeToDelete => 'اسحب للحذف';

  @override
  String get selectAlarmType => 'اختر نوع التنبيه';

  @override
  String get vetAppointment => 'موعد الطبيب البيطري';

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
      'تذكيرات العناية بالحيوانات الأليفة';

  @override
  String alarmNotificationTitle(String type) {
    return 'تنبيه: $type';
  }

  @override
  String get alarmBodyVaccination => 'يرجى التحقق من تاريخ التطعيم.';

  @override
  String get alarmBodyVetAppointment => 'موعد الطبيب البيطري يقترب.';

  @override
  String get alarmBodyMedication => 'حان وقت الدواء.';

  @override
  String get alarmBodyMealTime => 'لا تنس وقت الوجبة.';

  @override
  String get alarmBodyDailyReminder => 'يرجى ملء اليوميات الصحية لليوم.';

  @override
  String get alarmBodyDefault => 'تذكير صحي لحيوانك الأليف.';

  @override
  String get alarmDeleted => 'تم حذف التنبيه';

  @override
  String get hidePastAlarms => 'إخفاء التنبيهات السابقة';

  @override
  String get showPastAlarms => 'إظهار التنبيهات السابقة';

  @override
  String get deleteAll => 'حذف الكل';

  @override
  String get deletePastAlarms => 'حذف التنبيهات السابقة';

  @override
  String deletePastAlarmsConfirm(int count) {
    return 'هل أنت متأكد أنك تريد حذف جميع التنبيهات السابقة البالغ عددها $count؟';
  }

  @override
  String get pastAlarmsDeleted => 'تم حذف جميع التنبيهات السابقة';

  @override
  String get pastLabel => 'سابق';

  @override
  String get today => 'اليوم';

  @override
  String get tomorrowSameTime => 'غداً في نفس الوقت';

  @override
  String get snoozeQuestion => 'متى يجب أن نذكرك؟';

  @override
  String get snooze5min => 'بعد 5 دقائق';

  @override
  String get snooze10min => 'بعد 10 دقائق';

  @override
  String get snooze30min => 'بعد 30 دقيقة';

  @override
  String get snooze1hour => 'بعد ساعة واحدة';

  @override
  String get snooze3hour => 'بعد 3 ساعات';

  @override
  String get snoozeCustom => 'اختيار الوقت';

  @override
  String get snoozeAtThisTime => 'تذكير في هذا الوقت';

  @override
  String snoozeConfirm(String time) {
    return 'سنذكرك في $time';
  }

  @override
  String get selectFutureTime => 'يرجى اختيار وقت في المستقبل';

  @override
  String recordCheckHint(String typeLabel) {
    return 'يمكنك التحقق من ذلك في اليوميات > $typeLabel.';
  }

  @override
  String get pushAlsoCancel => 'سيتم أيضاً إلغاء إشعارات الدفع المجدولة.';

  @override
  String get reschedule => 'إعادة جدولة';

  @override
  String get deleteThisAlarm => 'حذف هذا التنبيه';

  @override
  String get vaccineNameRequired => 'اسم التطعيم *';

  @override
  String get vaccineNameExample => 'مثال: داء الكلب، التطعيم الخماسي';

  @override
  String get scheduledDateRequired => 'التاريخ *';

  @override
  String get reminderTiming => 'متى يتم التنبيه';

  @override
  String get sameDay => 'في نفس اليوم';

  @override
  String get reminderTimeRequired => 'وقت التنبيه *';

  @override
  String get memoInputHint => 'اكتب ملاحظة';

  @override
  String get visitPurposeRequired => 'سبب الزيارة *';

  @override
  String get visitPurposeExample => 'مثال: فحص روتيني، مشكلة جلدية';

  @override
  String get appointmentDateTimeRequired => 'تاريخ ووقت الموعد *';

  @override
  String get hospitalName => 'اسم العيادة';

  @override
  String get hospitalNameHint => 'أدخل اسم العيادة';

  @override
  String get medicineNameRequired => 'اسم الدواء *';

  @override
  String get medicineNameExample => 'مثال: دواء الديدان، دواء البراغيث';

  @override
  String get doseExample => 'مثال: 0.5 مل، حبة واحدة';

  @override
  String get repeatRequired => 'تكرار *';

  @override
  String get none => 'مطلقاً';

  @override
  String get daily => 'يومياً';

  @override
  String get weekly => 'أسبوعياً';

  @override
  String get monthly => 'شهرياً';

  @override
  String get weekdays => 'أيام الأسبوع';

  @override
  String get weekdaysOnly => 'أيام الأسبوع فقط';

  @override
  String get weekends => 'عطلات نهاية الأسبوع';

  @override
  String get weekendsOnly => 'عطلات نهاية الأسبوع فقط';

  @override
  String get medicationDateTimeRequired => 'تاريخ ووقت الدواء *';

  @override
  String get medicationTimeRequired => 'وقت الدواء *';

  @override
  String get alarmNameRequired => 'اسم التنبيه *';

  @override
  String get mealTimeExample => 'مثال: الإفطار، العشاء';

  @override
  String get mealTimeRequired => 'وقت الوجبة *';

  @override
  String get alarmMessage => 'رسالة التنبيه';

  @override
  String get alarmMessageExample => 'مثال: هل قمت بملء يوميات اليوم؟';

  @override
  String get alarmPastDueMsg =>
      'لقد مر تاريخ هذا التنبيه بالفعل.\nيرجى اختيار تاريخ جديد أو حذفه.';

  @override
  String get reselectDate => 'إعادة تحديد التاريخ';

  @override
  String get selectDate => 'تحديد التاريخ';

  @override
  String get selectTime => 'تحديد الوقت';

  @override
  String get todayStatus => 'حالة اليوم';

  @override
  String get addRecord => '＋ إضافة سجل';

  @override
  String get todayReminders => 'تذكيرات اليوم';

  @override
  String get todayRecords => 'سجلات اليوم';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get weekStats => 'إحصائيات الأسبوع';

  @override
  String get pottyCount => 'قضاء الحاجة';

  @override
  String get mealCount => 'الوجبات';

  @override
  String get waterLevel => 'الماء';

  @override
  String get timesUnit => 'مرات';

  @override
  String get mealsUnit => 'وجبات';

  @override
  String get pointsUnit => 'نقطة';

  @override
  String get recordDeleted => 'تم حذف السجل';

  @override
  String get recordUpdated => 'تم تحديث السجل';

  @override
  String get deleteRecordConfirm => 'هل أنت متأكد أنك تريد حذف هذا السجل؟';

  @override
  String get deleteConfirmBody => 'بمجرد الحذف، لا يمكن استعادته!';

  @override
  String get deleteConfirmOk => 'حذف';

  @override
  String get deleteThisRecord => 'حذف هذا السجل';

  @override
  String get typeLabel => 'النوع';

  @override
  String get statusLabel => 'الحالة';

  @override
  String get conditionScore => 'تقييم الحالة';

  @override
  String get symptomTags => 'علامات الأعراض';

  @override
  String get medicineName => 'اسم الدواء';

  @override
  String get dose => 'الجرعة';

  @override
  String get medicationMethod => 'طريقة الإعطاء';

  @override
  String get weightKg => 'الوزن (كجم)';

  @override
  String get measurementMethod => 'طريقة القياس';

  @override
  String get mealAmount => 'كمية الطعام';

  @override
  String get servingAmount => 'حجم الحصة';

  @override
  String get waterAmount => 'كمية الماء';

  @override
  String get visitType => 'نوع الزيارة';

  @override
  String get diagnosisName => 'التشخيص';

  @override
  String get vaccineType => 'نوع التطعيم';

  @override
  String get abnormalSymptomType => 'نوع العرض غير الطبيعي';

  @override
  String get customSymptom => 'عرض آخر';

  @override
  String get customSymptomPlaceholder => 'صف العرض';

  @override
  String get sideEffects => 'الآثار الجانبية';

  @override
  String get groomingType => 'نوع العناية/الاستحمام';

  @override
  String get shopName => 'اسم المتجر';

  @override
  String get cost => 'التكلفة';

  @override
  String get nextAppointment => 'الموعد القادم';

  @override
  String get brushingArea => 'منطقة تنظيف الأسنان';

  @override
  String get duration => 'المدة';

  @override
  String get walkTime => 'وقت المشي';

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
  String get bleeding => 'النزيف';

  @override
  String get dyspnea => 'صعوبة في التنفس';

  @override
  String get seizure => 'تشنج';

  @override
  String get normal => 'طبيعي';

  @override
  String get loose => 'رخو';

  @override
  String get hard => 'صلب';

  @override
  String get bloodInStool => 'دم في البراز';

  @override
  String get cough => 'سعال';

  @override
  String get lethargy => 'خمول';

  @override
  String get lossOfAppetite => 'فقدان الشهية';

  @override
  String get diarrhea => 'إسهال';

  @override
  String get runnyNose => 'سيلان الأنف';

  @override
  String get sneezing => 'عطس';

  @override
  String get trembling => 'ارتجاف';

  @override
  String get bloodInUrine => 'دم في البول';

  @override
  String get oral => 'فموي';

  @override
  String get injection => 'حقنة';

  @override
  String get topical => 'موضعي';

  @override
  String get eyeDrops => 'قطرة عين';

  @override
  String get earDrops => 'قطرة أذن';

  @override
  String get vetHospital => 'عيادة بيطرية';

  @override
  String get homeScale => 'ميزان منزلي';

  @override
  String get holdAndWeigh => 'الحمل والوزن';

  @override
  String get veryLittle => 'قليل جداً';

  @override
  String get little => 'قليل';

  @override
  String get much => 'كثير';

  @override
  String get veryMuch => 'كثير جداً';

  @override
  String get general => 'عام';

  @override
  String get regularCheckup => 'فحص روتيني';

  @override
  String get emergency => 'طوارئ';

  @override
  String get mild => 'خفيف';

  @override
  String get severe => 'شديد';

  @override
  String get bath => 'استحمام';

  @override
  String get fullGrooming => 'حلاقة كاملة';

  @override
  String get partialGrooming => 'حلاقة جزئية';

  @override
  String get nails => 'قص الأظافر';

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
  String get paws => 'المخالب';

  @override
  String get important => 'مهم';

  @override
  String get photosAndVideos => 'الصور ومقاطع الفيديو';

  @override
  String get addMedia => 'إضافة وسائط';

  @override
  String get selectMediaMethod => 'اختر الطريقة';

  @override
  String get useCamera => 'استخدام الكاميرا';

  @override
  String get takePhotoOrVideo => 'التقاط صورة أو فيديو';

  @override
  String get chooseFromGallery => 'اختيار من المعرض';

  @override
  String get multiSelectHint => 'يمكنك تحديد عدة ملفات';

  @override
  String get takePhoto => 'التقاط صورة';

  @override
  String get takePhotoDesc => 'التقاط صورة بالكاميرا';

  @override
  String get recordVideo => 'تسجيل فيديو';

  @override
  String get recordVideoDesc => 'تسجيل فيديو بالكاميرا';

  @override
  String get deleteThisPhoto => 'حذف هذه الصورة';

  @override
  String get deletePhotoConfirm => 'هل أنت متأكد أنك تريد حذف هذه الصورة؟';

  @override
  String get deleteThisVideo => 'حذف هذا الفيديو';

  @override
  String get deleteVideoConfirm => 'هل أنت متأكد أنك تريد حذف هذا الفيديو؟';

  @override
  String get muted => 'مكتوم';

  @override
  String get soundOn => 'الصوت قيد التشغيل';

  @override
  String get allowPermissionInSettings => 'يرجى السماح بالوصول في الإعدادات';

  @override
  String get openSettings => 'فتح الإعدادات';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get contactDeveloper => 'الاتصال بالمطور';

  @override
  String get contact => 'اتصال';

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
  String get journalScreen => 'شاشة اليوميات';

  @override
  String get alarmScreen => 'شاشة التنبيهات';

  @override
  String get petManagement => 'إدارة الحيوانات الأليفة';

  @override
  String get recordCategories => 'فئات السجلات';

  @override
  String get whatIsPetSumtan => 'ما هو Pet Sumtan؟';

  @override
  String get todayRecordSummary => 'ملخص سجلات اليوم';

  @override
  String get weeklyStats => 'الإحصائيات الأسبوعية';

  @override
  String get weightChangeChart => 'رسم بياني لتغير الوزن';

  @override
  String get findNearbyHospitals => 'البحث عن العيادات البيطرية القريبة';

  @override
  String get addNewRecord => 'إضافة سجل جديد (+)';

  @override
  String get viewRecordList => 'عرض قائمة السجلات';

  @override
  String get editDeleteRecord => 'تعديل وحذف السجلات';

  @override
  String get attachMedia => 'إرفاق صور/فيديو';

  @override
  String get addAlarm => 'إضافة تنبيه';

  @override
  String get repeatAlarm => 'تكرار التنبيه';

  @override
  String get advanceAlarmHint => 'تنبيه مسبق (قبل 7 أيام، 3 أيام، يوم واحد)';

  @override
  String get completeAlarm => 'إكمال التنبيه';

  @override
  String get deleteAlarm => 'حذف التنبيه';

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
  String get dogHealthCareGuide => 'دليل الرعاية الصحية للكلاب';

  @override
  String get catHealthCareGuide => 'دليل الرعاية الصحية للقطط';

  @override
  String get healthGuideSubtitle => 'دليل صحي احترافي\nمبني على توصيات بيطرية.';

  @override
  String get vaccination => 'التطعيم';

  @override
  String get coreVaccines => 'التطعيمات الأساسية';

  @override
  String get required => 'إلزامي';

  @override
  String get nonCoreVaccines => 'التطعيمات غير الأساسية';

  @override
  String get recommended => 'موصى به';

  @override
  String get parasitePrevention => 'الوقاية من الطفيليات';

  @override
  String get heartworm => 'دودة القلب';

  @override
  String get monthlyFreq => 'شهرياً';

  @override
  String get externalParasites => 'الطفيليات الخارجية (براغيث/قراد)';

  @override
  String get internalParasites => 'الطفيليات الداخلية';

  @override
  String get threeToSixMonths => 'كل 3-6 أشهر';

  @override
  String get nutritionManagement => 'الإدارة الغذائية';

  @override
  String get dentalCare => 'العناية بالأسنان';

  @override
  String get healthCheckup => 'فحص صحي';

  @override
  String get emergencySigns => 'علامات الطوارئ';

  @override
  String get age => 'العمر';

  @override
  String get checkupCycle => 'وتيرة الفحص';

  @override
  String get mainItems => 'الفحوصات الرئيسية';

  @override
  String get exerciseLevel => 'مستوى النشاط';

  @override
  String get breedExamples => 'سلالات تمثيلية';

  @override
  String get low => 'منخفض';

  @override
  String get high => 'مرتفع';

  @override
  String get menu => 'القائمة';

  @override
  String get helloGreeting => 'مرحباً!';

  @override
  String get healthyTodayMsg => '\nكيف هي الصحة اليوم؟';

  @override
  String get noRecordsYet => 'لا توجد سجلات بعد';

  @override
  String lastRecord(String time) {
    return 'آخر سجل · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return 'المتوسط $value$unit/يوم';
  }

  @override
  String get weightTrend => '⚖️ اتجاه الوزن';

  @override
  String get weightChange => '⚖️ تغير الوزن';

  @override
  String get noWeightData => 'لا توجد بيانات للوزن';

  @override
  String get measuredWeight => 'الوزن المقاس';

  @override
  String get noTodayRecords => 'لا توجد سجلات اليوم';

  @override
  String get homeNoRecordHint =>
      'سجل الحالة، قضاء الحاجة، والوزن\nلتتبع الصحة.';

  @override
  String noRecordsForDate(String date) {
    return 'لا توجد سجلات لـ $date';
  }

  @override
  String recordsForDate(String date, String count) {
    return 'سجلات $date ($count)';
  }

  @override
  String get daySun => 'الأحد';

  @override
  String get dayMon => 'الإثنين';

  @override
  String get dayTue => 'الثلاثاء';

  @override
  String get dayWed => 'الأربعاء';

  @override
  String get dayThu => 'الخميس';

  @override
  String get dayFri => 'الجمعة';

  @override
  String get daySat => 'السبت';

  @override
  String get whatToRecord => '📝 ماذا تريد أن تسجل؟';

  @override
  String saveErrorMsg(String error) {
    return 'خطأ في الحفظ: $error';
  }

  @override
  String get alarmUpdated => 'تم تحديث التنبيه';

  @override
  String get alarmAdded => 'تمت إضافة التنبيه';

  @override
  String get editAlarm => 'تعديل التنبيه';

  @override
  String get deleteAlarmConfirm => 'هل أنت متأكد أنك تريد حذف هذا التنبيه؟';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return 'سيتم حذف $name.\nسيتم أيضاً إلغاء إشعارات الدفع المجدولة.';
  }

  @override
  String get doneMsg => '✅ تم';

  @override
  String get laterMsg => '🕐 لاحقاً';

  @override
  String get saveCompletion => '✅ حفظ كمكتمل';

  @override
  String completedQuestion(String type) {
    return 'هل أكملت $type؟';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'سنقوم تلقائياً بحفظ $name\nفي سجلات اليوم.';
  }

  @override
  String completionSaved(String name) {
    return 'تم حفظ حالة إكمال $name';
  }

  @override
  String get tapAlarmTypeHint => '👆 اضغط على نوع التنبيه الذي تحتاجه';

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
    return '⚠️ مر $date · اضغط لإعادة الجدولة';
  }

  @override
  String get completedLabel => 'مكتمل';

  @override
  String get edit => 'تعديل';

  @override
  String recordDeleteCannotUndo(String category) {
    return 'سيتم حذف سجل $category.\nلا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get hintMedicineNameAndDose => '💡 أدخل اسم الدواء والجرعة';

  @override
  String get hintMedicineName => '💡 أدخل اسم الدواء';

  @override
  String get hintDose => '💡 أدخل الجرعة';

  @override
  String get hintWeightNumber => '💡 أدخل الوزن بالأرقام';

  @override
  String get hintWeight => '💡 أدخل الوزن';

  @override
  String get hintWeightIsNumber => '💡 يجب أن يكون الوزن رقماً';

  @override
  String get hintWalkTime => '💡 أدخل وقت المشي';

  @override
  String get hintWalkTimeIsNumber => '💡 يجب أن يكون وقت المشي رقماً';

  @override
  String get hintWalkTimeNumber => '💡 أدخل وقت المشي بالأرقام';

  @override
  String get hintSelectBrushingArea =>
      '💡 اختر منطقة تنظيف أسنان واحدة على الأقل';

  @override
  String get hintSelectVaccineType => '💡 اختر نوع تطعيم واحد على الأقل';

  @override
  String get hintSelectGroomingType =>
      '💡 اختر نوع عناية/استحمام واحد على الأقل';

  @override
  String get hintSelectSymptomType => '💡 اختر نوع عرض واحد على الأقل';

  @override
  String get hintTitle => '💡 أدخل عنواناً';

  @override
  String get hintVaccineName => '💡 أدخل اسم التطعيم';

  @override
  String get hintSelectScheduledDate => '💡 اختر تاريخاً';

  @override
  String get hintSelectScheduledTime => '💡 اختر وقتاً';

  @override
  String get hintVisitPurpose => '💡 أدخل سبب الزيارة';

  @override
  String get hintSelectAppointmentDate => '💡 اختر تاريخ الموعد';

  @override
  String get hintSelectAppointmentTime => '💡 اختر وقت الموعد';

  @override
  String get hintMedicineNameInput => '💡 أدخل اسم الدواء';

  @override
  String get hintSelectMedicationDate => '💡 اختر تاريخ الدواء';

  @override
  String get hintSelectMedicationTime => '💡 اختر وقت الدواء';

  @override
  String get hintAlarmName => '💡 أدخل اسم التنبيه';

  @override
  String get hintSelectMealTime => '💡 اختر وقت الوجبة';

  @override
  String get hintSelectAlarmTime => '💡 اختر وقت التنبيه';

  @override
  String get noPetRegisterFirst =>
      'لا يوجد حيوان أليف مسجل. يرجى إضافة واحد في الملف الشخصي.';

  @override
  String get alarmRescheduled => 'تمت إعادة جدولة التنبيه';

  @override
  String get examplePetName => 'مثال: بوب';

  @override
  String get exampleBreed => 'مثال: بودل';

  @override
  String get exampleBreedMulti => 'مثال: بودل، شيرازي';

  @override
  String get example30 => 'مثال: 30';

  @override
  String get example80 => 'مثال: 80';

  @override
  String get example200 => 'مثال: 200';

  @override
  String get example25 => 'مثال: 2.5';

  @override
  String get example42 => 'مثال: 4.2';

  @override
  String get example35000 => 'مثال: 35000';

  @override
  String get example50000 => 'مثال: 50000';

  @override
  String get enterNameHint => 'أدخل الاسم';

  @override
  String get addNewPetTitle => 'إضافة حيوان أليف جديد';

  @override
  String get basicInfo => 'المعلومات الأساسية';

  @override
  String get idInfo => 'معلومات الهوية';

  @override
  String get idInfoOptional => 'الهوية (اختياري)';

  @override
  String get name => 'الاسم';

  @override
  String get petKind => 'النوع';

  @override
  String get breed => 'السلالة';

  @override
  String get weight => 'الوزن';

  @override
  String get microchip => 'رقم الشريحة';

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
  String get neutered => 'معقم/مخصي';

  @override
  String get done => 'نعم';

  @override
  String get notDone => 'لا';

  @override
  String get notEntered => 'لم يتم الإدخال';

  @override
  String get notRegistered => 'غير مسجل';

  @override
  String get dogEmoji => 'كلب 🐶';

  @override
  String get catEmoji => 'قطة 🐱';

  @override
  String get otherEmoji => 'آخر 🐾';

  @override
  String get noPetsRegistered => 'لا توجد حيوانات أليفة مسجلة';

  @override
  String get registerPetPrompt => 'سجل حيوانك الأليف\nودعنا نعتني بصحته معاً!';

  @override
  String get registerPetBtn => 'تسجيل حيوان أليف';

  @override
  String get editPet => 'تعديل المعلومات';

  @override
  String get neuteringStatus => 'حالة التعقيم';

  @override
  String get neuteredDone => 'معقم';

  @override
  String get notNeutered => 'غير معقم';

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
    return 'هل أنت متأكد أنك تريد حذف $name؟';
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
    return 'تمت إضافة $name 🐾';
  }

  @override
  String get storeUnavailableMsg =>
      'لا يمكن الاتصال بالمتجر في الوقت الحالي. يرجى المحاولة مرة أخرى لاحقاً.';

  @override
  String get checkingPaymentMsg =>
      'جاري التحقق من معلومات الدفع. يرجى الانتظار لحظة والمحاولة مرة أخرى.';

  @override
  String get paymentCompleteMsg =>
      'اكتمل الدفع. يرجى إدخال معلومات فرد العائلة الجديد.';

  @override
  String get addNewFamilyMember => 'إضافة فرد جديد للعائلة؟';

  @override
  String get firstPetFreeDesc =>
      'يتم تسجيل الحيوان الأليف الأول مجاناً. لإضافة المزيد من الحيوانات الأليفة، يلزم دفع رسوم لمرة واحدة لكل حيوان إضافي.';

  @override
  String petsRegisteredStoreUnavailable(int count) {
    return 'لديك حالياً $count حيوانات أليفة مسجلة.\nيرجى المحاولة مرة أخرى عندما يكون المتجر متاحاً.';
  }

  @override
  String petsRegisteredPayToAdd(int count, String price) {
    return 'لديك حالياً $count حيوانات أليفة مسجلة.\nيمكنك إضافة فرد جديد مقابل $price.';
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
  String get addNextAppointment => '＋ إضافة الموعد القادم';

  @override
  String get pottyRecordSaved => '💩 تم حفظ قضاء الحاجة';

  @override
  String get conditionRecordSaved => '💗 تم حفظ الحالة';

  @override
  String get medicationRecordSaved => '💊 تم حفظ الدواء';

  @override
  String get weightRecordSaved => '⚖️ تم حفظ الوزن';

  @override
  String get mealRecordSaved => '🍽️ تم حفظ الوجبة';

  @override
  String get waterRecordSaved => '💧 تم حفظ الماء';

  @override
  String get vetVisitRecordSaved => '🏥 تم حفظ زيارة الطبيب البيطري';

  @override
  String get vaccinationRecordSaved => '💉 تم حفظ التطعيم';

  @override
  String get groomingRecordSaved => '✂️ تم حفظ العناية/الاستحمام';

  @override
  String get brushingRecordSaved => '🪥 تم حفظ تنظيف الأسنان';

  @override
  String get walkRecordSaved => '🦮 تم حفظ المشي';

  @override
  String get memoSaved => '📝 تم حفظ الملاحظة';

  @override
  String get abnormalSymptomRecordSaved => '🚨 تم حفظ العرض غير الطبيعي';

  @override
  String get moreQuestions => 'هل لديك المزيد من الأسئلة؟';

  @override
  String get contactViaSendFeedback =>
      'تواصل معنا عبر الإعدادات > إرسال ملاحظات.\nسنرد عليك في أقرب وقت ممكن 🐾';

  @override
  String get contactViaSendFeedbackLong =>
      'يرجى التواصل معنا باستخدام زر [إرسال ملاحظات] في الإعدادات.\nسنرد عليك في أقرب وقت ممكن.';

  @override
  String get privacyPolicyEffectiveDate =>
      'تدخل سياسة الخصوصية هذه حيز التنفيذ اعتباراً من 1 يناير 2026.\nآخر تحديث: 8 مايو 2026';

  @override
  String get privacyCollectedInfo =>
      'تُستخدم المعلومات التي يتم جمعها للأغراض التالية فقط.';

  @override
  String get privacyDataFeatures =>
      'يوفر Pet Sumtan ميزات تصدير (نسخ احتياطي) واستيراد (استعادة) البيانات.';

  @override
  String get privacyPolicyMayUpdate =>
      'قد يتم تحديث سياسة الخصوصية هذه بسبب تغييرات في القانون أو الخدمة.';

  @override
  String get privacyPolicyContact =>
      'إذا كانت لديك أي أسئلة حول سياسة الخصوصية، يرجى التواصل معنا أدناه.';

  @override
  String get catMeal => 'وجبة';

  @override
  String get catWater => 'ماء';

  @override
  String get catGrooming => 'عناية/استحمام';

  @override
  String get catBrushing => 'تنظيف أسنان';

  @override
  String get catWalk => 'مشي';

  @override
  String get catHospital => 'طبيب بيطري';

  @override
  String get catAbnormalSymptom => 'غير طبيعي';

  @override
  String get catCondition => 'حالة';

  @override
  String get catPotty => 'قضاء حاجة';

  @override
  String get mealFormTitle => '🍽️ يوميات الوجبات';

  @override
  String get walkFormTitle => '🦮 يوميات المشي';

  @override
  String get weightFormTitle => '⚖️ يوميات الوزن';

  @override
  String get waterFormTitle => '💧 يوميات الماء';

  @override
  String get medicationFormTitle => '💊 يوميات الأدوية';

  @override
  String get groomingFormTitle => '✂️ يوميات العناية';

  @override
  String get brushingFormTitle => '🪥 يوميات تنظيف الأسنان';

  @override
  String get conditionFormTitle => '🌡️ يوميات الحالة';

  @override
  String get poopFormTitle => '💩 يوميات قضاء الحاجة';

  @override
  String get vaccinationFormTitle => '💉 يوميات التطعيم';

  @override
  String get hospitalFormTitle => '🏥 يوميات الطبيب البيطري';

  @override
  String get abnormalSymptomFormTitle => '🚨 يوميات الأعراض';

  @override
  String get memoFormTitle => '📝 ملاحظة';

  @override
  String get measureMethod => 'طريقة القياس';

  @override
  String get feedAmount => 'الكمية';

  @override
  String get mlInputLabel => 'إدخال مل يدوياً';

  @override
  String get alarmRescheduleNote =>
      'لقد مر تاريخ هذا التنبيه بالفعل.\nيرجى تحديد تاريخ جديد أو حذفه.';

  @override
  String get nailTrim => 'قص الأظافر';

  @override
  String get shopNameExample => 'مثال: متجر الحيوانات الأليفة السعيد';

  @override
  String get poopRecordSaved => '💩 تم حفظ قضاء الحاجة';

  @override
  String get memoRecordSaved => '📝 تم حفظ الملاحظة';

  @override
  String get other => 'آخر';

  @override
  String get whole => 'الجسم كله';

  @override
  String get paw => 'المخالب';

  @override
  String get importance => 'الأهمية';

  @override
  String get timeTaken => 'الوقت المستغرق';

  @override
  String get example10 => 'مثال: 10';

  @override
  String get minuteUnit => 'دقيقة';

  @override
  String get hospitalNameExample => 'مثال: عيادة الحيوانات الأليفة';

  @override
  String get diagnosisExample => 'مثال: التهاب الأمعاء، التهاب الجلد';

  @override
  String get memoTitlePlaceholder => 'أدخل عنوان الملاحظة';

  @override
  String get hintMemoTitle => '💡 أدخل عنواناً';

  @override
  String get poopType => 'النوع';

  @override
  String get poopStatus => 'الحالة';

  @override
  String get feces => 'براز';

  @override
  String get bloody => 'مدمم';

  @override
  String get vaccineDhppl => 'الخماسي/السداسي';

  @override
  String get vaccineCorona => 'كورونا';

  @override
  String get vaccineKennelCough => 'سعال الكينيل';

  @override
  String get vaccineRabies => 'داء الكلب';

  @override
  String get vaccineInfluenza => 'الإنفلونزا';

  @override
  String get vaccineFvrcp => 'الثلاثي/الرباعي للقطط';

  @override
  String get vaccineFelv => 'اللوكيميا (FeLV)';

  @override
  String get vaccineChlamydia => 'الكلاميديا';

  @override
  String get mute => 'كتم';

  @override
  String get photoVideo => 'صورة · فيديو';

  @override
  String photoVideoCount(int count) {
    return 'صورة · فيديو · $count';
  }

  @override
  String get selectMediaSource => 'اختر مصدر الوسائط';

  @override
  String get cameraCapture => 'التقاط بالكاميرا';

  @override
  String get cameraCaptureSubtitle => 'التقاط صورة أو تسجيل فيديو';

  @override
  String get selectFromGallery => 'اختيار من المعرض';

  @override
  String get selectFromGallerySubtitle => 'يمكنك تحديد ملفات متعددة';

  @override
  String get takePhotoSubtitle => 'التقاط صورة بالكاميرا';

  @override
  String get recordVideoSubtitle => 'تسجيل فيديو بالكاميرا';

  @override
  String get permissionRequired => 'يرجى السماح بالوصول في الإعدادات';

  @override
  String get confirmDeletePhoto => 'هل أنت متأكد أنك تريد حذف هذه الصورة؟';

  @override
  String get confirmDeleteVideo => 'هل أنت متأكد أنك تريد حذف هذا الفيديو؟';

  @override
  String get hintMedicineAndDose => '💡 أدخل اسم الدواء والجرعة';

  @override
  String deleteRecordBody(String category) {
    return 'سيتم حذف سجل $category.\nلا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String dayCountShort(int days) {
    return '$days أيام';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan هو تطبيق يمكنك من خلاله تسجيل وإدارة صحة حيوانك الأليف وحياته اليومية في مكان واحد.\nيمكنك بسهولة تسجيل الوجبات، الماء، قضاء الحاجة، الوزن، الأدوية، زيارات الطبيب البيطري وإعداد تنبيهات حتى لا تنسى الأحداث المهمة.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'شاهد جميع السجلات المضافة اليوم في لمحة. اضغط على سجل لعرض التفاصيل أو تعديله.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'تحقق من عدد مرات قضاء الحاجة، الوجبات، واستهلاك الماء هذا الأسبوع في رسوم بيانية لفهم عادات حيوانك الأليف.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'يعرض قياسات الوزن الأخيرة في رسم بياني لتتبع اتجاه الوزن بسهولة.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'اضغط على الزر للبحث عن العيادات البيطرية القريبة على الخريطة.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'اضغط على زر \'+\' في الأسفل لاختيار فئة وإضافة سجل جديد.';

  @override
  String get helpRecordCategoriesIntro =>
      'يمكنك تسجيل الحياة اليومية لحيوانك الأليف في 12 فئة مختلفة.';

  @override
  String get helpCategoryPottyName => 'قضاء الحاجة';

  @override
  String get helpCategoryPottyDesc =>
      'سجل حالة ونوع البراز/البول. يمكنك أيضاً إرفاق صور.';

  @override
  String get helpCategoryConditionName => 'الحالة';

  @override
  String get helpCategoryConditionDesc =>
      'سجل الحالة الصحية العامة لحيوانك الأليف.';

  @override
  String get helpCategoryMedicationName => 'الدواء';

  @override
  String get helpCategoryMedicationDesc => 'سجل اسم الدواء، الجرعة، والوقت.';

  @override
  String get helpCategoryWeightName => 'الوزن';

  @override
  String get helpCategoryWeightDesc =>
      'سجل الوزن (كجم). يمكنك التحقق من الاتجاه على الشاشة الرئيسية.';

  @override
  String get helpCategoryMealName => 'الوجبة';

  @override
  String get helpCategoryMealDesc =>
      'سجل كمية ونوع الوجبة. يمكنك إرفاق صور/فيديو.';

  @override
  String get helpCategoryWaterName => 'الماء';

  @override
  String get helpCategoryWaterDesc =>
      'سجل استهلاك الماء (مل). يمكنك إرفاق صور/فيديو.';

  @override
  String get helpCategoryHospitalName => 'الطبيب البيطري';

  @override
  String get helpCategoryHospitalDesc =>
      'سجل اسم العيادة والتشخيص. يمكنك إرفاق صور/فيديو.';

  @override
  String get helpCategoryVaccinationName => 'التطعيم';

  @override
  String get helpCategoryVaccinationDesc => 'سجل نوع التطعيم والتاريخ.';

  @override
  String get helpCategoryGroomingName => 'العناية/الاستحمام';

  @override
  String get helpCategoryGroomingDesc =>
      'سجل تفاصيل العناية/الاستحمام وأرفق صور/فيديو.';

  @override
  String get helpCategoryDentalName => 'تنظيف الأسنان';

  @override
  String get helpCategoryDentalDesc => 'سجل حالة تنظيف الأسنان وأضف ملاحظات.';

  @override
  String get helpCategoryWalkName => 'المشي';

  @override
  String get helpCategoryWalkDesc => 'سجل مسافة ومدة المشي.';

  @override
  String get helpCategoryMemoName => 'ملاحظة';

  @override
  String get helpCategoryMemoDesc => 'يمكنك ترك ملاحظات بصيغة حرة.';

  @override
  String get helpJournalViewRecordListDesc =>
      'يعرض جميع السجلات حسب التاريخ. يمكنك تمييزها بسهولة بواسطة أيقونات الفئات.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'يؤدي الضغط على سجل إلى فتح صفحة التعديل. يمكنك تغيير المحتوى أو حذف السجل.';

  @override
  String get helpJournalAttachMediaDesc =>
      'يمكنك إرفاق صور أو مقاطع فيديو بفئات مثل الوجبة، الماء، الطبيب البيطري، العناية، وقضاء الحاجة.';

  @override
  String get helpAlarmAddDesc =>
      'قم بإعداد تنبيهات للتطعيمات، الأدوية، الطبيب البيطري، العناية، إلخ. اختر النوع أولاً، ثم حدد التاريخ والوقت.';

  @override
  String get helpAlarmRepeatDesc =>
      'يمكنك تعيين قواعد تكرار مثل يومياً، أسبوعياً، أو شهرياً. رائع للأدوية المنتظمة أو الوقاية من دودة القلب.';

  @override
  String get helpAlarmAdvanceDesc =>
      'للأحداث المهمة مثل التطعيمات، يمكنك تلقي تنبيهات مسبقة قبل 7 أيام، 3 أيام، أو يوم واحد.';

  @override
  String get helpAlarmCompleteDesc =>
      'اضغط على تنبيه لوضع علامة \'مكتمل\' عليه. يتم نقل التنبيهات المكتملة إلى قائمة \'التنبيهات السابقة\'.';

  @override
  String get helpAlarmDeleteDesc => 'اسحب التنبيه إلى اليسار لحذفه.';

  @override
  String get helpPetRegisterDesc =>
      'سجل حيوانك الأليف بإدخال الاسم، النوع (كلب/قطة)، السلالة، الجنس، تاريخ الميلاد، وحالة التعقيم.';

  @override
  String get helpPetEditProfileDesc =>
      'يمكنك تغيير الاسم، السلالة، الوزن، رقم الشريحة، رقم التسجيل، وصورة الملف الشخصي من شاشة الملف الشخصي.';

  @override
  String get helpPetManageMultipleDesc =>
      'يمكنك تسجيل عدة حيوانات أليفة. اضغط على علامة الحيوان الأليف في الأعلى للتبديل بينها.';

  @override
  String get helpDogHealthGuideDesc =>
      'يوفر معلومات صحية مبنية على توصيات بيطرية: جدول التطعيمات الأساسية/غير الأساسية، الوقاية من الطفيليات، العناية بالأسنان، التغذية، إلخ.';

  @override
  String get helpCatHealthGuideDesc =>
      'تحقق من جدول التطعيمات الخاص بالقطط، الوقاية من الطفيليات، العناية بالأسنان، والمعلومات الغذائية.';

  @override
  String get helpSettingsNotificationDesc =>
      'قم بتشغيل أو إيقاف جميع إشعارات التطبيق.';

  @override
  String get helpSettingsExportDesc =>
      'قم بتصدير جميع البيانات المحفوظة كملف ZIP. يمكن استخدامه كنسخة احتياطية عند تغيير الأجهزة.';

  @override
  String get helpSettingsImportDesc =>
      'قم باستيراد ملف نسخة احتياطية ZIP محفوظ مسبقاً لاستعادة البيانات.';

  @override
  String get helpSettingsFeedbackDesc =>
      'إذا كان لديك مشاكل أو اقتراحات، أخبرنا عبر البريد الإلكتروني. سيساعدنا ذلك في تحسين التطبيق.';

  @override
  String get helpFaqDeletePetQ =>
      'إذا قمت بحذف حيوان أليف، هل سيتم حذف جميع سجلاته أيضاً؟';

  @override
  String get helpFaqDeletePetA =>
      'نعم، إذا قمت بحذف حيوان أليف، سيتم أيضاً حذف جميع سجلاته وتنبيهاته. يرجى تصدير بياناتك والاحتفاظ بنسخة احتياطية منها قبل الحذف.';

  @override
  String get helpFaqMultipleMediaQ => 'هل يمكنني إرفاق عدة صور بسجل واحد؟';

  @override
  String get helpFaqMultipleMediaA =>
      'نعم، يمكنك إرفاق عدة صور أو مقاطع فيديو. يمكنك اختيارها من المعرض الخاص بك أو التقاط صور مباشرة بالكاميرا.';

  @override
  String get helpFaqNoNotificationQ => 'لا أتلقى التنبيهات.';

  @override
  String get helpFaqNoNotificationA =>
      'يرجى التحقق مما إذا كانت الإشعارات لتطبيق Pet Sumtan مسموحاً بها في إعدادات جهازك. تأكد أيضاً من تشغيل \'إعدادات الإشعارات\' في التطبيق (الإعدادات > الإشعارات).';

  @override
  String get helpFaqMoveDataQ => 'هل يمكنني نقل بياناتي إلى جهاز جديد؟';

  @override
  String get helpFaqMoveDataA =>
      'احفظ ملف نسخة احتياطية عبر \'الإعدادات > تصدير البيانات\' على جهازك القديم، واستعده عبر \'الإعدادات > استيراد البيانات\' على جهازك الجديد.';

  @override
  String get helpFaqMultiplePetsQ => 'هل يمكنني تسجيل عدة حيوانات أليفة؟';

  @override
  String get helpFaqMultiplePetsA =>
      'يمكنك تسجيل حيوان أليف واحد مجاناً. يمكن إضافة حيوانات أليفة إضافية باستخدام الميزات المدفوعة.';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan هو تطبيق يمكن استخدامه بدون تسجيل، ويتم حفظ جميع البيانات على جهازك فقط. نحن لا نرسل معلوماتك الشخصية إلى خوادم خارجية، مما يحافظ على أمان معلومات حيوانك الأليف القيمة.';

  @override
  String get privacySection1Title => 'المعلومات الشخصية التي يتم جمعها';

  @override
  String get privacySection1Body =>
      'يمكن استخدام Pet Sumtan بدون تسجيل ولا يجمع أي معلومات تعريف شخصية. ومع ذلك، لتوفير ميزات التطبيق، قد يتم حفظ المعلومات التالية على جهازك.';

  @override
  String get privacyLocalStorageInfo => 'المعلومات المحفوظة محلياً على الجهاز';

  @override
  String get privacyPetInfo =>
      'معلومات الحيوان الأليف: الاسم، النوع، السلالة، تاريخ الميلاد، الجنس، الوزن، حالة التعقيم، رقم الشريحة، رقم التسجيل';

  @override
  String get privacyHealthRecords =>
      'السجلات الصحية: قضاء الحاجة، الوجبة، الماء، الوزن، الدواء، التطعيم، الطبيب البيطري، العناية، تنظيف الأسنان، المشي، الحالة، الملاحظات، إلخ، التي تدخلها مباشرة';

  @override
  String get privacyAttachedMedia =>
      'ملفات الوسائط المرفقة: الصور ومقاطع الفيديو التي تلتقطها أو تختارها مباشرة';

  @override
  String get privacyNotificationSettings =>
      'إعدادات التنبيهات: نوع التنبيه، التاريخ والوقت المجدولان، قواعد التكرار';

  @override
  String get privacyInAppPurchaseTitle => 'حول عمليات الشراء داخل التطبيق';

  @override
  String get privacyPaymentProcessing =>
      'تتم معالجة المدفوعات عبر Apple App Store أو Google Play Store، ولا يقوم التطبيق بجمع أو حفظ معلومات الدفع الخاصة بك مباشرة.';

  @override
  String get privacyReceiptVerification =>
      'وفقاً لسياسات كل منصة، تتم معالجة الحد الأدنى من المعلومات اللازمة للتحقق من إيصال الشراء فقط.';

  @override
  String get privacySection2Title => 'الغرض من الجمع والاستخدام';

  @override
  String get privacyPurposeRecords =>
      'تسجيل وعرض السجلات الصحية للحيوان الأليف';

  @override
  String get privacyPurposeStats =>
      'توفير إحصائيات على الشاشة الرئيسية (حالة قضاء الحاجة الأسبوعية، الوجبة، الماء، رسم بياني لتغير الوزن، إلخ)';

  @override
  String get privacyPurposeReminders =>
      'إرسال تنبيهات متعلقة بالصحة مثل التطعيمات، الأدوية، الطبيب البيطري، إلخ';

  @override
  String get privacyPurposeBackupRestore =>
      'توفير ميزات النسخ الاحتياطي واستعادة البيانات';

  @override
  String get privacyPurposePaidEligibility =>
      'التحقق من الأهلية لاستخدام الميزات المدفوعة';

  @override
  String get privacySection3Title => 'الاحتفاظ بالمعلومات وإتلافها';

  @override
  String get privacyRetentionBody =>
      'يتم حفظ جميع بيانات Pet Sumtan فقط في قاعدة البيانات المحلية (SQLite) لجهازك ولا يتم إرسالها إلى خوادم خارجية.';

  @override
  String get privacyDataDeletionMethod => 'طريقة إتلاف البيانات';

  @override
  String get privacyDeleteInApp =>
      'يمكنك حذف معلومات وسجلات الحيوان الأليف مباشرة من خلال \'الإعدادات > إدارة البيانات\' في التطبيق.';

  @override
  String get privacyDeleteUninstall =>
      'سيؤدي حذف التطبيق أيضاً إلى حذف جميع البيانات المحفوظة على الجهاز.';

  @override
  String get privacyDeleteBackupWarning =>
      'يرجى ملاحظة أنه إذا لم تقم بالنسخ الاحتياطي (التصدير) قبل حذف التطبيق، فلا يمكن استعادة البيانات.';

  @override
  String get privacySection4Title => 'تقديم المعلومات لأطراف ثالثة';

  @override
  String get privacyThirdPartyBody =>
      'لا يقدم Pet Sumtan معلوماتك الشخصية لأطراف ثالثة خارجية. ومع ذلك، هناك الاستثناءات التالية:';

  @override
  String get privacyThirdPartyUserExport =>
      'عندما تستخدم ميزة تصدير البيانات (مشاركة ملف النسخة الاحتياطية) بنفسك';

  @override
  String get privacyThirdPartyLegalRequest =>
      'عندما يقتضي القانون ذلك أو يكون هناك طلب قانوني من السلطات المختصة';

  @override
  String get privacySection5Title => 'معلومات حول حقوق الوصول';

  @override
  String get privacyPermissionsBody =>
      'لتوفير ميزات التطبيق، قد نطلب الأذونات التالية. حتى إذا لم تمنح الأذونات، يمكنك استخدام الميزات الأخرى بشكل طبيعي.';

  @override
  String get privacyPermissionCameraName => 'الكاميرا';

  @override
  String get privacyPermissionCameraDesc =>
      'تُستخدم لالتقاط الصور أو تسجيل مقاطع الفيديو مباشرة لإرفاقها بالسجلات الصحية.';

  @override
  String get privacyPermissionMediaName => 'الوصول إلى الصور والوسائط';

  @override
  String get privacyPermissionMediaDesc =>
      'تُستخدم لاختيار الصور أو مقاطع الفيديو من المعرض لإرفاقها بالسجلات.';

  @override
  String get privacyPermissionNotificationName => 'الإشعارات';

  @override
  String get privacyPermissionNotificationDesc =>
      'تُستخدم لإرسال تنبيهات متعلقة بالصحة مثل التطعيمات، الأدوية، الطبيب البيطري، إلخ.';

  @override
  String get privacyPermissionFileName => 'الوصول إلى الملفات (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'تُستخدم لحفظ أو تحميل ملفات النسخ الاحتياطي للبيانات.';

  @override
  String get privacySection6Title => 'النسخ الاحتياطي واستعادة البيانات';

  @override
  String get privacyBackupExport =>
      'تصدير: يمكنك حفظ أو مشاركة جميع بيانات التطبيق كملف (.zip).';

  @override
  String get privacyBackupImport =>
      'استيراد: يمكنك تحميل ملف نسخة احتياطية تم تصديره مسبقاً لاستعادة البيانات.';

  @override
  String get privacyBackupWarning =>
      'تتم إدارة ملف النسخة الاحتياطية بواسطتك، لذا يرجى الحذر من مشاركة الملف مع الآخرين.';

  @override
  String get privacySection7Title => 'حماية خصوصية الأطفال';

  @override
  String get privacyChildrenBody =>
      'لا يجمع Pet Sumtan بشكل منفصل معلومات شخصية من الأطفال دون سن 14 عاماً. يتم حفظ جميع بيانات التطبيق على الجهاز فقط ولا يتم إرسالها إلى خوادم خارجية، لذا يمكن للأطفال استخدامه بأمان.';

  @override
  String get privacySection8Title => 'تغييرات في سياسة الخصوصية';

  @override
  String get privacyPolicyChangeNotice =>
      'إذا كانت هناك أي تغييرات، سنقوم بإعلامك من خلال ملاحظات تحديث التطبيق أو الإشعارات داخل التطبيق.';

  @override
  String get privacyPolicyChangeEffective =>
      'ستدخل السياسة المعدلة حيز التنفيذ بعد 7 أيام من الإشعار.';

  @override
  String get privacySection9Title => 'الاتصال';

  @override
  String get hgDogHeroTitle => 'دليل صحة الكلاب';

  @override
  String get hgCatHeroTitle => 'دليل صحة القطط';

  @override
  String get hgHeroSubtitle =>
      'A professional health guide\nbased on veterinary recommendations.';

  @override
  String get hgVaccination => 'Vaccination';

  @override
  String get hgCoreVaccines => 'Core Vaccines';

  @override
  String get hgNonCoreVaccines => 'Non-Core Vaccines';

  @override
  String get hgRequired => 'Required';

  @override
  String get hgRecommended => 'Recommended';

  @override
  String get hgParasitePrevention => 'Parasite Prevention';

  @override
  String get hgHeartworm => 'Heartworm';

  @override
  String get hgMonthly => 'Monthly';

  @override
  String get hgExternalParasites => 'External Parasites (Fleas/Ticks)';

  @override
  String get hgInternalParasites => 'Internal Parasites';

  @override
  String get hgThreeToSixMonths => 'Every 3-6 months';

  @override
  String get hgRegular => 'Regular';

  @override
  String get hgRegularCheckup => 'Regular Health Checkup';

  @override
  String get hgDentalCare => 'Dental & Oral Care';

  @override
  String get hgForbiddenFoods => 'Strictly Forbidden Foods';

  @override
  String get hgEmergencySymptoms => 'Symptoms Requiring Immediate Vet Visit';

  @override
  String get hgExerciseMentalHealth => 'Exercise & Mental Health';

  @override
  String get hgWalk => 'Walks';

  @override
  String get hgDaily => 'Daily';

  @override
  String get hgBreedExerciseAmount => 'Recommended Exercise by Breed';

  @override
  String get hgPlayBrainStimulation => 'Play & Brain Stimulation';

  @override
  String get hgStressSignals => 'Recognizing Stress Signals';

  @override
  String get hgCaution => 'Caution';

  @override
  String get hgSocialization => 'Socialization & Environmental Stimulation';

  @override
  String get hgDogCoreDhppl =>
      '**التطعيم الخماسي/السداسي (DHPPL)** — ديستمبر، التهاب الكبد، بارفوفيروس، بارينفلونزا، ليبتوسبيروز.\nالجرعة الأولى في عمر 6-8 أسابيع، ثم كل 3-4 أسابيع (إجمالي 3 جرعات)، وجرعة منشطة سنوية.';

  @override
  String get hgDogCoreRabies =>
      '**داء الكلب** — الجرعة الأولى من عمر 3 أشهر، ثم جرعة منشطة سنوية (إلزامي قانوناً في العديد من المناطق).';

  @override
  String get hgDogCoreCorona =>
      '**فيروس كورونا** — من عمر 6-8 أسابيع، جرعتان بفاصل 3-4 أسابيع، وجرعة منشطة سنوية.';

  @override
  String get hgDogNonCoreKennel =>
      '**سعال الكينيل** — يوصى به للكلاب التي تذهب إلى الحضانات، صالونات الحلاقة، أو الحدائق. عن طريق الأنف أو الحقن.';

  @override
  String get hgDogNonCoreFlu =>
      '**إنفلونزا الكلاب** — يوصى به في حالة النشاط الخارجي العالي أو الاتصال المتكرر بالكلاب الأخرى.';

  @override
  String get hgDogHeartworm1 =>
      'يوصى بإجراء علاج وقائي **مرة واحدة شهرياً** خلال موسم البعوض (أو طوال العام في المناطق الدافئة).';

  @override
  String get hgDogHeartworm2 =>
      'إذا أصيب بالعدوى، فإن العلاج صعب وقد يكون مميتاً — **الوقاية هي أفضل طريقة**.';

  @override
  String get hgDogHeartworm3 =>
      'يلزم إجراء فحص دم (نتيجة سلبية) قبل بدء العلاج الوقائي.';

  @override
  String get hgDogHeartworm4 =>
      'العلاج الوقائي على مدار العام أكثر أماناً (يوصي به الأطباء البيطريون).';

  @override
  String get hgDogExternalParasites1 =>
      'قم بإعطاء علاج وقائي موضعي (قطرات) أو فموي **كل شهر**.';

  @override
  String get hgDogExternalParasites2 =>
      'بعد المشي، تحقق دائماً من داخل الأذنين، بين أصابع القدمين، والإبطين بحثاً عن القراد.';

  @override
  String get hgDogExternalParasites3 =>
      'لإزالة القراد، استخدم ملقطاً واسحبه بحذر لأعلى (لا تقم بلفه).';

  @override
  String get hgDogInternalParasites1 =>
      'الديدان المستديرة، الديدان الخطافية، الديدان السوطية: أعط دواء للديدان **كل 3 إلى 6 أشهر**.';

  @override
  String get hgDogInternalParasites2 =>
      'الجراء (من أسبوعين): دواء للديدان كل أسبوعين (إجمالي 4 مرات)، ثم صيانة منتظمة.';

  @override
  String get hgDental1 =>
      'تنظيف الأسنان يومياً هو الخيار الأمثل — يوصى به **على الأقل 3 مرات في الأسبوع**.';

  @override
  String get hgDental2 =>
      'استخدم دائماً **معجون أسنان خاص بالحيوانات الأليفة** (معجون أسنان البشر الذي يحتوي على إكسيليتول ممنوع تماماً).';

  @override
  String get hgDental3 =>
      'إذا كان هناك الكثير من الجير، يلزم إزالته عند الطبيب البيطري (تحت تخدير كامل).';

  @override
  String get hgDental4 =>
      'يمكن استخدام مكافآت العناية بالأسنان وألعاب المضغ كعناية تكميلية.';

  @override
  String get hgDogForbiddenFoodAlert =>
      'الأطعمة التالية سامة للكلاب. حتى الكميات الصغيرة قد تكون مميتة، لا تقدمها لهم أبداً.';

  @override
  String get hgDogForbiddenGrape =>
      '**العنب/الزبيب** — يسبب الفشل الكلوي، مميت حتى بكميات صغيرة.';

  @override
  String get hgDogForbiddenChocolate =>
      '**الشوكولاتة/الكاكاو** — تسمم الثيوبرومين، فشل القلب، تشنجات.';

  @override
  String get hgDogForbiddenOnion =>
      '**البصل/الكراث/الثوم** — يدمر خلايا الدم الحمراء، ويسبب فقر الدم الانحلالي.';

  @override
  String get hgDogForbiddenXylitol =>
      '**إكسيليتول (مُحلي)** — إفراز مفرط للإنسولين، نقص السكر في الدم، فشل الكبد.';

  @override
  String get hgDogForbiddenMacadamia =>
      '**مكسرات المكاديميا** — ضعف العضلات، حمى شديدة، قيء.';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**العجين النيئ/الكحول** — تسمم الإيثانول، نقص السكر في الدم.';

  @override
  String get hgDogForbiddenAvocado =>
      '**الأفوكادو** — يحتوي على بيرسين، ويسبب القيء والإسهال.';

  @override
  String get hgEmergencyAlert =>
      'إذا ظهرت الأعراض التالية، يرجى زيارة الطبيب البيطري فوراً.';

  @override
  String get hgDogEmergency1 => 'فقدان تام للشهية لأكثر من 24 ساعة.';

  @override
  String get hgDogEmergency2 => 'قيء متكرر أو إسهال 3 مرات أو أكثر في اليوم.';

  @override
  String get hgDogEmergency3 =>
      'انتفاخ البطن / محاولات فاشلة للتقيؤ (اشتباه في التواء المعدة).';

  @override
  String get hgDogEmergency4 => 'صعوبة في التنفس، لثة شاحبة، ازرقاق.';

  @override
  String get hgDogEmergency5 => 'تشنجات، نوبات صرع، فقدان الوعي.';

  @override
  String get hgDogEmergency6 => 'عدم التبول لأكثر من 12 ساعة.';

  @override
  String get hgDogEmergency7 => 'إصابات مرئية، كسور في العظام، نزيف شديد.';

  @override
  String get hgDogExerciseAlert =>
      'قلة التمارين في الكلاب ليست مجرد مشكلة جسدية. إنها السبب الرئيسي للتوتر، القلق، والسلوك المدمر.';

  @override
  String get hgDogWalk1 =>
      'الكلاب الصغيرة: يوصى بـ **20-30 دقيقة** على الأقل يومياً. الكلاب المتوسطة/الكبيرة: أكثر من **ساعة واحدة**.';

  @override
  String get hgDogWalk2 =>
      'المشي ليس فقط لقضاء الحاجة، بل من أجل **التحفيز الشمي، التنشئة الاجتماعية، وتخفيف التوتر**.';

  @override
  String get hgDogWalk3 =>
      'دعهم يشمون بحرية — إنه فعال جداً في تخفيف التعب العقلي.';

  @override
  String get hgDogWalk4 =>
      'احذر من حروق الأسفلت في الصيف — يوصى بالمشي قبل الساعة 7 صباحاً أو في المساء.';

  @override
  String get hgDogPlay1 =>
      '**الجلب / شد الحبل** — يحرق الطاقة ويقوي الرابطة مع المالك.';

  @override
  String get hgDogPlay2 =>
      '**ألعاب الشم (Nosework)** — تحفز الدماغ، 15 دقيقة تعادل 30 دقيقة من المشي.';

  @override
  String get hgDogPlay3 =>
      '**الألعاب التفاعلية/موزعات الطعام** — فعالة في تخفيف قلق الانفصال عند تركهم وحدهم.';

  @override
  String get hgDogPlay4 =>
      'فقط **10-15 دقيقة** من اللعب المركز يومياً يمكن أن تقلل من مستويات التوتر بشكل كبير.';

  @override
  String get hgDogStress1 =>
      'تدمير الأثاث أو الأشياء، النباح المفرط — علامات على قلة التمارين أو التحفيز.';

  @override
  String get hgDogStress2 =>
      'مطاردة الذيل، اللعق المفرط (للمخالب أو الجسم) — سلوك قهري لتخفيف التوتر.';

  @override
  String get hgDogStress3 =>
      'قلق مفرط عند الانفصال عن المالك، قضاء الحاجة في أماكن غير مناسبة — اشتباه في قلق الانفصال.';

  @override
  String get hgDogStress4 =>
      'إذا استمرت الأعراض، يوصى باستشارة طبيب بيطري أو خبير سلوكي.';

  @override
  String get hgDogSocial1 =>
      'من **3 إلى 14 أسبوعاً** هي الفترة الذهبية للتنشئة الاجتماعية — من المهم تعريضهم لأشخاص، أصوات، وبيئات مختلفة.';

  @override
  String get hgDogSocial2 =>
      'التفاعل مع الكلاب الأخرى — استخدم حدائق الكلاب أو فصول الجراء.';

  @override
  String get hgDogSocial3 =>
      'استكشاف أماكن، روائح، وأصوات جديدة يساعد في الإثراء العقلي.';

  @override
  String get hgDogSocial4 =>
      'التدريب بالتعزيز الإيجابي (الكليكر، المكافآت) يحفز الدماغ ويقوي الرابطة.';

  @override
  String get hgCatCoreFvrcp =>
      '**التطعيم الثلاثي/الرباعي (FVRCP)** — فيروس الهربس، الكاليسي، البارفو (نقص الكريات البيضاء).\nالجرعة الأولى في عمر 6-8 أسابيع، ثم كل 3-4 أسابيع (إجمالي 3 جرعات)، وجرعة منشطة كل 1 إلى 3 سنوات.';

  @override
  String get hgCatCoreRabies =>
      '**داء الكلب** — إلزامي للقطط التي تخرج، وموصى به للقطط المنزلية (إلزامي قانوناً في العديد من المناطق).';

  @override
  String get hgCatNonCoreFelv =>
      '**فيروس لوكيميا القطط (FeLV)** — يوصى به بشدة للقطط التي تخرج أو تعيش مع قطط أخرى.';

  @override
  String get hgCatNonCoreChlamydia =>
      '**كلاميديا القطط** — في المنازل التي بها عدة قطط، يمنع التهاب الملتحمة.';

  @override
  String get hgCatNonCoreFiv =>
      '**نقص المناعة (FIV)** — للذكور التي تخرج (ينتقل عن طريق العض).';

  @override
  String get hgCatExternalParasites1 =>
      'القطط التي تخرج: ضع علاجاً وقائياً ضد البراغيث/القراد **مرة واحدة شهرياً**.';

  @override
  String get hgCatExternalParasites2 =>
      'القطط المنزلية يمكن أن تصاب بالبراغيث عبر الملابس أو الأحذية → يوصى بالوقاية **كل 3 أشهر**.';

  @override
  String get hgCatExternalParasites3 =>
      'عند استخدام القطرات، ضعها بالضبط على مؤخرة العنق حيث لا يمكنهم لعقها.';

  @override
  String get hgCatInternalHeartworm => 'الطفيليات الداخلية ودودة القلب';

  @override
  String get hgCatInternalParasites1 =>
      'الديدان المستديرة/الشريطية: أعط دواء للديدان **كل 3 إلى 6 أشهر**.';

  @override
  String get hgCatInternalParasites2 =>
      'إذا كانت تتغذى على اللحوم أو الأسماك النيئة، يوصى بإجراء فحوصات متكررة.';

  @override
  String get hgCatHeartworm1 =>
      'دودة القلب — **لا يوجد علاج للقطط، الوقاية هي الطريقة الوحيدة**. يوصى بشدة بالوقاية الشهرية للقطط التي تخرج.';

  @override
  String get hgCatMajorDiseases =>
      'أمراض القطط الرئيسية التي يجب الانتباه إليها';

  @override
  String get hgCatDiseaseAlert =>
      'القطط تخفي ألمها جيداً، وغالباً لا تظهر الأعراض إلا بعد تقدم المرض. الفحوصات الصحية المنتظمة ضرورية.';

  @override
  String get hgCatDiseaseFlutd =>
      '**أمراض المسالك البولية السفلية (FLUTD)** — شائعة في الذكور. عدم القدرة على التبول حالة طوارئ قصوى.';

  @override
  String get hgCatDiseaseCkd =>
      '**مرض الكلى المزمن (CKD)** — السبب الرئيسي لوفاة القطط الأكبر سناً. فحوصات الدم المنتظمة ضرورية بعد سن 7 سنوات.';

  @override
  String get hgCatDiseaseDiabetes =>
      '**سكري القطط** — خطر أكبر في القطط البدينة أو الأكبر سناً. راقب زيادة العطش والتبول.';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**فرط نشاط الغدة الدرقية** — شائع في القطط فوق 10 سنوات. الأعراض تشمل فقدان الوزن، شهية نهمة، وقلق.';

  @override
  String get hgCatDiseaseStomatitis =>
      '**التهاب الفم (Stomatitis)** — مرض شائع جداً في القطط. راقب رائحة الفم الكريهة، سيلان اللعاب، أو فقدان الشهية.';

  @override
  String get hgCatDiseaseFhv =>
      '**فيروس هربس القطط (FHV-1)** — يبقى الفيروس كامناً مدى الحياة بعد الإصابة. يعود للنشاط أثناء التوتر، مسبباً العطس، إفرازات العين، والتهاب الملتحمة.';

  @override
  String get hgHydrationDiet => 'الترطيب والإدارة الغذائية';

  @override
  String get hgCatHydrationAlert =>
      'القطط تشرب القليل من الماء بطبيعتها، مما يجعلها عرضة لأمراض المسالك البولية. من المهم جداً تشجيعها على الشرب.';

  @override
  String get hgCatHydration1 =>
      'يوصى بالدمج مع الطعام الرطب (المعلبات أو الأكياس) لتكملة الترطيب.';

  @override
  String get hgCatHydration2 =>
      'إنها تفضل الماء الجاري — تركيب **نافورة ماء** فعال جداً.';

  @override
  String get hgCatHydration3 =>
      'ضع وعاء الماء بعيداً عن وعاء الطعام؛ إنها تفضل الأوعية الواسعة والمسطحة.';

  @override
  String get hgCatHydration4 =>
      'هدف الترطيب: حوالي **40-60 مل** لكل كجم من وزن الجسم يومياً.';

  @override
  String get hgCatForbiddenFoodAlert =>
      'الأطعمة التالية سامة للقطط. حتى الكميات الصغيرة قد تكون مميتة، لا تقدمها لها أبداً.';

  @override
  String get hgCatForbiddenOnion =>
      '**البصل/الكراث/الثوم** — يدمر خلايا الدم الحمراء، ويسبب فقر الدم الانحلالي (أكثر حساسية من الكلاب).';

  @override
  String get hgCatForbiddenGrape => '**العنب/الزبيب** — يسبب الفشل الكلوي.';

  @override
  String get hgCatForbiddenChocolate =>
      '**الشوكولاتة/الكافيين** — سامة للقلب والجهاز العصبي.';

  @override
  String get hgCatForbiddenRawFish =>
      '**السمك النيئ (بشكل مستمر)** — يسبب نقص الثيامين (فيتامين ب1).';

  @override
  String get hgCatForbiddenMilk =>
      '**الحليب/منتجات الألبان** — القطط البالغة لا تتحمل اللاكتوز، مما يسبب الإسهال.';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**إكسيليتول/الكحول** — سامة للكبد والجهاز العصبي.';

  @override
  String get hgCatForbiddenAvocado =>
      '**الأفوكادو** — يحتوي على بيرسين، ويسبب القيء والإسهال.';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**بياض البيض النيئ** — يمنع الأفيدين امتصاص البيوتين، مما يسبب مشاكل في الجلد والشعر.';

  @override
  String get hgCatEmergency1 =>
      '**عدم القدرة التامة على التبول أو دم في البول** — طوارئ بسبب انسداد مجرى البول (خاصة في الذكور).';

  @override
  String get hgCatEmergency2 =>
      'فقدان تام للشهية لأكثر من 24 ساعة (خطر الإصابة بتشحم الكبد).';

  @override
  String get hgCatEmergency3 =>
      '**التنفس وفمها مفتوح** — ليس طبيعياً أبداً في القطط ويتطلب رعاية طوارئ فورية.';

  @override
  String get hgCatEmergency4 =>
      'شلل مفاجئ أو برودة في الأرجل الخلفية (اشتباه في جلطة).';

  @override
  String get hgCatEmergency5 => 'تشنجات، نوبات صرع، فقدان الوعي.';

  @override
  String get hgCatEmergency6 => 'لثة أو لسان شاحب أو مصفر (يرقان).';

  @override
  String get hgCatEmergency7 =>
      'قيء متكرر أو إسهال 3 مرات أو أكثر في اليوم، أو دم في البراز/القيء.';

  @override
  String get hgCatEmergency8 => 'إصابات مرئية، كسور في العظام، نزيف شديد.';

  @override
  String get hgEnvironmentMentalHealth => 'البيئة والصحة العقلية';

  @override
  String get hgIndoorEnvironment => 'إدارة البيئة الداخلية';

  @override
  String get hgStressManagement => 'إدارة التوتر';

  @override
  String get hgCatEnvironment1 =>
      '**صناديق الفضلات**: على الأقل عدد القطط + 1، حافظ عليها نظيفة يومياً.';

  @override
  String get hgCatEnvironment2 =>
      '**أعمدة الخدش**: على الأقل 2 أو أكثر (مزيج من الأنواع الرأسية والأفقية).';

  @override
  String get hgCatEnvironment3 =>
      '**الأماكن المرتفعة**: وفر مساحات رأسية مثل أشجار القطط أو الأرفف (يرضي غريزة المنطقة).';

  @override
  String get hgCatEnvironment4 =>
      '**أماكن الاختباء**: وفر مساحات آمنة للاختباء مثل الصناديق أو الأنفاق.';

  @override
  String get hgCatStress1 =>
      'التوتر في القطط يؤدي مباشرة إلى ضعف جهاز المناعة، أمراض المسالك البولية، تكرار الهربس، إلخ.';

  @override
  String get hgCatStress2 =>
      'أثناء التغييرات المفاجئة (الانتقال، أفراد عائلة جدد، إلخ)، استخدم ناشرات الفرمون (Feliway).';

  @override
  String get hgCatStress3 =>
      'وفر على الأقل **10-15 دقيقة** من اللعب التفاعلي بعصا القطط كل يوم.';

  @override
  String get hgCatStress4 =>
      'المنازل التي بها عدة قطط: افصل الموارد (الأوعية، صناديق الفضلات، الأسرة) حسب عدد القطط.';

  @override
  String get hgAge => 'العمر';

  @override
  String get hgCheckupCycle => 'وتيرة الفحص';

  @override
  String get hgMainItems => 'الفحوصات الرئيسية';

  @override
  String get hgAge1to6 => '1 إلى 6 سنوات';

  @override
  String get hgAge7to10 => '7 إلى 10 سنوات';

  @override
  String get hgAge11Plus => '11 سنة فأكثر';

  @override
  String get hgYearlyOnce => 'مرة واحدة سنوياً';

  @override
  String get hgYearlyTwice => 'مرتان سنوياً';

  @override
  String get hgEvery3to4Months => 'كل 3-4 أشهر';

  @override
  String get hgDogCheckupItems1 => 'فحص دم، فحص القلب، الوزن، الأسنان';

  @override
  String get hgDogCheckupItems2 => 'دم، بول، أشعة سينية، ضغط الدم، المفاصل';

  @override
  String get hgDogCheckupItems3 =>
      'صورة دم كاملة، موجات فوق صوتية، وظائف الكلى/الكبد';

  @override
  String get hgCatCheckupItems1 => 'فحص دم، فحص بول، الوزن، الأسنان';

  @override
  String get hgCatCheckupItems2 =>
      'وظائف الكلى/الكبد، ضغط الدم، الغدة الدرقية (T4)';

  @override
  String get hgCatCheckupItems3 =>
      'صورة دم كاملة، موجات فوق صوتية للبطن، مراقبة مكثفة للكلى';

  @override
  String get hgExerciseAmount => 'مستوى النشاط';

  @override
  String get hgBreedExamples => 'سلالات نموذجية';

  @override
  String get hgLow => 'منخفض';

  @override
  String get hgNormal => 'طبيعي';

  @override
  String get hgHigh => 'مرتفع';

  @override
  String get hgBreedLowExamples => 'بولدوغ، باسيت هاوند، شيه تزو، مالطية';

  @override
  String get hgBreedNormalExamples => 'بودل، بيشون فريز، كوكر سبانييل، بيجل';

  @override
  String get hgBreedHighExamples =>
      'لابرادور، جولدن ريتريفر، هاسكي، بوردر كولي';

  @override
  String get hgDisclaimer =>
      'يوفر هذا الدليل معلومات صحية عامة. قد تختلف الرعاية اللازمة بناءً على الحالة الخاصة لحيوانك الأليف. في حالة ظهور أعراض غير طبيعية أو الحاجة إلى علاج، استشر دائماً طبيباً بيطرياً.';

  @override
  String get categoryFilter => 'تصفية الفئات';

  @override
  String get selectAll => 'تحديد الكل';

  @override
  String get deselectAll => 'إلغاء تحديد الكل';

  @override
  String get apply => 'تطبيق';

  @override
  String get saving => 'جاري الحفظ...';

  @override
  String get treatmentContent => 'العلاج';

  @override
  String get conditionScoreWord1 => 'سيء جداً';

  @override
  String get conditionScoreWord2 => 'سيء';

  @override
  String get conditionScoreWord3 => 'متوسط';

  @override
  String get conditionScoreWord4 => 'جيد';

  @override
  String get conditionScoreWord5 => 'ممتاز';

  @override
  String conditionScoreFormat(Object score, Object word) {
    return 'التقييم $score - $word';
  }
}
