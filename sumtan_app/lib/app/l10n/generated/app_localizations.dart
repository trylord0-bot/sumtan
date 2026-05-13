import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('ja'),
    Locale('ko'),
    Locale('pt'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW')
  ];

  /// Application name
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan'**
  String get appName;

  /// Application tagline
  ///
  /// In en, this message translates to:
  /// **'Pet health care app'**
  String get appTagline;

  /// Bottom nav: Home
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Bottom nav: Journal
  ///
  /// In en, this message translates to:
  /// **'Journal'**
  String get navJournal;

  /// Bottom nav: Notifications/Alerts
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get navNotifications;

  /// Bottom nav: Profile
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfile;

  /// Bottom nav: Settings
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// Nav: Add alert
  ///
  /// In en, this message translates to:
  /// **'Add alert'**
  String get navAddAlarm;

  /// Drawer: Services section title
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get drawerService;

  /// Drawer: Nearby hospitals
  ///
  /// In en, this message translates to:
  /// **'Find nearby hospitals'**
  String get drawerNearbyHospitals;

  /// Drawer: Nearby hospitals subtitle
  ///
  /// In en, this message translates to:
  /// **'Animal hospitals near you'**
  String get drawerNearbyHospitalsSub;

  /// Drawer: Health guide
  ///
  /// In en, this message translates to:
  /// **'Health guide'**
  String get drawerHealthGuide;

  /// Drawer: Health guide subtitle
  ///
  /// In en, this message translates to:
  /// **'Pet health handbook'**
  String get drawerHealthGuideSub;

  /// Drawer: App section title
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get drawerApp;

  /// Drawer: Help
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get drawerHelp;

  /// Dialog: External page title
  ///
  /// In en, this message translates to:
  /// **'Open an external page'**
  String get dialogExternalTitle;

  /// Dialog: External hospital page body
  ///
  /// In en, this message translates to:
  /// **'Finding nearby animal hospitals requires an external web page.\n\nOpen it now?'**
  String get dialogExternalHospitalBody;

  /// Common: Cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// Common: Go button
  ///
  /// In en, this message translates to:
  /// **'Go'**
  String get commonGo;

  /// Common: Delete button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get commonDelete;

  /// Common: Save button
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get commonSave;

  /// Common: Loading text
  ///
  /// In en, this message translates to:
  /// **'Preparing...'**
  String get commonLoading;

  /// Common: Percentage format
  ///
  /// In en, this message translates to:
  /// **'{percent}%'**
  String commonPercent(String percent);

  /// Toast: Back to exit
  ///
  /// In en, this message translates to:
  /// **'Press again to exit the app'**
  String get toastBackToExit;

  /// Toast: Need to add a pet
  ///
  /// In en, this message translates to:
  /// **'No pet yet. Please add one from Profile first.'**
  String get toastNeedPet;

  /// Settings: Notifications section
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsNotifications;

  /// Settings: Push notifications toggle
  ///
  /// In en, this message translates to:
  /// **'Allow push notifications'**
  String get settingsPushNotifications;

  /// Settings: Push notifications subtitle
  ///
  /// In en, this message translates to:
  /// **'Device notification permission'**
  String get settingsPushNotificationsSub;

  /// Settings: Language section title
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguageSection;

  /// Settings: App language
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get settingsLanguage;

  /// Settings: Use system language
  ///
  /// In en, this message translates to:
  /// **'Use device settings'**
  String get settingsLanguageSystem;

  /// Settings: Language changed toast
  ///
  /// In en, this message translates to:
  /// **'App language changed'**
  String get settingsLanguageChanged;

  /// Settings: Data management section
  ///
  /// In en, this message translates to:
  /// **'Data management'**
  String get settingsData;

  /// Settings: Export data
  ///
  /// In en, this message translates to:
  /// **'Export data'**
  String get settingsExport;

  /// Settings: Export subtitle
  ///
  /// In en, this message translates to:
  /// **'Save as a ZIP file'**
  String get settingsExportSub;

  /// Settings: Import data
  ///
  /// In en, this message translates to:
  /// **'Import data'**
  String get settingsImport;

  /// Settings: Import subtitle
  ///
  /// In en, this message translates to:
  /// **'Restore from a ZIP file'**
  String get settingsImportSub;

  /// Settings: App info section
  ///
  /// In en, this message translates to:
  /// **'App info'**
  String get settingsAppInfo;

  /// Settings: App version
  ///
  /// In en, this message translates to:
  /// **'App version'**
  String get settingsVersion;

  /// Settings: Privacy policy
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get settingsPrivacy;

  /// Settings: Send feedback
  ///
  /// In en, this message translates to:
  /// **'Send feedback'**
  String get settingsFeedback;

  /// Settings: Feedback email subject
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan feedback'**
  String get settingsFeedbackSubject;

  /// Settings: No email app
  ///
  /// In en, this message translates to:
  /// **'No email app found'**
  String get settingsEmailAppMissing;

  /// Settings: Import confirm dialog body
  ///
  /// In en, this message translates to:
  /// **'All existing data will be deleted and replaced with the backup file.\n\nContinue?'**
  String get settingsImportConfirmBody;

  /// Settings: Import action button
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get settingsImportAction;

  /// Settings: Importing in progress
  ///
  /// In en, this message translates to:
  /// **'Import data'**
  String get settingsImporting;

  /// Settings: Import success
  ///
  /// In en, this message translates to:
  /// **'Backup data restored'**
  String get settingsImportSuccess;

  /// Settings: Import failed
  ///
  /// In en, this message translates to:
  /// **'Import failed'**
  String get settingsImportFailed;

  /// Settings: Export page title
  ///
  /// In en, this message translates to:
  /// **'Export data'**
  String get settingsExportTitle;

  /// Settings: Export benefit title
  ///
  /// In en, this message translates to:
  /// **'Keep your precious records safe'**
  String get settingsExportBenefitTitle;

  /// Settings: Export benefit - pets
  ///
  /// In en, this message translates to:
  /// **'All pet profiles and photos'**
  String get settingsExportBenefitPets;

  /// Settings: Export benefit - records
  ///
  /// In en, this message translates to:
  /// **'All health records, journals, and weights'**
  String get settingsExportBenefitRecords;

  /// Settings: Export benefit - media
  ///
  /// In en, this message translates to:
  /// **'Includes attached images and videos'**
  String get settingsExportBenefitMedia;

  /// Settings: Store unavailable
  ///
  /// In en, this message translates to:
  /// **'Cannot connect to the store right now.\nPlease try again later.'**
  String get settingsStoreUnavailable;

  /// Settings: Pay and export button
  ///
  /// In en, this message translates to:
  /// **'Pay {price} and export'**
  String settingsPayAndExport(String price);

  /// Settings: Export unlocked badge
  ///
  /// In en, this message translates to:
  /// **'Unlocked'**
  String get settingsUnlocked;

  /// Settings: Export unlocked body
  ///
  /// In en, this message translates to:
  /// **'Save all pet information and records as a ZIP file.\nYou can import and restore saved files for free anytime.'**
  String get settingsExportUnlockedBody;

  /// Settings: Exporting in progress
  ///
  /// In en, this message translates to:
  /// **'Exporting...'**
  String get settingsExporting;

  /// Settings: Export as ZIP button
  ///
  /// In en, this message translates to:
  /// **'Export as ZIP'**
  String get settingsExportZip;

  /// Settings: Export confirm body
  ///
  /// In en, this message translates to:
  /// **'Export all pet information, records, and attached media as a ZIP file.'**
  String get settingsExportConfirmBody;

  /// Settings: Export action button
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get settingsExportAction;

  /// Settings: Export success
  ///
  /// In en, this message translates to:
  /// **'Backup file is ready to share'**
  String get settingsExportSuccess;

  /// Settings: Export failed
  ///
  /// In en, this message translates to:
  /// **'Export failed'**
  String get settingsExportFailed;

  /// Settings: Purchase failed
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get settingsPurchaseFailed;

  /// Error: DB init failed
  ///
  /// In en, this message translates to:
  /// **'There was a problem preparing app data.\nPlease try again later.'**
  String get errorDbInit;

  /// Help label
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// Health guide label
  ///
  /// In en, this message translates to:
  /// **'Health guide'**
  String get healthGuide;

  /// Dog label
  ///
  /// In en, this message translates to:
  /// **'Dog'**
  String get dog;

  /// Cat label
  ///
  /// In en, this message translates to:
  /// **'Cat'**
  String get cat;

  /// Tab: Dog
  ///
  /// In en, this message translates to:
  /// **'🐶 Dog'**
  String get tabDog;

  /// Tab: Cat
  ///
  /// In en, this message translates to:
  /// **'🐱 Cat'**
  String get tabCat;

  /// Saved message
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get savedMsg;

  /// Cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Delete button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Delete action button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteAction;

  /// Save button
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Memo label
  ///
  /// In en, this message translates to:
  /// **'Memo'**
  String get memo;

  /// Memo placeholder text
  ///
  /// In en, this message translates to:
  /// **'Add a memo freely'**
  String get memoPlaceholder;

  /// Add button
  ///
  /// In en, this message translates to:
  /// **'+ Add'**
  String get addBtn;

  /// Generic error message
  ///
  /// In en, this message translates to:
  /// **'An error occurred'**
  String get errorOccurred;

  /// Error with detail
  ///
  /// In en, this message translates to:
  /// **'An error occurred\n{error}'**
  String errorOccurredWithDetail(String error);

  /// Pet label
  ///
  /// In en, this message translates to:
  /// **'Pet'**
  String get pet;

  /// Select pet label
  ///
  /// In en, this message translates to:
  /// **'Select pet'**
  String get selectPet;

  /// Add new pet label
  ///
  /// In en, this message translates to:
  /// **'Add a new pet'**
  String get addNewPet;

  /// No alarms registered
  ///
  /// In en, this message translates to:
  /// **'No alerts yet'**
  String get noAlarms;

  /// Alarm empty description with pet name
  ///
  /// In en, this message translates to:
  /// **'Keep {petName} healthy today.\nTap Add alert below to get started.'**
  String alarmEmptyDesc(String petName);

  /// Scheduled alarms label
  ///
  /// In en, this message translates to:
  /// **'Scheduled alerts'**
  String get scheduledAlarms;

  /// Swipe to delete hint
  ///
  /// In en, this message translates to:
  /// **'Swipe to delete'**
  String get swipeToDelete;

  /// Select alarm type
  ///
  /// In en, this message translates to:
  /// **'Select alert type'**
  String get selectAlarmType;

  /// Vet appointment type
  ///
  /// In en, this message translates to:
  /// **'Vet appointment'**
  String get vetAppointment;

  /// Medication type
  ///
  /// In en, this message translates to:
  /// **'Medication'**
  String get medication;

  /// Meal time type
  ///
  /// In en, this message translates to:
  /// **'Meal time'**
  String get mealTime;

  /// Daily reminder type
  ///
  /// In en, this message translates to:
  /// **'Daily reminder'**
  String get dailyReminder;

  /// Alert label
  ///
  /// In en, this message translates to:
  /// **'Alert'**
  String get alarmLabel;

  /// Alarm body: vaccination
  ///
  /// In en, this message translates to:
  /// **'Please check the vaccination date.'**
  String get alarmBodyVaccination;

  /// Alarm body: vet appointment
  ///
  /// In en, this message translates to:
  /// **'Your vet appointment is coming up.'**
  String get alarmBodyVetAppointment;

  /// Alarm body: medication
  ///
  /// In en, this message translates to:
  /// **'It is time for medication.'**
  String get alarmBodyMedication;

  /// Alarm body: meal time
  ///
  /// In en, this message translates to:
  /// **'Please remember meal time.'**
  String get alarmBodyMealTime;

  /// Alarm body: daily reminder
  ///
  /// In en, this message translates to:
  /// **'Please add today’s health record.'**
  String get alarmBodyDailyReminder;

  /// Alarm body: default
  ///
  /// In en, this message translates to:
  /// **'Pet health care alert.'**
  String get alarmBodyDefault;

  /// Alert deleted toast
  ///
  /// In en, this message translates to:
  /// **'Alert deleted'**
  String get alarmDeleted;

  /// Hide past alarms button
  ///
  /// In en, this message translates to:
  /// **'Hide past alerts'**
  String get hidePastAlarms;

  /// Show past alarms button
  ///
  /// In en, this message translates to:
  /// **'Show past alerts'**
  String get showPastAlarms;

  /// Delete all button
  ///
  /// In en, this message translates to:
  /// **'Delete all'**
  String get deleteAll;

  /// Delete past alarms button
  ///
  /// In en, this message translates to:
  /// **'Delete past alerts'**
  String get deletePastAlarms;

  /// Confirm delete past alarms
  ///
  /// In en, this message translates to:
  /// **'Delete all {count} past alerts?'**
  String deletePastAlarmsConfirm(int count);

  /// Past alarms deleted toast
  ///
  /// In en, this message translates to:
  /// **'All past alerts deleted'**
  String get pastAlarmsDeleted;

  /// Past label
  ///
  /// In en, this message translates to:
  /// **'Past'**
  String get pastLabel;

  /// Today label
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// Tomorrow same time option
  ///
  /// In en, this message translates to:
  /// **'Tomorrow, same time'**
  String get tomorrowSameTime;

  /// Snooze question
  ///
  /// In en, this message translates to:
  /// **'When should we remind you again?'**
  String get snoozeQuestion;

  /// Snooze 5 minutes
  ///
  /// In en, this message translates to:
  /// **'In 5 minutes'**
  String get snooze5min;

  /// Snooze 10 minutes
  ///
  /// In en, this message translates to:
  /// **'In 10 minutes'**
  String get snooze10min;

  /// Snooze 30 minutes
  ///
  /// In en, this message translates to:
  /// **'In 30 minutes'**
  String get snooze30min;

  /// Snooze 1 hour
  ///
  /// In en, this message translates to:
  /// **'In 1 hour'**
  String get snooze1hour;

  /// Snooze 3 hours
  ///
  /// In en, this message translates to:
  /// **'In 3 hours'**
  String get snooze3hour;

  /// Snooze custom time
  ///
  /// In en, this message translates to:
  /// **'Choose manually'**
  String get snoozeCustom;

  /// Snooze at this time button
  ///
  /// In en, this message translates to:
  /// **'Remind me at this time'**
  String get snoozeAtThisTime;

  /// Snooze confirmation
  ///
  /// In en, this message translates to:
  /// **'We will remind you at {time}'**
  String snoozeConfirm(String time);

  /// Select future time hint
  ///
  /// In en, this message translates to:
  /// **'Please choose a future time'**
  String get selectFutureTime;

  /// Hint to check record under type label
  ///
  /// In en, this message translates to:
  /// **'You can check it under Record > {typeLabel}.'**
  String recordCheckHint(String typeLabel);

  /// Push notification also canceled
  ///
  /// In en, this message translates to:
  /// **'The scheduled push notification will also be canceled.'**
  String get pushAlsoCancel;

  /// Reschedule button
  ///
  /// In en, this message translates to:
  /// **'Reschedule'**
  String get reschedule;

  /// Delete this alert button
  ///
  /// In en, this message translates to:
  /// **'Delete this alert'**
  String get deleteThisAlarm;

  /// Vaccine name required field label
  ///
  /// In en, this message translates to:
  /// **'Vaccine name *'**
  String get vaccineNameRequired;

  /// Vaccine name example
  ///
  /// In en, this message translates to:
  /// **'e.g. Rabies, combo vaccine'**
  String get vaccineNameExample;

  /// Scheduled date required field label
  ///
  /// In en, this message translates to:
  /// **'Date *'**
  String get scheduledDateRequired;

  /// Reminder timing label
  ///
  /// In en, this message translates to:
  /// **'Reminder timing'**
  String get reminderTiming;

  /// Same day option
  ///
  /// In en, this message translates to:
  /// **'Same day'**
  String get sameDay;

  /// Reminder time required field label
  ///
  /// In en, this message translates to:
  /// **'Reminder time *'**
  String get reminderTimeRequired;

  /// Memo input hint
  ///
  /// In en, this message translates to:
  /// **'Enter a memo'**
  String get memoInputHint;

  /// Visit purpose required field label
  ///
  /// In en, this message translates to:
  /// **'Visit purpose *'**
  String get visitPurposeRequired;

  /// Visit purpose example
  ///
  /// In en, this message translates to:
  /// **'e.g. Checkup, skin treatment'**
  String get visitPurposeExample;

  /// Appointment date time required field label
  ///
  /// In en, this message translates to:
  /// **'Appointment date and time *'**
  String get appointmentDateTimeRequired;

  /// Hospital name label
  ///
  /// In en, this message translates to:
  /// **'Hospital name'**
  String get hospitalName;

  /// Hospital name hint
  ///
  /// In en, this message translates to:
  /// **'Enter hospital name'**
  String get hospitalNameHint;

  /// Medicine name required field label
  ///
  /// In en, this message translates to:
  /// **'Medicine name *'**
  String get medicineNameRequired;

  /// Medicine name example
  ///
  /// In en, this message translates to:
  /// **'e.g. Heartworm, dewormer'**
  String get medicineNameExample;

  /// Repeat required field label
  ///
  /// In en, this message translates to:
  /// **'Repeat *'**
  String get repeatRequired;

  /// None option
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// Daily option
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// Weekly option
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get weekly;

  /// Monthly option
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// Weekdays option
  ///
  /// In en, this message translates to:
  /// **'Weekdays'**
  String get weekdays;

  /// Weekdays only option
  ///
  /// In en, this message translates to:
  /// **'Weekdays only'**
  String get weekdaysOnly;

  /// Weekends option
  ///
  /// In en, this message translates to:
  /// **'Weekends'**
  String get weekends;

  /// Weekends only option
  ///
  /// In en, this message translates to:
  /// **'Weekends only'**
  String get weekendsOnly;

  /// Medication date time required field label
  ///
  /// In en, this message translates to:
  /// **'Medication date and time *'**
  String get medicationDateTimeRequired;

  /// Medication time required field label
  ///
  /// In en, this message translates to:
  /// **'Medication time *'**
  String get medicationTimeRequired;

  /// Alert name required field label
  ///
  /// In en, this message translates to:
  /// **'Alert name *'**
  String get alarmNameRequired;

  /// Meal time example
  ///
  /// In en, this message translates to:
  /// **'e.g. Breakfast, dinner'**
  String get mealTimeExample;

  /// Meal time required field label
  ///
  /// In en, this message translates to:
  /// **'Meal time *'**
  String get mealTimeRequired;

  /// Alert message label
  ///
  /// In en, this message translates to:
  /// **'Alert message'**
  String get alarmMessage;

  /// Alert message example
  ///
  /// In en, this message translates to:
  /// **'e.g. Did you add today’s record?'**
  String get alarmMessageExample;

  /// Alert past due message
  ///
  /// In en, this message translates to:
  /// **'This alert date has passed.\nYou can choose a new date or delete it.'**
  String get alarmPastDueMsg;

  /// Reselect date button
  ///
  /// In en, this message translates to:
  /// **'Select date again'**
  String get reselectDate;

  /// Select date button
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get selectDate;

  /// Select time button
  ///
  /// In en, this message translates to:
  /// **'Select time'**
  String get selectTime;

  /// Today status label
  ///
  /// In en, this message translates to:
  /// **'Today’s status'**
  String get todayStatus;

  /// Add record button
  ///
  /// In en, this message translates to:
  /// **'+ Add record'**
  String get addRecord;

  /// Today reminders label
  ///
  /// In en, this message translates to:
  /// **'Today’s reminders'**
  String get todayReminders;

  /// Today records label
  ///
  /// In en, this message translates to:
  /// **'Today’s records'**
  String get todayRecords;

  /// View all button
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get viewAll;

  /// This week stats label
  ///
  /// In en, this message translates to:
  /// **'This week’s stats'**
  String get weekStats;

  /// Potty count label
  ///
  /// In en, this message translates to:
  /// **'Potty count'**
  String get pottyCount;

  /// Meal count label
  ///
  /// In en, this message translates to:
  /// **'Meal count'**
  String get mealCount;

  /// Water level label
  ///
  /// In en, this message translates to:
  /// **'Water level'**
  String get waterLevel;

  /// Times unit
  ///
  /// In en, this message translates to:
  /// **'times'**
  String get timesUnit;

  /// Meals unit
  ///
  /// In en, this message translates to:
  /// **'meals'**
  String get mealsUnit;

  /// Points unit
  ///
  /// In en, this message translates to:
  /// **'pts'**
  String get pointsUnit;

  /// Record deleted toast
  ///
  /// In en, this message translates to:
  /// **'Record deleted'**
  String get recordDeleted;

  /// Record updated toast
  ///
  /// In en, this message translates to:
  /// **'Record updated'**
  String get recordUpdated;

  /// Delete record confirmation
  ///
  /// In en, this message translates to:
  /// **'Delete this record?'**
  String get deleteRecordConfirm;

  /// Delete this record button
  ///
  /// In en, this message translates to:
  /// **'Delete this record'**
  String get deleteThisRecord;

  /// Type label
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get typeLabel;

  /// Status label
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get statusLabel;

  /// Condition score label
  ///
  /// In en, this message translates to:
  /// **'Condition score'**
  String get conditionScore;

  /// Symptom tags label
  ///
  /// In en, this message translates to:
  /// **'Symptom tags'**
  String get symptomTags;

  /// Medicine name label
  ///
  /// In en, this message translates to:
  /// **'Medicine name'**
  String get medicineName;

  /// Dose label
  ///
  /// In en, this message translates to:
  /// **'Dose'**
  String get dose;

  /// Medication method label
  ///
  /// In en, this message translates to:
  /// **'Medication method'**
  String get medicationMethod;

  /// Weight in kg label
  ///
  /// In en, this message translates to:
  /// **'Weight (kg)'**
  String get weightKg;

  /// Measurement method label
  ///
  /// In en, this message translates to:
  /// **'Measurement method'**
  String get measurementMethod;

  /// Meal type label
  ///
  /// In en, this message translates to:
  /// **'Meal type'**
  String get mealType;

  /// Meal amount label
  ///
  /// In en, this message translates to:
  /// **'Meal amount'**
  String get mealAmount;

  /// Serving amount label
  ///
  /// In en, this message translates to:
  /// **'Serving amount'**
  String get servingAmount;

  /// Water amount label
  ///
  /// In en, this message translates to:
  /// **'Water amount'**
  String get waterAmount;

  /// Visit type label
  ///
  /// In en, this message translates to:
  /// **'Visit type'**
  String get visitType;

  /// Diagnosis label
  ///
  /// In en, this message translates to:
  /// **'Diagnosis'**
  String get diagnosisName;

  /// Vaccine type label
  ///
  /// In en, this message translates to:
  /// **'Vaccine type'**
  String get vaccineType;

  /// Side effects label
  ///
  /// In en, this message translates to:
  /// **'Side effects'**
  String get sideEffects;

  /// Grooming type label
  ///
  /// In en, this message translates to:
  /// **'Grooming type'**
  String get groomingType;

  /// Shop name label
  ///
  /// In en, this message translates to:
  /// **'Shop name'**
  String get shopName;

  /// Cost label
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get cost;

  /// Next appointment label
  ///
  /// In en, this message translates to:
  /// **'Next appointment'**
  String get nextAppointment;

  /// Brushing area label
  ///
  /// In en, this message translates to:
  /// **'Brushing area'**
  String get brushingArea;

  /// Duration label
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// Walk time label
  ///
  /// In en, this message translates to:
  /// **'Walk time'**
  String get walkTime;

  /// Distance label
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get distance;

  /// Title label
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// Priority label
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get priority;

  /// Stool label
  ///
  /// In en, this message translates to:
  /// **'Stool'**
  String get stool;

  /// Urine label
  ///
  /// In en, this message translates to:
  /// **'Urine'**
  String get urine;

  /// Vomiting label
  ///
  /// In en, this message translates to:
  /// **'Vomiting'**
  String get vomiting;

  /// Normal label
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get normal;

  /// Loose label
  ///
  /// In en, this message translates to:
  /// **'Loose'**
  String get loose;

  /// Hard label
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get hard;

  /// Blood in stool label
  ///
  /// In en, this message translates to:
  /// **'Blood in stool'**
  String get bloodInStool;

  /// Cough label
  ///
  /// In en, this message translates to:
  /// **'Cough'**
  String get cough;

  /// Lethargy label
  ///
  /// In en, this message translates to:
  /// **'Lethargy'**
  String get lethargy;

  /// Loss of appetite label
  ///
  /// In en, this message translates to:
  /// **'Loss of appetite'**
  String get lossOfAppetite;

  /// Diarrhea label
  ///
  /// In en, this message translates to:
  /// **'Diarrhea'**
  String get diarrhea;

  /// Runny nose label
  ///
  /// In en, this message translates to:
  /// **'Runny nose'**
  String get runnyNose;

  /// Sneezing label
  ///
  /// In en, this message translates to:
  /// **'Sneezing'**
  String get sneezing;

  /// Trembling label
  ///
  /// In en, this message translates to:
  /// **'Trembling'**
  String get trembling;

  /// Blood in urine label
  ///
  /// In en, this message translates to:
  /// **'Blood in urine'**
  String get bloodInUrine;

  /// Oral label
  ///
  /// In en, this message translates to:
  /// **'Oral'**
  String get oral;

  /// Injection label
  ///
  /// In en, this message translates to:
  /// **'Injection'**
  String get injection;

  /// Topical label
  ///
  /// In en, this message translates to:
  /// **'Topical'**
  String get topical;

  /// Eye drops label
  ///
  /// In en, this message translates to:
  /// **'Eye drops'**
  String get eyeDrops;

  /// Ear drops label
  ///
  /// In en, this message translates to:
  /// **'Ear drops'**
  String get earDrops;

  /// Vet hospital label
  ///
  /// In en, this message translates to:
  /// **'Vet hospital'**
  String get vetHospital;

  /// Home scale label
  ///
  /// In en, this message translates to:
  /// **'Home scale'**
  String get homeScale;

  /// Hold and weigh label
  ///
  /// In en, this message translates to:
  /// **'Hold and weigh'**
  String get holdAndWeigh;

  /// Breakfast label
  ///
  /// In en, this message translates to:
  /// **'Breakfast'**
  String get breakfast;

  /// Lunch label
  ///
  /// In en, this message translates to:
  /// **'Lunch'**
  String get lunch;

  /// Dinner label
  ///
  /// In en, this message translates to:
  /// **'Dinner'**
  String get dinner;

  /// Snack label
  ///
  /// In en, this message translates to:
  /// **'Snack'**
  String get snack;

  /// Very little label
  ///
  /// In en, this message translates to:
  /// **'Very little'**
  String get veryLittle;

  /// Little label
  ///
  /// In en, this message translates to:
  /// **'Little'**
  String get little;

  /// Much label
  ///
  /// In en, this message translates to:
  /// **'Much'**
  String get much;

  /// Very much label
  ///
  /// In en, this message translates to:
  /// **'Very much'**
  String get veryMuch;

  /// General/Normal visit type label
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get general;

  /// Regular checkup label
  ///
  /// In en, this message translates to:
  /// **'Checkup'**
  String get regularCheckup;

  /// Emergency label
  ///
  /// In en, this message translates to:
  /// **'Emergency'**
  String get emergency;

  /// Mild label
  ///
  /// In en, this message translates to:
  /// **'Mild'**
  String get mild;

  /// Severe label
  ///
  /// In en, this message translates to:
  /// **'Severe'**
  String get severe;

  /// Bath label
  ///
  /// In en, this message translates to:
  /// **'Bath'**
  String get bath;

  /// Full grooming label
  ///
  /// In en, this message translates to:
  /// **'Full grooming'**
  String get fullGrooming;

  /// Partial grooming label
  ///
  /// In en, this message translates to:
  /// **'Partial grooming'**
  String get partialGrooming;

  /// Nails label
  ///
  /// In en, this message translates to:
  /// **'Nails'**
  String get nails;

  /// Ear cleaning label
  ///
  /// In en, this message translates to:
  /// **'Ear cleaning'**
  String get earCleaning;

  /// Tartar removal label
  ///
  /// In en, this message translates to:
  /// **'Tartar removal'**
  String get tartarRemoval;

  /// Anal glands label
  ///
  /// In en, this message translates to:
  /// **'Anal glands'**
  String get analGlands;

  /// All label
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// Back (body part) label
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// Belly label
  ///
  /// In en, this message translates to:
  /// **'Belly'**
  String get belly;

  /// Tail label
  ///
  /// In en, this message translates to:
  /// **'Tail'**
  String get tail;

  /// Face label
  ///
  /// In en, this message translates to:
  /// **'Face'**
  String get face;

  /// Paws label
  ///
  /// In en, this message translates to:
  /// **'Paws'**
  String get paws;

  /// Important label
  ///
  /// In en, this message translates to:
  /// **'Important'**
  String get important;

  /// Photos and videos label
  ///
  /// In en, this message translates to:
  /// **'Photos · Videos'**
  String get photosAndVideos;

  /// Add media button
  ///
  /// In en, this message translates to:
  /// **'Add media'**
  String get addMedia;

  /// Select media method label
  ///
  /// In en, this message translates to:
  /// **'Choose how to add media'**
  String get selectMediaMethod;

  /// Use camera option
  ///
  /// In en, this message translates to:
  /// **'Use camera'**
  String get useCamera;

  /// Take photo or video option
  ///
  /// In en, this message translates to:
  /// **'Take a photo or video'**
  String get takePhotoOrVideo;

  /// Choose from gallery option
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get chooseFromGallery;

  /// Multi-select hint
  ///
  /// In en, this message translates to:
  /// **'Select multiple photos and videos'**
  String get multiSelectHint;

  /// Take photo button
  ///
  /// In en, this message translates to:
  /// **'Take photo'**
  String get takePhoto;

  /// Take photo description
  ///
  /// In en, this message translates to:
  /// **'Take a photo with camera'**
  String get takePhotoDesc;

  /// Record video button
  ///
  /// In en, this message translates to:
  /// **'Record video'**
  String get recordVideo;

  /// Record video description
  ///
  /// In en, this message translates to:
  /// **'Record a video with camera'**
  String get recordVideoDesc;

  /// Delete this photo button
  ///
  /// In en, this message translates to:
  /// **'Delete photo'**
  String get deleteThisPhoto;

  /// Delete photo confirmation
  ///
  /// In en, this message translates to:
  /// **'Delete this photo?'**
  String get deletePhotoConfirm;

  /// Delete this video button
  ///
  /// In en, this message translates to:
  /// **'Delete video'**
  String get deleteThisVideo;

  /// Delete video confirmation
  ///
  /// In en, this message translates to:
  /// **'Delete this video?'**
  String get deleteVideoConfirm;

  /// Muted label
  ///
  /// In en, this message translates to:
  /// **'Muted'**
  String get muted;

  /// Sound on label
  ///
  /// In en, this message translates to:
  /// **'Sound on'**
  String get soundOn;

  /// Allow permission in settings hint
  ///
  /// In en, this message translates to:
  /// **'Please allow permission in Settings'**
  String get allowPermissionInSettings;

  /// Open settings button
  ///
  /// In en, this message translates to:
  /// **'Open settings'**
  String get openSettings;

  /// Privacy policy label
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// Contact developer button
  ///
  /// In en, this message translates to:
  /// **'Contact the developer'**
  String get contactDeveloper;

  /// Contact label
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// Settings label
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsLabel;

  /// Export data label
  ///
  /// In en, this message translates to:
  /// **'Export data'**
  String get exportData;

  /// Import data label
  ///
  /// In en, this message translates to:
  /// **'Import data'**
  String get importData;

  /// Send feedback label
  ///
  /// In en, this message translates to:
  /// **'Send feedback'**
  String get sendFeedback;

  /// FAQ label
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// Home screen label
  ///
  /// In en, this message translates to:
  /// **'Home screen'**
  String get homeScreen;

  /// Journal screen label
  ///
  /// In en, this message translates to:
  /// **'Journal screen'**
  String get journalScreen;

  /// Alarm screen label
  ///
  /// In en, this message translates to:
  /// **'Alerts screen'**
  String get alarmScreen;

  /// Pet management label
  ///
  /// In en, this message translates to:
  /// **'Pet management'**
  String get petManagement;

  /// Record categories label
  ///
  /// In en, this message translates to:
  /// **'Record categories'**
  String get recordCategories;

  /// What is Pet Sumtan label
  ///
  /// In en, this message translates to:
  /// **'What is Pet Sumtan?'**
  String get whatIsPetSumtan;

  /// Today record summary label
  ///
  /// In en, this message translates to:
  /// **'Today’s record summary'**
  String get todayRecordSummary;

  /// Weekly stats label
  ///
  /// In en, this message translates to:
  /// **'Weekly stats'**
  String get weeklyStats;

  /// Weight change chart label
  ///
  /// In en, this message translates to:
  /// **'Weight change chart'**
  String get weightChangeChart;

  /// Find nearby hospitals label
  ///
  /// In en, this message translates to:
  /// **'Find nearby hospitals'**
  String get findNearbyHospitals;

  /// Add new record button
  ///
  /// In en, this message translates to:
  /// **'Add new record (+)'**
  String get addNewRecord;

  /// View record list label
  ///
  /// In en, this message translates to:
  /// **'View records'**
  String get viewRecordList;

  /// Edit and delete records label
  ///
  /// In en, this message translates to:
  /// **'Edit and delete records'**
  String get editDeleteRecord;

  /// Attach media label
  ///
  /// In en, this message translates to:
  /// **'Attach photos/videos'**
  String get attachMedia;

  /// Add alarm label
  ///
  /// In en, this message translates to:
  /// **'Add alert'**
  String get addAlarm;

  /// Repeat alarm label
  ///
  /// In en, this message translates to:
  /// **'Repeating alerts'**
  String get repeatAlarm;

  /// Advance alarm hint
  ///
  /// In en, this message translates to:
  /// **'Advance alerts (D-7, D-3, D-1)'**
  String get advanceAlarmHint;

  /// Complete alarm label
  ///
  /// In en, this message translates to:
  /// **'Complete alerts'**
  String get completeAlarm;

  /// Delete alarm label
  ///
  /// In en, this message translates to:
  /// **'Delete alerts'**
  String get deleteAlarm;

  /// Register pet label
  ///
  /// In en, this message translates to:
  /// **'Add a pet'**
  String get registerPet;

  /// Edit profile label
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfile;

  /// Manage multiple pets label
  ///
  /// In en, this message translates to:
  /// **'Manage multiple pets'**
  String get manageMultiplePets;

  /// Dog health guide label
  ///
  /// In en, this message translates to:
  /// **'Dog health guide'**
  String get dogHealthGuide;

  /// Cat health guide label
  ///
  /// In en, this message translates to:
  /// **'Cat health guide'**
  String get catHealthGuide;

  /// Notification settings label
  ///
  /// In en, this message translates to:
  /// **'Notification settings'**
  String get notificationSettings;

  /// Dog health care guide label
  ///
  /// In en, this message translates to:
  /// **'Dog health care guide'**
  String get dogHealthCareGuide;

  /// Cat health care guide label
  ///
  /// In en, this message translates to:
  /// **'Cat health care guide'**
  String get catHealthCareGuide;

  /// Health guide subtitle
  ///
  /// In en, this message translates to:
  /// **'A professional health guide\nbased on veterinary recommendations.'**
  String get healthGuideSubtitle;

  /// Vaccination label
  ///
  /// In en, this message translates to:
  /// **'Vaccination'**
  String get vaccination;

  /// Core vaccines label
  ///
  /// In en, this message translates to:
  /// **'Core vaccines'**
  String get coreVaccines;

  /// Required label
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// Non-core vaccines label
  ///
  /// In en, this message translates to:
  /// **'Non-core vaccines'**
  String get nonCoreVaccines;

  /// Recommended label
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get recommended;

  /// Parasite prevention label
  ///
  /// In en, this message translates to:
  /// **'Parasite prevention'**
  String get parasitePrevention;

  /// Heartworm label
  ///
  /// In en, this message translates to:
  /// **'Heartworm'**
  String get heartworm;

  /// Monthly frequency label
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthlyFreq;

  /// External parasites label
  ///
  /// In en, this message translates to:
  /// **'External parasites (fleas/ticks)'**
  String get externalParasites;

  /// Internal parasites label
  ///
  /// In en, this message translates to:
  /// **'Internal parasites'**
  String get internalParasites;

  /// 3-6 months label
  ///
  /// In en, this message translates to:
  /// **'3-6 months'**
  String get threeToSixMonths;

  /// Nutrition management label
  ///
  /// In en, this message translates to:
  /// **'Nutrition'**
  String get nutritionManagement;

  /// Dental care label
  ///
  /// In en, this message translates to:
  /// **'Dental care'**
  String get dentalCare;

  /// Health checkup label
  ///
  /// In en, this message translates to:
  /// **'Health checkups'**
  String get healthCheckup;

  /// Emergency signs label
  ///
  /// In en, this message translates to:
  /// **'Emergency signs'**
  String get emergencySigns;

  /// Age label
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// Checkup cycle label
  ///
  /// In en, this message translates to:
  /// **'Checkup cycle'**
  String get checkupCycle;

  /// Main items label
  ///
  /// In en, this message translates to:
  /// **'Main items'**
  String get mainItems;

  /// Exercise level label
  ///
  /// In en, this message translates to:
  /// **'Exercise level'**
  String get exerciseLevel;

  /// Breed examples label
  ///
  /// In en, this message translates to:
  /// **'Breed examples'**
  String get breedExamples;

  /// Low label
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get low;

  /// High label
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get high;

  /// Menu label
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// Hello greeting
  ///
  /// In en, this message translates to:
  /// **'Hello! '**
  String get helloGreeting;

  /// Healthy today message
  ///
  /// In en, this message translates to:
  /// **'\nFeeling healthy today?'**
  String get healthyTodayMsg;

  /// No records yet label
  ///
  /// In en, this message translates to:
  /// **'No records yet'**
  String get noRecordsYet;

  /// Last record with time
  ///
  /// In en, this message translates to:
  /// **'Last record · {time}'**
  String lastRecord(String time);

  /// Average per day
  ///
  /// In en, this message translates to:
  /// **'Avg {value}{unit}/day'**
  String avgPerDay(String value, String unit);

  /// Weight trend label
  ///
  /// In en, this message translates to:
  /// **'⚖️ Weight trend'**
  String get weightTrend;

  /// Weight change label
  ///
  /// In en, this message translates to:
  /// **'⚖️ Weight change'**
  String get weightChange;

  /// No weight data label
  ///
  /// In en, this message translates to:
  /// **'No weight data yet'**
  String get noWeightData;

  /// Measured weight label
  ///
  /// In en, this message translates to:
  /// **'Measured weight'**
  String get measuredWeight;

  /// Standard range label
  ///
  /// In en, this message translates to:
  /// **'Standard range'**
  String get standardRange;

  /// No today records label
  ///
  /// In en, this message translates to:
  /// **'No records for today yet'**
  String get noTodayRecords;

  /// Home no record hint
  ///
  /// In en, this message translates to:
  /// **'Track condition, potty, and weight\nto care for your pet’s health.'**
  String get homeNoRecordHint;

  /// No records for date
  ///
  /// In en, this message translates to:
  /// **'No records for {date}'**
  String noRecordsForDate(String date);

  /// Records for date with count
  ///
  /// In en, this message translates to:
  /// **'{date} records ({count})'**
  String recordsForDate(String date, String count);

  /// Sunday abbreviation
  ///
  /// In en, this message translates to:
  /// **'Sun'**
  String get daySun;

  /// Monday abbreviation
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get dayMon;

  /// Tuesday abbreviation
  ///
  /// In en, this message translates to:
  /// **'Tue'**
  String get dayTue;

  /// Wednesday abbreviation
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get dayWed;

  /// Thursday abbreviation
  ///
  /// In en, this message translates to:
  /// **'Thu'**
  String get dayThu;

  /// Friday abbreviation
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get dayFri;

  /// Saturday abbreviation
  ///
  /// In en, this message translates to:
  /// **'Sat'**
  String get daySat;

  /// What to record prompt
  ///
  /// In en, this message translates to:
  /// **'📝 What would you like to record?'**
  String get whatToRecord;

  /// Save error message
  ///
  /// In en, this message translates to:
  /// **'An error occurred while saving: {error}'**
  String saveErrorMsg(String error);

  /// Alert updated toast
  ///
  /// In en, this message translates to:
  /// **'Alert updated'**
  String get alarmUpdated;

  /// Alert added toast
  ///
  /// In en, this message translates to:
  /// **'Alert added'**
  String get alarmAdded;

  /// Edit alert label
  ///
  /// In en, this message translates to:
  /// **'Edit alert'**
  String get editAlarm;

  /// Delete alarm confirmation
  ///
  /// In en, this message translates to:
  /// **'Delete this alert?'**
  String get deleteAlarmConfirm;

  /// Delete alarm with push notification message
  ///
  /// In en, this message translates to:
  /// **'{name} will be deleted,\nand its scheduled push notification will be canceled.'**
  String deleteAlarmWithPushMsg(String name);

  /// Done message
  ///
  /// In en, this message translates to:
  /// **'✅ Done'**
  String get doneMsg;

  /// Later message
  ///
  /// In en, this message translates to:
  /// **'🕐 Later'**
  String get laterMsg;

  /// Save completion button
  ///
  /// In en, this message translates to:
  /// **'✅ Save completion'**
  String get saveCompletion;

  /// Completed question
  ///
  /// In en, this message translates to:
  /// **'Did you complete {type}?'**
  String completedQuestion(String type);

  /// Auto save to today message
  ///
  /// In en, this message translates to:
  /// **'We will automatically save\n{name} to today’s records.'**
  String autoSaveToTodayMsg(String name);

  /// Completion saved toast
  ///
  /// In en, this message translates to:
  /// **'{name} completion saved'**
  String completionSaved(String name);

  /// Tap alarm type hint
  ///
  /// In en, this message translates to:
  /// **'👆 Tap the alert type you want'**
  String get tapAlarmTypeHint;

  /// Count unit
  ///
  /// In en, this message translates to:
  /// **'{count}'**
  String countUnit(int count);

  /// Date completed label
  ///
  /// In en, this message translates to:
  /// **'{date} · Completed'**
  String dateCompleted(String date);

  /// Date passed tap to reschedule label
  ///
  /// In en, this message translates to:
  /// **'⚠️ {date} past · Tap to reschedule'**
  String datePassedTapToReschedule(String date);

  /// Completed label
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completedLabel;

  /// Edit button
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Record delete cannot undo message
  ///
  /// In en, this message translates to:
  /// **'{category} record will be deleted\nand cannot be restored.'**
  String recordDeleteCannotUndo(String category);

  /// Hint: medicine name and dose
  ///
  /// In en, this message translates to:
  /// **'Please enter medicine name and dose'**
  String get hintMedicineNameAndDose;

  /// Hint: medicine name
  ///
  /// In en, this message translates to:
  /// **'Please enter a medicine name'**
  String get hintMedicineName;

  /// Hint: dose
  ///
  /// In en, this message translates to:
  /// **'Please enter a dose'**
  String get hintDose;

  /// Hint: weight as number
  ///
  /// In en, this message translates to:
  /// **'Please enter weight as a number'**
  String get hintWeightNumber;

  /// Hint: weight
  ///
  /// In en, this message translates to:
  /// **'Please enter weight'**
  String get hintWeight;

  /// Hint: weight is number
  ///
  /// In en, this message translates to:
  /// **'Please enter weight as a number'**
  String get hintWeightIsNumber;

  /// Hint: walk time
  ///
  /// In en, this message translates to:
  /// **'Please enter walk time'**
  String get hintWalkTime;

  /// Hint: walk time is number
  ///
  /// In en, this message translates to:
  /// **'Please enter walk time as a number'**
  String get hintWalkTimeIsNumber;

  /// Hint: walk time number
  ///
  /// In en, this message translates to:
  /// **'Please enter walk time as a number'**
  String get hintWalkTimeNumber;

  /// Hint: select brushing area
  ///
  /// In en, this message translates to:
  /// **'Please select at least one brushing area'**
  String get hintSelectBrushingArea;

  /// Hint: select vaccine type
  ///
  /// In en, this message translates to:
  /// **'Please select at least one vaccine type'**
  String get hintSelectVaccineType;

  /// Hint: select grooming type
  ///
  /// In en, this message translates to:
  /// **'Please select at least one grooming type'**
  String get hintSelectGroomingType;

  /// Hint: title
  ///
  /// In en, this message translates to:
  /// **'Please enter a title'**
  String get hintTitle;

  /// Hint: vaccine name
  ///
  /// In en, this message translates to:
  /// **'Please enter a vaccine name'**
  String get hintVaccineName;

  /// Hint: select scheduled date
  ///
  /// In en, this message translates to:
  /// **'Please select a date'**
  String get hintSelectScheduledDate;

  /// Hint: select scheduled time
  ///
  /// In en, this message translates to:
  /// **'Please select a time'**
  String get hintSelectScheduledTime;

  /// Hint: visit purpose
  ///
  /// In en, this message translates to:
  /// **'Please enter the visit purpose'**
  String get hintVisitPurpose;

  /// Hint: select appointment date
  ///
  /// In en, this message translates to:
  /// **'Please select an appointment date'**
  String get hintSelectAppointmentDate;

  /// Hint: select appointment time
  ///
  /// In en, this message translates to:
  /// **'Please select an appointment time'**
  String get hintSelectAppointmentTime;

  /// Hint: medicine name input
  ///
  /// In en, this message translates to:
  /// **'Please enter a medicine name'**
  String get hintMedicineNameInput;

  /// Hint: select medication date
  ///
  /// In en, this message translates to:
  /// **'Please select a medication date'**
  String get hintSelectMedicationDate;

  /// Hint: select medication time
  ///
  /// In en, this message translates to:
  /// **'Please select a medication time'**
  String get hintSelectMedicationTime;

  /// Hint: alarm name
  ///
  /// In en, this message translates to:
  /// **'Please enter an alert name'**
  String get hintAlarmName;

  /// Hint: select meal time
  ///
  /// In en, this message translates to:
  /// **'Please select a meal time'**
  String get hintSelectMealTime;

  /// Hint: select alarm time
  ///
  /// In en, this message translates to:
  /// **'Please select an alert time'**
  String get hintSelectAlarmTime;

  /// No pet - register first
  ///
  /// In en, this message translates to:
  /// **'No pet yet. Please add one from Profile first.'**
  String get noPetRegisterFirst;

  /// Alert rescheduled toast
  ///
  /// In en, this message translates to:
  /// **'Alert rescheduled'**
  String get alarmRescheduled;

  /// Example pet name
  ///
  /// In en, this message translates to:
  /// **'e.g. Kong'**
  String get examplePetName;

  /// Example breed
  ///
  /// In en, this message translates to:
  /// **'e.g. Maltese'**
  String get exampleBreed;

  /// Example breed multi
  ///
  /// In en, this message translates to:
  /// **'e.g. Maltese, Persian'**
  String get exampleBreedMulti;

  /// Example 30
  ///
  /// In en, this message translates to:
  /// **'e.g. 30'**
  String get example30;

  /// Example 80
  ///
  /// In en, this message translates to:
  /// **'e.g. 80'**
  String get example80;

  /// Example 200
  ///
  /// In en, this message translates to:
  /// **'e.g. 200'**
  String get example200;

  /// Example 2.5
  ///
  /// In en, this message translates to:
  /// **'e.g. 2.5'**
  String get example25;

  /// Example 35000
  ///
  /// In en, this message translates to:
  /// **'e.g. 35000'**
  String get example35000;

  /// Example 50000
  ///
  /// In en, this message translates to:
  /// **'e.g. 50000'**
  String get example50000;

  /// Enter name hint
  ///
  /// In en, this message translates to:
  /// **'Please enter a name'**
  String get enterNameHint;

  /// Add new pet title
  ///
  /// In en, this message translates to:
  /// **'Add new pet'**
  String get addNewPetTitle;

  /// Basic info label
  ///
  /// In en, this message translates to:
  /// **'Basic info'**
  String get basicInfo;

  /// Identification info label
  ///
  /// In en, this message translates to:
  /// **'Identification info'**
  String get idInfo;

  /// Identification info optional label
  ///
  /// In en, this message translates to:
  /// **'Identification info (optional)'**
  String get idInfoOptional;

  /// Name label
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// Pet kind/type label
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get petKind;

  /// Breed label
  ///
  /// In en, this message translates to:
  /// **'Breed'**
  String get breed;

  /// Weight label
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// Microchip label
  ///
  /// In en, this message translates to:
  /// **'Microchip'**
  String get microchip;

  /// Registration number label
  ///
  /// In en, this message translates to:
  /// **'Registration number'**
  String get registrationNumber;

  /// Birth date label
  ///
  /// In en, this message translates to:
  /// **'Birth date'**
  String get birthDate;

  /// Gender label
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// Male label
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// Female label
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// Male with symbol
  ///
  /// In en, this message translates to:
  /// **'Male ♂'**
  String get maleSym;

  /// Female with symbol
  ///
  /// In en, this message translates to:
  /// **'Female ♀'**
  String get femaleSym;

  /// Neutered label
  ///
  /// In en, this message translates to:
  /// **'Neutered'**
  String get neutered;

  /// Done label
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// Not done label
  ///
  /// In en, this message translates to:
  /// **'Not done'**
  String get notDone;

  /// Not entered label
  ///
  /// In en, this message translates to:
  /// **'Not entered'**
  String get notEntered;

  /// Not registered label
  ///
  /// In en, this message translates to:
  /// **'Not registered'**
  String get notRegistered;

  /// Dog with emoji label
  ///
  /// In en, this message translates to:
  /// **'Dog 🐶'**
  String get dogEmoji;

  /// Cat with emoji label
  ///
  /// In en, this message translates to:
  /// **'Cat 🐱'**
  String get catEmoji;

  /// Other with emoji label
  ///
  /// In en, this message translates to:
  /// **'Other 🐾'**
  String get otherEmoji;

  /// No pets registered label
  ///
  /// In en, this message translates to:
  /// **'No pets registered'**
  String get noPetsRegistered;

  /// Register pet prompt
  ///
  /// In en, this message translates to:
  /// **'Add a pet and\nmanage health together.'**
  String get registerPetPrompt;

  /// Register pet button
  ///
  /// In en, this message translates to:
  /// **'Add pet'**
  String get registerPetBtn;

  /// Edit pet label
  ///
  /// In en, this message translates to:
  /// **'Edit pet'**
  String get editPet;

  /// Neutering status label
  ///
  /// In en, this message translates to:
  /// **'Neutering status'**
  String get neuteringStatus;

  /// Neutered done label
  ///
  /// In en, this message translates to:
  /// **'Neutered'**
  String get neuteredDone;

  /// Not neutered label
  ///
  /// In en, this message translates to:
  /// **'Not neutered'**
  String get notNeutered;

  /// Select date hint
  ///
  /// In en, this message translates to:
  /// **'Select a date'**
  String get selectDateHint;

  /// Save changes button
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get saveChanges;

  /// Register button
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerBtn;

  /// Delete pet with name
  ///
  /// In en, this message translates to:
  /// **'Delete {name}'**
  String deletePetName(String name);

  /// Delete pet confirmation
  ///
  /// In en, this message translates to:
  /// **'Delete {name}?'**
  String deletePetConfirm(String name);

  /// Delete pet warning
  ///
  /// In en, this message translates to:
  /// **'All records and alerts for {name} will be deleted and cannot be restored.'**
  String deletePetWarning(String name);

  /// Pet deleted toast
  ///
  /// In en, this message translates to:
  /// **'{name} deleted'**
  String petDeleted(String name);

  /// Pet added toast
  ///
  /// In en, this message translates to:
  /// **'{name} added'**
  String petAdded(String name);

  /// Store unavailable message
  ///
  /// In en, this message translates to:
  /// **'Cannot connect to the store right now. Please try again later.'**
  String get storeUnavailableMsg;

  /// Checking payment message
  ///
  /// In en, this message translates to:
  /// **'Checking payment info. Please try again shortly.'**
  String get checkingPaymentMsg;

  /// Payment complete message
  ///
  /// In en, this message translates to:
  /// **'Payment complete. Please enter your new pet’s info.'**
  String get paymentCompleteMsg;

  /// Add new family member dialog title
  ///
  /// In en, this message translates to:
  /// **'Add a new family member?'**
  String get addNewFamilyMember;

  /// First pet free description
  ///
  /// In en, this message translates to:
  /// **'The first pet is free. From the second pet, each additional pet requires payment.'**
  String get firstPetFreeDesc;

  /// Pets registered - store unavailable
  ///
  /// In en, this message translates to:
  /// **'{count} pets registered\nPlease try again when the store is available.'**
  String petsRegisteredStoreUnavailable(String count);

  /// Pets registered - pay to add
  ///
  /// In en, this message translates to:
  /// **'{count} pets registered\nPay {price} to add a new family member.'**
  String petsRegisteredPayToAdd(String count, String price);

  /// Maybe later button
  ///
  /// In en, this message translates to:
  /// **'Maybe later'**
  String get maybeLater;

  /// Unavailable label
  ///
  /// In en, this message translates to:
  /// **'Unavailable'**
  String get unavailable;

  /// Pay and add button
  ///
  /// In en, this message translates to:
  /// **'Pay {price} and add'**
  String payAndAdd(String price);

  /// Add next appointment button
  ///
  /// In en, this message translates to:
  /// **'+ Add next appointment'**
  String get addNextAppointment;

  /// Potty record saved toast
  ///
  /// In en, this message translates to:
  /// **'Potty record saved'**
  String get pottyRecordSaved;

  /// Condition record saved toast
  ///
  /// In en, this message translates to:
  /// **'Condition record saved'**
  String get conditionRecordSaved;

  /// Medication record saved toast
  ///
  /// In en, this message translates to:
  /// **'Medication record saved'**
  String get medicationRecordSaved;

  /// Weight record saved toast
  ///
  /// In en, this message translates to:
  /// **'Weight record saved'**
  String get weightRecordSaved;

  /// Meal record saved toast
  ///
  /// In en, this message translates to:
  /// **'Meal record saved'**
  String get mealRecordSaved;

  /// Water record saved toast
  ///
  /// In en, this message translates to:
  /// **'Water record saved'**
  String get waterRecordSaved;

  /// Vet visit record saved toast
  ///
  /// In en, this message translates to:
  /// **'Vet visit record saved'**
  String get vetVisitRecordSaved;

  /// Vaccination record saved toast
  ///
  /// In en, this message translates to:
  /// **'Vaccination record saved'**
  String get vaccinationRecordSaved;

  /// Grooming record saved toast
  ///
  /// In en, this message translates to:
  /// **'Grooming record saved'**
  String get groomingRecordSaved;

  /// Brushing record saved toast
  ///
  /// In en, this message translates to:
  /// **'Brushing record saved'**
  String get brushingRecordSaved;

  /// Walk record saved toast
  ///
  /// In en, this message translates to:
  /// **'Walk record saved'**
  String get walkRecordSaved;

  /// Memo saved toast
  ///
  /// In en, this message translates to:
  /// **'Memo saved'**
  String get memoSaved;

  /// More questions label
  ///
  /// In en, this message translates to:
  /// **'Have more questions?'**
  String get moreQuestions;

  /// Contact via send feedback short
  ///
  /// In en, this message translates to:
  /// **'Contact us from Settings > Send feedback.\nWe will get back to you soon.'**
  String get contactViaSendFeedback;

  /// Contact via send feedback long
  ///
  /// In en, this message translates to:
  /// **'Contact us through Send feedback in Settings.\nWe will reply quickly.'**
  String get contactViaSendFeedbackLong;

  /// Privacy policy effective date
  ///
  /// In en, this message translates to:
  /// **'This privacy policy is effective from January 1, 2026.\nLast updated: May 8, 2026'**
  String get privacyPolicyEffectiveDate;

  /// Privacy collected info
  ///
  /// In en, this message translates to:
  /// **'Collected information is used only for the purposes below.'**
  String get privacyCollectedInfo;

  /// Privacy data features
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan provides data export (backup) and import (restore) features.'**
  String get privacyDataFeatures;

  /// Privacy policy may update
  ///
  /// In en, this message translates to:
  /// **'This privacy policy may be updated due to legal or service changes.'**
  String get privacyPolicyMayUpdate;

  /// Privacy policy contact
  ///
  /// In en, this message translates to:
  /// **'For questions about this privacy policy, please contact us below.'**
  String get privacyPolicyContact;

  /// Category: meal
  ///
  /// In en, this message translates to:
  /// **'Meal'**
  String get catMeal;

  /// Category: water
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get catWater;

  /// Category: grooming
  ///
  /// In en, this message translates to:
  /// **'Grooming'**
  String get catGrooming;

  /// Category: brushing
  ///
  /// In en, this message translates to:
  /// **'Brushing'**
  String get catBrushing;

  /// Category: walk
  ///
  /// In en, this message translates to:
  /// **'Walk'**
  String get catWalk;

  /// Category: hospital/vet
  ///
  /// In en, this message translates to:
  /// **'Vet visit'**
  String get catHospital;

  /// Category: condition
  ///
  /// In en, this message translates to:
  /// **'Condition'**
  String get catCondition;

  /// Category: potty/poop
  ///
  /// In en, this message translates to:
  /// **'Potty'**
  String get catPotty;

  /// Meal form title
  ///
  /// In en, this message translates to:
  /// **'🍽️ Meal record'**
  String get mealFormTitle;

  /// Walk form title
  ///
  /// In en, this message translates to:
  /// **'🦮 Walk record'**
  String get walkFormTitle;

  /// Weight form title
  ///
  /// In en, this message translates to:
  /// **'⚖️ Weight record'**
  String get weightFormTitle;

  /// Water form title
  ///
  /// In en, this message translates to:
  /// **'💧 Water record'**
  String get waterFormTitle;

  /// Medication form title
  ///
  /// In en, this message translates to:
  /// **'💊 Medication record'**
  String get medicationFormTitle;

  /// Grooming form title
  ///
  /// In en, this message translates to:
  /// **'✂️ Grooming record'**
  String get groomingFormTitle;

  /// Brushing form title
  ///
  /// In en, this message translates to:
  /// **'🪥 Brushing record'**
  String get brushingFormTitle;

  /// Condition form title
  ///
  /// In en, this message translates to:
  /// **'🌡️ Condition record'**
  String get conditionFormTitle;

  /// Potty form title
  ///
  /// In en, this message translates to:
  /// **'💩 Potty record'**
  String get poopFormTitle;

  /// Vaccination form title
  ///
  /// In en, this message translates to:
  /// **'💉 Vaccination record'**
  String get vaccinationFormTitle;

  /// Hospital form title
  ///
  /// In en, this message translates to:
  /// **'🏥 Vet visit record'**
  String get hospitalFormTitle;

  /// Memo form title
  ///
  /// In en, this message translates to:
  /// **'📝 Memo'**
  String get memoFormTitle;

  /// Weight measurement method label
  ///
  /// In en, this message translates to:
  /// **'Measurement method'**
  String get measureMethod;

  /// Food amount fed label
  ///
  /// In en, this message translates to:
  /// **'Amount fed'**
  String get feedAmount;

  /// Direct mL input label
  ///
  /// In en, this message translates to:
  /// **'Direct mL input'**
  String get mlInputLabel;

  /// No description provided for @alarmRescheduleNote.
  ///
  /// In en, this message translates to:
  /// **'This alert\'s scheduled date has passed.\nYou can set a new date or delete it.'**
  String get alarmRescheduleNote;

  /// No description provided for @nailTrim.
  ///
  /// In en, this message translates to:
  /// **'Nail trim'**
  String get nailTrim;

  /// No description provided for @shopNameExample.
  ///
  /// In en, this message translates to:
  /// **'e.g. Fluffy Pet Salon'**
  String get shopNameExample;

  /// No description provided for @poopRecordSaved.
  ///
  /// In en, this message translates to:
  /// **'💩 Potty recorded'**
  String get poopRecordSaved;

  /// No description provided for @memoRecordSaved.
  ///
  /// In en, this message translates to:
  /// **'📝 Memo recorded'**
  String get memoRecordSaved;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @whole.
  ///
  /// In en, this message translates to:
  /// **'Whole body'**
  String get whole;

  /// No description provided for @paw.
  ///
  /// In en, this message translates to:
  /// **'Paw'**
  String get paw;

  /// No description provided for @importance.
  ///
  /// In en, this message translates to:
  /// **'Importance'**
  String get importance;

  /// No description provided for @timeTaken.
  ///
  /// In en, this message translates to:
  /// **'Time taken'**
  String get timeTaken;

  /// No description provided for @example10.
  ///
  /// In en, this message translates to:
  /// **'e.g. 10'**
  String get example10;

  /// No description provided for @hospitalNameExample.
  ///
  /// In en, this message translates to:
  /// **'e.g. Happy Animal Hospital'**
  String get hospitalNameExample;

  /// No description provided for @diagnosisExample.
  ///
  /// In en, this message translates to:
  /// **'e.g. Enteritis, Dermatitis'**
  String get diagnosisExample;

  /// No description provided for @memoTitlePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Enter memo title'**
  String get memoTitlePlaceholder;

  /// No description provided for @hintMemoTitle.
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter a title'**
  String get hintMemoTitle;

  /// No description provided for @poopType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get poopType;

  /// No description provided for @poopStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get poopStatus;

  /// No description provided for @feces.
  ///
  /// In en, this message translates to:
  /// **'Feces'**
  String get feces;

  /// No description provided for @bloody.
  ///
  /// In en, this message translates to:
  /// **'Bloody'**
  String get bloody;

  /// No description provided for @vaccineDhppl.
  ///
  /// In en, this message translates to:
  /// **'DHPPL combo'**
  String get vaccineDhppl;

  /// No description provided for @vaccineCorona.
  ///
  /// In en, this message translates to:
  /// **'Corona enteritis'**
  String get vaccineCorona;

  /// No description provided for @vaccineKennelCough.
  ///
  /// In en, this message translates to:
  /// **'Kennel cough'**
  String get vaccineKennelCough;

  /// No description provided for @vaccineRabies.
  ///
  /// In en, this message translates to:
  /// **'Rabies'**
  String get vaccineRabies;

  /// No description provided for @vaccineInfluenza.
  ///
  /// In en, this message translates to:
  /// **'Influenza'**
  String get vaccineInfluenza;

  /// No description provided for @vaccineFvrcp.
  ///
  /// In en, this message translates to:
  /// **'FVRCP combo'**
  String get vaccineFvrcp;

  /// No description provided for @vaccineFelv.
  ///
  /// In en, this message translates to:
  /// **'Leukemia (FeLV)'**
  String get vaccineFelv;

  /// No description provided for @vaccineChlamydia.
  ///
  /// In en, this message translates to:
  /// **'Chlamydia'**
  String get vaccineChlamydia;

  /// No description provided for @mute.
  ///
  /// In en, this message translates to:
  /// **'Mute'**
  String get mute;

  /// No description provided for @photoVideo.
  ///
  /// In en, this message translates to:
  /// **'Photo · Video'**
  String get photoVideo;

  /// Photo video count label
  ///
  /// In en, this message translates to:
  /// **'Photo · Video · {count}'**
  String photoVideoCount(String count);

  /// No description provided for @selectMediaSource.
  ///
  /// In en, this message translates to:
  /// **'Select media source'**
  String get selectMediaSource;

  /// No description provided for @cameraCapture.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get cameraCapture;

  /// No description provided for @cameraCaptureSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Take photo or video'**
  String get cameraCaptureSubtitle;

  /// No description provided for @selectFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get selectFromGallery;

  /// No description provided for @selectFromGallerySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Select photos · videos'**
  String get selectFromGallerySubtitle;

  /// No description provided for @takePhotoSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Take a photo with camera'**
  String get takePhotoSubtitle;

  /// No description provided for @recordVideoSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Record a video with camera'**
  String get recordVideoSubtitle;

  /// No description provided for @permissionRequired.
  ///
  /// In en, this message translates to:
  /// **'Please allow permission in Settings'**
  String get permissionRequired;

  /// No description provided for @confirmDeletePhoto.
  ///
  /// In en, this message translates to:
  /// **'Delete this photo?'**
  String get confirmDeletePhoto;

  /// No description provided for @confirmDeleteVideo.
  ///
  /// In en, this message translates to:
  /// **'Delete this video?'**
  String get confirmDeleteVideo;

  /// No description provided for @hintMedicineAndDose.
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter medicine name and dose'**
  String get hintMedicineAndDose;

  /// Delete record body
  ///
  /// In en, this message translates to:
  /// **'{category} record will be deleted\nand cannot be undone.'**
  String deleteRecordBody(String category);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'de',
        'en',
        'es',
        'fr',
        'ja',
        'ko',
        'pt',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'pt':
      return AppLocalizationsPt();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
