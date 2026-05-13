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
  String get weekStats => 'This week’s stats';

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
  String get mealType => 'Meal type';

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
  String get breakfast => 'Breakfast';

  @override
  String get lunch => 'Lunch';

  @override
  String get dinner => 'Dinner';

  @override
  String get snack => 'Snack';

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
  String get standardRange => 'Standard range';

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
}
