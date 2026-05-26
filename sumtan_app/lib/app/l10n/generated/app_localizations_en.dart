// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Pet Sumtan';

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
  String get toastBackToExit => 'Press again to exit the app';

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
  String get settingsFeedbackSubject => 'Pet Sumtan feedback';

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
      'There was a problem preparing app data.\nPlease try again later.';

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
  String get notificationChannelName => 'Pet Sumtan alerts';

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
  String get vaccineNameExample => 'e.g. Rabies, combo vaccine';

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
  String get visitPurposeExample => 'e.g. Checkup, skin treatment';

  @override
  String get appointmentDateTimeRequired => 'Appointment date and time *';

  @override
  String get hospitalName => 'Hospital name';

  @override
  String get hospitalNameHint => 'Enter hospital name';

  @override
  String get medicineNameRequired => 'Medicine name *';

  @override
  String get medicineNameExample => 'e.g. Heartworm, dewormer';

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
  String get mealTimeExample => 'e.g. Breakfast, dinner';

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
  String get normal => 'Normal';

  @override
  String get loose => 'Loose';

  @override
  String get hard => 'Hard';

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
  String get whatIsPetSumtan => 'What is Pet Sumtan?';

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
  String get hintMedicineNameAndDose => 'Please enter medicine name and dose';

  @override
  String get hintMedicineName => 'Please enter a medicine name';

  @override
  String get hintDose => 'Please enter a dose';

  @override
  String get hintWeightNumber => 'Please enter weight as a number';

  @override
  String get hintWeight => 'Please enter weight';

  @override
  String get hintWeightIsNumber => 'Please enter weight as a number';

  @override
  String get hintWalkTime => 'Please enter walk time';

  @override
  String get hintWalkTimeIsNumber => 'Please enter walk time as a number';

  @override
  String get hintWalkTimeNumber => 'Please enter walk time as a number';

  @override
  String get hintSelectBrushingArea =>
      'Please select at least one brushing area';

  @override
  String get hintSelectVaccineType => 'Please select at least one vaccine type';

  @override
  String get hintSelectGroomingType =>
      'Please select at least one grooming type';

  @override
  String get hintTitle => 'Please enter a title';

  @override
  String get hintVaccineName => 'Please enter a vaccine name';

  @override
  String get hintSelectScheduledDate => 'Please select a date';

  @override
  String get hintSelectScheduledTime => 'Please select a time';

  @override
  String get hintVisitPurpose => 'Please enter the visit purpose';

  @override
  String get hintSelectAppointmentDate => 'Please select an appointment date';

  @override
  String get hintSelectAppointmentTime => 'Please select an appointment time';

  @override
  String get hintMedicineNameInput => 'Please enter a medicine name';

  @override
  String get hintSelectMedicationDate => 'Please select a medication date';

  @override
  String get hintSelectMedicationTime => 'Please select a medication time';

  @override
  String get hintAlarmName => 'Please enter an alert name';

  @override
  String get hintSelectMealTime => 'Please select a meal time';

  @override
  String get hintSelectAlarmTime => 'Please select an alert time';

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
  String get petKind => 'Type';

  @override
  String get breed => 'Breed';

  @override
  String get weight => 'Weight';

  @override
  String get microchip => 'Microchip';

  @override
  String get registrationNumber => 'Registration number';

  @override
  String get birthDate => 'Birth date';

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
  String get registerPetPrompt => 'Add a pet and\nmanage health together.';

  @override
  String get registerPetBtn => 'Add pet';

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
    return 'All records and alerts for $name will be deleted and cannot be restored.';
  }

  @override
  String petDeleted(String name) {
    return '$name deleted';
  }

  @override
  String petAdded(String name) {
    return '$name added';
  }

  @override
  String get storeUnavailableMsg =>
      'Cannot connect to the store right now. Please try again later.';

  @override
  String get checkingPaymentMsg =>
      'Checking payment info. Please try again shortly.';

  @override
  String get paymentCompleteMsg =>
      'Payment complete. Please enter your new pet’s info.';

  @override
  String get addNewFamilyMember => 'Add a new family member?';

  @override
  String get firstPetFreeDesc =>
      'The first pet is free. From the second pet, each additional pet requires payment.';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '$count pets registered\nPlease try again when the store is available.';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '$count pets registered\nPay $price to add a new family member.';
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
  String get pottyRecordSaved => 'Potty record saved';

  @override
  String get conditionRecordSaved => 'Condition record saved';

  @override
  String get medicationRecordSaved => 'Medication record saved';

  @override
  String get weightRecordSaved => 'Weight record saved';

  @override
  String get mealRecordSaved => 'Meal record saved';

  @override
  String get waterRecordSaved => 'Water record saved';

  @override
  String get vetVisitRecordSaved => 'Vet visit record saved';

  @override
  String get vaccinationRecordSaved => 'Vaccination record saved';

  @override
  String get groomingRecordSaved => 'Grooming record saved';

  @override
  String get brushingRecordSaved => 'Brushing record saved';

  @override
  String get walkRecordSaved => 'Walk record saved';

  @override
  String get memoSaved => 'Memo saved';

  @override
  String get moreQuestions => 'Have more questions?';

  @override
  String get contactViaSendFeedback =>
      'Contact us from Settings > Send feedback.\nWe will get back to you soon.';

  @override
  String get contactViaSendFeedbackLong =>
      'Contact us through Send feedback in Settings.\nWe will reply quickly.';

  @override
  String get privacyPolicyEffectiveDate =>
      'This privacy policy is effective from January 1, 2026.\nLast updated: May 8, 2026';

  @override
  String get privacyCollectedInfo =>
      'Collected information is used only for the purposes below.';

  @override
  String get privacyDataFeatures =>
      'Pet Sumtan provides data export (backup) and import (restore) features.';

  @override
  String get privacyPolicyMayUpdate =>
      'This privacy policy may be updated due to legal or service changes.';

  @override
  String get privacyPolicyContact =>
      'For questions about this privacy policy, please contact us below.';

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
  String get catHospital => 'Vet visit';

  @override
  String get catCondition => 'Condition';

  @override
  String get catPotty => 'Potty';

  @override
  String get mealFormTitle => '🍽️ Meal record';

  @override
  String get walkFormTitle => '🦮 Walk record';

  @override
  String get weightFormTitle => '⚖️ Weight record';

  @override
  String get waterFormTitle => '💧 Water record';

  @override
  String get medicationFormTitle => '💊 Medication record';

  @override
  String get groomingFormTitle => '✂️ Grooming record';

  @override
  String get brushingFormTitle => '🪥 Brushing record';

  @override
  String get conditionFormTitle => '🌡️ Condition record';

  @override
  String get poopFormTitle => '💩 Potty record';

  @override
  String get vaccinationFormTitle => '💉 Vaccination record';

  @override
  String get hospitalFormTitle => '🏥 Vet visit record';

  @override
  String get memoFormTitle => '📝 Memo';

  @override
  String get measureMethod => 'Measurement method';

  @override
  String get feedAmount => 'Amount fed';

  @override
  String get mlInputLabel => 'Direct mL input';

  @override
  String get alarmRescheduleNote =>
      'This alert\'s scheduled date has passed.\nYou can set a new date or delete it.';

  @override
  String get nailTrim => 'Nail trim';

  @override
  String get shopNameExample => 'e.g. Fluffy Pet Salon';

  @override
  String get poopRecordSaved => '💩 Potty recorded';

  @override
  String get memoRecordSaved => '📝 Memo recorded';

  @override
  String get other => 'Other';

  @override
  String get whole => 'Whole body';

  @override
  String get paw => 'Paw';

  @override
  String get importance => 'Importance';

  @override
  String get timeTaken => 'Time taken';

  @override
  String get example10 => 'e.g. 10';

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
  String get vaccineDhppl => 'DHPPL combo';

  @override
  String get vaccineCorona => 'Corona enteritis';

  @override
  String get vaccineKennelCough => 'Kennel cough';

  @override
  String get vaccineRabies => 'Rabies';

  @override
  String get vaccineInfluenza => 'Influenza';

  @override
  String get vaccineFvrcp => 'FVRCP combo';

  @override
  String get vaccineFelv => 'Leukemia (FeLV)';

  @override
  String get vaccineChlamydia => 'Chlamydia';

  @override
  String get mute => 'Mute';

  @override
  String get photoVideo => 'Photo · Video';

  @override
  String photoVideoCount(String count) {
    return 'Photo · Video · $count';
  }

  @override
  String get selectMediaSource => 'Select media source';

  @override
  String get cameraCapture => 'Camera';

  @override
  String get cameraCaptureSubtitle => 'Take photo or video';

  @override
  String get selectFromGallery => 'Gallery';

  @override
  String get selectFromGallerySubtitle => 'Select photos · videos';

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
    return '$category record will be deleted\nand cannot be undone.';
  }

  @override
  String dayCountShort(int days) {
    return '${days}d';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan is an app where you can record and manage your pet’s health and daily life in one place.\nYou can easily keep various health records, such as meals, water intake, potty, weight, medication, and vet visits, and use alerts so you do not miss important schedules.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'View all records added today at a glance. Tap a record to see details or edit it.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'Check this week’s potty count, meal amount, and water intake in charts. It helps you understand your pet’s daily patterns.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'Shows recent weight records in a chart so you can easily track weight changes.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'Tap the button to search nearby animal hospitals in Naver Maps.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'Tap the + button at the bottom of the screen to choose a record category and add a new record.';

  @override
  String get helpRecordCategoriesIntro =>
      'You can record your pet’s daily life in 12 categories.';

  @override
  String get helpCategoryPottyName => 'Potty';

  @override
  String get helpCategoryPottyDesc =>
      'Record potty activity and condition. You can also attach photos.';

  @override
  String get helpCategoryConditionName => 'Condition';

  @override
  String get helpCategoryConditionDesc =>
      'Record your pet’s overall condition.';

  @override
  String get helpCategoryMedicationName => 'Medication';

  @override
  String get helpCategoryMedicationDesc =>
      'Record the medicine name, dose, and medication time.';

  @override
  String get helpCategoryWeightName => 'Weight';

  @override
  String get helpCategoryWeightDesc =>
      'Record weight in kg. You can check weight trends on the Home screen.';

  @override
  String get helpCategoryMealName => 'Meal';

  @override
  String get helpCategoryMealDesc =>
      'Record meal amount and food type. You can also attach photos and videos.';

  @override
  String get helpCategoryWaterName => 'Water';

  @override
  String get helpCategoryWaterDesc =>
      'Record water intake in ml. You can also attach photos and videos.';

  @override
  String get helpCategoryHospitalName => 'Hospital';

  @override
  String get helpCategoryHospitalDesc =>
      'Record the hospital name and visit details. You can also attach photos and videos.';

  @override
  String get helpCategoryVaccinationName => 'Vaccination';

  @override
  String get helpCategoryVaccinationDesc =>
      'Record the vaccine type and vaccination date.';

  @override
  String get helpCategoryGroomingName => 'Grooming';

  @override
  String get helpCategoryGroomingDesc =>
      'Record grooming details and attach photos or videos.';

  @override
  String get helpCategoryDentalName => 'Dental brushing';

  @override
  String get helpCategoryDentalDesc =>
      'Record whether dental brushing was done and add a memo.';

  @override
  String get helpCategoryWalkName => 'Walk';

  @override
  String get helpCategoryWalkDesc => 'Record walk distance and duration.';

  @override
  String get helpCategoryMemoName => 'Memo';

  @override
  String get helpCategoryMemoDesc => 'Leave any memo freely.';

  @override
  String get helpJournalViewRecordListDesc =>
      'View all records by date. Category badges help you quickly identify each record type.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'Tap a record to open the edit sheet. You can update the content or delete it.';

  @override
  String get helpJournalAttachMediaDesc =>
      'In some categories, such as meal, water, hospital, grooming, and potty, you can attach photos or videos.';

  @override
  String get helpAlarmAddDesc =>
      'You can add various types of alerts, such as vaccination, medication, vet visits, and grooming. First choose an alert type, then set the date and time.';

  @override
  String get helpAlarmRepeatDesc =>
      'Set repeat rules such as daily, weekly, or monthly. This is useful for regular medication or heartworm prevention.';

  @override
  String get helpAlarmAdvanceDesc =>
      'For important schedules like vaccination, you can receive advance alerts 7 days, 3 days, and 1 day before.';

  @override
  String get helpAlarmCompleteDesc =>
      'Tap an alert to mark it as completed. Completed alerts can be checked in the past alerts list.';

  @override
  String get helpAlarmDeleteDesc => 'Swipe an alert to the left to delete it.';

  @override
  String get helpPetRegisterDesc =>
      'Add your pet by entering name, type, breed, gender, birth date, and neutering status.';

  @override
  String get helpPetEditProfileDesc =>
      'On the Profile screen, you can edit name, breed, weight, microchip number, registration number, and profile photo.';

  @override
  String get helpPetManageMultipleDesc =>
      'You can add multiple pets. Tap the pet chip at the top to switch the pet you want to manage.';

  @override
  String get helpDogHealthGuideDesc =>
      'Provides veterinary-based health information, including essential and optional vaccination schedules, heartworm and external parasite prevention, dental care, and nutrition.';

  @override
  String get helpCatHealthGuideDesc =>
      'Check cat-specific vaccination schedules, parasite prevention, dental care, and nutrition information.';

  @override
  String get helpSettingsNotificationDesc =>
      'Turn all app notifications on or off.';

  @override
  String get helpSettingsExportDesc =>
      'Export all recorded data as a ZIP file. Use it as a backup when changing devices.';

  @override
  String get helpSettingsImportDesc =>
      'Import a previously exported ZIP backup file to restore your data.';

  @override
  String get helpSettingsFeedbackDesc =>
      'Send us any inconvenience or improvement suggestions by email. It helps us make the app better.';

  @override
  String get helpFaqDeletePetQ =>
      'If I delete a pet, will all records be deleted too?';

  @override
  String get helpFaqDeletePetA =>
      'Yes. If you delete a pet, all records and alerts for that pet will also be deleted. Please back up your data with Export data before deleting.';

  @override
  String get helpFaqMultipleMediaQ =>
      'Can I attach multiple photos to a record?';

  @override
  String get helpFaqMultipleMediaA =>
      'Yes. You can attach multiple photos and videos. You can choose them from the gallery or capture them directly with the camera.';

  @override
  String get helpFaqNoNotificationQ => 'I am not receiving notifications.';

  @override
  String get helpFaqNoNotificationA =>
      'Check whether notifications for Pet Sumtan are allowed in your device notification settings. Also check whether app notifications are turned on in Settings > Notification settings.';

  @override
  String get helpFaqMoveDataQ => 'Can I move my data to a new device?';

  @override
  String get helpFaqMoveDataA =>
      'Yes. On your old device, save a backup file from Settings > Export data. Then restore it on your new device from Settings > Import data.';

  @override
  String get helpFaqMultiplePetsQ => 'Can I add multiple pets?';

  @override
  String get helpFaqMultiplePetsA =>
      'By default, you can add 1 pet for free. Adding more pets is available as a premium feature.';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan is an app that can be used without signing up, and all data is stored only on the user’s device. We do not transmit personal information to external servers and securely protect your valuable pet information.';

  @override
  String get privacySection1Title => 'Personal Information Collected';

  @override
  String get privacySection1Body =>
      'Pet Sumtan can be used without signing up and does not collect separate personally identifiable information. However, to provide app features, the following information may be stored on the device.';

  @override
  String get privacyLocalStorageInfo =>
      'Information stored locally on the device';

  @override
  String get privacyPetInfo =>
      'Pet information: name, species, breed, date of birth, gender, weight, neutering status, microchip number, and animal registration number';

  @override
  String get privacyHealthRecords =>
      'Health records: potty, meal, water, weight, medication, vaccination, hospital, grooming, brushing, walk, condition, memo, and other records entered directly by the user';

  @override
  String get privacyAttachedMedia =>
      'Attached media: photos and videos taken or selected directly by the user';

  @override
  String get privacyNotificationSettings =>
      'Alert settings: alert type, scheduled date and time, and repeat rules';

  @override
  String get privacyInAppPurchaseTitle => 'In-App Purchases';

  @override
  String get privacyPaymentProcessing =>
      'Payments are processed through the Apple App Store or Google Play Store, and the app does not directly collect or store payment information.';

  @override
  String get privacyReceiptVerification =>
      'Only the minimum information required to verify purchase receipts is processed according to each platform’s policies.';

  @override
  String get privacySection2Title =>
      'Purpose of Collecting and Using Personal Information';

  @override
  String get privacyPurposeRecords => 'Saving and viewing pet health records';

  @override
  String get privacyPurposeStats =>
      'Providing home screen statistics, such as weekly potty, meal, and water status, as well as weight change charts';

  @override
  String get privacyPurposeReminders =>
      'Sending health-related alerts, such as vaccination, medication, and hospital visit reminders';

  @override
  String get privacyPurposeBackupRestore =>
      'Providing data backup and restore features';

  @override
  String get privacyPurposePaidEligibility =>
      'Verifying eligibility to use paid features';

  @override
  String get privacySection3Title =>
      'Retention and Deletion of Personal Information';

  @override
  String get privacyRetentionBody =>
      'All Pet Sumtan data is stored only in the local database (SQLite) on the user’s device and is not transmitted to external servers.';

  @override
  String get privacyDataDeletionMethod => 'How to delete data';

  @override
  String get privacyDeleteInApp =>
      'You can directly delete pet information and records in Settings > Data Management within the app.';

  @override
  String get privacyDeleteUninstall =>
      'When you delete the app, all data stored on the device will also be deleted.';

  @override
  String get privacyDeleteBackupWarning =>
      'Please note that if you do not back up (export) your data before deleting the app, the data cannot be recovered.';

  @override
  String get privacySection4Title =>
      'Sharing Personal Information with Third Parties';

  @override
  String get privacyThirdPartyBody =>
      'Pet Sumtan does not provide users’ personal information to third parties. However, the following cases are exceptions.';

  @override
  String get privacyThirdPartyUserExport =>
      'When the user directly uses the data export feature, such as sharing a backup file';

  @override
  String get privacyThirdPartyLegalRequest =>
      'When required by law or upon a lawful request from investigative authorities';

  @override
  String get privacySection5Title => 'Access Permissions';

  @override
  String get privacyPermissionsBody =>
      'To provide app features, the following permissions may be requested. Even if you do not grant a permission, you can still use the remaining features normally, except for the feature that requires that permission.';

  @override
  String get privacyPermissionCameraName => 'Camera';

  @override
  String get privacyPermissionCameraDesc =>
      'Used to directly take photos or videos and attach them to health records.';

  @override
  String get privacyPermissionMediaName => 'Photos and media access';

  @override
  String get privacyPermissionMediaDesc =>
      'Used to select photos and videos from the gallery and attach them to records.';

  @override
  String get privacyPermissionNotificationName => 'Notifications';

  @override
  String get privacyPermissionNotificationDesc =>
      'Used to send health-related alerts, such as vaccination, medication, and hospital visit reminders.';

  @override
  String get privacyPermissionFileName => 'File access (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'Used to save or load data backup files.';

  @override
  String get privacySection6Title => 'Data Backup and Restore';

  @override
  String get privacyBackupExport =>
      'Export: save or share all app data as a file (.zip).';

  @override
  String get privacyBackupImport =>
      'Import: load a previously exported backup file and restore data.';

  @override
  String get privacyBackupWarning =>
      'Backup files are managed directly by the user. Please be careful not to share files with others.';

  @override
  String get privacySection7Title =>
      'Protection of Children’s Personal Information';

  @override
  String get privacyChildrenBody =>
      'Pet Sumtan does not separately collect personal information from children under the age of 14. All app data is stored only on the device and is not transmitted to external servers, so children can also use the app safely.';

  @override
  String get privacySection8Title => 'Changes to This Privacy Policy';

  @override
  String get privacyPolicyChangeNotice =>
      'If changes are made, we will notify you through app update notes or in-app notices.';

  @override
  String get privacyPolicyChangeEffective =>
      'The updated policy will take effect 7 days after the notice.';

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
  String get hgExternalParasites => 'External Parasites (Fleas & Ticks)';

  @override
  String get hgInternalParasites => 'Internal Parasites';

  @override
  String get hgThreeToSixMonths => 'Every 3–6 Months';

  @override
  String get hgRegular => 'Regular';

  @override
  String get hgRegularCheckup => 'Regular Health Checkup';

  @override
  String get hgDentalCare => 'Dental & Oral Care';

  @override
  String get hgForbiddenFoods => 'Strictly Forbidden Foods';

  @override
  String get hgEmergencySymptoms => 'Symptoms Requiring Immediate Vet Care';

  @override
  String get hgExerciseMentalHealth => 'Exercise & Mental Health';

  @override
  String get hgWalk => 'Walk';

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
      '**DHPPL (Combination Vaccine)** — Distemper, Hepatitis, Parvovirus, Parainfluenza, and Leptospirosis.\n1st dose at 6–8 weeks of age, 3 doses at 3–4 week intervals, then annual boosters';

  @override
  String get hgDogCoreRabies =>
      '**Rabies** — 1st dose after 3 months of age, then once annually (legally required vaccination)';

  @override
  String get hgDogCoreCorona =>
      '**Coronavirus Enteritis** — Starts at 6–8 weeks of age, 2 doses at 3–4 week intervals, then annual boosters';

  @override
  String get hgDogNonCoreKennel =>
      '**Kennel Cough** — Recommended for multi-dog environments, grooming salons, or boarding facilities. Available as intranasal or injectable type';

  @override
  String get hgDogNonCoreFlu =>
      '**Canine Influenza** — Recommended for dogs with frequent outdoor activity or frequent contact with other dogs';

  @override
  String get hgDogHeartworm1 =>
      'Around mosquito season (March–November), monthly preventive medication is recommended';

  @override
  String get hgDogHeartworm2 =>
      'Infection is difficult to treat and can be fatal — **prevention is the best protection**';

  @override
  String get hgDogHeartworm3 =>
      'Before starting medication, testing is required to confirm a negative infection status';

  @override
  String get hgDogHeartworm4 =>
      'Year-round prevention is safer and commonly recommended by veterinarians';

  @override
  String get hgDogExternalParasites1 =>
      'Administer spot-on or oral preventives **monthly**';

  @override
  String get hgDogExternalParasites2 =>
      'After walks, always check the ears, between the toes, and armpits for ticks';

  @override
  String get hgDogExternalParasites3 =>
      'When removing a tick, use tweezers and pull slowly straight upward without twisting';

  @override
  String get hgDogInternalParasites1 =>
      'Roundworms, hookworms, and whipworms: administer dewormer **every 3–6 months**';

  @override
  String get hgDogInternalParasites2 =>
      'For puppies from 2 weeks of age: deworm 4 times at 2-week intervals, then continue regular management';

  @override
  String get hgDental1 =>
      'Daily brushing is ideal — at least **3 times per week** is recommended';

  @override
  String get hgDental2 =>
      'Always use **pet-specific toothpaste**. Do not use human toothpaste containing xylitol';

  @override
  String get hgDental3 =>
      'Severe tartar requires professional scaling at a veterinary clinic under general anesthesia';

  @override
  String get hgDental4 =>
      'Dental chews and dental toys can support oral care as supplementary tools';

  @override
  String get hgDogForbiddenFoodAlert =>
      'The foods below are toxic to dogs. Even small amounts can be dangerous, so never feed them.';

  @override
  String get hgDogForbiddenGrape =>
      '**Grapes and raisins** — can cause kidney failure; even small amounts may be fatal';

  @override
  String get hgDogForbiddenChocolate =>
      '**Chocolate and cacao** — theobromine poisoning, heart failure, and seizures';

  @override
  String get hgDogForbiddenOnion =>
      '**Onions, garlic, and leeks** — destroy red blood cells and cause hemolytic anemia';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xylitol** — causes excessive insulin release, hypoglycemia, and liver failure';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Macadamia nuts** — muscle weakness, high fever, and vomiting';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Raw dough and alcohol** — ethanol poisoning and hypoglycemia';

  @override
  String get hgDogForbiddenAvocado =>
      '**Avocado** — contains persin and may cause vomiting and diarrhea';

  @override
  String get hgEmergencyAlert =>
      'If any of the symptoms below appear, visit a veterinary clinic immediately.';

  @override
  String get hgDogEmergency1 =>
      'Complete loss of appetite for more than 24 hours';

  @override
  String get hgDogEmergency2 =>
      'Vomiting or diarrhea repeated 3 or more times in one day';

  @override
  String get hgDogEmergency3 =>
      'Abdominal bloating and unproductive retching, possible gastric dilatation-volvulus';

  @override
  String get hgDogEmergency4 => 'Difficulty breathing, pale gums, or cyanosis';

  @override
  String get hgDogEmergency5 =>
      'Seizures, convulsions, or loss of consciousness';

  @override
  String get hgDogEmergency6 => 'No urination for more than 12 hours';

  @override
  String get hgDogEmergency7 => 'Visible trauma, fracture, or heavy bleeding';

  @override
  String get hgDogExerciseAlert =>
      'For dogs, lack of exercise is not just a fitness issue. It can be a major cause of stress, anxiety, and destructive behavior.';

  @override
  String get hgDogWalk1 =>
      'Small breeds: at least **20–30 minutes** daily; medium and large breeds: **1 hour or more** recommended';

  @override
  String get hgDogWalk2 =>
      'Walks are not only for elimination — they provide **scent stimulation, socialization, and stress relief**';

  @override
  String get hgDogWalk3 =>
      'Allow plenty of sniffing time — it is highly effective for relieving mental fatigue';

  @override
  String get hgDogWalk4 =>
      'In summer, beware of asphalt burns — walks before 7 a.m. or in the evening are recommended';

  @override
  String get hgDogPlay1 =>
      '**Fetch and tug-of-war** — help release physical energy and strengthen the bond with the owner';

  @override
  String get hgDogPlay2 =>
      '**Nosework** — stimulates the brain and can provide an effect similar to a 30-minute walk in just 15 minutes';

  @override
  String get hgDogPlay3 =>
      '**Puzzle toys and Kong toys** — help reduce separation anxiety during alone time';

  @override
  String get hgDogPlay4 =>
      'Just **10–15 minutes** of focused play each day can significantly reduce stress';

  @override
  String get hgDogStress1 =>
      'Destroying furniture or objects and excessive barking may signal lack of exercise or stimulation';

  @override
  String get hgDogStress2 =>
      'Tail biting or excessive licking of paws/body may indicate compulsive behavior or stress relief attempts';

  @override
  String get hgDogStress3 =>
      'Extreme anxiety when the owner leaves and potty accidents may suggest separation anxiety';

  @override
  String get hgDogStress4 =>
      'If symptoms persist, consult a veterinarian or animal behavior specialist';

  @override
  String get hgDogSocial1 =>
      '**3–14 weeks of age** is the golden period for socialization — exposure to various people, sounds, and environments is important';

  @override
  String get hgDogSocial2 =>
      'Interaction with other dogs — dog parks and puppy classes can help';

  @override
  String get hgDogSocial3 =>
      'Experiencing new places, smells, and sounds contributes to mental enrichment';

  @override
  String get hgDogSocial4 =>
      'Positive reinforcement training, such as clickers and treats, stimulates the brain and strengthens bonding';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP (Combination Vaccine)** — feline herpesvirus, calicivirus, and panleukopenia.\n1st dose at 6–8 weeks of age, 3 doses at 3–4 week intervals, then every 1–3 years';

  @override
  String get hgCatCoreRabies =>
      '**Rabies** — required for outdoor cats and recommended for indoor cats as well (legally required)';

  @override
  String get hgCatNonCoreFelv =>
      '**Feline Leukemia (FeLV)** — strongly recommended for outdoor cats and multi-cat households';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Feline Chlamydia** — helps prevent conjunctivitis in multi-cat environments';

  @override
  String get hgCatNonCoreFiv =>
      '**Feline Immunodeficiency Virus (FIV)** — especially relevant for outdoor male cats; transmitted through fight wounds';

  @override
  String get hgCatExternalParasites1 =>
      'Outdoor cats: administer flea and tick prevention **once a month**';

  @override
  String get hgCatExternalParasites2 =>
      'Even indoor cats can be exposed to fleas carried in on clothing or shoes → prevention **every 3 months** is recommended';

  @override
  String get hgCatExternalParasites3 =>
      'When using spot-on products, apply accurately to the back of the neck';

  @override
  String get hgCatInternalHeartworm => 'Internal Parasites & Heartworm';

  @override
  String get hgCatInternalParasites1 =>
      'Roundworms and tapeworms: administer dewormer **every 3–6 months**';

  @override
  String get hgCatInternalParasites2 =>
      'If fed raw meat or raw fish, more frequent testing is recommended';

  @override
  String get hgCatHeartworm1 =>
      'Heartworm — cats have **no curative treatment, so prevention is the only option**. Monthly prevention is strongly recommended for outdoor cats';

  @override
  String get hgCatMajorDiseases => 'Major Feline Diseases to Watch For';

  @override
  String get hgCatDiseaseAlert =>
      'Cats tend to hide pain and illness, so symptoms often appear only after a condition has progressed. Regular checkups are especially important.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Feline Lower Urinary Tract Disease (FLUTD)** — common in male cats. Inability to urinate is an immediate emergency';

  @override
  String get hgCatDiseaseCkd =>
      '**Chronic Kidney Disease (CKD)** — one of the leading causes of death in senior cats. Regular kidney screening is essential from age 7';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Feline Diabetes** — higher risk in obese and senior cats. Watch for increased thirst and urination';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Hyperthyroidism** — common in cats over 10 years old. Watch for weight loss, increased appetite, and hyperactivity';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Stomatitis** — very common in cats. Bad breath, drooling, or appetite loss should be checked';

  @override
  String get hgCatDiseaseFhv =>
      '**Feline Herpesvirus (FHV-1)** — once infected, it remains latent for life. Stress can trigger recurrence with sneezing, eye discharge, and conjunctivitis';

  @override
  String get hgHydrationDiet => 'Hydration & Diet Management';

  @override
  String get hgCatHydrationAlert =>
      'Cats naturally drink little water and are vulnerable to urinary diseases. Encouraging water intake is very important.';

  @override
  String get hgCatHydration1 =>
      'Wet food, such as cans or pouches, is recommended to help increase hydration';

  @override
  String get hgCatHydration2 =>
      'Many cats prefer running water — a **water fountain** can be effective';

  @override
  String get hgCatHydration3 =>
      'Place the water bowl away from the food bowl; wide, shallow bowls are often preferred';

  @override
  String get hgCatHydration4 =>
      'Target water intake: about **40–60 ml** per kg of body weight per day';

  @override
  String get hgCatForbiddenFoodAlert =>
      'The foods below are toxic to cats. Even small amounts can be dangerous, so never feed them.';

  @override
  String get hgCatForbiddenOnion =>
      '**Onions, garlic, and leeks** — destroy red blood cells and cause hemolytic anemia; cats are more sensitive than dogs';

  @override
  String get hgCatForbiddenGrape =>
      '**Grapes and raisins** — can cause kidney failure';

  @override
  String get hgCatForbiddenChocolate =>
      '**Chocolate and caffeine** — toxic to the heart and nervous system';

  @override
  String get hgCatForbiddenRawFish =>
      '**Raw fish when fed continuously** — may cause thiamine, vitamin B1, deficiency';

  @override
  String get hgCatForbiddenMilk =>
      '**Milk and dairy products** — many adult cats are lactose intolerant and may develop diarrhea';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xylitol and alcohol** — toxic to the liver and nervous system';

  @override
  String get hgCatForbiddenAvocado =>
      '**Avocado** — contains persin and may cause vomiting and diarrhea';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Raw egg whites** — avidin blocks biotin absorption and may cause skin and coat problems';

  @override
  String get hgCatEmergency1 =>
      '**Unable to urinate or blood in urine** — urethral obstruction is an emergency, especially in male cats';

  @override
  String get hgCatEmergency2 =>
      'Complete loss of appetite for more than 24 hours, with risk of fatty liver disease';

  @override
  String get hgCatEmergency3 =>
      '**Open-mouth breathing** — never normal in cats and requires immediate emergency care';

  @override
  String get hgCatEmergency4 =>
      'Sudden hind leg paralysis or coldness, possible thromboembolism';

  @override
  String get hgCatEmergency5 =>
      'Seizures, convulsions, or loss of consciousness';

  @override
  String get hgCatEmergency6 =>
      'Pale gums or tongue, or yellow discoloration/jaundice';

  @override
  String get hgCatEmergency7 =>
      'Vomiting or diarrhea 3 or more times in one day, or blood in stool/vomit';

  @override
  String get hgCatEmergency8 => 'Visible trauma, fracture, or heavy bleeding';

  @override
  String get hgEnvironmentMentalHealth => 'Environment & Mental Health';

  @override
  String get hgIndoorEnvironment => 'Indoor Environment Management';

  @override
  String get hgStressManagement => 'Stress Management';

  @override
  String get hgCatEnvironment1 =>
      '**Litter boxes**: number of cats + 1 or more, cleaned daily';

  @override
  String get hgCatEnvironment2 =>
      '**Scratchers**: at least 2, combining vertical and horizontal types';

  @override
  String get hgCatEnvironment3 =>
      '**High spaces**: provide cat towers, shelves, or vertical spaces to satisfy territorial instincts';

  @override
  String get hgCatEnvironment4 =>
      '**Hiding places**: provide boxes, tunnels, or safe spaces where the cat can hide';

  @override
  String get hgCatStress1 =>
      'Stress in cats is directly linked to lowered immunity, FLUTD, and feline herpesvirus recurrence';

  @override
  String get hgCatStress2 =>
      'During major environmental changes such as moving or a new family member, a pheromone diffuser such as Feliway may help';

  @override
  String get hgCatStress3 =>
      'Provide at least **10–15 minutes** of interactive toy play every day';

  @override
  String get hgCatStress4 =>
      'In multi-cat households, separate resources such as food bowls, litter boxes, and sleeping areas according to the number of cats';

  @override
  String get hgAge => 'Age';

  @override
  String get hgCheckupCycle => 'Checkup Cycle';

  @override
  String get hgMainItems => 'Main Items';

  @override
  String get hgAge1to6 => '1–6 Years';

  @override
  String get hgAge7to10 => '7–10 Years';

  @override
  String get hgAge11Plus => '11+ Years';

  @override
  String get hgYearlyOnce => 'Once a Year';

  @override
  String get hgYearlyTwice => 'Twice a Year';

  @override
  String get hgEvery3to4Months => 'Every 3–4 Months';

  @override
  String get hgDogCheckupItems1 =>
      'Blood test, heart auscultation, weight, dental check';

  @override
  String get hgDogCheckupItems2 =>
      'Blood, urine, X-ray, blood pressure, joints';

  @override
  String get hgDogCheckupItems3 =>
      'Comprehensive blood work, ultrasound, kidney and liver function';

  @override
  String get hgCatCheckupItems1 =>
      'Blood test, urine test, weight, dental check';

  @override
  String get hgCatCheckupItems2 =>
      'Kidney and liver values, blood pressure, thyroid T4';

  @override
  String get hgCatCheckupItems3 =>
      'Comprehensive blood work, abdominal ultrasound, intensive kidney monitoring';

  @override
  String get hgExerciseAmount => 'Exercise Level';

  @override
  String get hgBreedExamples => 'Breed Examples';

  @override
  String get hgLow => 'Low';

  @override
  String get hgNormal => 'Moderate';

  @override
  String get hgHigh => 'High';

  @override
  String get hgBreedLowExamples => 'Bulldog, Basset Hound, Shih Tzu, Maltese';

  @override
  String get hgBreedNormalExamples =>
      'Poodle, Bichon Frise, Cocker Spaniel, Beagle';

  @override
  String get hgBreedHighExamples =>
      'Labrador, Golden Retriever, Husky, Border Collie';

  @override
  String get hgDisclaimer =>
      'This guide provides general health care information, and the care needed may vary depending on your pet’s condition. If abnormal symptoms appear or treatment is needed, always consult a veterinarian.';
}
