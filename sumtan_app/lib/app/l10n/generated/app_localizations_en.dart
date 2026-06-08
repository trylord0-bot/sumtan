// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Pet Note';

  @override
  String get appTagline => 'Pet health care app';

  @override
  String get navHome => 'Home';

  @override
  String get navJournal => 'Journal';

  @override
  String get navNotifications => 'Alerts';

  @override
  String get navProfile => 'Profile';

  @override
  String get navSettings => 'Settings';

  @override
  String get navAddAlarm => 'Add alert';

  @override
  String get drawerService => 'Services';

  @override
  String get drawerNearbyHospitals => 'Find nearby hospitals';

  @override
  String get drawerNearbyHospitalsSub => 'Animal hospitals near you';

  @override
  String get drawerHealthGuide => 'Health guide';

  @override
  String get drawerHealthGuideSub => 'Pet health handbook';

  @override
  String get drawerApp => 'App';

  @override
  String get drawerHelp => 'Help';

  @override
  String get dialogExternalTitle => 'Open an external page';

  @override
  String get dialogExternalHospitalBody =>
      'Finding nearby animal hospitals requires an external web page.\n\nOpen it now?';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonGo => 'Go';

  @override
  String get commonDelete => 'Delete';

  @override
  String get commonSave => 'Save';

  @override
  String get commonLoading => 'Preparing...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'Tap again to exit';

  @override
  String get toastNeedPet => 'No pet yet. Please add one from Profile first.';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsPushNotifications => 'Allow push notifications';

  @override
  String get settingsPushNotificationsSub => 'Device notification permission';

  @override
  String get settingsLanguageSection => 'Language';

  @override
  String get settingsLanguage => 'App language';

  @override
  String get settingsLanguageSystem => 'Use device settings';

  @override
  String get settingsLanguageChanged => 'App language changed';

  @override
  String get settingsData => 'Data management';

  @override
  String get settingsExport => 'Export data';

  @override
  String get settingsExportSub => 'Save as a ZIP file';

  @override
  String get settingsImport => 'Import data';

  @override
  String get settingsImportSub => 'Restore from a ZIP file';

  @override
  String get settingsAppInfo => 'App info';

  @override
  String get settingsVersion => 'App version';

  @override
  String get settingsPrivacy => 'Privacy policy';

  @override
  String get settingsFeedback => 'Send feedback';

  @override
  String get settingsFeedbackSubject => 'Pet Note feedback';

  @override
  String get settingsEmailAppMissing => 'No email app found';

  @override
  String get settingsImportConfirmBody =>
      'All existing data will be deleted and replaced with the backup file.\n\nContinue?';

  @override
  String get settingsImportAction => 'Import';

  @override
  String get settingsImporting => 'Import data';

  @override
  String get settingsImportSuccess => 'Backup data restored';

  @override
  String get settingsImportFailed => 'Import failed';

  @override
  String get settingsExportTitle => 'Export data';

  @override
  String get settingsExportBenefitTitle => 'Keep your precious records safe';

  @override
  String get settingsExportBenefitPets => 'All pet profiles and photos';

  @override
  String get settingsExportBenefitRecords =>
      'All health records, journals, and weights';

  @override
  String get settingsExportBenefitMedia =>
      'Includes attached images and videos';

  @override
  String get settingsStoreUnavailable =>
      'Cannot connect to the store right now.\nPlease try again later.';

  @override
  String settingsPayAndExport(String price) {
    return 'Pay $price and export';
  }

  @override
  String get settingsUnlocked => 'Unlocked';

  @override
  String get settingsExportUnlockedBody =>
      'Save all pet information and records as a ZIP file.\nYou can import and restore saved files for free anytime.';

  @override
  String get settingsExporting => 'Exporting...';

  @override
  String get settingsExportZip => 'Export as ZIP';

  @override
  String get settingsExportConfirmBody =>
      'Export all pet information, records, and attached media as a ZIP file.';

  @override
  String get settingsExportAction => 'Export';

  @override
  String get settingsExportSuccess => 'Backup file is ready to share';

  @override
  String get settingsExportFailed => 'Export failed';

  @override
  String get settingsPurchaseFailed => 'Payment failed';

  @override
  String get settingsPurchaseProductLoadFailed =>
      'Couldn’t load product info. Please try again shortly.';

  @override
  String get settingsPurchaseStartFailed =>
      'Couldn’t start payment. Please try again shortly.';

  @override
  String get errorDbInit =>
      'We had a problem preparing the app data.\nPlease try again in a moment.';

  @override
  String get help => 'Help';

  @override
  String get healthGuide => 'Health guide';

  @override
  String get dog => 'Dog';

  @override
  String get cat => 'Cat';

  @override
  String get tabDog => '🐶 Dog';

  @override
  String get tabCat => '🐱 Cat';

  @override
  String get savedMsg => 'Saved';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get deleteAction => 'Delete';

  @override
  String get save => 'Save';

  @override
  String get memo => 'Memo';

  @override
  String get memoPlaceholder => 'Add a memo freely';

  @override
  String get addBtn => '+ Add';

  @override
  String get errorOccurred => 'An error occurred';

  @override
  String errorOccurredWithDetail(String error) {
    return 'An error occurred\n$error';
  }

  @override
  String get pet => 'Pet';

  @override
  String get selectPet => 'Select pet';

  @override
  String get addNewPet => 'Add a new pet';

  @override
  String get noAlarms => 'No alerts yet';

  @override
  String alarmEmptyDesc(String petName) {
    return 'Keep $petName healthy today.\nTap Add alert below to get started.';
  }

  @override
  String get scheduledAlarms => 'Scheduled alerts';

  @override
  String get swipeToDelete => 'Swipe to delete';

  @override
  String get selectAlarmType => 'Select alert type';

  @override
  String get vetAppointment => 'Vet appointment';

  @override
  String get medication => 'Medication';

  @override
  String get mealTime => 'Meal time';

  @override
  String get dailyReminder => 'Daily reminder';

  @override
  String get alarmLabel => 'Alert';

  @override
  String get notificationChannelName => 'Pet Note alerts';

  @override
  String get notificationChannelDescription => 'Pet health care reminders';

  @override
  String alarmNotificationTitle(String type) {
    return '$type alert';
  }

  @override
  String get alarmBodyVaccination => 'Please check the vaccination date.';

  @override
  String get alarmBodyVetAppointment => 'Your vet appointment is coming up.';

  @override
  String get alarmBodyMedication => 'It is time for medication.';

  @override
  String get alarmBodyMealTime => 'Please remember meal time.';

  @override
  String get alarmBodyDailyReminder => 'Please add today’s health record.';

  @override
  String get alarmBodyDefault => 'Pet health care alert.';

  @override
  String get alarmDeleted => 'Alert deleted';

  @override
  String get hidePastAlarms => 'Hide past alerts';

  @override
  String get showPastAlarms => 'Show past alerts';

  @override
  String get deleteAll => 'Delete all';

  @override
  String get deletePastAlarms => 'Delete past alerts';

  @override
  String deletePastAlarmsConfirm(int count) {
    return 'Delete all $count past alerts?';
  }

  @override
  String get pastAlarmsDeleted => 'All past alerts deleted';

  @override
  String get pastLabel => 'Past';

  @override
  String get today => 'Today';

  @override
  String get tomorrowSameTime => 'Tomorrow, same time';

  @override
  String get snoozeQuestion => 'When should we remind you again?';

  @override
  String get snooze5min => 'In 5 minutes';

  @override
  String get snooze10min => 'In 10 minutes';

  @override
  String get snooze30min => 'In 30 minutes';

  @override
  String get snooze1hour => 'In 1 hour';

  @override
  String get snooze3hour => 'In 3 hours';

  @override
  String get snoozeCustom => 'Choose manually';

  @override
  String get snoozeAtThisTime => 'Remind me at this time';

  @override
  String snoozeConfirm(String time) {
    return 'We will remind you at $time';
  }

  @override
  String get selectFutureTime => 'Please choose a future time';

  @override
  String recordCheckHint(String typeLabel) {
    return 'You can check it under Record > $typeLabel.';
  }

  @override
  String get pushAlsoCancel =>
      'The scheduled push notification will also be canceled.';

  @override
  String get reschedule => 'Reschedule';

  @override
  String get deleteThisAlarm => 'Delete this alert';

  @override
  String get vaccineNameRequired => 'Vaccine name *';

  @override
  String get vaccineNameExample => 'e.g. Rabies, Combo vaccine';

  @override
  String get scheduledDateRequired => 'Date *';

  @override
  String get reminderTiming => 'Reminder timing';

  @override
  String get sameDay => 'Same day';

  @override
  String get reminderTimeRequired => 'Reminder time *';

  @override
  String get memoInputHint => 'Enter a memo';

  @override
  String get visitPurposeRequired => 'Visit purpose *';

  @override
  String get visitPurposeExample => 'e.g. Checkup, Skin treatment';

  @override
  String get appointmentDateTimeRequired => 'Appointment date and time *';

  @override
  String get hospitalName => 'Hospital name';

  @override
  String get hospitalNameHint => 'Enter hospital name';

  @override
  String get medicineNameRequired => 'Medicine name *';

  @override
  String get medicineNameExample => 'e.g. Heartworm, Dewormer';

  @override
  String get doseExample => 'e.g. 0.5ml, 1 tablet';

  @override
  String get repeatRequired => 'Repeat *';

  @override
  String get none => 'None';

  @override
  String get daily => 'Daily';

  @override
  String get weekly => 'Weekly';

  @override
  String get monthly => 'Monthly';

  @override
  String get weekdays => 'Weekdays';

  @override
  String get weekdaysOnly => 'Weekdays only';

  @override
  String get weekends => 'Weekends';

  @override
  String get weekendsOnly => 'Weekends only';

  @override
  String get medicationDateTimeRequired => 'Medication date and time *';

  @override
  String get medicationTimeRequired => 'Medication time *';

  @override
  String get alarmNameRequired => 'Alert name *';

  @override
  String get mealTimeExample => 'e.g. Breakfast, Dinner';

  @override
  String get mealTimeRequired => 'Meal time *';

  @override
  String get alarmMessage => 'Alert message';

  @override
  String get alarmMessageExample => 'e.g. Did you add today’s record?';

  @override
  String get alarmPastDueMsg =>
      'This alert date has passed.\nYou can choose a new date or delete it.';

  @override
  String get reselectDate => 'Select date again';

  @override
  String get selectDate => 'Select date';

  @override
  String get selectTime => 'Select time';

  @override
  String get todayStatus => 'Today’s status';

  @override
  String get addRecord => '+ Add record';

  @override
  String get todayReminders => 'Today’s reminders';

  @override
  String get todayRecords => 'Today’s records';

  @override
  String get viewAll => 'View all';

  @override
  String get weekStats => 'Health Stats';

  @override
  String get pottyCount => 'Potty count';

  @override
  String get mealCount => 'Meal count';

  @override
  String get waterLevel => 'Water level';

  @override
  String get timesUnit => 'times';

  @override
  String get mealsUnit => 'meals';

  @override
  String get pointsUnit => 'pts';

  @override
  String get recordDeleted => 'Record deleted';

  @override
  String get recordUpdated => 'Record updated';

  @override
  String get deleteRecordConfirm => 'Delete this record?';

  @override
  String get deleteConfirmBody => 'Once deleted, it can\'t be recovered!';

  @override
  String get deleteConfirmOk => 'Delete it';

  @override
  String get deleteThisRecord => 'Delete this record';

  @override
  String get typeLabel => 'Type';

  @override
  String get statusLabel => 'Status';

  @override
  String get conditionScore => 'Condition score';

  @override
  String get symptomTags => 'Symptom tags';

  @override
  String get medicineName => 'Medicine name';

  @override
  String get dose => 'Dose';

  @override
  String get medicationMethod => 'Medication method';

  @override
  String get weightKg => 'Weight (kg)';

  @override
  String get measurementMethod => 'Measurement method';

  @override
  String get mealAmount => 'Meal amount';

  @override
  String get servingAmount => 'Serving amount';

  @override
  String get waterAmount => 'Water amount';

  @override
  String get visitType => 'Visit type';

  @override
  String get diagnosisName => 'Diagnosis';

  @override
  String get vaccineType => 'Vaccine type';

  @override
  String get abnormalSymptomType => 'Abnormal Sign Type';

  @override
  String get customSymptom => 'Custom Symptom';

  @override
  String get customSymptomPlaceholder => 'Enter symptom description';

  @override
  String get sideEffects => 'Side effects';

  @override
  String get groomingType => 'Grooming type';

  @override
  String get shopName => 'Shop name';

  @override
  String get cost => 'Cost';

  @override
  String get nextAppointment => 'Next appointment';

  @override
  String get brushingArea => 'Brushing area';

  @override
  String get duration => 'Duration';

  @override
  String get walkTime => 'Walk time';

  @override
  String get distance => 'Distance';

  @override
  String get title => 'Title';

  @override
  String get priority => 'Priority';

  @override
  String get stool => 'Stool';

  @override
  String get urine => 'Urine';

  @override
  String get vomiting => 'Vomiting';

  @override
  String get bleeding => 'Bleeding';

  @override
  String get dyspnea => 'Dyspnea';

  @override
  String get seizure => 'Seizure/Convulsion';

  @override
  String get normal => 'Normal';

  @override
  String get loose => 'Shape issue';

  @override
  String get hard => 'Color issue';

  @override
  String get bloodInStool => 'Blood in stool';

  @override
  String get cough => 'Cough';

  @override
  String get lethargy => 'Lethargy';

  @override
  String get lossOfAppetite => 'Loss of appetite';

  @override
  String get diarrhea => 'Diarrhea';

  @override
  String get runnyNose => 'Runny nose';

  @override
  String get sneezing => 'Sneezing';

  @override
  String get trembling => 'Trembling';

  @override
  String get bloodInUrine => 'Blood in urine';

  @override
  String get oral => 'Oral';

  @override
  String get injection => 'Injection';

  @override
  String get topical => 'Topical';

  @override
  String get eyeDrops => 'Eye drops';

  @override
  String get earDrops => 'Ear drops';

  @override
  String get vetHospital => 'Vet hospital';

  @override
  String get homeScale => 'Home scale';

  @override
  String get holdAndWeigh => 'Hold and weigh';

  @override
  String get veryLittle => 'Very little';

  @override
  String get little => 'Little';

  @override
  String get much => 'Much';

  @override
  String get veryMuch => 'Very much';

  @override
  String get general => 'Normal';

  @override
  String get regularCheckup => 'Checkup';

  @override
  String get emergency => 'Emergency';

  @override
  String get mild => 'Mild';

  @override
  String get severe => 'Severe';

  @override
  String get bath => 'Bath';

  @override
  String get fullGrooming => 'Full grooming';

  @override
  String get partialGrooming => 'Partial grooming';

  @override
  String get nails => 'Nails';

  @override
  String get earCleaning => 'Ear cleaning';

  @override
  String get tartarRemoval => 'Tartar removal';

  @override
  String get analGlands => 'Anal glands';

  @override
  String get all => 'All';

  @override
  String get back => 'Back';

  @override
  String get belly => 'Belly';

  @override
  String get tail => 'Tail';

  @override
  String get face => 'Face';

  @override
  String get paws => 'Paws';

  @override
  String get important => 'Important';

  @override
  String get photosAndVideos => 'Photos · Videos';

  @override
  String get addMedia => 'Add media';

  @override
  String get selectMediaMethod => 'Choose how to add media';

  @override
  String get useCamera => 'Use camera';

  @override
  String get takePhotoOrVideo => 'Take a photo or video';

  @override
  String get chooseFromGallery => 'Choose from gallery';

  @override
  String get multiSelectHint => 'Select multiple photos and videos';

  @override
  String get takePhoto => 'Take photo';

  @override
  String get takePhotoDesc => 'Take a photo with camera';

  @override
  String get recordVideo => 'Record video';

  @override
  String get recordVideoDesc => 'Record a video with camera';

  @override
  String get deleteThisPhoto => 'Delete photo';

  @override
  String get deletePhotoConfirm => 'Delete this photo?';

  @override
  String get deleteThisVideo => 'Delete video';

  @override
  String get deleteVideoConfirm => 'Delete this video?';

  @override
  String get muted => 'Muted';

  @override
  String get soundOn => 'Sound on';

  @override
  String get allowPermissionInSettings => 'Please allow permission in Settings';

  @override
  String get openSettings => 'Open settings';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get contactDeveloper => 'Contact the developer';

  @override
  String get contact => 'Contact';

  @override
  String get settingsLabel => 'Settings';

  @override
  String get exportData => 'Export data';

  @override
  String get importData => 'Import data';

  @override
  String get sendFeedback => 'Send feedback';

  @override
  String get faq => 'FAQ';

  @override
  String get homeScreen => 'Home screen';

  @override
  String get journalScreen => 'Journal screen';

  @override
  String get alarmScreen => 'Alerts screen';

  @override
  String get petManagement => 'Pet management';

  @override
  String get recordCategories => 'Record categories';

  @override
  String get whatIsPetNote => 'What is Pet Note?';

  @override
  String get todayRecordSummary => 'Today’s record summary';

  @override
  String get weeklyStats => 'Weekly stats';

  @override
  String get weightChangeChart => 'Weight change chart';

  @override
  String get findNearbyHospitals => 'Find nearby hospitals';

  @override
  String get addNewRecord => 'Add new record (+)';

  @override
  String get viewRecordList => 'View records';

  @override
  String get editDeleteRecord => 'Edit and delete records';

  @override
  String get attachMedia => 'Attach photos/videos';

  @override
  String get addAlarm => 'Add alert';

  @override
  String get repeatAlarm => 'Repeating alerts';

  @override
  String get advanceAlarmHint => 'Advance alerts (D-7, D-3, D-1)';

  @override
  String get completeAlarm => 'Complete alerts';

  @override
  String get deleteAlarm => 'Delete alerts';

  @override
  String get registerPet => 'Add a pet';

  @override
  String get editProfile => 'Edit profile';

  @override
  String get manageMultiplePets => 'Manage multiple pets';

  @override
  String get dogHealthGuide => 'Dog health guide';

  @override
  String get catHealthGuide => 'Cat health guide';

  @override
  String get notificationSettings => 'Notification settings';

  @override
  String get dogHealthCareGuide => 'Dog health care guide';

  @override
  String get catHealthCareGuide => 'Cat health care guide';

  @override
  String get healthGuideSubtitle =>
      'A professional health guide\nbased on veterinary recommendations.';

  @override
  String get vaccination => 'Vaccination';

  @override
  String get coreVaccines => 'Core vaccines';

  @override
  String get required => 'Required';

  @override
  String get nonCoreVaccines => 'Non-core vaccines';

  @override
  String get recommended => 'Recommended';

  @override
  String get parasitePrevention => 'Parasite prevention';

  @override
  String get heartworm => 'Heartworm';

  @override
  String get monthlyFreq => 'Monthly';

  @override
  String get externalParasites => 'External parasites (fleas/ticks)';

  @override
  String get internalParasites => 'Internal parasites';

  @override
  String get threeToSixMonths => '3-6 months';

  @override
  String get nutritionManagement => 'Nutrition';

  @override
  String get dentalCare => 'Dental care';

  @override
  String get healthCheckup => 'Health checkups';

  @override
  String get emergencySigns => 'Emergency signs';

  @override
  String get age => 'Age';

  @override
  String ageAutoCalculated(String age) {
    return 'Auto calculated · $age';
  }

  @override
  String petAgeMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months months',
      one: '1 month',
    );
    return '$_temp0';
  }

  @override
  String petAgeYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years years',
      one: '1 year',
    );
    return '$_temp0';
  }

  @override
  String petAgeYearsMonths(int years, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years years',
      one: '1 year',
    );
    String _temp1 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months months',
      one: '1 month',
    );
    return '$_temp0 $_temp1';
  }

  @override
  String get checkupCycle => 'Checkup cycle';

  @override
  String get mainItems => 'Main items';

  @override
  String get exerciseLevel => 'Exercise level';

  @override
  String get breedExamples => 'Breed examples';

  @override
  String get low => 'Low';

  @override
  String get high => 'High';

  @override
  String get menu => 'Menu';

  @override
  String get helloGreeting => 'Hello! ';

  @override
  String get healthyTodayMsg => '\nFeeling healthy today?';

  @override
  String get noRecordsYet => 'No records yet';

  @override
  String lastRecord(String time) {
    return 'Last record · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return 'Avg $value$unit/day';
  }

  @override
  String get weightTrend => '⚖️ Weight trend';

  @override
  String get weightChange => '⚖️ Weight change';

  @override
  String get noWeightData => 'No weight data yet';

  @override
  String get measuredWeight => 'Measured weight';

  @override
  String get noTodayRecords => 'No records for today yet';

  @override
  String get homeNoRecordHint =>
      'Track condition, potty, and weight\nto care for your pet’s health.';

  @override
  String noRecordsForDate(String date) {
    return 'No records for $date';
  }

  @override
  String recordsForDate(String date, String count) {
    return '$date records ($count)';
  }

  @override
  String get daySun => 'Sun';

  @override
  String get dayMon => 'Mon';

  @override
  String get dayTue => 'Tue';

  @override
  String get dayWed => 'Wed';

  @override
  String get dayThu => 'Thu';

  @override
  String get dayFri => 'Fri';

  @override
  String get daySat => 'Sat';

  @override
  String get whatToRecord => '📝 What would you like to record?';

  @override
  String saveErrorMsg(String error) {
    return 'An error occurred while saving: $error';
  }

  @override
  String get alarmUpdated => 'Alert updated';

  @override
  String get alarmAdded => 'Alert added';

  @override
  String get editAlarm => 'Edit alert';

  @override
  String get deleteAlarmConfirm => 'Delete this alert?';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name will be deleted,\nand its scheduled push notification will be canceled.';
  }

  @override
  String get doneMsg => '✅ Done';

  @override
  String get laterMsg => '🕐 Later';

  @override
  String get saveCompletion => '✅ Save completion';

  @override
  String completedQuestion(String type) {
    return 'Did you complete $type?';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'We will automatically save\n$name to today’s records.';
  }

  @override
  String completionSaved(String name) {
    return '$name completion saved';
  }

  @override
  String get tapAlarmTypeHint => '👆 Tap the alert type you want';

  @override
  String countUnit(int count) {
    return '$count';
  }

  @override
  String dateCompleted(String date) {
    return '$date · Completed';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date past · Tap to reschedule';
  }

  @override
  String get completedLabel => 'Completed';

  @override
  String get edit => 'Edit';

  @override
  String recordDeleteCannotUndo(String category) {
    return '$category record will be deleted\nand cannot be restored.';
  }

  @override
  String get hintMedicineNameAndDose =>
      '💡 Please enter medicine name and dose';

  @override
  String get hintMedicineName => '💡 Please enter a medicine name';

  @override
  String get hintDose => '💡 Please enter a dose';

  @override
  String get hintWeightNumber => '💡 Please enter weight as a number';

  @override
  String get hintWeight => '💡 Please enter weight';

  @override
  String get hintWeightIsNumber => '💡 Please enter weight as a number';

  @override
  String get hintWalkTime => '💡 Please enter walk time';

  @override
  String get hintWalkTimeIsNumber => '💡 Please enter walk time as a number';

  @override
  String get hintWalkTimeNumber => '💡 Please enter walk time as a number';

  @override
  String get hintSelectBrushingArea =>
      '💡 Please select at least one brushing area';

  @override
  String get hintSelectVaccineType =>
      '💡 Please select at least one vaccine type';

  @override
  String get hintSelectGroomingType =>
      '💡 Please select at least one grooming type';

  @override
  String get hintSelectSymptomType =>
      '💡 Please select at least one symptom type';

  @override
  String get hintTitle => '💡 Please enter a title';

  @override
  String get hintVaccineName => '💡 Please enter a vaccine name';

  @override
  String get hintSelectScheduledDate => '💡 Please select a date';

  @override
  String get hintSelectScheduledTime => '💡 Please select a time';

  @override
  String get hintVisitPurpose => '💡 Please enter the visit purpose';

  @override
  String get hintSelectAppointmentDate =>
      '💡 Please select an appointment date';

  @override
  String get hintSelectAppointmentTime =>
      '💡 Please select an appointment time';

  @override
  String get hintMedicineNameInput => '💡 Please enter a medicine name';

  @override
  String get hintSelectMedicationDate => '💡 Please select a medication date';

  @override
  String get hintSelectMedicationTime => '💡 Please select a medication time';

  @override
  String get hintAlarmName => '💡 Please enter an alert name';

  @override
  String get hintSelectMealTime => '💡 Please select a meal time';

  @override
  String get hintSelectAlarmTime => '💡 Please select an alert time';

  @override
  String get noPetRegisterFirst =>
      'No pet yet. Please add one from Profile first.';

  @override
  String get alarmRescheduled => 'Alert rescheduled';

  @override
  String get examplePetName => 'e.g. Kong';

  @override
  String get exampleBreed => 'e.g. Maltese';

  @override
  String get exampleBreedMulti => 'e.g. Maltese, Persian';

  @override
  String get example30 => 'e.g. 30';

  @override
  String get example80 => 'e.g. 80';

  @override
  String get example200 => 'e.g. 200';

  @override
  String get example25 => 'e.g. 2.5';

  @override
  String get example42 => 'e.g. 4.2';

  @override
  String get example35000 => 'e.g. 35000';

  @override
  String get example50000 => 'e.g. 50000';

  @override
  String get enterNameHint => 'Please enter a name';

  @override
  String get addNewPetTitle => 'Add new pet';

  @override
  String get basicInfo => 'Basic info';

  @override
  String get idInfo => 'Identification info';

  @override
  String get idInfoOptional => 'Identification info (optional)';

  @override
  String get name => 'Name';

  @override
  String get petKind => 'Species';

  @override
  String get breed => 'Breed';

  @override
  String get weight => 'Weight';

  @override
  String get microchip => 'Microchip';

  @override
  String get registrationNumber => 'Registration number';

  @override
  String get birthDate => 'Date of birth';

  @override
  String get gender => 'Gender';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get maleSym => 'Male ♂';

  @override
  String get femaleSym => 'Female ♀';

  @override
  String get neutered => 'Neutered';

  @override
  String get done => 'Done';

  @override
  String get notDone => 'Not done';

  @override
  String get notEntered => 'Not entered';

  @override
  String get notRegistered => 'Not registered';

  @override
  String get dogEmoji => 'Dog 🐶';

  @override
  String get catEmoji => 'Cat 🐱';

  @override
  String get otherEmoji => 'Other 🐾';

  @override
  String get noPetsRegistered => 'No pets registered';

  @override
  String get registerPetPrompt =>
      'Register your pet and\nmanage their health together!';

  @override
  String get registerPetBtn => 'Register a pet';

  @override
  String get editPet => 'Edit pet';

  @override
  String get neuteringStatus => 'Neutering status';

  @override
  String get neuteredDone => 'Neutered';

  @override
  String get notNeutered => 'Not neutered';

  @override
  String get selectDateHint => 'Select a date';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get registerBtn => 'Register';

  @override
  String deletePetName(String name) {
    return 'Delete $name';
  }

  @override
  String deletePetConfirm(String name) {
    return 'Delete $name?';
  }

  @override
  String deletePetWarning(String name) {
    return 'All records and alerts for $name will be deleted and cannot be recovered.';
  }

  @override
  String petDeleted(String name) {
    return '$name has been deleted';
  }

  @override
  String petAdded(String name) {
    return '$name has been added 🐾';
  }

  @override
  String get storeUnavailableMsg =>
      'Cannot connect to the store right now. Please try again later.';

  @override
  String get checkingPaymentMsg =>
      'Checking payment info. Please tap again shortly.';

  @override
  String get paymentCompleteMsg =>
      'Payment completed. Please enter your new friend\'s info.';

  @override
  String get addNewFamilyMember => 'Add a new family member?';

  @override
  String get firstPetFreeDesc =>
      'The first pet is free to register. Adding more pets requires a one-time payment per pet.';

  @override
  String petsRegisteredStoreUnavailable(int count) {
    return 'Currently $count pets registered.\nPlease try again when the store is available.';
  }

  @override
  String petsRegisteredPayToAdd(int count, String price) {
    return 'Currently $count pets registered.\nYou can add a new family member after paying $price.';
  }

  @override
  String get maybeLater => 'Maybe later';

  @override
  String get unavailable => 'Unavailable';

  @override
  String payAndAdd(String price) {
    return 'Pay $price and add';
  }

  @override
  String get addNextAppointment => '+ Add next appointment';

  @override
  String get pottyRecordSaved => '💩 Potty recorded';

  @override
  String get conditionRecordSaved => '💗 Condition recorded';

  @override
  String get medicationRecordSaved => '💊 Medication recorded';

  @override
  String get weightRecordSaved => '⚖️ Weight recorded';

  @override
  String get mealRecordSaved => '🍽️ Meal recorded';

  @override
  String get waterRecordSaved => '💧 Water recorded';

  @override
  String get vetVisitRecordSaved => '🏥 Vet visit recorded';

  @override
  String get vaccinationRecordSaved => '💉 Vaccination recorded';

  @override
  String get groomingRecordSaved => '✂️ Grooming recorded';

  @override
  String get brushingRecordSaved => '🪥 Brushing recorded';

  @override
  String get walkRecordSaved => '🦮 Walk recorded';

  @override
  String get memoSaved => '📝 Memo recorded';

  @override
  String get abnormalSymptomRecordSaved => '🚨 Abnormal sign recorded';

  @override
  String get moreQuestions => 'Do you have any more questions?';

  @override
  String get contactViaSendFeedback =>
      'Please contact us via Settings > Send feedback.\nWe will reply promptly 🐾';

  @override
  String get contactViaSendFeedbackLong =>
      'Please contact us via the [Send feedback] button in Settings,\nand we\'ll get back to you as soon as possible.';

  @override
  String get privacyPolicyEffectiveDate =>
      'This privacy policy is effective as of January 1, 2026.\nLast updated: May 8, 2026';

  @override
  String get privacyCollectedInfo =>
      'Collected information is used only for the following purposes.';

  @override
  String get privacyDataFeatures =>
      'Pet Note provides data export (backup) and import (restore) features.';

  @override
  String get privacyPolicyMayUpdate =>
      'This privacy policy may be updated due to legal or service changes.';

  @override
  String get privacyPolicyContact =>
      'For inquiries regarding the privacy policy, please contact us below.';

  @override
  String get catMeal => 'Meal';

  @override
  String get catWater => 'Water';

  @override
  String get catGrooming => 'Grooming';

  @override
  String get catBrushing => 'Brushing';

  @override
  String get catWalk => 'Walk';

  @override
  String get catHospital => 'Vet';

  @override
  String get catAbnormalSymptom => 'Abnormal';

  @override
  String get catCondition => 'Condition';

  @override
  String get catPotty => 'Potty';

  @override
  String get mealFormTitle => '🍽️ Meal Record';

  @override
  String get walkFormTitle => '🦮 Walk Record';

  @override
  String get weightFormTitle => '⚖️ Weight Record';

  @override
  String get waterFormTitle => '💧 Water Record';

  @override
  String get medicationFormTitle => '💊 Medication Record';

  @override
  String get groomingFormTitle => '✂️ Grooming Record';

  @override
  String get brushingFormTitle => '🪥 Brushing Record';

  @override
  String get conditionFormTitle => '🌡️ Condition Record';

  @override
  String get poopFormTitle => '💩 Potty Record';

  @override
  String get vaccinationFormTitle => '💉 Vaccination Record';

  @override
  String get hospitalFormTitle => '🏥 Vet Record';

  @override
  String get abnormalSymptomFormTitle => '🚨 Abnormal Record';

  @override
  String get memoFormTitle => '📝 Memo';

  @override
  String get measureMethod => 'Measurement method';

  @override
  String get feedAmount => 'Feeding amount';

  @override
  String get mlInputLabel => 'Enter mL manually';

  @override
  String get alarmRescheduleNote =>
      'This alert date has passed.\nYou can choose a new date or delete it.';

  @override
  String get nailTrim => 'Nail trim';

  @override
  String get shopNameExample => 'e.g. Fluffy Pet Shop';

  @override
  String get poopRecordSaved => '💩 Potty recorded';

  @override
  String get memoRecordSaved => '📝 Memo recorded';

  @override
  String get other => 'Other';

  @override
  String get whole => 'Whole body';

  @override
  String get paw => 'Paws';

  @override
  String get importance => 'Importance';

  @override
  String get timeTaken => 'Time taken';

  @override
  String get example10 => 'e.g. 10';

  @override
  String get minuteUnit => 'min';

  @override
  String get hospitalNameExample => 'e.g. Happy Animal Hospital';

  @override
  String get diagnosisExample => 'e.g. Enteritis, Dermatitis';

  @override
  String get memoTitlePlaceholder => 'Enter memo title';

  @override
  String get hintMemoTitle => '💡 Please enter a title';

  @override
  String get poopType => 'Type';

  @override
  String get poopStatus => 'Status';

  @override
  String get feces => 'Feces';

  @override
  String get bloody => 'Bloody';

  @override
  String get vaccineDhppl => 'Combo (DHPPL)';

  @override
  String get vaccineCorona => 'Coronavirus';

  @override
  String get vaccineKennelCough => 'Kennel Cough';

  @override
  String get vaccineRabies => 'Rabies';

  @override
  String get vaccineInfluenza => 'Influenza';

  @override
  String get vaccineFvrcp => 'Combo (FVRCP)';

  @override
  String get vaccineFelv => 'Leukemia (FeLV)';

  @override
  String get vaccineChlamydia => 'Chlamydia';

  @override
  String get mute => 'Mute';

  @override
  String get photoVideo => 'Photo · Video';

  @override
  String photoVideoCount(int count) {
    return 'Photo · Video · $count';
  }

  @override
  String get selectMediaSource => 'Choose media source';

  @override
  String get cameraCapture => 'Take with camera';

  @override
  String get cameraCaptureSubtitle => 'Take a photo or video';

  @override
  String get selectFromGallery => 'Choose from gallery';

  @override
  String get selectFromGallerySubtitle => 'Multiple selection allowed';

  @override
  String get takePhotoSubtitle => 'Take a photo with camera';

  @override
  String get recordVideoSubtitle => 'Record a video with camera';

  @override
  String get permissionRequired => 'Please allow permission in Settings';

  @override
  String get confirmDeletePhoto => 'Delete this photo?';

  @override
  String get confirmDeleteVideo => 'Delete this video?';

  @override
  String get hintMedicineAndDose => '💡 Please enter medicine name and dose';

  @override
  String deleteRecordBody(String category) {
    return '$category record will be deleted\nand cannot be restored.';
  }

  @override
  String dayCountShort(int days) {
    return '${days}d';
  }

  @override
  String get helpIntroContent =>
      'Pet Note is an app where you can record and manage your pet\'s health and daily life in one place.\nYou can easily log meals, water, potty, weight, medication, vet visits, and set alerts so you never miss important schedules.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'See all records registered today at a glance. Tap a record to view details or edit it.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'Check this week\'s potty count, meal amount, and water intake on a graph to understand your pet\'s lifestyle patterns.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'Shows recent weight records on a graph so you can easily track weight changes.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'Tap the button to search for nearby animal hospitals on the map.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'Tap the + button at the bottom to select a category and add a new record.';

  @override
  String get helpRecordCategoriesIntro =>
      'You can record your pet\'s daily life in 12 different categories.';

  @override
  String get helpCategoryPottyName => 'Potty';

  @override
  String get helpCategoryPottyDesc =>
      'Record potty status and type. You can also attach photos.';

  @override
  String get helpCategoryConditionName => 'Condition';

  @override
  String get helpCategoryConditionDesc =>
      'Record your pet\'s overall condition.';

  @override
  String get helpCategoryMedicationName => 'Medication';

  @override
  String get helpCategoryMedicationDesc =>
      'Record medicine name, dose, and time.';

  @override
  String get helpCategoryWeightName => 'Weight';

  @override
  String get helpCategoryWeightDesc =>
      'Record weight (kg). You can check the trend on the home screen.';

  @override
  String get helpCategoryMealName => 'Meal';

  @override
  String get helpCategoryMealDesc =>
      'Record meal amount and type. You can attach photos/videos.';

  @override
  String get helpCategoryWaterName => 'Water';

  @override
  String get helpCategoryWaterDesc =>
      'Record water intake (ml). You can attach photos/videos.';

  @override
  String get helpCategoryHospitalName => 'Vet';

  @override
  String get helpCategoryHospitalDesc =>
      'Record hospital name and diagnosis. You can attach photos/videos.';

  @override
  String get helpCategoryVaccinationName => 'Vaccination';

  @override
  String get helpCategoryVaccinationDesc => 'Record vaccine type and date.';

  @override
  String get helpCategoryGroomingName => 'Grooming';

  @override
  String get helpCategoryGroomingDesc =>
      'Record grooming details and attach photos/videos.';

  @override
  String get helpCategoryDentalName => 'Brushing';

  @override
  String get helpCategoryDentalDesc => 'Record brushing status and memos.';

  @override
  String get helpCategoryWalkName => 'Walk';

  @override
  String get helpCategoryWalkDesc => 'Record walk distance and time.';

  @override
  String get helpCategoryMemoName => 'Memo';

  @override
  String get helpCategoryMemoDesc => 'Leave any free-form notes.';

  @override
  String get helpJournalViewRecordListDesc =>
      'View all records by date. Category badges help you identify them easily.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'Tap a record to open the edit sheet. You can modify or delete it.';

  @override
  String get helpJournalAttachMediaDesc =>
      'You can attach photos or videos to categories like meals, water, vet, grooming, and potty.';

  @override
  String get helpAlarmAddDesc =>
      'Set alerts for vaccinations, medication, vet visits, grooming, etc. Choose the type first, then set the date and time.';

  @override
  String get helpAlarmRepeatDesc =>
      'Set repeat rules like daily, weekly, or monthly. Useful for regular medication or heartworm prevention.';

  @override
  String get helpAlarmAdvanceDesc =>
      'For important events like vaccinations, get advance alerts 7 days, 3 days, or 1 day before.';

  @override
  String get helpAlarmCompleteDesc =>
      'Tap an alert to mark it as completed. Completed alerts move to the past alerts list.';

  @override
  String get helpAlarmDeleteDesc => 'Swipe an alert to the left to delete it.';

  @override
  String get helpPetRegisterDesc =>
      'Register your pet by entering their name, type (dog/cat), breed, gender, birth date, and neutering status.';

  @override
  String get helpPetEditProfileDesc =>
      'Edit name, breed, weight, microchip number, registration number, and profile photo on the profile screen.';

  @override
  String get helpPetManageMultipleDesc =>
      'Register multiple pets. Tap the pet chip at the top to switch between them.';

  @override
  String get helpDogHealthGuideDesc =>
      'Provides vet-based health info: core/non-core vaccine schedules, parasite prevention, dental care, and nutrition.';

  @override
  String get helpCatHealthGuideDesc =>
      'Check cat-specific vaccine schedules, parasite prevention, dental care, and nutrition info.';

  @override
  String get helpSettingsNotificationDesc =>
      'Turn all app notifications on or off.';

  @override
  String get helpSettingsExportDesc =>
      'Export all recorded data as a ZIP file. Use it as a backup when changing devices.';

  @override
  String get helpSettingsImportDesc =>
      'Restore data by importing a previously saved ZIP backup file.';

  @override
  String get helpSettingsFeedbackDesc =>
      'Send us an email with any issues or suggestions. It helps us improve the app.';

  @override
  String get helpFaqDeletePetQ =>
      'If I delete a pet, are all records deleted too?';

  @override
  String get helpFaqDeletePetA =>
      'Yes, deleting a pet removes all their records and alerts. Please export and backup your data before deleting.';

  @override
  String get helpFaqMultipleMediaQ =>
      'Can I attach multiple photos to a record?';

  @override
  String get helpFaqMultipleMediaA =>
      'Yes, you can attach multiple photos and videos. Choose from the gallery or take them directly with the camera.';

  @override
  String get helpFaqNoNotificationQ => 'I am not receiving alerts.';

  @override
  String get helpFaqNoNotificationA =>
      'Please check your device settings to ensure notifications are allowed for the Pet Note app. Also, check if app notifications are enabled in Settings > Notification settings.';

  @override
  String get helpFaqMoveDataQ => 'Can I move my data to a new device?';

  @override
  String get helpFaqMoveDataA =>
      'Save a backup file via Settings > Export data, then restore it on your new device via Settings > Import data.';

  @override
  String get helpFaqMultiplePetsQ => 'Can I register multiple pets?';

  @override
  String get helpFaqMultiplePetsA =>
      'You can register 1 pet for free. Additional pets can be added using the premium feature.';

  @override
  String get privacyIntroBody =>
      'Pet Note is an app used without signing up, and all data is stored only on your device. We do not transmit personal information to external servers, keeping your precious pet information safe.';

  @override
  String get privacySection1Title => 'Personal Information Collected';

  @override
  String get privacySection1Body =>
      'Pet Note can be used without registration and does not collect personal identification information. However, the following information may be stored on your device to provide app features.';

  @override
  String get privacyLocalStorageInfo =>
      'Information stored locally on the device';

  @override
  String get privacyPetInfo =>
      'Pet information: Name, species, breed, date of birth, gender, weight, neutering status, microchip number, animal registration number';

  @override
  String get privacyHealthRecords =>
      'Health records: Potty, meals, water, weight, medication, vaccinations, vet visits, grooming, brushing, walks, condition, memos, etc., entered directly by the user';

  @override
  String get privacyAttachedMedia =>
      'Attached media: Photos and videos taken or selected directly by the user';

  @override
  String get privacyNotificationSettings =>
      'Alert settings: Alert type, scheduled date and time, repeat rules';

  @override
  String get privacyInAppPurchaseTitle => 'Regarding In-App Purchases';

  @override
  String get privacyPaymentProcessing =>
      'Payment processing is handled through the Apple App Store or Google Play Store, and the app does not directly collect or store payment information.';

  @override
  String get privacyReceiptVerification =>
      'Only the minimum information necessary for purchase receipt verification is processed according to each platform\'s policies.';

  @override
  String get privacySection2Title => 'Purpose of Collection and Use';

  @override
  String get privacyPurposeRecords => 'Storing and viewing pet health records';

  @override
  String get privacyPurposeStats =>
      'Providing home screen statistics (weekly potty, meal, water status, weight change graphs, etc.)';

  @override
  String get privacyPurposeReminders =>
      'Sending health-related alerts such as vaccinations, medication, and vet visits';

  @override
  String get privacyPurposeBackupRestore =>
      'Providing data backup and restore features';

  @override
  String get privacyPurposePaidEligibility =>
      'Verifying eligibility for paid features';

  @override
  String get privacySection3Title => 'Retention and Destruction of Information';

  @override
  String get privacyRetentionBody =>
      'All data in Pet Note is stored only in the local database (SQLite) on the user\'s device and is not transmitted to external servers.';

  @override
  String get privacyDataDeletionMethod => 'Data Destruction Method';

  @override
  String get privacyDeleteInApp =>
      'You can directly delete pet information and records in App Settings > Data Management.';

  @override
  String get privacyDeleteUninstall =>
      'Deleting the app will also delete all data stored on the device.';

  @override
  String get privacyDeleteBackupWarning =>
      'However, please note that if you do not back up (export) before deleting the app, the data cannot be recovered.';

  @override
  String get privacySection4Title =>
      'Provision of Information to Third Parties';

  @override
  String get privacyThirdPartyBody =>
      'Pet Note does not provide users\' personal information to external parties. However, the following cases are exceptions.';

  @override
  String get privacyThirdPartyUserExport =>
      'When the user directly uses the data export (backup file sharing) feature';

  @override
  String get privacyThirdPartyLegalRequest =>
      'When required by law or upon a lawful request from an investigative agency';

  @override
  String get privacySection5Title => 'Access Permissions Guide';

  @override
  String get privacyPermissionsBody =>
      'We may request the following permissions to provide app features. Even if you do not allow the permissions, you can still use the rest of the features normally.';

  @override
  String get privacyPermissionCameraName => 'Camera';

  @override
  String get privacyPermissionCameraDesc =>
      'Used when directly taking and attaching photos/videos to health records.';

  @override
  String get privacyPermissionMediaName => 'Photo and Media Access';

  @override
  String get privacyPermissionMediaDesc =>
      'Used when selecting photos/videos from the gallery to attach to records.';

  @override
  String get privacyPermissionNotificationName => 'Notifications';

  @override
  String get privacyPermissionNotificationDesc =>
      'Used to send health-related alerts such as vaccinations, medication, and vet visits.';

  @override
  String get privacyPermissionFileName => 'File Access (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'Used when saving or loading data backup files.';

  @override
  String get privacySection6Title => 'Data Backup and Restore';

  @override
  String get privacyBackupExport =>
      'Export: You can save or share all data in the app as a file (.zip).';

  @override
  String get privacyBackupImport =>
      'Import: You can load a previously exported backup file to restore data.';

  @override
  String get privacyBackupWarning =>
      'Users manage backup files directly, so please be careful not to share the files with others.';

  @override
  String get privacySection7Title => 'Protection of Children\'s Privacy';

  @override
  String get privacyChildrenBody =>
      'Pet Note does not collect separate personal information from children under 14. All app data is stored only on the device, and since there is no external server transmission, children can use it safely.';

  @override
  String get privacySection8Title => 'Changes to Privacy Policy';

  @override
  String get privacyPolicyChangeNotice =>
      'Changes will be notified through app update notes or in-app announcements.';

  @override
  String get privacyPolicyChangeEffective =>
      'The changed policy takes effect 7 days after the announcement.';

  @override
  String get privacySection9Title => 'Contact';

  @override
  String get hgDogHeroTitle => 'Dog Health Care Guide';

  @override
  String get hgCatHeroTitle => 'Cat Health Care Guide';

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
      '**DHPPL (Combo Vaccine)** — Distemper, Hepatitis, Parvovirus, Parainfluenza, Leptospirosis.\n1st dose at 6-8 weeks, 3 doses at 3-4 week intervals, then annual boosters.';

  @override
  String get hgDogCoreRabies =>
      '**Rabies** — 1st dose after 3 months of age, then annually (Legally required in many areas).';

  @override
  String get hgDogCoreCorona =>
      '**Coronavirus** — Starts at 6-8 weeks, 2 doses at 3-4 week intervals, then annual boosters.';

  @override
  String get hgDogNonCoreKennel =>
      '**Kennel Cough** — Recommended for multi-dog environments, grooming salons, or boarding. Nasal or injectable.';

  @override
  String get hgDogNonCoreFlu =>
      '**Influenza** — If highly active outdoors or frequently in contact with other dogs.';

  @override
  String get hgDogHeartworm1 =>
      'Recommended to administer preventative medication **once a month** around mosquito season (March-November).';

  @override
  String get hgDogHeartworm2 =>
      'Treatment is difficult and fatal if infected — **Prevention is the best method**.';

  @override
  String get hgDogHeartworm3 =>
      'Must test for infection and confirm negative before administering.';

  @override
  String get hgDogHeartworm4 =>
      'Year-round administration is safer (Recommended by vets).';

  @override
  String get hgDogExternalParasites1 =>
      'Administer spot-on or oral preventative **monthly**.';

  @override
  String get hgDogExternalParasites2 =>
      'Must check for ticks in ears, between toes, and armpits after walks.';

  @override
  String get hgDogExternalParasites3 =>
      'When removing ticks, use tweezers to pull straight out slowly (Do not twist).';

  @override
  String get hgDogInternalParasites1 =>
      'Roundworms, hookworms, whipworms: Administer dewormer **every 3-6 months**.';

  @override
  String get hgDogInternalParasites2 =>
      'Puppy stage (from 2 weeks): Deworm 4 times at 2-week intervals, then regular maintenance.';

  @override
  String get hgDental1 =>
      'Daily brushing is ideal — Recommended at least **3 times a week**.';

  @override
  String get hgDental2 =>
      'Must use **pet-specific toothpaste** (Human toothpaste containing xylitol is strictly forbidden).';

  @override
  String get hgDental3 =>
      'If tartar is severe, scaling at the vet is required (Requires general anesthesia).';

  @override
  String get hgDental4 =>
      'Dental chews and tooth toys can be used as supplementary care.';

  @override
  String get hgDogForbiddenFoodAlert =>
      'The following foods are toxic to dogs. Even small amounts can be dangerous, so never feed them.';

  @override
  String get hgDogForbiddenGrape =>
      '**Grapes/Raisins** — Causes kidney failure, even small amounts are fatal.';

  @override
  String get hgDogForbiddenChocolate =>
      '**Chocolate/Cacao** — Theobromine poisoning, heart failure, seizures.';

  @override
  String get hgDogForbiddenOnion =>
      '**Onions/Garlic/Leeks** — Destroys red blood cells, hemolytic anemia.';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xylitol** — Insulin hypersecretion, hypoglycemia, liver failure.';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Macadamia Nuts** — Muscle weakness, high fever, vomiting.';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Raw Dough/Alcohol** — Ethanol poisoning, hypoglycemia.';

  @override
  String get hgDogForbiddenAvocado =>
      '**Avocado** — Contains persin, causes vomiting and diarrhea.';

  @override
  String get hgEmergencyAlert =>
      'If the following symptoms appear, visit the vet immediately.';

  @override
  String get hgDogEmergency1 =>
      'Complete loss of appetite for more than 24 hours.';

  @override
  String get hgDogEmergency2 =>
      'Vomiting/diarrhea repeated 3 or more times a day.';

  @override
  String get hgDogEmergency3 =>
      'Abdominal distension/retching (Suspected gastric dilatation-volvulus).';

  @override
  String get hgDogEmergency4 => 'Difficulty breathing, pale gums, cyanosis.';

  @override
  String get hgDogEmergency5 => 'Convulsions, seizures, loss of consciousness.';

  @override
  String get hgDogEmergency6 => 'Inability to urinate for more than 12 hours.';

  @override
  String get hgDogEmergency7 => 'Noticeable trauma, fractures, heavy bleeding.';

  @override
  String get hgDogExerciseAlert =>
      'Lack of exercise in dogs is not just a physical issue. It is a major cause of stress, anxiety, and destructive behavior.';

  @override
  String get hgDogWalk1 =>
      'Small breeds: **20-30 mins**+ daily, Medium/Large breeds: **1 hour**+ recommended.';

  @override
  String get hgDogWalk2 =>
      'Walks are not just for potty, but for **olfactory stimulation, socialization, and stress relief**.';

  @override
  String get hgDogWalk3 =>
      'Allow plenty of sniffing — Very effective for relieving mental fatigue.';

  @override
  String get hgDogWalk4 =>
      'Beware of asphalt burns in summer — Recommend walking before 7 AM or in the evening.';

  @override
  String get hgDogPlay1 =>
      '**Fetch / Tug-of-war** — Releases physical energy, strengthens bond with owner.';

  @override
  String get hgDogPlay2 =>
      '**Nosework** — Brain stimulation, 15 mins equals 30 mins of walking effect.';

  @override
  String get hgDogPlay3 =>
      '**Puzzle/Kong toys** — Effective in alleviating separation anxiety when alone.';

  @override
  String get hgDogPlay4 =>
      'Just **10-15 mins** of focused play daily significantly reduces stress levels.';

  @override
  String get hgDogStress1 =>
      'Destroying furniture/objects, excessive barking — Signs of lack of exercise/stimulation.';

  @override
  String get hgDogStress2 =>
      'Tail chasing, excessive licking (paws, body) — Compulsive behavior, attempt to relieve stress.';

  @override
  String get hgDogStress3 =>
      'Excessive anxiety or potty mistakes when owner leaves — Suspected separation anxiety.';

  @override
  String get hgDogStress4 =>
      'If it persists, consulting a vet or pet behavior specialist is recommended.';

  @override
  String get hgDogSocial1 =>
      '**3-14 weeks** of age is the golden period for socialization — Exposure to various people, sounds, and environments is crucial.';

  @override
  String get hgDogSocial2 =>
      'Interaction with other dogs — Utilize dog parks or puppy classes.';

  @override
  String get hgDogSocial3 =>
      'Experiencing new places, smells, and sounds contributes to mental enrichment.';

  @override
  String get hgDogSocial4 =>
      'Positive reinforcement training (clicker, treats) increases brain stimulation and bonding simultaneously.';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP (Combo Vaccine)** — Herpesvirus, Calicivirus, Panleukopenia.\n1st dose at 6-8 weeks, 3 doses at 3-4 week intervals, then every 1-3 years.';

  @override
  String get hgCatCoreRabies =>
      '**Rabies** — Mandatory for outdoor cats, recommended for indoor cats (Legally required in many areas).';

  @override
  String get hgCatNonCoreFelv =>
      '**Feline Leukemia (FeLV)** — Highly recommended for outdoor cats or multi-cat households.';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Feline Chlamydia** — Multi-cat environments, prevents conjunctivitis.';

  @override
  String get hgCatNonCoreFiv =>
      '**Feline Immunodeficiency Virus (FIV)** — Outdoor male cats (transmitted through bite wounds).';

  @override
  String get hgCatExternalParasites1 =>
      'Outdoor cats: Administer flea/tick preventative **once a month**.';

  @override
  String get hgCatExternalParasites2 =>
      'Indoor cats can also get fleas via human clothes/shoes → Preventative recommended **every 3 months**.';

  @override
  String get hgCatExternalParasites3 =>
      'When using spot-on products, apply accurately to the back of the neck.';

  @override
  String get hgCatInternalHeartworm => 'Internal Parasites & Heartworm';

  @override
  String get hgCatInternalParasites1 =>
      'Roundworms/Tapeworms: Administer dewormer **every 3-6 months**.';

  @override
  String get hgCatInternalParasites2 =>
      'If feeding a raw diet (raw meat/fish), more frequent testing is recommended.';

  @override
  String get hgCatHeartworm1 =>
      'Heartworm — **There is no cure for cats, prevention is the only way**. Monthly administration highly recommended for outdoor cats.';

  @override
  String get hgCatMajorDiseases => 'Beware of Major Cat Diseases';

  @override
  String get hgCatDiseaseAlert =>
      'Cats hide their pain, so when symptoms appear, the disease has often already progressed. Regular checkups are especially important.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Feline Lower Urinary Tract Disease (FLUTD)** — Common in males. If unable to urinate, immediate emergency care is needed.';

  @override
  String get hgCatDiseaseCkd =>
      '**Chronic Kidney Disease (CKD)** — #1 cause of death in senior cats. Regular kidney panel tests essential for cats 7+ years old.';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Feline Diabetes** — Risk for obese/senior cats. Watch for increased thirst and urination.';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Hyperthyroidism** — Common in cats 10+ years old. Symptoms include weight loss, overeating, and hyperactivity.';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Stomatitis** — Very common in cats. Check if there is bad breath, drooling, or loss of appetite.';

  @override
  String get hgCatDiseaseFhv =>
      '**Feline Herpes (FHV-1)** — Once infected, it remains dormant for life. Relapses during stress, causing sneezing, eye discharge, conjunctivitis.';

  @override
  String get hgHydrationDiet => 'Hydration & Diet Management';

  @override
  String get hgCatHydrationAlert =>
      'Cats naturally do not drink much water, making them vulnerable to urinary diseases. Encouraging water intake is very important.';

  @override
  String get hgCatHydration1 =>
      'Combining wet food (cans/pouches) is recommended to supplement hydration.';

  @override
  String get hgCatHydration2 =>
      'Prefers flowing water — Installing a **water fountain** is effective.';

  @override
  String get hgCatHydration3 =>
      'Separate water bowls from food bowls; prefer wide, shallow bowls.';

  @override
  String get hgCatHydration4 =>
      'Target water intake: About **40-60ml** per 1kg of body weight per day.';

  @override
  String get hgCatForbiddenFoodAlert =>
      'The following foods are toxic to cats. Even small amounts can be dangerous, so never feed them.';

  @override
  String get hgCatForbiddenOnion =>
      '**Onions/Garlic/Leeks** — Destroys red blood cells, hemolytic anemia (More sensitive than dogs).';

  @override
  String get hgCatForbiddenGrape =>
      '**Grapes/Raisins** — Causes kidney failure.';

  @override
  String get hgCatForbiddenChocolate =>
      '**Chocolate/Caffeine** — Heart and nervous system toxicity.';

  @override
  String get hgCatForbiddenRawFish =>
      '**Raw Fish (continuous feeding)** — Causes Thiamine (B1) deficiency.';

  @override
  String get hgCatForbiddenMilk =>
      '**Milk/Dairy** — Adult cats are lactose intolerant, causes diarrhea.';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xylitol/Alcohol** — Liver and nervous system toxicity.';

  @override
  String get hgCatForbiddenAvocado =>
      '**Avocado** — Contains persin, causes vomiting and diarrhea.';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Raw Egg Whites** — Avidin blocks biotin, causing skin/coat issues.';

  @override
  String get hgCatEmergency1 =>
      '**Unable to urinate at all or blood in urine** — Urethral obstruction emergency (Especially watch male cats).';

  @override
  String get hgCatEmergency2 =>
      'Complete loss of appetite for more than 24 hours (Risk of fatty liver).';

  @override
  String get hgCatEmergency3 =>
      '**Open-mouth breathing** — Never normal for cats, immediate emergency.';

  @override
  String get hgCatEmergency4 =>
      'Sudden paralysis or coldness in hind legs (Suspected thrombosis).';

  @override
  String get hgCatEmergency5 => 'Convulsions, seizures, loss of consciousness.';

  @override
  String get hgCatEmergency6 => 'Pale or jaundiced (yellowish) gums/tongue.';

  @override
  String get hgCatEmergency7 =>
      'Vomiting/diarrhea repeated 3 or more times a day, or bloody stool/vomit.';

  @override
  String get hgCatEmergency8 => 'Noticeable trauma, fractures, heavy bleeding.';

  @override
  String get hgEnvironmentMentalHealth => 'Environment & Mental Health';

  @override
  String get hgIndoorEnvironment => 'Indoor Environment Management';

  @override
  String get hgStressManagement => 'Stress Management';

  @override
  String get hgCatEnvironment1 =>
      '**Litter Boxes**: Number of cats + 1 or more placed, clean daily.';

  @override
  String get hgCatEnvironment2 =>
      '**Scratchers**: At least 2 or more (combine vertical and horizontal).';

  @override
  String get hgCatEnvironment3 =>
      '**High Spaces**: Provide vertical spaces like cat trees or shelves (satisfies territorial instincts).';

  @override
  String get hgCatEnvironment4 =>
      '**Hiding Spots**: Provide safe hiding spaces like boxes or tunnels.';

  @override
  String get hgCatStress1 =>
      'Cat stress is directly linked to weakened immunity, FLUTD, herpes relapses, etc.';

  @override
  String get hgCatStress2 =>
      'Use pheromone diffusers (Feliway) during sudden environmental changes (moving, new family members).';

  @override
  String get hgCatStress3 =>
      'Secure at least **10-15 mins** of playtime with toys daily.';

  @override
  String get hgCatStress4 =>
      'Multi-cat households: Separate resources (food bowls, litter boxes, beds) according to the number of cats.';

  @override
  String get hgAge => 'Age';

  @override
  String get hgCheckupCycle => 'Checkup Cycle';

  @override
  String get hgMainItems => 'Main Items';

  @override
  String get hgAge1to6 => '1-6 years';

  @override
  String get hgAge7to10 => '7-10 years';

  @override
  String get hgAge11Plus => '11+ years';

  @override
  String get hgYearlyOnce => 'Once a year';

  @override
  String get hgYearlyTwice => 'Twice a year';

  @override
  String get hgEvery3to4Months => 'Every 3-4 months';

  @override
  String get hgDogCheckupItems1 =>
      'Blood test, heart auscultation, weight, teeth';

  @override
  String get hgDogCheckupItems2 =>
      'Blood, urine, X-ray, blood pressure, joints';

  @override
  String get hgDogCheckupItems3 =>
      'Comprehensive blood, ultrasound, kidney/liver function';

  @override
  String get hgCatCheckupItems1 => 'Blood test, urine test, weight, teeth';

  @override
  String get hgCatCheckupItems2 =>
      'Kidney/liver panel, blood pressure, thyroid (T4)';

  @override
  String get hgCatCheckupItems3 =>
      'Comprehensive blood, abdominal ultrasound, intensive kidney monitoring';

  @override
  String get hgExerciseAmount => 'Exercise Level';

  @override
  String get hgBreedExamples => 'Breed Examples';

  @override
  String get hgLow => 'Low';

  @override
  String get hgNormal => 'Normal';

  @override
  String get hgHigh => 'High';

  @override
  String get hgBreedLowExamples => 'Bulldog, Basset Hound, Shih Tzu, Maltese';

  @override
  String get hgBreedNormalExamples => 'Poodle, Bichon, Cocker Spaniel, Beagle';

  @override
  String get hgBreedHighExamples =>
      'Labrador, Golden Retriever, Husky, Border Collie';

  @override
  String get hgDisclaimer =>
      'This guide provides general health care information, and necessary care may vary depending on your pet\'s condition. If there are abnormal symptoms or treatment is needed, be sure to consult a veterinarian.';

  @override
  String get categoryFilter => 'Category Filter';

  @override
  String get selectAll => 'Select All';

  @override
  String get deselectAll => 'Deselect All';

  @override
  String get apply => 'Apply';

  @override
  String get saving => 'Saving...';

  @override
  String get treatmentContent => 'Treatment';

  @override
  String get conditionScoreWord1 => 'Terrible';

  @override
  String get conditionScoreWord2 => 'Poor';

  @override
  String get conditionScoreWord3 => 'Fair';

  @override
  String get conditionScoreWord4 => 'Good';

  @override
  String get conditionScoreWord5 => 'Excellent';

  @override
  String conditionScoreFormat(Object score, Object word) {
    return 'Condition $score pts - $word';
  }
}
