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

  /// Settings: Purchase product info failed to load
  ///
  /// In en, this message translates to:
  /// **'Couldn’t load product info. Please try again shortly.'**
  String get settingsPurchaseProductLoadFailed;

  /// Settings: Purchase flow failed to start
  ///
  /// In en, this message translates to:
  /// **'Couldn’t start payment. Please try again shortly.'**
  String get settingsPurchaseStartFailed;

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

  /// Android notification channel name for alarm notifications
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan alerts'**
  String get notificationChannelName;

  /// Android notification channel description for alarm notifications
  ///
  /// In en, this message translates to:
  /// **'Pet health care reminders'**
  String get notificationChannelDescription;

  /// Default scheduled notification title when the alarm has no custom label
  ///
  /// In en, this message translates to:
  /// **'{type} alert'**
  String alarmNotificationTitle(String type);

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
  /// **'Health Stats'**
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

  /// Delete confirmation body message
  ///
  /// In en, this message translates to:
  /// **'Once deleted, it can\'t be recovered!'**
  String get deleteConfirmBody;

  /// Delete confirmation button - friendly
  ///
  /// In en, this message translates to:
  /// **'Delete it'**
  String get deleteConfirmOk;

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

  /// Abnormal symptom type label
  ///
  /// In en, this message translates to:
  /// **'Abnormal Sign Type'**
  String get abnormalSymptomType;

  /// Custom symptom input label
  ///
  /// In en, this message translates to:
  /// **'Custom Symptom'**
  String get customSymptom;

  /// Custom symptom input placeholder
  ///
  /// In en, this message translates to:
  /// **'Enter symptom description'**
  String get customSymptomPlaceholder;

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

  /// Bleeding label
  ///
  /// In en, this message translates to:
  /// **'Bleeding'**
  String get bleeding;

  /// No description provided for @dyspnea.
  ///
  /// In en, this message translates to:
  /// **'Dyspnea'**
  String get dyspnea;

  /// No description provided for @seizure.
  ///
  /// In en, this message translates to:
  /// **'Seizure/Convulsion'**
  String get seizure;

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

  /// Hint: select symptom type
  ///
  /// In en, this message translates to:
  /// **'Please select at least one symptom type'**
  String get hintSelectSymptomType;

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

  /// Abnormal symptom record saved toast
  ///
  /// In en, this message translates to:
  /// **'🚨 Abnormal sign recorded'**
  String get abnormalSymptomRecordSaved;

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

  /// Category: abnormal symptom
  ///
  /// In en, this message translates to:
  /// **'Abnormal Sign'**
  String get catAbnormalSymptom;

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

  /// Abnormal symptom form title
  ///
  /// In en, this message translates to:
  /// **'🚨 Abnormal Sign'**
  String get abnormalSymptomFormTitle;

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

  /// Short day count label, such as 3d or 7d.
  ///
  /// In en, this message translates to:
  /// **'{days}d'**
  String dayCountShort(int days);

  /// Help screen: Intro content explaining what Pet Sumtan is
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan is an app where you can record and manage your pet’s health and daily life in one place.\nYou can easily keep various health records, such as meals, water intake, potty, weight, medication, and vet visits, and use alerts so you do not miss important schedules.'**
  String get helpIntroContent;

  /// Help screen: Home today record summary description
  ///
  /// In en, this message translates to:
  /// **'View all records added today at a glance. Tap a record to see details or edit it.'**
  String get helpHomeTodayRecordSummaryDesc;

  /// Help screen: Home weekly stats description
  ///
  /// In en, this message translates to:
  /// **'Check this week’s potty count, meal amount, and water intake in charts. It helps you understand your pet’s daily patterns.'**
  String get helpHomeWeeklyStatsDesc;

  /// Help screen: Home weight change chart description
  ///
  /// In en, this message translates to:
  /// **'Shows recent weight records in a chart so you can easily track weight changes.'**
  String get helpHomeWeightChangeChartDesc;

  /// Help screen: Find nearby hospitals description
  ///
  /// In en, this message translates to:
  /// **'Tap the button to search nearby animal hospitals in Naver Maps.'**
  String get helpHomeFindNearbyHospitalsDesc;

  /// Help screen: Add new record description
  ///
  /// In en, this message translates to:
  /// **'Tap the + button at the bottom of the screen to choose a record category and add a new record.'**
  String get helpHomeAddNewRecordDesc;

  /// Help screen: Record categories intro
  ///
  /// In en, this message translates to:
  /// **'You can record your pet’s daily life in 12 categories.'**
  String get helpRecordCategoriesIntro;

  /// Help screen category name: Potty
  ///
  /// In en, this message translates to:
  /// **'Potty'**
  String get helpCategoryPottyName;

  /// Help screen category description: Potty
  ///
  /// In en, this message translates to:
  /// **'Record potty activity and condition. You can also attach photos.'**
  String get helpCategoryPottyDesc;

  /// Help screen category name: Condition
  ///
  /// In en, this message translates to:
  /// **'Condition'**
  String get helpCategoryConditionName;

  /// Help screen category description: Condition
  ///
  /// In en, this message translates to:
  /// **'Record your pet’s overall condition.'**
  String get helpCategoryConditionDesc;

  /// Help screen category name: Medication
  ///
  /// In en, this message translates to:
  /// **'Medication'**
  String get helpCategoryMedicationName;

  /// Help screen category description: Medication
  ///
  /// In en, this message translates to:
  /// **'Record the medicine name, dose, and medication time.'**
  String get helpCategoryMedicationDesc;

  /// Help screen category name: Weight
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get helpCategoryWeightName;

  /// Help screen category description: Weight
  ///
  /// In en, this message translates to:
  /// **'Record weight in kg. You can check weight trends on the Home screen.'**
  String get helpCategoryWeightDesc;

  /// Help screen category name: Meal
  ///
  /// In en, this message translates to:
  /// **'Meal'**
  String get helpCategoryMealName;

  /// Help screen category description: Meal
  ///
  /// In en, this message translates to:
  /// **'Record meal amount and food type. You can also attach photos and videos.'**
  String get helpCategoryMealDesc;

  /// Help screen category name: Water
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get helpCategoryWaterName;

  /// Help screen category description: Water
  ///
  /// In en, this message translates to:
  /// **'Record water intake in ml. You can also attach photos and videos.'**
  String get helpCategoryWaterDesc;

  /// Help screen category name: Hospital
  ///
  /// In en, this message translates to:
  /// **'Hospital'**
  String get helpCategoryHospitalName;

  /// Help screen category description: Hospital
  ///
  /// In en, this message translates to:
  /// **'Record the hospital name and visit details. You can also attach photos and videos.'**
  String get helpCategoryHospitalDesc;

  /// Help screen category name: Vaccination
  ///
  /// In en, this message translates to:
  /// **'Vaccination'**
  String get helpCategoryVaccinationName;

  /// Help screen category description: Vaccination
  ///
  /// In en, this message translates to:
  /// **'Record the vaccine type and vaccination date.'**
  String get helpCategoryVaccinationDesc;

  /// Help screen category name: Grooming
  ///
  /// In en, this message translates to:
  /// **'Grooming'**
  String get helpCategoryGroomingName;

  /// Help screen category description: Grooming
  ///
  /// In en, this message translates to:
  /// **'Record grooming details and attach photos or videos.'**
  String get helpCategoryGroomingDesc;

  /// Help screen category name: Dental brushing
  ///
  /// In en, this message translates to:
  /// **'Dental brushing'**
  String get helpCategoryDentalName;

  /// Help screen category description: Dental brushing
  ///
  /// In en, this message translates to:
  /// **'Record whether dental brushing was done and add a memo.'**
  String get helpCategoryDentalDesc;

  /// Help screen category name: Walk
  ///
  /// In en, this message translates to:
  /// **'Walk'**
  String get helpCategoryWalkName;

  /// Help screen category description: Walk
  ///
  /// In en, this message translates to:
  /// **'Record walk distance and duration.'**
  String get helpCategoryWalkDesc;

  /// Help screen category name: Memo
  ///
  /// In en, this message translates to:
  /// **'Memo'**
  String get helpCategoryMemoName;

  /// Help screen category description: Memo
  ///
  /// In en, this message translates to:
  /// **'Leave any memo freely.'**
  String get helpCategoryMemoDesc;

  /// Help screen: Journal record list description
  ///
  /// In en, this message translates to:
  /// **'View all records by date. Category badges help you quickly identify each record type.'**
  String get helpJournalViewRecordListDesc;

  /// Help screen: Journal edit and delete description
  ///
  /// In en, this message translates to:
  /// **'Tap a record to open the edit sheet. You can update the content or delete it.'**
  String get helpJournalEditDeleteRecordDesc;

  /// Help screen: Journal attach media description
  ///
  /// In en, this message translates to:
  /// **'In some categories, such as meal, water, hospital, grooming, and potty, you can attach photos or videos.'**
  String get helpJournalAttachMediaDesc;

  /// Help screen: Add alert description
  ///
  /// In en, this message translates to:
  /// **'You can add various types of alerts, such as vaccination, medication, vet visits, and grooming. First choose an alert type, then set the date and time.'**
  String get helpAlarmAddDesc;

  /// Help screen: Repeat alert description
  ///
  /// In en, this message translates to:
  /// **'Set repeat rules such as daily, weekly, or monthly. This is useful for regular medication or heartworm prevention.'**
  String get helpAlarmRepeatDesc;

  /// Help screen: Advance alert description
  ///
  /// In en, this message translates to:
  /// **'For important schedules like vaccination, you can receive advance alerts 7 days, 3 days, and 1 day before.'**
  String get helpAlarmAdvanceDesc;

  /// Help screen: Complete alert description
  ///
  /// In en, this message translates to:
  /// **'Tap an alert to mark it as completed. Completed alerts can be checked in the past alerts list.'**
  String get helpAlarmCompleteDesc;

  /// Help screen: Delete alert description
  ///
  /// In en, this message translates to:
  /// **'Swipe an alert to the left to delete it.'**
  String get helpAlarmDeleteDesc;

  /// Help screen: Pet registration description
  ///
  /// In en, this message translates to:
  /// **'Add your pet by entering name, type, breed, gender, birth date, and neutering status.'**
  String get helpPetRegisterDesc;

  /// Help screen: Edit pet profile description
  ///
  /// In en, this message translates to:
  /// **'On the Profile screen, you can edit name, breed, weight, microchip number, registration number, and profile photo.'**
  String get helpPetEditProfileDesc;

  /// Help screen: Manage multiple pets description
  ///
  /// In en, this message translates to:
  /// **'You can add multiple pets. Tap the pet chip at the top to switch the pet you want to manage.'**
  String get helpPetManageMultipleDesc;

  /// Help screen: Dog health guide description
  ///
  /// In en, this message translates to:
  /// **'Provides veterinary-based health information, including essential and optional vaccination schedules, heartworm and external parasite prevention, dental care, and nutrition.'**
  String get helpDogHealthGuideDesc;

  /// Help screen: Cat health guide description
  ///
  /// In en, this message translates to:
  /// **'Check cat-specific vaccination schedules, parasite prevention, dental care, and nutrition information.'**
  String get helpCatHealthGuideDesc;

  /// Help screen: Settings notification description
  ///
  /// In en, this message translates to:
  /// **'Turn all app notifications on or off.'**
  String get helpSettingsNotificationDesc;

  /// Help screen: Settings export data description
  ///
  /// In en, this message translates to:
  /// **'Export all recorded data as a ZIP file. Use it as a backup when changing devices.'**
  String get helpSettingsExportDesc;

  /// Help screen: Settings import data description
  ///
  /// In en, this message translates to:
  /// **'Import a previously exported ZIP backup file to restore your data.'**
  String get helpSettingsImportDesc;

  /// Help screen: Settings feedback description
  ///
  /// In en, this message translates to:
  /// **'Send us any inconvenience or improvement suggestions by email. It helps us make the app better.'**
  String get helpSettingsFeedbackDesc;

  /// Help screen FAQ question: Delete pet records
  ///
  /// In en, this message translates to:
  /// **'If I delete a pet, will all records be deleted too?'**
  String get helpFaqDeletePetQ;

  /// Help screen FAQ answer: Delete pet records
  ///
  /// In en, this message translates to:
  /// **'Yes. If you delete a pet, all records and alerts for that pet will also be deleted. Please back up your data with Export data before deleting.'**
  String get helpFaqDeletePetA;

  /// Help screen FAQ question: Multiple media
  ///
  /// In en, this message translates to:
  /// **'Can I attach multiple photos to a record?'**
  String get helpFaqMultipleMediaQ;

  /// Help screen FAQ answer: Multiple media
  ///
  /// In en, this message translates to:
  /// **'Yes. You can attach multiple photos and videos. You can choose them from the gallery or capture them directly with the camera.'**
  String get helpFaqMultipleMediaA;

  /// Help screen FAQ question: Notifications not received
  ///
  /// In en, this message translates to:
  /// **'I am not receiving notifications.'**
  String get helpFaqNoNotificationQ;

  /// Help screen FAQ answer: Notifications not received
  ///
  /// In en, this message translates to:
  /// **'Check whether notifications for Pet Sumtan are allowed in your device notification settings. Also check whether app notifications are turned on in Settings > Notification settings.'**
  String get helpFaqNoNotificationA;

  /// Help screen FAQ question: Move data to new device
  ///
  /// In en, this message translates to:
  /// **'Can I move my data to a new device?'**
  String get helpFaqMoveDataQ;

  /// Help screen FAQ answer: Move data to new device
  ///
  /// In en, this message translates to:
  /// **'Yes. On your old device, save a backup file from Settings > Export data. Then restore it on your new device from Settings > Import data.'**
  String get helpFaqMoveDataA;

  /// Help screen FAQ question: Multiple pets
  ///
  /// In en, this message translates to:
  /// **'Can I add multiple pets?'**
  String get helpFaqMultiplePetsQ;

  /// Help screen FAQ answer: Multiple pets
  ///
  /// In en, this message translates to:
  /// **'By default, you can add 1 pet for free. Adding more pets is available as a premium feature.'**
  String get helpFaqMultiplePetsA;

  /// Introductory paragraph for the privacy policy screen
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan is an app that can be used without signing up, and all data is stored only on the user’s device. We do not transmit personal information to external servers and securely protect your valuable pet information.'**
  String get privacyIntroBody;

  /// Title for privacy policy section 1
  ///
  /// In en, this message translates to:
  /// **'Personal Information Collected'**
  String get privacySection1Title;

  /// Body text for privacy policy section 1
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan can be used without signing up and does not collect separate personally identifiable information. However, to provide app features, the following information may be stored on the device.'**
  String get privacySection1Body;

  /// Subtitle for locally stored information
  ///
  /// In en, this message translates to:
  /// **'Information stored locally on the device'**
  String get privacyLocalStorageInfo;

  /// Bullet item describing pet information stored locally
  ///
  /// In en, this message translates to:
  /// **'Pet information: name, species, breed, date of birth, gender, weight, neutering status, microchip number, and animal registration number'**
  String get privacyPetInfo;

  /// Bullet item describing health records stored locally
  ///
  /// In en, this message translates to:
  /// **'Health records: potty, meal, water, weight, medication, vaccination, hospital, grooming, brushing, walk, condition, memo, and other records entered directly by the user'**
  String get privacyHealthRecords;

  /// Bullet item describing attached media stored locally
  ///
  /// In en, this message translates to:
  /// **'Attached media: photos and videos taken or selected directly by the user'**
  String get privacyAttachedMedia;

  /// Bullet item describing notification settings stored locally
  ///
  /// In en, this message translates to:
  /// **'Alert settings: alert type, scheduled date and time, and repeat rules'**
  String get privacyNotificationSettings;

  /// Subtitle for in-app purchase related privacy information
  ///
  /// In en, this message translates to:
  /// **'In-App Purchases'**
  String get privacyInAppPurchaseTitle;

  /// Bullet item explaining payment processing
  ///
  /// In en, this message translates to:
  /// **'Payments are processed through the Apple App Store or Google Play Store, and the app does not directly collect or store payment information.'**
  String get privacyPaymentProcessing;

  /// Bullet item explaining receipt verification
  ///
  /// In en, this message translates to:
  /// **'Only the minimum information required to verify purchase receipts is processed according to each platform’s policies.'**
  String get privacyReceiptVerification;

  /// Title for privacy policy section 2
  ///
  /// In en, this message translates to:
  /// **'Purpose of Collecting and Using Personal Information'**
  String get privacySection2Title;

  /// Bullet item describing purpose of saving and viewing health records
  ///
  /// In en, this message translates to:
  /// **'Saving and viewing pet health records'**
  String get privacyPurposeRecords;

  /// Bullet item describing purpose of providing statistics
  ///
  /// In en, this message translates to:
  /// **'Providing home screen statistics, such as weekly potty, meal, and water status, as well as weight change charts'**
  String get privacyPurposeStats;

  /// Bullet item describing purpose of sending reminders
  ///
  /// In en, this message translates to:
  /// **'Sending health-related alerts, such as vaccination, medication, and hospital visit reminders'**
  String get privacyPurposeReminders;

  /// Bullet item describing purpose of backup and restore
  ///
  /// In en, this message translates to:
  /// **'Providing data backup and restore features'**
  String get privacyPurposeBackupRestore;

  /// Bullet item describing purpose of verifying paid feature eligibility
  ///
  /// In en, this message translates to:
  /// **'Verifying eligibility to use paid features'**
  String get privacyPurposePaidEligibility;

  /// Title for privacy policy section 3
  ///
  /// In en, this message translates to:
  /// **'Retention and Deletion of Personal Information'**
  String get privacySection3Title;

  /// Body text explaining data retention
  ///
  /// In en, this message translates to:
  /// **'All Pet Sumtan data is stored only in the local database (SQLite) on the user’s device and is not transmitted to external servers.'**
  String get privacyRetentionBody;

  /// Subtitle for data deletion methods
  ///
  /// In en, this message translates to:
  /// **'How to delete data'**
  String get privacyDataDeletionMethod;

  /// Bullet item explaining in-app data deletion
  ///
  /// In en, this message translates to:
  /// **'You can directly delete pet information and records in Settings > Data Management within the app.'**
  String get privacyDeleteInApp;

  /// Bullet item explaining data deletion when uninstalling the app
  ///
  /// In en, this message translates to:
  /// **'When you delete the app, all data stored on the device will also be deleted.'**
  String get privacyDeleteUninstall;

  /// Bullet item warning about data recovery after deleting the app
  ///
  /// In en, this message translates to:
  /// **'Please note that if you do not back up (export) your data before deleting the app, the data cannot be recovered.'**
  String get privacyDeleteBackupWarning;

  /// Title for privacy policy section 4
  ///
  /// In en, this message translates to:
  /// **'Sharing Personal Information with Third Parties'**
  String get privacySection4Title;

  /// Body text explaining third-party sharing
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan does not provide users’ personal information to third parties. However, the following cases are exceptions.'**
  String get privacyThirdPartyBody;

  /// Bullet item describing user-initiated data sharing through export
  ///
  /// In en, this message translates to:
  /// **'When the user directly uses the data export feature, such as sharing a backup file'**
  String get privacyThirdPartyUserExport;

  /// Bullet item describing legal exceptions for third-party disclosure
  ///
  /// In en, this message translates to:
  /// **'When required by law or upon a lawful request from investigative authorities'**
  String get privacyThirdPartyLegalRequest;

  /// Title for privacy policy section 5
  ///
  /// In en, this message translates to:
  /// **'Access Permissions'**
  String get privacySection5Title;

  /// Body text explaining app permissions
  ///
  /// In en, this message translates to:
  /// **'To provide app features, the following permissions may be requested. Even if you do not grant a permission, you can still use the remaining features normally, except for the feature that requires that permission.'**
  String get privacyPermissionsBody;

  /// Name of camera permission
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get privacyPermissionCameraName;

  /// Description of camera permission usage
  ///
  /// In en, this message translates to:
  /// **'Used to directly take photos or videos and attach them to health records.'**
  String get privacyPermissionCameraDesc;

  /// Name of photos and media access permission
  ///
  /// In en, this message translates to:
  /// **'Photos and media access'**
  String get privacyPermissionMediaName;

  /// Description of photos and media access permission usage
  ///
  /// In en, this message translates to:
  /// **'Used to select photos and videos from the gallery and attach them to records.'**
  String get privacyPermissionMediaDesc;

  /// Name of notification permission
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get privacyPermissionNotificationName;

  /// Description of notification permission usage
  ///
  /// In en, this message translates to:
  /// **'Used to send health-related alerts, such as vaccination, medication, and hospital visit reminders.'**
  String get privacyPermissionNotificationDesc;

  /// Name of file access permission on Android
  ///
  /// In en, this message translates to:
  /// **'File access (Android)'**
  String get privacyPermissionFileName;

  /// Description of file access permission usage
  ///
  /// In en, this message translates to:
  /// **'Used to save or load data backup files.'**
  String get privacyPermissionFileDesc;

  /// Title for privacy policy section 6
  ///
  /// In en, this message translates to:
  /// **'Data Backup and Restore'**
  String get privacySection6Title;

  /// Bullet item describing data export
  ///
  /// In en, this message translates to:
  /// **'Export: save or share all app data as a file (.zip).'**
  String get privacyBackupExport;

  /// Bullet item describing data import
  ///
  /// In en, this message translates to:
  /// **'Import: load a previously exported backup file and restore data.'**
  String get privacyBackupImport;

  /// Bullet item warning about backup file management
  ///
  /// In en, this message translates to:
  /// **'Backup files are managed directly by the user. Please be careful not to share files with others.'**
  String get privacyBackupWarning;

  /// Title for privacy policy section 7
  ///
  /// In en, this message translates to:
  /// **'Protection of Children’s Personal Information'**
  String get privacySection7Title;

  /// Body text explaining protection of children’s personal information
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan does not separately collect personal information from children under the age of 14. All app data is stored only on the device and is not transmitted to external servers, so children can also use the app safely.'**
  String get privacyChildrenBody;

  /// Title for privacy policy section 8
  ///
  /// In en, this message translates to:
  /// **'Changes to This Privacy Policy'**
  String get privacySection8Title;

  /// Bullet item explaining how privacy policy changes are announced
  ///
  /// In en, this message translates to:
  /// **'If changes are made, we will notify you through app update notes or in-app notices.'**
  String get privacyPolicyChangeNotice;

  /// Bullet item explaining when privacy policy changes take effect
  ///
  /// In en, this message translates to:
  /// **'The updated policy will take effect 7 days after the notice.'**
  String get privacyPolicyChangeEffective;

  /// Title for privacy policy section 9
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get privacySection9Title;

  /// Title of the dog health guide hero banner.
  ///
  /// In en, this message translates to:
  /// **'Dog Health Care Guide'**
  String get hgDogHeroTitle;

  /// Title of the cat health guide hero banner.
  ///
  /// In en, this message translates to:
  /// **'Cat Health Care Guide'**
  String get hgCatHeroTitle;

  /// Subtitle shown in the health guide hero banner.
  ///
  /// In en, this message translates to:
  /// **'A professional health guide\nbased on veterinary recommendations.'**
  String get hgHeroSubtitle;

  /// Section title for vaccination.
  ///
  /// In en, this message translates to:
  /// **'Vaccination'**
  String get hgVaccination;

  /// Card title for essential/core vaccines.
  ///
  /// In en, this message translates to:
  /// **'Core Vaccines'**
  String get hgCoreVaccines;

  /// Card title for optional/non-core vaccines.
  ///
  /// In en, this message translates to:
  /// **'Non-Core Vaccines'**
  String get hgNonCoreVaccines;

  /// Badge label indicating a required item.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get hgRequired;

  /// Badge label indicating a recommended item.
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get hgRecommended;

  /// Section title for parasite prevention.
  ///
  /// In en, this message translates to:
  /// **'Parasite Prevention'**
  String get hgParasitePrevention;

  /// Card title for heartworm prevention.
  ///
  /// In en, this message translates to:
  /// **'Heartworm'**
  String get hgHeartworm;

  /// Badge label for monthly frequency.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get hgMonthly;

  /// Card title for flea and tick prevention.
  ///
  /// In en, this message translates to:
  /// **'External Parasites (Fleas & Ticks)'**
  String get hgExternalParasites;

  /// Card title for internal parasite prevention.
  ///
  /// In en, this message translates to:
  /// **'Internal Parasites'**
  String get hgInternalParasites;

  /// Badge label for a 3 to 6 month interval.
  ///
  /// In en, this message translates to:
  /// **'Every 3–6 Months'**
  String get hgThreeToSixMonths;

  /// Badge label for regular management.
  ///
  /// In en, this message translates to:
  /// **'Regular'**
  String get hgRegular;

  /// Section title for regular health checkups.
  ///
  /// In en, this message translates to:
  /// **'Regular Health Checkup'**
  String get hgRegularCheckup;

  /// Section title for dental and oral care.
  ///
  /// In en, this message translates to:
  /// **'Dental & Oral Care'**
  String get hgDentalCare;

  /// Section title for toxic or forbidden foods.
  ///
  /// In en, this message translates to:
  /// **'Strictly Forbidden Foods'**
  String get hgForbiddenFoods;

  /// Section title for emergency symptoms.
  ///
  /// In en, this message translates to:
  /// **'Symptoms Requiring Immediate Vet Care'**
  String get hgEmergencySymptoms;

  /// Section title for dog exercise and mental health.
  ///
  /// In en, this message translates to:
  /// **'Exercise & Mental Health'**
  String get hgExerciseMentalHealth;

  /// Card title for walking guidance.
  ///
  /// In en, this message translates to:
  /// **'Walk'**
  String get hgWalk;

  /// Badge label for daily frequency.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get hgDaily;

  /// Card title for breed-based exercise recommendations.
  ///
  /// In en, this message translates to:
  /// **'Recommended Exercise by Breed'**
  String get hgBreedExerciseAmount;

  /// Card title for play and mental stimulation.
  ///
  /// In en, this message translates to:
  /// **'Play & Brain Stimulation'**
  String get hgPlayBrainStimulation;

  /// Card title for stress signals.
  ///
  /// In en, this message translates to:
  /// **'Recognizing Stress Signals'**
  String get hgStressSignals;

  /// Badge label indicating caution.
  ///
  /// In en, this message translates to:
  /// **'Caution'**
  String get hgCaution;

  /// Card title for dog socialization and environmental stimulation.
  ///
  /// In en, this message translates to:
  /// **'Socialization & Environmental Stimulation'**
  String get hgSocialization;

  /// Dog core vaccine description for DHPPL.
  ///
  /// In en, this message translates to:
  /// **'**DHPPL (Combination Vaccine)** — Distemper, Hepatitis, Parvovirus, Parainfluenza, and Leptospirosis.\n1st dose at 6–8 weeks of age, 3 doses at 3–4 week intervals, then annual boosters'**
  String get hgDogCoreDhppl;

  /// Dog core vaccine description for rabies.
  ///
  /// In en, this message translates to:
  /// **'**Rabies** — 1st dose after 3 months of age, then once annually (legally required vaccination)'**
  String get hgDogCoreRabies;

  /// Dog core vaccine description for coronavirus enteritis.
  ///
  /// In en, this message translates to:
  /// **'**Coronavirus Enteritis** — Starts at 6–8 weeks of age, 2 doses at 3–4 week intervals, then annual boosters'**
  String get hgDogCoreCorona;

  /// Dog non-core vaccine description for kennel cough.
  ///
  /// In en, this message translates to:
  /// **'**Kennel Cough** — Recommended for multi-dog environments, grooming salons, or boarding facilities. Available as intranasal or injectable type'**
  String get hgDogNonCoreKennel;

  /// Dog non-core vaccine description for influenza.
  ///
  /// In en, this message translates to:
  /// **'**Canine Influenza** — Recommended for dogs with frequent outdoor activity or frequent contact with other dogs'**
  String get hgDogNonCoreFlu;

  /// Dog heartworm prevention guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'Around mosquito season (March–November), monthly preventive medication is recommended'**
  String get hgDogHeartworm1;

  /// Dog heartworm prevention guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'Infection is difficult to treat and can be fatal — **prevention is the best protection**'**
  String get hgDogHeartworm2;

  /// Dog heartworm prevention guidance item 3.
  ///
  /// In en, this message translates to:
  /// **'Before starting medication, testing is required to confirm a negative infection status'**
  String get hgDogHeartworm3;

  /// Dog heartworm prevention guidance item 4.
  ///
  /// In en, this message translates to:
  /// **'Year-round prevention is safer and commonly recommended by veterinarians'**
  String get hgDogHeartworm4;

  /// Dog external parasite prevention guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'Administer spot-on or oral preventives **monthly**'**
  String get hgDogExternalParasites1;

  /// Dog external parasite prevention guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'After walks, always check the ears, between the toes, and armpits for ticks'**
  String get hgDogExternalParasites2;

  /// Dog external parasite prevention guidance item 3.
  ///
  /// In en, this message translates to:
  /// **'When removing a tick, use tweezers and pull slowly straight upward without twisting'**
  String get hgDogExternalParasites3;

  /// Dog internal parasite prevention guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'Roundworms, hookworms, and whipworms: administer dewormer **every 3–6 months**'**
  String get hgDogInternalParasites1;

  /// Dog internal parasite prevention guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'For puppies from 2 weeks of age: deworm 4 times at 2-week intervals, then continue regular management'**
  String get hgDogInternalParasites2;

  /// Dental care guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'Daily brushing is ideal — at least **3 times per week** is recommended'**
  String get hgDental1;

  /// Dental care guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'Always use **pet-specific toothpaste**. Do not use human toothpaste containing xylitol'**
  String get hgDental2;

  /// Dental care guidance item 3.
  ///
  /// In en, this message translates to:
  /// **'Severe tartar requires professional scaling at a veterinary clinic under general anesthesia'**
  String get hgDental3;

  /// Dental care guidance item 4.
  ///
  /// In en, this message translates to:
  /// **'Dental chews and dental toys can support oral care as supplementary tools'**
  String get hgDental4;

  /// Warning text for foods forbidden to dogs.
  ///
  /// In en, this message translates to:
  /// **'The foods below are toxic to dogs. Even small amounts can be dangerous, so never feed them.'**
  String get hgDogForbiddenFoodAlert;

  /// Dog forbidden food description for grapes and raisins.
  ///
  /// In en, this message translates to:
  /// **'**Grapes and raisins** — can cause kidney failure; even small amounts may be fatal'**
  String get hgDogForbiddenGrape;

  /// Dog forbidden food description for chocolate and cacao.
  ///
  /// In en, this message translates to:
  /// **'**Chocolate and cacao** — theobromine poisoning, heart failure, and seizures'**
  String get hgDogForbiddenChocolate;

  /// Dog forbidden food description for onions, garlic, and leeks.
  ///
  /// In en, this message translates to:
  /// **'**Onions, garlic, and leeks** — destroy red blood cells and cause hemolytic anemia'**
  String get hgDogForbiddenOnion;

  /// Dog forbidden food description for xylitol.
  ///
  /// In en, this message translates to:
  /// **'**Xylitol** — causes excessive insulin release, hypoglycemia, and liver failure'**
  String get hgDogForbiddenXylitol;

  /// Dog forbidden food description for macadamia nuts.
  ///
  /// In en, this message translates to:
  /// **'**Macadamia nuts** — muscle weakness, high fever, and vomiting'**
  String get hgDogForbiddenMacadamia;

  /// Dog forbidden food description for raw dough and alcohol.
  ///
  /// In en, this message translates to:
  /// **'**Raw dough and alcohol** — ethanol poisoning and hypoglycemia'**
  String get hgDogForbiddenDoughAlcohol;

  /// Dog forbidden food description for avocado.
  ///
  /// In en, this message translates to:
  /// **'**Avocado** — contains persin and may cause vomiting and diarrhea'**
  String get hgDogForbiddenAvocado;

  /// Common emergency warning text for dog and cat guides.
  ///
  /// In en, this message translates to:
  /// **'If any of the symptoms below appear, visit a veterinary clinic immediately.'**
  String get hgEmergencyAlert;

  /// Dog emergency symptom item 1.
  ///
  /// In en, this message translates to:
  /// **'Complete loss of appetite for more than 24 hours'**
  String get hgDogEmergency1;

  /// Dog emergency symptom item 2.
  ///
  /// In en, this message translates to:
  /// **'Vomiting or diarrhea repeated 3 or more times in one day'**
  String get hgDogEmergency2;

  /// Dog emergency symptom item 3.
  ///
  /// In en, this message translates to:
  /// **'Abdominal bloating and unproductive retching, possible gastric dilatation-volvulus'**
  String get hgDogEmergency3;

  /// Dog emergency symptom item 4.
  ///
  /// In en, this message translates to:
  /// **'Difficulty breathing, pale gums, or cyanosis'**
  String get hgDogEmergency4;

  /// Dog emergency symptom item 5.
  ///
  /// In en, this message translates to:
  /// **'Seizures, convulsions, or loss of consciousness'**
  String get hgDogEmergency5;

  /// Dog emergency symptom item 6.
  ///
  /// In en, this message translates to:
  /// **'No urination for more than 12 hours'**
  String get hgDogEmergency6;

  /// Dog emergency symptom item 7.
  ///
  /// In en, this message translates to:
  /// **'Visible trauma, fracture, or heavy bleeding'**
  String get hgDogEmergency7;

  /// Alert text for dog exercise and mental health section.
  ///
  /// In en, this message translates to:
  /// **'For dogs, lack of exercise is not just a fitness issue. It can be a major cause of stress, anxiety, and destructive behavior.'**
  String get hgDogExerciseAlert;

  /// Dog walking guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'Small breeds: at least **20–30 minutes** daily; medium and large breeds: **1 hour or more** recommended'**
  String get hgDogWalk1;

  /// Dog walking guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'Walks are not only for elimination — they provide **scent stimulation, socialization, and stress relief**'**
  String get hgDogWalk2;

  /// Dog walking guidance item 3.
  ///
  /// In en, this message translates to:
  /// **'Allow plenty of sniffing time — it is highly effective for relieving mental fatigue'**
  String get hgDogWalk3;

  /// Dog walking guidance item 4.
  ///
  /// In en, this message translates to:
  /// **'In summer, beware of asphalt burns — walks before 7 a.m. or in the evening are recommended'**
  String get hgDogWalk4;

  /// Dog play guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'**Fetch and tug-of-war** — help release physical energy and strengthen the bond with the owner'**
  String get hgDogPlay1;

  /// Dog play guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'**Nosework** — stimulates the brain and can provide an effect similar to a 30-minute walk in just 15 minutes'**
  String get hgDogPlay2;

  /// Dog play guidance item 3.
  ///
  /// In en, this message translates to:
  /// **'**Puzzle toys and Kong toys** — help reduce separation anxiety during alone time'**
  String get hgDogPlay3;

  /// Dog play guidance item 4.
  ///
  /// In en, this message translates to:
  /// **'Just **10–15 minutes** of focused play each day can significantly reduce stress'**
  String get hgDogPlay4;

  /// Dog stress signal item 1.
  ///
  /// In en, this message translates to:
  /// **'Destroying furniture or objects and excessive barking may signal lack of exercise or stimulation'**
  String get hgDogStress1;

  /// Dog stress signal item 2.
  ///
  /// In en, this message translates to:
  /// **'Tail biting or excessive licking of paws/body may indicate compulsive behavior or stress relief attempts'**
  String get hgDogStress2;

  /// Dog stress signal item 3.
  ///
  /// In en, this message translates to:
  /// **'Extreme anxiety when the owner leaves and potty accidents may suggest separation anxiety'**
  String get hgDogStress3;

  /// Dog stress signal item 4.
  ///
  /// In en, this message translates to:
  /// **'If symptoms persist, consult a veterinarian or animal behavior specialist'**
  String get hgDogStress4;

  /// Dog socialization guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'**3–14 weeks of age** is the golden period for socialization — exposure to various people, sounds, and environments is important'**
  String get hgDogSocial1;

  /// Dog socialization guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'Interaction with other dogs — dog parks and puppy classes can help'**
  String get hgDogSocial2;

  /// Dog socialization guidance item 3.
  ///
  /// In en, this message translates to:
  /// **'Experiencing new places, smells, and sounds contributes to mental enrichment'**
  String get hgDogSocial3;

  /// Dog socialization guidance item 4.
  ///
  /// In en, this message translates to:
  /// **'Positive reinforcement training, such as clickers and treats, stimulates the brain and strengthens bonding'**
  String get hgDogSocial4;

  /// Cat core vaccine description for FVRCP.
  ///
  /// In en, this message translates to:
  /// **'**FVRCP (Combination Vaccine)** — feline herpesvirus, calicivirus, and panleukopenia.\n1st dose at 6–8 weeks of age, 3 doses at 3–4 week intervals, then every 1–3 years'**
  String get hgCatCoreFvrcp;

  /// Cat core vaccine description for rabies.
  ///
  /// In en, this message translates to:
  /// **'**Rabies** — required for outdoor cats and recommended for indoor cats as well (legally required)'**
  String get hgCatCoreRabies;

  /// Cat non-core vaccine description for FeLV.
  ///
  /// In en, this message translates to:
  /// **'**Feline Leukemia (FeLV)** — strongly recommended for outdoor cats and multi-cat households'**
  String get hgCatNonCoreFelv;

  /// Cat non-core vaccine description for chlamydia.
  ///
  /// In en, this message translates to:
  /// **'**Feline Chlamydia** — helps prevent conjunctivitis in multi-cat environments'**
  String get hgCatNonCoreChlamydia;

  /// Cat non-core vaccine description for FIV.
  ///
  /// In en, this message translates to:
  /// **'**Feline Immunodeficiency Virus (FIV)** — especially relevant for outdoor male cats; transmitted through fight wounds'**
  String get hgCatNonCoreFiv;

  /// Cat external parasite prevention guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'Outdoor cats: administer flea and tick prevention **once a month**'**
  String get hgCatExternalParasites1;

  /// Cat external parasite prevention guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'Even indoor cats can be exposed to fleas carried in on clothing or shoes → prevention **every 3 months** is recommended'**
  String get hgCatExternalParasites2;

  /// Cat external parasite prevention guidance item 3.
  ///
  /// In en, this message translates to:
  /// **'When using spot-on products, apply accurately to the back of the neck'**
  String get hgCatExternalParasites3;

  /// Card title for cat internal parasites and heartworm.
  ///
  /// In en, this message translates to:
  /// **'Internal Parasites & Heartworm'**
  String get hgCatInternalHeartworm;

  /// Cat internal parasite prevention guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'Roundworms and tapeworms: administer dewormer **every 3–6 months**'**
  String get hgCatInternalParasites1;

  /// Cat internal parasite prevention guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'If fed raw meat or raw fish, more frequent testing is recommended'**
  String get hgCatInternalParasites2;

  /// Cat heartworm prevention warning.
  ///
  /// In en, this message translates to:
  /// **'Heartworm — cats have **no curative treatment, so prevention is the only option**. Monthly prevention is strongly recommended for outdoor cats'**
  String get hgCatHeartworm1;

  /// Section title for major feline diseases.
  ///
  /// In en, this message translates to:
  /// **'Major Feline Diseases to Watch For'**
  String get hgCatMajorDiseases;

  /// Alert text for major feline diseases section.
  ///
  /// In en, this message translates to:
  /// **'Cats tend to hide pain and illness, so symptoms often appear only after a condition has progressed. Regular checkups are especially important.'**
  String get hgCatDiseaseAlert;

  /// Description of FLUTD in cats.
  ///
  /// In en, this message translates to:
  /// **'**Feline Lower Urinary Tract Disease (FLUTD)** — common in male cats. Inability to urinate is an immediate emergency'**
  String get hgCatDiseaseFlutd;

  /// Description of chronic kidney disease in cats.
  ///
  /// In en, this message translates to:
  /// **'**Chronic Kidney Disease (CKD)** — one of the leading causes of death in senior cats. Regular kidney screening is essential from age 7'**
  String get hgCatDiseaseCkd;

  /// Description of feline diabetes.
  ///
  /// In en, this message translates to:
  /// **'**Feline Diabetes** — higher risk in obese and senior cats. Watch for increased thirst and urination'**
  String get hgCatDiseaseDiabetes;

  /// Description of hyperthyroidism in cats.
  ///
  /// In en, this message translates to:
  /// **'**Hyperthyroidism** — common in cats over 10 years old. Watch for weight loss, increased appetite, and hyperactivity'**
  String get hgCatDiseaseHyperthyroidism;

  /// Description of stomatitis in cats.
  ///
  /// In en, this message translates to:
  /// **'**Stomatitis** — very common in cats. Bad breath, drooling, or appetite loss should be checked'**
  String get hgCatDiseaseStomatitis;

  /// Description of feline herpesvirus.
  ///
  /// In en, this message translates to:
  /// **'**Feline Herpesvirus (FHV-1)** — once infected, it remains latent for life. Stress can trigger recurrence with sneezing, eye discharge, and conjunctivitis'**
  String get hgCatDiseaseFhv;

  /// Section title for cat hydration and diet.
  ///
  /// In en, this message translates to:
  /// **'Hydration & Diet Management'**
  String get hgHydrationDiet;

  /// Alert text for cat hydration section.
  ///
  /// In en, this message translates to:
  /// **'Cats naturally drink little water and are vulnerable to urinary diseases. Encouraging water intake is very important.'**
  String get hgCatHydrationAlert;

  /// Cat hydration guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'Wet food, such as cans or pouches, is recommended to help increase hydration'**
  String get hgCatHydration1;

  /// Cat hydration guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'Many cats prefer running water — a **water fountain** can be effective'**
  String get hgCatHydration2;

  /// Cat hydration guidance item 3.
  ///
  /// In en, this message translates to:
  /// **'Place the water bowl away from the food bowl; wide, shallow bowls are often preferred'**
  String get hgCatHydration3;

  /// Cat hydration guidance item 4.
  ///
  /// In en, this message translates to:
  /// **'Target water intake: about **40–60 ml** per kg of body weight per day'**
  String get hgCatHydration4;

  /// Warning text for foods forbidden to cats.
  ///
  /// In en, this message translates to:
  /// **'The foods below are toxic to cats. Even small amounts can be dangerous, so never feed them.'**
  String get hgCatForbiddenFoodAlert;

  /// Cat forbidden food description for onions, garlic, and leeks.
  ///
  /// In en, this message translates to:
  /// **'**Onions, garlic, and leeks** — destroy red blood cells and cause hemolytic anemia; cats are more sensitive than dogs'**
  String get hgCatForbiddenOnion;

  /// Cat forbidden food description for grapes and raisins.
  ///
  /// In en, this message translates to:
  /// **'**Grapes and raisins** — can cause kidney failure'**
  String get hgCatForbiddenGrape;

  /// Cat forbidden food description for chocolate and caffeine.
  ///
  /// In en, this message translates to:
  /// **'**Chocolate and caffeine** — toxic to the heart and nervous system'**
  String get hgCatForbiddenChocolate;

  /// Cat forbidden food description for raw fish.
  ///
  /// In en, this message translates to:
  /// **'**Raw fish when fed continuously** — may cause thiamine, vitamin B1, deficiency'**
  String get hgCatForbiddenRawFish;

  /// Cat forbidden food description for milk and dairy products.
  ///
  /// In en, this message translates to:
  /// **'**Milk and dairy products** — many adult cats are lactose intolerant and may develop diarrhea'**
  String get hgCatForbiddenMilk;

  /// Cat forbidden food description for xylitol and alcohol.
  ///
  /// In en, this message translates to:
  /// **'**Xylitol and alcohol** — toxic to the liver and nervous system'**
  String get hgCatForbiddenXylitolAlcohol;

  /// Cat forbidden food description for avocado.
  ///
  /// In en, this message translates to:
  /// **'**Avocado** — contains persin and may cause vomiting and diarrhea'**
  String get hgCatForbiddenAvocado;

  /// Cat forbidden food description for raw egg whites.
  ///
  /// In en, this message translates to:
  /// **'**Raw egg whites** — avidin blocks biotin absorption and may cause skin and coat problems'**
  String get hgCatForbiddenRawEggWhite;

  /// Cat emergency symptom item 1.
  ///
  /// In en, this message translates to:
  /// **'**Unable to urinate or blood in urine** — urethral obstruction is an emergency, especially in male cats'**
  String get hgCatEmergency1;

  /// Cat emergency symptom item 2.
  ///
  /// In en, this message translates to:
  /// **'Complete loss of appetite for more than 24 hours, with risk of fatty liver disease'**
  String get hgCatEmergency2;

  /// Cat emergency symptom item 3.
  ///
  /// In en, this message translates to:
  /// **'**Open-mouth breathing** — never normal in cats and requires immediate emergency care'**
  String get hgCatEmergency3;

  /// Cat emergency symptom item 4.
  ///
  /// In en, this message translates to:
  /// **'Sudden hind leg paralysis or coldness, possible thromboembolism'**
  String get hgCatEmergency4;

  /// Cat emergency symptom item 5.
  ///
  /// In en, this message translates to:
  /// **'Seizures, convulsions, or loss of consciousness'**
  String get hgCatEmergency5;

  /// Cat emergency symptom item 6.
  ///
  /// In en, this message translates to:
  /// **'Pale gums or tongue, or yellow discoloration/jaundice'**
  String get hgCatEmergency6;

  /// Cat emergency symptom item 7.
  ///
  /// In en, this message translates to:
  /// **'Vomiting or diarrhea 3 or more times in one day, or blood in stool/vomit'**
  String get hgCatEmergency7;

  /// Cat emergency symptom item 8.
  ///
  /// In en, this message translates to:
  /// **'Visible trauma, fracture, or heavy bleeding'**
  String get hgCatEmergency8;

  /// Section title for cat environment and mental health.
  ///
  /// In en, this message translates to:
  /// **'Environment & Mental Health'**
  String get hgEnvironmentMentalHealth;

  /// Card title for indoor environment management.
  ///
  /// In en, this message translates to:
  /// **'Indoor Environment Management'**
  String get hgIndoorEnvironment;

  /// Card title for stress management.
  ///
  /// In en, this message translates to:
  /// **'Stress Management'**
  String get hgStressManagement;

  /// Cat indoor environment guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'**Litter boxes**: number of cats + 1 or more, cleaned daily'**
  String get hgCatEnvironment1;

  /// Cat indoor environment guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'**Scratchers**: at least 2, combining vertical and horizontal types'**
  String get hgCatEnvironment2;

  /// Cat indoor environment guidance item 3.
  ///
  /// In en, this message translates to:
  /// **'**High spaces**: provide cat towers, shelves, or vertical spaces to satisfy territorial instincts'**
  String get hgCatEnvironment3;

  /// Cat indoor environment guidance item 4.
  ///
  /// In en, this message translates to:
  /// **'**Hiding places**: provide boxes, tunnels, or safe spaces where the cat can hide'**
  String get hgCatEnvironment4;

  /// Cat stress management guidance item 1.
  ///
  /// In en, this message translates to:
  /// **'Stress in cats is directly linked to lowered immunity, FLUTD, and feline herpesvirus recurrence'**
  String get hgCatStress1;

  /// Cat stress management guidance item 2.
  ///
  /// In en, this message translates to:
  /// **'During major environmental changes such as moving or a new family member, a pheromone diffuser such as Feliway may help'**
  String get hgCatStress2;

  /// Cat stress management guidance item 3.
  ///
  /// In en, this message translates to:
  /// **'Provide at least **10–15 minutes** of interactive toy play every day'**
  String get hgCatStress3;

  /// Cat stress management guidance item 4.
  ///
  /// In en, this message translates to:
  /// **'In multi-cat households, separate resources such as food bowls, litter boxes, and sleeping areas according to the number of cats'**
  String get hgCatStress4;

  /// Table header for age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get hgAge;

  /// Table header for health checkup cycle.
  ///
  /// In en, this message translates to:
  /// **'Checkup Cycle'**
  String get hgCheckupCycle;

  /// Table header for main checkup items.
  ///
  /// In en, this message translates to:
  /// **'Main Items'**
  String get hgMainItems;

  /// Age range from 1 to 6 years.
  ///
  /// In en, this message translates to:
  /// **'1–6 Years'**
  String get hgAge1to6;

  /// Age range from 7 to 10 years.
  ///
  /// In en, this message translates to:
  /// **'7–10 Years'**
  String get hgAge7to10;

  /// Age range of 11 years and older.
  ///
  /// In en, this message translates to:
  /// **'11+ Years'**
  String get hgAge11Plus;

  /// Checkup frequency of once per year.
  ///
  /// In en, this message translates to:
  /// **'Once a Year'**
  String get hgYearlyOnce;

  /// Checkup frequency of twice per year.
  ///
  /// In en, this message translates to:
  /// **'Twice a Year'**
  String get hgYearlyTwice;

  /// Checkup frequency of every 3 to 4 months.
  ///
  /// In en, this message translates to:
  /// **'Every 3–4 Months'**
  String get hgEvery3to4Months;

  /// Dog checkup items for age 1 to 6.
  ///
  /// In en, this message translates to:
  /// **'Blood test, heart auscultation, weight, dental check'**
  String get hgDogCheckupItems1;

  /// Dog checkup items for age 7 to 10.
  ///
  /// In en, this message translates to:
  /// **'Blood, urine, X-ray, blood pressure, joints'**
  String get hgDogCheckupItems2;

  /// Dog checkup items for age 11 and older.
  ///
  /// In en, this message translates to:
  /// **'Comprehensive blood work, ultrasound, kidney and liver function'**
  String get hgDogCheckupItems3;

  /// Cat checkup items for age 1 to 6.
  ///
  /// In en, this message translates to:
  /// **'Blood test, urine test, weight, dental check'**
  String get hgCatCheckupItems1;

  /// Cat checkup items for age 7 to 10.
  ///
  /// In en, this message translates to:
  /// **'Kidney and liver values, blood pressure, thyroid T4'**
  String get hgCatCheckupItems2;

  /// Cat checkup items for age 11 and older.
  ///
  /// In en, this message translates to:
  /// **'Comprehensive blood work, abdominal ultrasound, intensive kidney monitoring'**
  String get hgCatCheckupItems3;

  /// Table header for exercise level.
  ///
  /// In en, this message translates to:
  /// **'Exercise Level'**
  String get hgExerciseAmount;

  /// Table header for breed examples.
  ///
  /// In en, this message translates to:
  /// **'Breed Examples'**
  String get hgBreedExamples;

  /// Low exercise level label.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get hgLow;

  /// Moderate exercise level label.
  ///
  /// In en, this message translates to:
  /// **'Moderate'**
  String get hgNormal;

  /// High exercise level label.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get hgHigh;

  /// Examples of breeds with low exercise needs.
  ///
  /// In en, this message translates to:
  /// **'Bulldog, Basset Hound, Shih Tzu, Maltese'**
  String get hgBreedLowExamples;

  /// Examples of breeds with moderate exercise needs.
  ///
  /// In en, this message translates to:
  /// **'Poodle, Bichon Frise, Cocker Spaniel, Beagle'**
  String get hgBreedNormalExamples;

  /// Examples of breeds with high exercise needs.
  ///
  /// In en, this message translates to:
  /// **'Labrador, Golden Retriever, Husky, Border Collie'**
  String get hgBreedHighExamples;

  /// Disclaimer shown at the bottom of the health guide.
  ///
  /// In en, this message translates to:
  /// **'This guide provides general health care information, and the care needed may vary depending on your pet’s condition. If abnormal symptoms appear or treatment is needed, always consult a veterinarian.'**
  String get hgDisclaimer;
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
