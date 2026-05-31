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
  /// **'Tap again to exit'**
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
  /// **'We had a problem preparing the app data.\nPlease try again in a moment.'**
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
  /// **'e.g. Rabies, Combo vaccine'**
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
  /// **'e.g. Checkup, Skin treatment'**
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
  /// **'e.g. Heartworm, Dewormer'**
  String get medicineNameExample;

  /// Dose input example
  ///
  /// In en, this message translates to:
  /// **'e.g. 0.5ml, 1 tablet'**
  String get doseExample;

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
  /// **'e.g. Breakfast, Dinner'**
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

  /// Dyspnea label
  ///
  /// In en, this message translates to:
  /// **'Dyspnea'**
  String get dyspnea;

  /// Seizure label
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

  /// Profile age value shown when age is calculated from date of birth
  ///
  /// In en, this message translates to:
  /// **'Auto calculated · {age}'**
  String ageAutoCalculated(String age);

  /// Pet age shown when under one year old
  ///
  /// In en, this message translates to:
  /// **'{months, plural, =1{1 month} other{{months} months}}'**
  String petAgeMonths(int months);

  /// Pet age shown in years when there are no remaining months
  ///
  /// In en, this message translates to:
  /// **'{years, plural, =1{1 year} other{{years} years}}'**
  String petAgeYears(int years);

  /// Pet age shown in years and months
  ///
  /// In en, this message translates to:
  /// **'{years, plural, =1{1 year} other{{years} years}} {months, plural, =1{1 month} other{{months} months}}'**
  String petAgeYearsMonths(int years, int months);

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
  /// **'💡 Please enter medicine name and dose'**
  String get hintMedicineNameAndDose;

  /// Hint: medicine name
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter a medicine name'**
  String get hintMedicineName;

  /// Hint: dose
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter a dose'**
  String get hintDose;

  /// Hint: weight as number
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter weight as a number'**
  String get hintWeightNumber;

  /// Hint: weight
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter weight'**
  String get hintWeight;

  /// Hint: weight is number
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter weight as a number'**
  String get hintWeightIsNumber;

  /// Hint: walk time
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter walk time'**
  String get hintWalkTime;

  /// Hint: walk time is number
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter walk time as a number'**
  String get hintWalkTimeIsNumber;

  /// Hint: walk time number
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter walk time as a number'**
  String get hintWalkTimeNumber;

  /// Hint: select brushing area
  ///
  /// In en, this message translates to:
  /// **'💡 Please select at least one brushing area'**
  String get hintSelectBrushingArea;

  /// Hint: select vaccine type
  ///
  /// In en, this message translates to:
  /// **'💡 Please select at least one vaccine type'**
  String get hintSelectVaccineType;

  /// Hint: select grooming type
  ///
  /// In en, this message translates to:
  /// **'💡 Please select at least one grooming type'**
  String get hintSelectGroomingType;

  /// Hint: select symptom type
  ///
  /// In en, this message translates to:
  /// **'💡 Please select at least one symptom type'**
  String get hintSelectSymptomType;

  /// Hint: title
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter a title'**
  String get hintTitle;

  /// Hint: vaccine name
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter a vaccine name'**
  String get hintVaccineName;

  /// Hint: select scheduled date
  ///
  /// In en, this message translates to:
  /// **'💡 Please select a date'**
  String get hintSelectScheduledDate;

  /// Hint: select scheduled time
  ///
  /// In en, this message translates to:
  /// **'💡 Please select a time'**
  String get hintSelectScheduledTime;

  /// Hint: visit purpose
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter the visit purpose'**
  String get hintVisitPurpose;

  /// Hint: select appointment date
  ///
  /// In en, this message translates to:
  /// **'💡 Please select an appointment date'**
  String get hintSelectAppointmentDate;

  /// Hint: select appointment time
  ///
  /// In en, this message translates to:
  /// **'💡 Please select an appointment time'**
  String get hintSelectAppointmentTime;

  /// Hint: medicine name input
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter a medicine name'**
  String get hintMedicineNameInput;

  /// Hint: select medication date
  ///
  /// In en, this message translates to:
  /// **'💡 Please select a medication date'**
  String get hintSelectMedicationDate;

  /// Hint: select medication time
  ///
  /// In en, this message translates to:
  /// **'💡 Please select a medication time'**
  String get hintSelectMedicationTime;

  /// Hint: alarm name
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter an alert name'**
  String get hintAlarmName;

  /// Hint: select meal time
  ///
  /// In en, this message translates to:
  /// **'💡 Please select a meal time'**
  String get hintSelectMealTime;

  /// Hint: select alarm time
  ///
  /// In en, this message translates to:
  /// **'💡 Please select an alert time'**
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

  /// Example 4.2
  ///
  /// In en, this message translates to:
  /// **'e.g. 4.2'**
  String get example42;

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
  /// **'Species'**
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
  /// **'Date of birth'**
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

  /// Male symbol label
  ///
  /// In en, this message translates to:
  /// **'Male ♂'**
  String get maleSym;

  /// Female symbol label
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

  /// Dog emoji label
  ///
  /// In en, this message translates to:
  /// **'Dog 🐶'**
  String get dogEmoji;

  /// Cat emoji label
  ///
  /// In en, this message translates to:
  /// **'Cat 🐱'**
  String get catEmoji;

  /// Other emoji label
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
  /// **'Register your pet and\nmanage their health together!'**
  String get registerPetPrompt;

  /// Register pet button
  ///
  /// In en, this message translates to:
  /// **'Register a pet'**
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

  /// Delete pet name button
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
  /// **'All records and alerts for {name} will be deleted and cannot be recovered.'**
  String deletePetWarning(String name);

  /// Pet deleted toast
  ///
  /// In en, this message translates to:
  /// **'{name} has been deleted'**
  String petDeleted(String name);

  /// Pet added toast
  ///
  /// In en, this message translates to:
  /// **'{name} has been added 🐾'**
  String petAdded(String name);

  /// Store unavailable message
  ///
  /// In en, this message translates to:
  /// **'Cannot connect to the store right now. Please try again later.'**
  String get storeUnavailableMsg;

  /// Checking payment info message
  ///
  /// In en, this message translates to:
  /// **'Checking payment info. Please tap again shortly.'**
  String get checkingPaymentMsg;

  /// Payment complete message
  ///
  /// In en, this message translates to:
  /// **'Payment completed. Please enter your new friend\'s info.'**
  String get paymentCompleteMsg;

  /// Add new family member prompt
  ///
  /// In en, this message translates to:
  /// **'Add a new family member?'**
  String get addNewFamilyMember;

  /// First pet free description
  ///
  /// In en, this message translates to:
  /// **'The first pet is free to register. Adding more pets requires a one-time payment per pet.'**
  String get firstPetFreeDesc;

  /// Pets registered store unavailable
  ///
  /// In en, this message translates to:
  /// **'Currently {count} pets registered.\nPlease try again when the store is available.'**
  String petsRegisteredStoreUnavailable(int count);

  /// Pets registered pay to add
  ///
  /// In en, this message translates to:
  /// **'Currently {count} pets registered.\nYou can add a new family member after paying {price}.'**
  String petsRegisteredPayToAdd(int count, String price);

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
  /// **'💩 Potty recorded'**
  String get pottyRecordSaved;

  /// Condition record saved toast
  ///
  /// In en, this message translates to:
  /// **'💗 Condition recorded'**
  String get conditionRecordSaved;

  /// Medication record saved toast
  ///
  /// In en, this message translates to:
  /// **'💊 Medication recorded'**
  String get medicationRecordSaved;

  /// Weight record saved toast
  ///
  /// In en, this message translates to:
  /// **'⚖️ Weight recorded'**
  String get weightRecordSaved;

  /// Meal record saved toast
  ///
  /// In en, this message translates to:
  /// **'🍽️ Meal recorded'**
  String get mealRecordSaved;

  /// Water record saved toast
  ///
  /// In en, this message translates to:
  /// **'💧 Water recorded'**
  String get waterRecordSaved;

  /// Vet visit record saved toast
  ///
  /// In en, this message translates to:
  /// **'🏥 Vet visit recorded'**
  String get vetVisitRecordSaved;

  /// Vaccination record saved toast
  ///
  /// In en, this message translates to:
  /// **'💉 Vaccination recorded'**
  String get vaccinationRecordSaved;

  /// Grooming record saved toast
  ///
  /// In en, this message translates to:
  /// **'✂️ Grooming recorded'**
  String get groomingRecordSaved;

  /// Brushing record saved toast
  ///
  /// In en, this message translates to:
  /// **'🪥 Brushing recorded'**
  String get brushingRecordSaved;

  /// Walk record saved toast
  ///
  /// In en, this message translates to:
  /// **'🦮 Walk recorded'**
  String get walkRecordSaved;

  /// Memo saved toast
  ///
  /// In en, this message translates to:
  /// **'📝 Memo recorded'**
  String get memoSaved;

  /// Abnormal symptom record saved toast
  ///
  /// In en, this message translates to:
  /// **'🚨 Abnormal sign recorded'**
  String get abnormalSymptomRecordSaved;

  /// More questions label
  ///
  /// In en, this message translates to:
  /// **'Do you have any more questions?'**
  String get moreQuestions;

  /// Contact via send feedback short
  ///
  /// In en, this message translates to:
  /// **'Please contact us via Settings > Send feedback.\nWe will reply promptly 🐾'**
  String get contactViaSendFeedback;

  /// Contact via send feedback long
  ///
  /// In en, this message translates to:
  /// **'Please contact us via the [Send feedback] button in Settings,\nand we\'ll get back to you as soon as possible.'**
  String get contactViaSendFeedbackLong;

  /// Privacy policy effective date
  ///
  /// In en, this message translates to:
  /// **'This privacy policy is effective as of January 1, 2026.\nLast updated: May 8, 2026'**
  String get privacyPolicyEffectiveDate;

  /// Privacy collected info
  ///
  /// In en, this message translates to:
  /// **'Collected information is used only for the following purposes.'**
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
  /// **'For inquiries regarding the privacy policy, please contact us below.'**
  String get privacyPolicyContact;

  /// Category: Meal
  ///
  /// In en, this message translates to:
  /// **'Meal'**
  String get catMeal;

  /// Category: Water
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get catWater;

  /// Category: Grooming
  ///
  /// In en, this message translates to:
  /// **'Grooming'**
  String get catGrooming;

  /// Category: Brushing
  ///
  /// In en, this message translates to:
  /// **'Brushing'**
  String get catBrushing;

  /// Category: Walk
  ///
  /// In en, this message translates to:
  /// **'Walk'**
  String get catWalk;

  /// Category: Hospital/Vet
  ///
  /// In en, this message translates to:
  /// **'Vet'**
  String get catHospital;

  /// Category: Abnormal Symptom
  ///
  /// In en, this message translates to:
  /// **'Abnormal'**
  String get catAbnormalSymptom;

  /// Category: Condition
  ///
  /// In en, this message translates to:
  /// **'Condition'**
  String get catCondition;

  /// Category: Potty
  ///
  /// In en, this message translates to:
  /// **'Potty'**
  String get catPotty;

  /// Meal form title
  ///
  /// In en, this message translates to:
  /// **'🍽️ Meal Record'**
  String get mealFormTitle;

  /// Walk form title
  ///
  /// In en, this message translates to:
  /// **'🦮 Walk Record'**
  String get walkFormTitle;

  /// Weight form title
  ///
  /// In en, this message translates to:
  /// **'⚖️ Weight Record'**
  String get weightFormTitle;

  /// Water form title
  ///
  /// In en, this message translates to:
  /// **'💧 Water Record'**
  String get waterFormTitle;

  /// Medication form title
  ///
  /// In en, this message translates to:
  /// **'💊 Medication Record'**
  String get medicationFormTitle;

  /// Grooming form title
  ///
  /// In en, this message translates to:
  /// **'✂️ Grooming Record'**
  String get groomingFormTitle;

  /// Brushing form title
  ///
  /// In en, this message translates to:
  /// **'🪥 Brushing Record'**
  String get brushingFormTitle;

  /// Condition form title
  ///
  /// In en, this message translates to:
  /// **'🌡️ Condition Record'**
  String get conditionFormTitle;

  /// Potty form title
  ///
  /// In en, this message translates to:
  /// **'💩 Potty Record'**
  String get poopFormTitle;

  /// Vaccination form title
  ///
  /// In en, this message translates to:
  /// **'💉 Vaccination Record'**
  String get vaccinationFormTitle;

  /// Hospital form title
  ///
  /// In en, this message translates to:
  /// **'🏥 Vet Record'**
  String get hospitalFormTitle;

  /// Abnormal symptom form title
  ///
  /// In en, this message translates to:
  /// **'🚨 Abnormal Record'**
  String get abnormalSymptomFormTitle;

  /// Memo form title
  ///
  /// In en, this message translates to:
  /// **'📝 Memo'**
  String get memoFormTitle;

  /// Measurement method label
  ///
  /// In en, this message translates to:
  /// **'Measurement method'**
  String get measureMethod;

  /// Feeding amount label
  ///
  /// In en, this message translates to:
  /// **'Feeding amount'**
  String get feedAmount;

  /// mL input label
  ///
  /// In en, this message translates to:
  /// **'Enter mL manually'**
  String get mlInputLabel;

  /// Alarm reschedule note
  ///
  /// In en, this message translates to:
  /// **'This alert date has passed.\nYou can choose a new date or delete it.'**
  String get alarmRescheduleNote;

  /// Nail trim label
  ///
  /// In en, this message translates to:
  /// **'Nail trim'**
  String get nailTrim;

  /// Shop name example
  ///
  /// In en, this message translates to:
  /// **'e.g. Fluffy Pet Shop'**
  String get shopNameExample;

  /// Potty record saved toast
  ///
  /// In en, this message translates to:
  /// **'💩 Potty recorded'**
  String get poopRecordSaved;

  /// Memo record saved toast
  ///
  /// In en, this message translates to:
  /// **'📝 Memo recorded'**
  String get memoRecordSaved;

  /// Other label
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// Whole body label
  ///
  /// In en, this message translates to:
  /// **'Whole body'**
  String get whole;

  /// Paws label
  ///
  /// In en, this message translates to:
  /// **'Paws'**
  String get paw;

  /// Importance label
  ///
  /// In en, this message translates to:
  /// **'Importance'**
  String get importance;

  /// Time taken label
  ///
  /// In en, this message translates to:
  /// **'Time taken'**
  String get timeTaken;

  /// Example 10
  ///
  /// In en, this message translates to:
  /// **'e.g. 10'**
  String get example10;

  /// Abbreviated minute unit for record summaries
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get minuteUnit;

  /// Hospital name example
  ///
  /// In en, this message translates to:
  /// **'e.g. Happy Animal Hospital'**
  String get hospitalNameExample;

  /// Diagnosis example
  ///
  /// In en, this message translates to:
  /// **'e.g. Enteritis, Dermatitis'**
  String get diagnosisExample;

  /// Memo title placeholder
  ///
  /// In en, this message translates to:
  /// **'Enter memo title'**
  String get memoTitlePlaceholder;

  /// Hint: memo title
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter a title'**
  String get hintMemoTitle;

  /// Poop type label
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get poopType;

  /// Poop status label
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get poopStatus;

  /// Feces label
  ///
  /// In en, this message translates to:
  /// **'Feces'**
  String get feces;

  /// Bloody label
  ///
  /// In en, this message translates to:
  /// **'Bloody'**
  String get bloody;

  /// Vaccine DHPPL
  ///
  /// In en, this message translates to:
  /// **'Combo (DHPPL)'**
  String get vaccineDhppl;

  /// Vaccine Corona
  ///
  /// In en, this message translates to:
  /// **'Coronavirus'**
  String get vaccineCorona;

  /// Vaccine Kennel Cough
  ///
  /// In en, this message translates to:
  /// **'Kennel Cough'**
  String get vaccineKennelCough;

  /// Vaccine Rabies
  ///
  /// In en, this message translates to:
  /// **'Rabies'**
  String get vaccineRabies;

  /// Vaccine Influenza
  ///
  /// In en, this message translates to:
  /// **'Influenza'**
  String get vaccineInfluenza;

  /// Vaccine FVRCP
  ///
  /// In en, this message translates to:
  /// **'Combo (FVRCP)'**
  String get vaccineFvrcp;

  /// Vaccine FeLV
  ///
  /// In en, this message translates to:
  /// **'Leukemia (FeLV)'**
  String get vaccineFelv;

  /// Vaccine Chlamydia
  ///
  /// In en, this message translates to:
  /// **'Chlamydia'**
  String get vaccineChlamydia;

  /// Mute label
  ///
  /// In en, this message translates to:
  /// **'Mute'**
  String get mute;

  /// Photo video label
  ///
  /// In en, this message translates to:
  /// **'Photo · Video'**
  String get photoVideo;

  /// Photo video count label
  ///
  /// In en, this message translates to:
  /// **'Photo · Video · {count}'**
  String photoVideoCount(int count);

  /// Select media source label
  ///
  /// In en, this message translates to:
  /// **'Choose media source'**
  String get selectMediaSource;

  /// Camera capture label
  ///
  /// In en, this message translates to:
  /// **'Take with camera'**
  String get cameraCapture;

  /// Camera capture subtitle
  ///
  /// In en, this message translates to:
  /// **'Take a photo or video'**
  String get cameraCaptureSubtitle;

  /// Select from gallery label
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get selectFromGallery;

  /// Select from gallery subtitle
  ///
  /// In en, this message translates to:
  /// **'Multiple selection allowed'**
  String get selectFromGallerySubtitle;

  /// Take photo subtitle
  ///
  /// In en, this message translates to:
  /// **'Take a photo with camera'**
  String get takePhotoSubtitle;

  /// Record video subtitle
  ///
  /// In en, this message translates to:
  /// **'Record a video with camera'**
  String get recordVideoSubtitle;

  /// Permission required label
  ///
  /// In en, this message translates to:
  /// **'Please allow permission in Settings'**
  String get permissionRequired;

  /// Confirm delete photo
  ///
  /// In en, this message translates to:
  /// **'Delete this photo?'**
  String get confirmDeletePhoto;

  /// Confirm delete video
  ///
  /// In en, this message translates to:
  /// **'Delete this video?'**
  String get confirmDeleteVideo;

  /// Hint: medicine and dose
  ///
  /// In en, this message translates to:
  /// **'💡 Please enter medicine name and dose'**
  String get hintMedicineAndDose;

  /// Delete record body
  ///
  /// In en, this message translates to:
  /// **'{category} record will be deleted\nand cannot be restored.'**
  String deleteRecordBody(String category);

  /// Day count short format
  ///
  /// In en, this message translates to:
  /// **'{days}d'**
  String dayCountShort(int days);

  /// Help: Intro content
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan is an app where you can record and manage your pet\'s health and daily life in one place.\nYou can easily log meals, water, potty, weight, medication, vet visits, and set alerts so you never miss important schedules.'**
  String get helpIntroContent;

  /// Help: Home today record summary
  ///
  /// In en, this message translates to:
  /// **'See all records registered today at a glance. Tap a record to view details or edit it.'**
  String get helpHomeTodayRecordSummaryDesc;

  /// Help: Home weekly stats
  ///
  /// In en, this message translates to:
  /// **'Check this week\'s potty count, meal amount, and water intake on a graph to understand your pet\'s lifestyle patterns.'**
  String get helpHomeWeeklyStatsDesc;

  /// Help: Home weight change chart
  ///
  /// In en, this message translates to:
  /// **'Shows recent weight records on a graph so you can easily track weight changes.'**
  String get helpHomeWeightChangeChartDesc;

  /// Help: Home find nearby hospitals
  ///
  /// In en, this message translates to:
  /// **'Tap the button to search for nearby animal hospitals on the map.'**
  String get helpHomeFindNearbyHospitalsDesc;

  /// Help: Home add new record
  ///
  /// In en, this message translates to:
  /// **'Tap the + button at the bottom to select a category and add a new record.'**
  String get helpHomeAddNewRecordDesc;

  /// Help: Record categories intro
  ///
  /// In en, this message translates to:
  /// **'You can record your pet\'s daily life in 12 different categories.'**
  String get helpRecordCategoriesIntro;

  /// Help: Category potty name
  ///
  /// In en, this message translates to:
  /// **'Potty'**
  String get helpCategoryPottyName;

  /// Help: Category potty desc
  ///
  /// In en, this message translates to:
  /// **'Record potty status and type. You can also attach photos.'**
  String get helpCategoryPottyDesc;

  /// Help: Category condition name
  ///
  /// In en, this message translates to:
  /// **'Condition'**
  String get helpCategoryConditionName;

  /// Help: Category condition desc
  ///
  /// In en, this message translates to:
  /// **'Record your pet\'s overall condition.'**
  String get helpCategoryConditionDesc;

  /// Help: Category medication name
  ///
  /// In en, this message translates to:
  /// **'Medication'**
  String get helpCategoryMedicationName;

  /// Help: Category medication desc
  ///
  /// In en, this message translates to:
  /// **'Record medicine name, dose, and time.'**
  String get helpCategoryMedicationDesc;

  /// Help: Category weight name
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get helpCategoryWeightName;

  /// Help: Category weight desc
  ///
  /// In en, this message translates to:
  /// **'Record weight (kg). You can check the trend on the home screen.'**
  String get helpCategoryWeightDesc;

  /// Help: Category meal name
  ///
  /// In en, this message translates to:
  /// **'Meal'**
  String get helpCategoryMealName;

  /// Help: Category meal desc
  ///
  /// In en, this message translates to:
  /// **'Record meal amount and type. You can attach photos/videos.'**
  String get helpCategoryMealDesc;

  /// Help: Category water name
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get helpCategoryWaterName;

  /// Help: Category water desc
  ///
  /// In en, this message translates to:
  /// **'Record water intake (ml). You can attach photos/videos.'**
  String get helpCategoryWaterDesc;

  /// Help: Category hospital name
  ///
  /// In en, this message translates to:
  /// **'Vet'**
  String get helpCategoryHospitalName;

  /// Help: Category hospital desc
  ///
  /// In en, this message translates to:
  /// **'Record hospital name and diagnosis. You can attach photos/videos.'**
  String get helpCategoryHospitalDesc;

  /// Help: Category vaccination name
  ///
  /// In en, this message translates to:
  /// **'Vaccination'**
  String get helpCategoryVaccinationName;

  /// Help: Category vaccination desc
  ///
  /// In en, this message translates to:
  /// **'Record vaccine type and date.'**
  String get helpCategoryVaccinationDesc;

  /// Help: Category grooming name
  ///
  /// In en, this message translates to:
  /// **'Grooming'**
  String get helpCategoryGroomingName;

  /// Help: Category grooming desc
  ///
  /// In en, this message translates to:
  /// **'Record grooming details and attach photos/videos.'**
  String get helpCategoryGroomingDesc;

  /// Help: Category dental name
  ///
  /// In en, this message translates to:
  /// **'Brushing'**
  String get helpCategoryDentalName;

  /// Help: Category dental desc
  ///
  /// In en, this message translates to:
  /// **'Record brushing status and memos.'**
  String get helpCategoryDentalDesc;

  /// Help: Category walk name
  ///
  /// In en, this message translates to:
  /// **'Walk'**
  String get helpCategoryWalkName;

  /// Help: Category walk desc
  ///
  /// In en, this message translates to:
  /// **'Record walk distance and time.'**
  String get helpCategoryWalkDesc;

  /// Help: Category memo name
  ///
  /// In en, this message translates to:
  /// **'Memo'**
  String get helpCategoryMemoName;

  /// Help: Category memo desc
  ///
  /// In en, this message translates to:
  /// **'Leave any free-form notes.'**
  String get helpCategoryMemoDesc;

  /// Help: Journal view record list
  ///
  /// In en, this message translates to:
  /// **'View all records by date. Category badges help you identify them easily.'**
  String get helpJournalViewRecordListDesc;

  /// Help: Journal edit delete record
  ///
  /// In en, this message translates to:
  /// **'Tap a record to open the edit sheet. You can modify or delete it.'**
  String get helpJournalEditDeleteRecordDesc;

  /// Help: Journal attach media
  ///
  /// In en, this message translates to:
  /// **'You can attach photos or videos to categories like meals, water, vet, grooming, and potty.'**
  String get helpJournalAttachMediaDesc;

  /// Help: Alarm add desc
  ///
  /// In en, this message translates to:
  /// **'Set alerts for vaccinations, medication, vet visits, grooming, etc. Choose the type first, then set the date and time.'**
  String get helpAlarmAddDesc;

  /// Help: Alarm repeat desc
  ///
  /// In en, this message translates to:
  /// **'Set repeat rules like daily, weekly, or monthly. Useful for regular medication or heartworm prevention.'**
  String get helpAlarmRepeatDesc;

  /// Help: Alarm advance desc
  ///
  /// In en, this message translates to:
  /// **'For important events like vaccinations, get advance alerts 7 days, 3 days, or 1 day before.'**
  String get helpAlarmAdvanceDesc;

  /// Help: Alarm complete desc
  ///
  /// In en, this message translates to:
  /// **'Tap an alert to mark it as completed. Completed alerts move to the past alerts list.'**
  String get helpAlarmCompleteDesc;

  /// Help: Alarm delete desc
  ///
  /// In en, this message translates to:
  /// **'Swipe an alert to the left to delete it.'**
  String get helpAlarmDeleteDesc;

  /// Help: Pet register desc
  ///
  /// In en, this message translates to:
  /// **'Register your pet by entering their name, type (dog/cat), breed, gender, birth date, and neutering status.'**
  String get helpPetRegisterDesc;

  /// Help: Pet edit profile desc
  ///
  /// In en, this message translates to:
  /// **'Edit name, breed, weight, microchip number, registration number, and profile photo on the profile screen.'**
  String get helpPetEditProfileDesc;

  /// Help: Pet manage multiple desc
  ///
  /// In en, this message translates to:
  /// **'Register multiple pets. Tap the pet chip at the top to switch between them.'**
  String get helpPetManageMultipleDesc;

  /// Help: Dog health guide desc
  ///
  /// In en, this message translates to:
  /// **'Provides vet-based health info: core/non-core vaccine schedules, parasite prevention, dental care, and nutrition.'**
  String get helpDogHealthGuideDesc;

  /// Help: Cat health guide desc
  ///
  /// In en, this message translates to:
  /// **'Check cat-specific vaccine schedules, parasite prevention, dental care, and nutrition info.'**
  String get helpCatHealthGuideDesc;

  /// Help: Settings notification desc
  ///
  /// In en, this message translates to:
  /// **'Turn all app notifications on or off.'**
  String get helpSettingsNotificationDesc;

  /// Help: Settings export desc
  ///
  /// In en, this message translates to:
  /// **'Export all recorded data as a ZIP file. Use it as a backup when changing devices.'**
  String get helpSettingsExportDesc;

  /// Help: Settings import desc
  ///
  /// In en, this message translates to:
  /// **'Restore data by importing a previously saved ZIP backup file.'**
  String get helpSettingsImportDesc;

  /// Help: Settings feedback desc
  ///
  /// In en, this message translates to:
  /// **'Send us an email with any issues or suggestions. It helps us improve the app.'**
  String get helpSettingsFeedbackDesc;

  /// Help: FAQ delete pet Q
  ///
  /// In en, this message translates to:
  /// **'If I delete a pet, are all records deleted too?'**
  String get helpFaqDeletePetQ;

  /// Help: FAQ delete pet A
  ///
  /// In en, this message translates to:
  /// **'Yes, deleting a pet removes all their records and alerts. Please export and backup your data before deleting.'**
  String get helpFaqDeletePetA;

  /// Help: FAQ multiple media Q
  ///
  /// In en, this message translates to:
  /// **'Can I attach multiple photos to a record?'**
  String get helpFaqMultipleMediaQ;

  /// Help: FAQ multiple media A
  ///
  /// In en, this message translates to:
  /// **'Yes, you can attach multiple photos and videos. Choose from the gallery or take them directly with the camera.'**
  String get helpFaqMultipleMediaA;

  /// Help: FAQ no notification Q
  ///
  /// In en, this message translates to:
  /// **'I am not receiving alerts.'**
  String get helpFaqNoNotificationQ;

  /// Help: FAQ no notification A
  ///
  /// In en, this message translates to:
  /// **'Please check your device settings to ensure notifications are allowed for the Pet Sumtan app. Also, check if app notifications are enabled in Settings > Notification settings.'**
  String get helpFaqNoNotificationA;

  /// Help: FAQ move data Q
  ///
  /// In en, this message translates to:
  /// **'Can I move my data to a new device?'**
  String get helpFaqMoveDataQ;

  /// Help: FAQ move data A
  ///
  /// In en, this message translates to:
  /// **'Save a backup file via Settings > Export data, then restore it on your new device via Settings > Import data.'**
  String get helpFaqMoveDataA;

  /// Help: FAQ multiple pets Q
  ///
  /// In en, this message translates to:
  /// **'Can I register multiple pets?'**
  String get helpFaqMultiplePetsQ;

  /// Help: FAQ multiple pets A
  ///
  /// In en, this message translates to:
  /// **'You can register 1 pet for free. Additional pets can be added using the premium feature.'**
  String get helpFaqMultiplePetsA;

  /// Privacy: Intro body
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan is an app used without signing up, and all data is stored only on your device. We do not transmit personal information to external servers, keeping your precious pet information safe.'**
  String get privacyIntroBody;

  /// Privacy: Section 1 title
  ///
  /// In en, this message translates to:
  /// **'Personal Information Collected'**
  String get privacySection1Title;

  /// Privacy: Section 1 body
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan can be used without registration and does not collect personal identification information. However, the following information may be stored on your device to provide app features.'**
  String get privacySection1Body;

  /// Privacy: Local storage info
  ///
  /// In en, this message translates to:
  /// **'Information stored locally on the device'**
  String get privacyLocalStorageInfo;

  /// Privacy: Pet info
  ///
  /// In en, this message translates to:
  /// **'Pet information: Name, species, breed, date of birth, gender, weight, neutering status, microchip number, animal registration number'**
  String get privacyPetInfo;

  /// Privacy: Health records
  ///
  /// In en, this message translates to:
  /// **'Health records: Potty, meals, water, weight, medication, vaccinations, vet visits, grooming, brushing, walks, condition, memos, etc., entered directly by the user'**
  String get privacyHealthRecords;

  /// Privacy: Attached media
  ///
  /// In en, this message translates to:
  /// **'Attached media: Photos and videos taken or selected directly by the user'**
  String get privacyAttachedMedia;

  /// Privacy: Notification settings
  ///
  /// In en, this message translates to:
  /// **'Alert settings: Alert type, scheduled date and time, repeat rules'**
  String get privacyNotificationSettings;

  /// Privacy: In-app purchase title
  ///
  /// In en, this message translates to:
  /// **'Regarding In-App Purchases'**
  String get privacyInAppPurchaseTitle;

  /// Privacy: Payment processing
  ///
  /// In en, this message translates to:
  /// **'Payment processing is handled through the Apple App Store or Google Play Store, and the app does not directly collect or store payment information.'**
  String get privacyPaymentProcessing;

  /// Privacy: Receipt verification
  ///
  /// In en, this message translates to:
  /// **'Only the minimum information necessary for purchase receipt verification is processed according to each platform\'s policies.'**
  String get privacyReceiptVerification;

  /// Privacy: Section 2 title
  ///
  /// In en, this message translates to:
  /// **'Purpose of Collection and Use'**
  String get privacySection2Title;

  /// Privacy: Purpose records
  ///
  /// In en, this message translates to:
  /// **'Storing and viewing pet health records'**
  String get privacyPurposeRecords;

  /// Privacy: Purpose stats
  ///
  /// In en, this message translates to:
  /// **'Providing home screen statistics (weekly potty, meal, water status, weight change graphs, etc.)'**
  String get privacyPurposeStats;

  /// Privacy: Purpose reminders
  ///
  /// In en, this message translates to:
  /// **'Sending health-related alerts such as vaccinations, medication, and vet visits'**
  String get privacyPurposeReminders;

  /// Privacy: Purpose backup restore
  ///
  /// In en, this message translates to:
  /// **'Providing data backup and restore features'**
  String get privacyPurposeBackupRestore;

  /// Privacy: Purpose paid eligibility
  ///
  /// In en, this message translates to:
  /// **'Verifying eligibility for paid features'**
  String get privacyPurposePaidEligibility;

  /// Privacy: Section 3 title
  ///
  /// In en, this message translates to:
  /// **'Retention and Destruction of Information'**
  String get privacySection3Title;

  /// Privacy: Retention body
  ///
  /// In en, this message translates to:
  /// **'All data in Pet Sumtan is stored only in the local database (SQLite) on the user\'s device and is not transmitted to external servers.'**
  String get privacyRetentionBody;

  /// Privacy: Data deletion method
  ///
  /// In en, this message translates to:
  /// **'Data Destruction Method'**
  String get privacyDataDeletionMethod;

  /// Privacy: Delete in app
  ///
  /// In en, this message translates to:
  /// **'You can directly delete pet information and records in App Settings > Data Management.'**
  String get privacyDeleteInApp;

  /// Privacy: Delete uninstall
  ///
  /// In en, this message translates to:
  /// **'Deleting the app will also delete all data stored on the device.'**
  String get privacyDeleteUninstall;

  /// Privacy: Delete backup warning
  ///
  /// In en, this message translates to:
  /// **'However, please note that if you do not back up (export) before deleting the app, the data cannot be recovered.'**
  String get privacyDeleteBackupWarning;

  /// Privacy: Section 4 title
  ///
  /// In en, this message translates to:
  /// **'Provision of Information to Third Parties'**
  String get privacySection4Title;

  /// Privacy: Third party body
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan does not provide users\' personal information to external parties. However, the following cases are exceptions.'**
  String get privacyThirdPartyBody;

  /// Privacy: Third party user export
  ///
  /// In en, this message translates to:
  /// **'When the user directly uses the data export (backup file sharing) feature'**
  String get privacyThirdPartyUserExport;

  /// Privacy: Third party legal request
  ///
  /// In en, this message translates to:
  /// **'When required by law or upon a lawful request from an investigative agency'**
  String get privacyThirdPartyLegalRequest;

  /// Privacy: Section 5 title
  ///
  /// In en, this message translates to:
  /// **'Access Permissions Guide'**
  String get privacySection5Title;

  /// Privacy: Permissions body
  ///
  /// In en, this message translates to:
  /// **'We may request the following permissions to provide app features. Even if you do not allow the permissions, you can still use the rest of the features normally.'**
  String get privacyPermissionsBody;

  /// Privacy: Permission camera name
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get privacyPermissionCameraName;

  /// Privacy: Permission camera desc
  ///
  /// In en, this message translates to:
  /// **'Used when directly taking and attaching photos/videos to health records.'**
  String get privacyPermissionCameraDesc;

  /// Privacy: Permission media name
  ///
  /// In en, this message translates to:
  /// **'Photo and Media Access'**
  String get privacyPermissionMediaName;

  /// Privacy: Permission media desc
  ///
  /// In en, this message translates to:
  /// **'Used when selecting photos/videos from the gallery to attach to records.'**
  String get privacyPermissionMediaDesc;

  /// Privacy: Permission notification name
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get privacyPermissionNotificationName;

  /// Privacy: Permission notification desc
  ///
  /// In en, this message translates to:
  /// **'Used to send health-related alerts such as vaccinations, medication, and vet visits.'**
  String get privacyPermissionNotificationDesc;

  /// Privacy: Permission file name
  ///
  /// In en, this message translates to:
  /// **'File Access (Android)'**
  String get privacyPermissionFileName;

  /// Privacy: Permission file desc
  ///
  /// In en, this message translates to:
  /// **'Used when saving or loading data backup files.'**
  String get privacyPermissionFileDesc;

  /// Privacy: Section 6 title
  ///
  /// In en, this message translates to:
  /// **'Data Backup and Restore'**
  String get privacySection6Title;

  /// Privacy: Backup export
  ///
  /// In en, this message translates to:
  /// **'Export: You can save or share all data in the app as a file (.zip).'**
  String get privacyBackupExport;

  /// Privacy: Backup import
  ///
  /// In en, this message translates to:
  /// **'Import: You can load a previously exported backup file to restore data.'**
  String get privacyBackupImport;

  /// Privacy: Backup warning
  ///
  /// In en, this message translates to:
  /// **'Users manage backup files directly, so please be careful not to share the files with others.'**
  String get privacyBackupWarning;

  /// Privacy: Section 7 title
  ///
  /// In en, this message translates to:
  /// **'Protection of Children\'s Privacy'**
  String get privacySection7Title;

  /// Privacy: Children body
  ///
  /// In en, this message translates to:
  /// **'Pet Sumtan does not collect separate personal information from children under 14. All app data is stored only on the device, and since there is no external server transmission, children can use it safely.'**
  String get privacyChildrenBody;

  /// Privacy: Section 8 title
  ///
  /// In en, this message translates to:
  /// **'Changes to Privacy Policy'**
  String get privacySection8Title;

  /// Privacy: Policy change notice
  ///
  /// In en, this message translates to:
  /// **'Changes will be notified through app update notes or in-app announcements.'**
  String get privacyPolicyChangeNotice;

  /// Privacy: Policy change effective
  ///
  /// In en, this message translates to:
  /// **'The changed policy takes effect 7 days after the announcement.'**
  String get privacyPolicyChangeEffective;

  /// Privacy: Section 9 title
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get privacySection9Title;

  /// Health guide: Dog hero title
  ///
  /// In en, this message translates to:
  /// **'Dog Health Care Guide'**
  String get hgDogHeroTitle;

  /// Health guide: Cat hero title
  ///
  /// In en, this message translates to:
  /// **'Cat Health Care Guide'**
  String get hgCatHeroTitle;

  /// Health guide: Hero subtitle
  ///
  /// In en, this message translates to:
  /// **'A professional health guide\nbased on veterinary recommendations.'**
  String get hgHeroSubtitle;

  /// Health guide: Vaccination section
  ///
  /// In en, this message translates to:
  /// **'Vaccination'**
  String get hgVaccination;

  /// Health guide: Core vaccines
  ///
  /// In en, this message translates to:
  /// **'Core Vaccines'**
  String get hgCoreVaccines;

  /// Health guide: Non-core vaccines
  ///
  /// In en, this message translates to:
  /// **'Non-Core Vaccines'**
  String get hgNonCoreVaccines;

  /// Health guide: Required badge
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get hgRequired;

  /// Health guide: Recommended badge
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get hgRecommended;

  /// Health guide: Parasite prevention section
  ///
  /// In en, this message translates to:
  /// **'Parasite Prevention'**
  String get hgParasitePrevention;

  /// Health guide: Heartworm
  ///
  /// In en, this message translates to:
  /// **'Heartworm'**
  String get hgHeartworm;

  /// Health guide: Monthly badge
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get hgMonthly;

  /// Health guide: External parasites
  ///
  /// In en, this message translates to:
  /// **'External Parasites (Fleas/Ticks)'**
  String get hgExternalParasites;

  /// Health guide: Internal parasites
  ///
  /// In en, this message translates to:
  /// **'Internal Parasites'**
  String get hgInternalParasites;

  /// Health guide: 3-6 months badge
  ///
  /// In en, this message translates to:
  /// **'Every 3-6 months'**
  String get hgThreeToSixMonths;

  /// Health guide: Regular badge
  ///
  /// In en, this message translates to:
  /// **'Regular'**
  String get hgRegular;

  /// Health guide: Regular checkup section
  ///
  /// In en, this message translates to:
  /// **'Regular Health Checkup'**
  String get hgRegularCheckup;

  /// Health guide: Dental care section
  ///
  /// In en, this message translates to:
  /// **'Dental & Oral Care'**
  String get hgDentalCare;

  /// Health guide: Forbidden foods section
  ///
  /// In en, this message translates to:
  /// **'Strictly Forbidden Foods'**
  String get hgForbiddenFoods;

  /// Health guide: Emergency symptoms section
  ///
  /// In en, this message translates to:
  /// **'Symptoms Requiring Immediate Vet Visit'**
  String get hgEmergencySymptoms;

  /// Health guide: Exercise & mental health section
  ///
  /// In en, this message translates to:
  /// **'Exercise & Mental Health'**
  String get hgExerciseMentalHealth;

  /// Health guide: Walks
  ///
  /// In en, this message translates to:
  /// **'Walks'**
  String get hgWalk;

  /// Health guide: Daily badge
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get hgDaily;

  /// Health guide: Breed exercise amount
  ///
  /// In en, this message translates to:
  /// **'Recommended Exercise by Breed'**
  String get hgBreedExerciseAmount;

  /// Health guide: Play & brain stimulation
  ///
  /// In en, this message translates to:
  /// **'Play & Brain Stimulation'**
  String get hgPlayBrainStimulation;

  /// Health guide: Stress signals
  ///
  /// In en, this message translates to:
  /// **'Recognizing Stress Signals'**
  String get hgStressSignals;

  /// Health guide: Caution badge
  ///
  /// In en, this message translates to:
  /// **'Caution'**
  String get hgCaution;

  /// Health guide: Socialization
  ///
  /// In en, this message translates to:
  /// **'Socialization & Environmental Stimulation'**
  String get hgSocialization;

  /// Health guide: Dog DHPPL
  ///
  /// In en, this message translates to:
  /// **'**DHPPL (Combo Vaccine)** — Distemper, Hepatitis, Parvovirus, Parainfluenza, Leptospirosis.\n1st dose at 6-8 weeks, 3 doses at 3-4 week intervals, then annual boosters.'**
  String get hgDogCoreDhppl;

  /// Health guide: Dog Rabies
  ///
  /// In en, this message translates to:
  /// **'**Rabies** — 1st dose after 3 months of age, then annually (Legally required in many areas).'**
  String get hgDogCoreRabies;

  /// Health guide: Dog Corona
  ///
  /// In en, this message translates to:
  /// **'**Coronavirus** — Starts at 6-8 weeks, 2 doses at 3-4 week intervals, then annual boosters.'**
  String get hgDogCoreCorona;

  /// Health guide: Dog Kennel Cough
  ///
  /// In en, this message translates to:
  /// **'**Kennel Cough** — Recommended for multi-dog environments, grooming salons, or boarding. Nasal or injectable.'**
  String get hgDogNonCoreKennel;

  /// Health guide: Dog Influenza
  ///
  /// In en, this message translates to:
  /// **'**Influenza** — If highly active outdoors or frequently in contact with other dogs.'**
  String get hgDogNonCoreFlu;

  /// Health guide: Dog Heartworm 1
  ///
  /// In en, this message translates to:
  /// **'Recommended to administer preventative medication **once a month** around mosquito season (March-November).'**
  String get hgDogHeartworm1;

  /// Health guide: Dog Heartworm 2
  ///
  /// In en, this message translates to:
  /// **'Treatment is difficult and fatal if infected — **Prevention is the best method**.'**
  String get hgDogHeartworm2;

  /// Health guide: Dog Heartworm 3
  ///
  /// In en, this message translates to:
  /// **'Must test for infection and confirm negative before administering.'**
  String get hgDogHeartworm3;

  /// Health guide: Dog Heartworm 4
  ///
  /// In en, this message translates to:
  /// **'Year-round administration is safer (Recommended by vets).'**
  String get hgDogHeartworm4;

  /// Health guide: Dog External Parasites 1
  ///
  /// In en, this message translates to:
  /// **'Administer spot-on or oral preventative **monthly**.'**
  String get hgDogExternalParasites1;

  /// Health guide: Dog External Parasites 2
  ///
  /// In en, this message translates to:
  /// **'Must check for ticks in ears, between toes, and armpits after walks.'**
  String get hgDogExternalParasites2;

  /// Health guide: Dog External Parasites 3
  ///
  /// In en, this message translates to:
  /// **'When removing ticks, use tweezers to pull straight out slowly (Do not twist).'**
  String get hgDogExternalParasites3;

  /// Health guide: Dog Internal Parasites 1
  ///
  /// In en, this message translates to:
  /// **'Roundworms, hookworms, whipworms: Administer dewormer **every 3-6 months**.'**
  String get hgDogInternalParasites1;

  /// Health guide: Dog Internal Parasites 2
  ///
  /// In en, this message translates to:
  /// **'Puppy stage (from 2 weeks): Deworm 4 times at 2-week intervals, then regular maintenance.'**
  String get hgDogInternalParasites2;

  /// Health guide: Dental 1
  ///
  /// In en, this message translates to:
  /// **'Daily brushing is ideal — Recommended at least **3 times a week**.'**
  String get hgDental1;

  /// Health guide: Dental 2
  ///
  /// In en, this message translates to:
  /// **'Must use **pet-specific toothpaste** (Human toothpaste containing xylitol is strictly forbidden).'**
  String get hgDental2;

  /// Health guide: Dental 3
  ///
  /// In en, this message translates to:
  /// **'If tartar is severe, scaling at the vet is required (Requires general anesthesia).'**
  String get hgDental3;

  /// Health guide: Dental 4
  ///
  /// In en, this message translates to:
  /// **'Dental chews and tooth toys can be used as supplementary care.'**
  String get hgDental4;

  /// Health guide: Dog forbidden food alert
  ///
  /// In en, this message translates to:
  /// **'The following foods are toxic to dogs. Even small amounts can be dangerous, so never feed them.'**
  String get hgDogForbiddenFoodAlert;

  /// Health guide: Dog forbidden grape
  ///
  /// In en, this message translates to:
  /// **'**Grapes/Raisins** — Causes kidney failure, even small amounts are fatal.'**
  String get hgDogForbiddenGrape;

  /// Health guide: Dog forbidden chocolate
  ///
  /// In en, this message translates to:
  /// **'**Chocolate/Cacao** — Theobromine poisoning, heart failure, seizures.'**
  String get hgDogForbiddenChocolate;

  /// Health guide: Dog forbidden onion
  ///
  /// In en, this message translates to:
  /// **'**Onions/Garlic/Leeks** — Destroys red blood cells, hemolytic anemia.'**
  String get hgDogForbiddenOnion;

  /// Health guide: Dog forbidden xylitol
  ///
  /// In en, this message translates to:
  /// **'**Xylitol** — Insulin hypersecretion, hypoglycemia, liver failure.'**
  String get hgDogForbiddenXylitol;

  /// Health guide: Dog forbidden macadamia
  ///
  /// In en, this message translates to:
  /// **'**Macadamia Nuts** — Muscle weakness, high fever, vomiting.'**
  String get hgDogForbiddenMacadamia;

  /// Health guide: Dog forbidden dough/alcohol
  ///
  /// In en, this message translates to:
  /// **'**Raw Dough/Alcohol** — Ethanol poisoning, hypoglycemia.'**
  String get hgDogForbiddenDoughAlcohol;

  /// Health guide: Dog forbidden avocado
  ///
  /// In en, this message translates to:
  /// **'**Avocado** — Contains persin, causes vomiting and diarrhea.'**
  String get hgDogForbiddenAvocado;

  /// Health guide: Emergency alert
  ///
  /// In en, this message translates to:
  /// **'If the following symptoms appear, visit the vet immediately.'**
  String get hgEmergencyAlert;

  /// Health guide: Dog emergency 1
  ///
  /// In en, this message translates to:
  /// **'Complete loss of appetite for more than 24 hours.'**
  String get hgDogEmergency1;

  /// Health guide: Dog emergency 2
  ///
  /// In en, this message translates to:
  /// **'Vomiting/diarrhea repeated 3 or more times a day.'**
  String get hgDogEmergency2;

  /// Health guide: Dog emergency 3
  ///
  /// In en, this message translates to:
  /// **'Abdominal distension/retching (Suspected gastric dilatation-volvulus).'**
  String get hgDogEmergency3;

  /// Health guide: Dog emergency 4
  ///
  /// In en, this message translates to:
  /// **'Difficulty breathing, pale gums, cyanosis.'**
  String get hgDogEmergency4;

  /// Health guide: Dog emergency 5
  ///
  /// In en, this message translates to:
  /// **'Convulsions, seizures, loss of consciousness.'**
  String get hgDogEmergency5;

  /// Health guide: Dog emergency 6
  ///
  /// In en, this message translates to:
  /// **'Inability to urinate for more than 12 hours.'**
  String get hgDogEmergency6;

  /// Health guide: Dog emergency 7
  ///
  /// In en, this message translates to:
  /// **'Noticeable trauma, fractures, heavy bleeding.'**
  String get hgDogEmergency7;

  /// Health guide: Dog exercise alert
  ///
  /// In en, this message translates to:
  /// **'Lack of exercise in dogs is not just a physical issue. It is a major cause of stress, anxiety, and destructive behavior.'**
  String get hgDogExerciseAlert;

  /// Health guide: Dog walk 1
  ///
  /// In en, this message translates to:
  /// **'Small breeds: **20-30 mins**+ daily, Medium/Large breeds: **1 hour**+ recommended.'**
  String get hgDogWalk1;

  /// Health guide: Dog walk 2
  ///
  /// In en, this message translates to:
  /// **'Walks are not just for potty, but for **olfactory stimulation, socialization, and stress relief**.'**
  String get hgDogWalk2;

  /// Health guide: Dog walk 3
  ///
  /// In en, this message translates to:
  /// **'Allow plenty of sniffing — Very effective for relieving mental fatigue.'**
  String get hgDogWalk3;

  /// Health guide: Dog walk 4
  ///
  /// In en, this message translates to:
  /// **'Beware of asphalt burns in summer — Recommend walking before 7 AM or in the evening.'**
  String get hgDogWalk4;

  /// Health guide: Dog play 1
  ///
  /// In en, this message translates to:
  /// **'**Fetch / Tug-of-war** — Releases physical energy, strengthens bond with owner.'**
  String get hgDogPlay1;

  /// Health guide: Dog play 2
  ///
  /// In en, this message translates to:
  /// **'**Nosework** — Brain stimulation, 15 mins equals 30 mins of walking effect.'**
  String get hgDogPlay2;

  /// Health guide: Dog play 3
  ///
  /// In en, this message translates to:
  /// **'**Puzzle/Kong toys** — Effective in alleviating separation anxiety when alone.'**
  String get hgDogPlay3;

  /// Health guide: Dog play 4
  ///
  /// In en, this message translates to:
  /// **'Just **10-15 mins** of focused play daily significantly reduces stress levels.'**
  String get hgDogPlay4;

  /// Health guide: Dog stress 1
  ///
  /// In en, this message translates to:
  /// **'Destroying furniture/objects, excessive barking — Signs of lack of exercise/stimulation.'**
  String get hgDogStress1;

  /// Health guide: Dog stress 2
  ///
  /// In en, this message translates to:
  /// **'Tail chasing, excessive licking (paws, body) — Compulsive behavior, attempt to relieve stress.'**
  String get hgDogStress2;

  /// Health guide: Dog stress 3
  ///
  /// In en, this message translates to:
  /// **'Excessive anxiety or potty mistakes when owner leaves — Suspected separation anxiety.'**
  String get hgDogStress3;

  /// Health guide: Dog stress 4
  ///
  /// In en, this message translates to:
  /// **'If it persists, consulting a vet or pet behavior specialist is recommended.'**
  String get hgDogStress4;

  /// Health guide: Dog social 1
  ///
  /// In en, this message translates to:
  /// **'**3-14 weeks** of age is the golden period for socialization — Exposure to various people, sounds, and environments is crucial.'**
  String get hgDogSocial1;

  /// Health guide: Dog social 2
  ///
  /// In en, this message translates to:
  /// **'Interaction with other dogs — Utilize dog parks or puppy classes.'**
  String get hgDogSocial2;

  /// Health guide: Dog social 3
  ///
  /// In en, this message translates to:
  /// **'Experiencing new places, smells, and sounds contributes to mental enrichment.'**
  String get hgDogSocial3;

  /// Health guide: Dog social 4
  ///
  /// In en, this message translates to:
  /// **'Positive reinforcement training (clicker, treats) increases brain stimulation and bonding simultaneously.'**
  String get hgDogSocial4;

  /// Health guide: Cat FVRCP
  ///
  /// In en, this message translates to:
  /// **'**FVRCP (Combo Vaccine)** — Herpesvirus, Calicivirus, Panleukopenia.\n1st dose at 6-8 weeks, 3 doses at 3-4 week intervals, then every 1-3 years.'**
  String get hgCatCoreFvrcp;

  /// Health guide: Cat Rabies
  ///
  /// In en, this message translates to:
  /// **'**Rabies** — Mandatory for outdoor cats, recommended for indoor cats (Legally required in many areas).'**
  String get hgCatCoreRabies;

  /// Health guide: Cat FeLV
  ///
  /// In en, this message translates to:
  /// **'**Feline Leukemia (FeLV)** — Highly recommended for outdoor cats or multi-cat households.'**
  String get hgCatNonCoreFelv;

  /// Health guide: Cat Chlamydia
  ///
  /// In en, this message translates to:
  /// **'**Feline Chlamydia** — Multi-cat environments, prevents conjunctivitis.'**
  String get hgCatNonCoreChlamydia;

  /// Health guide: Cat FIV
  ///
  /// In en, this message translates to:
  /// **'**Feline Immunodeficiency Virus (FIV)** — Outdoor male cats (transmitted through bite wounds).'**
  String get hgCatNonCoreFiv;

  /// Health guide: Cat External Parasites 1
  ///
  /// In en, this message translates to:
  /// **'Outdoor cats: Administer flea/tick preventative **once a month**.'**
  String get hgCatExternalParasites1;

  /// Health guide: Cat External Parasites 2
  ///
  /// In en, this message translates to:
  /// **'Indoor cats can also get fleas via human clothes/shoes → Preventative recommended **every 3 months**.'**
  String get hgCatExternalParasites2;

  /// Health guide: Cat External Parasites 3
  ///
  /// In en, this message translates to:
  /// **'When using spot-on products, apply accurately to the back of the neck.'**
  String get hgCatExternalParasites3;

  /// Health guide: Cat Internal & Heartworm
  ///
  /// In en, this message translates to:
  /// **'Internal Parasites & Heartworm'**
  String get hgCatInternalHeartworm;

  /// Health guide: Cat Internal Parasites 1
  ///
  /// In en, this message translates to:
  /// **'Roundworms/Tapeworms: Administer dewormer **every 3-6 months**.'**
  String get hgCatInternalParasites1;

  /// Health guide: Cat Internal Parasites 2
  ///
  /// In en, this message translates to:
  /// **'If feeding a raw diet (raw meat/fish), more frequent testing is recommended.'**
  String get hgCatInternalParasites2;

  /// Health guide: Cat Heartworm 1
  ///
  /// In en, this message translates to:
  /// **'Heartworm — **There is no cure for cats, prevention is the only way**. Monthly administration highly recommended for outdoor cats.'**
  String get hgCatHeartworm1;

  /// Health guide: Cat major diseases section
  ///
  /// In en, this message translates to:
  /// **'Beware of Major Cat Diseases'**
  String get hgCatMajorDiseases;

  /// Health guide: Cat disease alert
  ///
  /// In en, this message translates to:
  /// **'Cats hide their pain, so when symptoms appear, the disease has often already progressed. Regular checkups are especially important.'**
  String get hgCatDiseaseAlert;

  /// Health guide: Cat FLUTD
  ///
  /// In en, this message translates to:
  /// **'**Feline Lower Urinary Tract Disease (FLUTD)** — Common in males. If unable to urinate, immediate emergency care is needed.'**
  String get hgCatDiseaseFlutd;

  /// Health guide: Cat CKD
  ///
  /// In en, this message translates to:
  /// **'**Chronic Kidney Disease (CKD)** — #1 cause of death in senior cats. Regular kidney panel tests essential for cats 7+ years old.'**
  String get hgCatDiseaseCkd;

  /// Health guide: Cat Diabetes
  ///
  /// In en, this message translates to:
  /// **'**Feline Diabetes** — Risk for obese/senior cats. Watch for increased thirst and urination.'**
  String get hgCatDiseaseDiabetes;

  /// Health guide: Cat Hyperthyroidism
  ///
  /// In en, this message translates to:
  /// **'**Hyperthyroidism** — Common in cats 10+ years old. Symptoms include weight loss, overeating, and hyperactivity.'**
  String get hgCatDiseaseHyperthyroidism;

  /// Health guide: Cat Stomatitis
  ///
  /// In en, this message translates to:
  /// **'**Stomatitis** — Very common in cats. Check if there is bad breath, drooling, or loss of appetite.'**
  String get hgCatDiseaseStomatitis;

  /// Health guide: Cat FHV
  ///
  /// In en, this message translates to:
  /// **'**Feline Herpes (FHV-1)** — Once infected, it remains dormant for life. Relapses during stress, causing sneezing, eye discharge, conjunctivitis.'**
  String get hgCatDiseaseFhv;

  /// Health guide: Hydration & Diet section
  ///
  /// In en, this message translates to:
  /// **'Hydration & Diet Management'**
  String get hgHydrationDiet;

  /// Health guide: Cat hydration alert
  ///
  /// In en, this message translates to:
  /// **'Cats naturally do not drink much water, making them vulnerable to urinary diseases. Encouraging water intake is very important.'**
  String get hgCatHydrationAlert;

  /// Health guide: Cat hydration 1
  ///
  /// In en, this message translates to:
  /// **'Combining wet food (cans/pouches) is recommended to supplement hydration.'**
  String get hgCatHydration1;

  /// Health guide: Cat hydration 2
  ///
  /// In en, this message translates to:
  /// **'Prefers flowing water — Installing a **water fountain** is effective.'**
  String get hgCatHydration2;

  /// Health guide: Cat hydration 3
  ///
  /// In en, this message translates to:
  /// **'Separate water bowls from food bowls; prefer wide, shallow bowls.'**
  String get hgCatHydration3;

  /// Health guide: Cat hydration 4
  ///
  /// In en, this message translates to:
  /// **'Target water intake: About **40-60ml** per 1kg of body weight per day.'**
  String get hgCatHydration4;

  /// Health guide: Cat forbidden food alert
  ///
  /// In en, this message translates to:
  /// **'The following foods are toxic to cats. Even small amounts can be dangerous, so never feed them.'**
  String get hgCatForbiddenFoodAlert;

  /// Health guide: Cat forbidden onion
  ///
  /// In en, this message translates to:
  /// **'**Onions/Garlic/Leeks** — Destroys red blood cells, hemolytic anemia (More sensitive than dogs).'**
  String get hgCatForbiddenOnion;

  /// Health guide: Cat forbidden grape
  ///
  /// In en, this message translates to:
  /// **'**Grapes/Raisins** — Causes kidney failure.'**
  String get hgCatForbiddenGrape;

  /// Health guide: Cat forbidden chocolate
  ///
  /// In en, this message translates to:
  /// **'**Chocolate/Caffeine** — Heart and nervous system toxicity.'**
  String get hgCatForbiddenChocolate;

  /// Health guide: Cat forbidden raw fish
  ///
  /// In en, this message translates to:
  /// **'**Raw Fish (continuous feeding)** — Causes Thiamine (B1) deficiency.'**
  String get hgCatForbiddenRawFish;

  /// Health guide: Cat forbidden milk
  ///
  /// In en, this message translates to:
  /// **'**Milk/Dairy** — Adult cats are lactose intolerant, causes diarrhea.'**
  String get hgCatForbiddenMilk;

  /// Health guide: Cat forbidden xylitol/alcohol
  ///
  /// In en, this message translates to:
  /// **'**Xylitol/Alcohol** — Liver and nervous system toxicity.'**
  String get hgCatForbiddenXylitolAlcohol;

  /// Health guide: Cat forbidden avocado
  ///
  /// In en, this message translates to:
  /// **'**Avocado** — Contains persin, causes vomiting and diarrhea.'**
  String get hgCatForbiddenAvocado;

  /// Health guide: Cat forbidden raw egg white
  ///
  /// In en, this message translates to:
  /// **'**Raw Egg Whites** — Avidin blocks biotin, causing skin/coat issues.'**
  String get hgCatForbiddenRawEggWhite;

  /// Health guide: Cat emergency 1
  ///
  /// In en, this message translates to:
  /// **'**Unable to urinate at all or blood in urine** — Urethral obstruction emergency (Especially watch male cats).'**
  String get hgCatEmergency1;

  /// Health guide: Cat emergency 2
  ///
  /// In en, this message translates to:
  /// **'Complete loss of appetite for more than 24 hours (Risk of fatty liver).'**
  String get hgCatEmergency2;

  /// Health guide: Cat emergency 3
  ///
  /// In en, this message translates to:
  /// **'**Open-mouth breathing** — Never normal for cats, immediate emergency.'**
  String get hgCatEmergency3;

  /// Health guide: Cat emergency 4
  ///
  /// In en, this message translates to:
  /// **'Sudden paralysis or coldness in hind legs (Suspected thrombosis).'**
  String get hgCatEmergency4;

  /// Health guide: Cat emergency 5
  ///
  /// In en, this message translates to:
  /// **'Convulsions, seizures, loss of consciousness.'**
  String get hgCatEmergency5;

  /// Health guide: Cat emergency 6
  ///
  /// In en, this message translates to:
  /// **'Pale or jaundiced (yellowish) gums/tongue.'**
  String get hgCatEmergency6;

  /// Health guide: Cat emergency 7
  ///
  /// In en, this message translates to:
  /// **'Vomiting/diarrhea repeated 3 or more times a day, or bloody stool/vomit.'**
  String get hgCatEmergency7;

  /// Health guide: Cat emergency 8
  ///
  /// In en, this message translates to:
  /// **'Noticeable trauma, fractures, heavy bleeding.'**
  String get hgCatEmergency8;

  /// Health guide: Environment & Mental Health section
  ///
  /// In en, this message translates to:
  /// **'Environment & Mental Health'**
  String get hgEnvironmentMentalHealth;

  /// Health guide: Indoor environment
  ///
  /// In en, this message translates to:
  /// **'Indoor Environment Management'**
  String get hgIndoorEnvironment;

  /// Health guide: Stress management
  ///
  /// In en, this message translates to:
  /// **'Stress Management'**
  String get hgStressManagement;

  /// Health guide: Cat environment 1
  ///
  /// In en, this message translates to:
  /// **'**Litter Boxes**: Number of cats + 1 or more placed, clean daily.'**
  String get hgCatEnvironment1;

  /// Health guide: Cat environment 2
  ///
  /// In en, this message translates to:
  /// **'**Scratchers**: At least 2 or more (combine vertical and horizontal).'**
  String get hgCatEnvironment2;

  /// Health guide: Cat environment 3
  ///
  /// In en, this message translates to:
  /// **'**High Spaces**: Provide vertical spaces like cat trees or shelves (satisfies territorial instincts).'**
  String get hgCatEnvironment3;

  /// Health guide: Cat environment 4
  ///
  /// In en, this message translates to:
  /// **'**Hiding Spots**: Provide safe hiding spaces like boxes or tunnels.'**
  String get hgCatEnvironment4;

  /// Health guide: Cat stress 1
  ///
  /// In en, this message translates to:
  /// **'Cat stress is directly linked to weakened immunity, FLUTD, herpes relapses, etc.'**
  String get hgCatStress1;

  /// Health guide: Cat stress 2
  ///
  /// In en, this message translates to:
  /// **'Use pheromone diffusers (Feliway) during sudden environmental changes (moving, new family members).'**
  String get hgCatStress2;

  /// Health guide: Cat stress 3
  ///
  /// In en, this message translates to:
  /// **'Secure at least **10-15 mins** of playtime with toys daily.'**
  String get hgCatStress3;

  /// Health guide: Cat stress 4
  ///
  /// In en, this message translates to:
  /// **'Multi-cat households: Separate resources (food bowls, litter boxes, beds) according to the number of cats.'**
  String get hgCatStress4;

  /// Health guide: Age
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get hgAge;

  /// Health guide: Checkup cycle
  ///
  /// In en, this message translates to:
  /// **'Checkup Cycle'**
  String get hgCheckupCycle;

  /// Health guide: Main items
  ///
  /// In en, this message translates to:
  /// **'Main Items'**
  String get hgMainItems;

  /// Health guide: Age 1-6
  ///
  /// In en, this message translates to:
  /// **'1-6 years'**
  String get hgAge1to6;

  /// Health guide: Age 7-10
  ///
  /// In en, this message translates to:
  /// **'7-10 years'**
  String get hgAge7to10;

  /// Health guide: Age 11+
  ///
  /// In en, this message translates to:
  /// **'11+ years'**
  String get hgAge11Plus;

  /// Health guide: Yearly once
  ///
  /// In en, this message translates to:
  /// **'Once a year'**
  String get hgYearlyOnce;

  /// Health guide: Yearly twice
  ///
  /// In en, this message translates to:
  /// **'Twice a year'**
  String get hgYearlyTwice;

  /// Health guide: Every 3-4 months
  ///
  /// In en, this message translates to:
  /// **'Every 3-4 months'**
  String get hgEvery3to4Months;

  /// Health guide: Dog checkup items 1
  ///
  /// In en, this message translates to:
  /// **'Blood test, heart auscultation, weight, teeth'**
  String get hgDogCheckupItems1;

  /// Health guide: Dog checkup items 2
  ///
  /// In en, this message translates to:
  /// **'Blood, urine, X-ray, blood pressure, joints'**
  String get hgDogCheckupItems2;

  /// Health guide: Dog checkup items 3
  ///
  /// In en, this message translates to:
  /// **'Comprehensive blood, ultrasound, kidney/liver function'**
  String get hgDogCheckupItems3;

  /// Health guide: Cat checkup items 1
  ///
  /// In en, this message translates to:
  /// **'Blood test, urine test, weight, teeth'**
  String get hgCatCheckupItems1;

  /// Health guide: Cat checkup items 2
  ///
  /// In en, this message translates to:
  /// **'Kidney/liver panel, blood pressure, thyroid (T4)'**
  String get hgCatCheckupItems2;

  /// Health guide: Cat checkup items 3
  ///
  /// In en, this message translates to:
  /// **'Comprehensive blood, abdominal ultrasound, intensive kidney monitoring'**
  String get hgCatCheckupItems3;

  /// Health guide: Exercise amount
  ///
  /// In en, this message translates to:
  /// **'Exercise Level'**
  String get hgExerciseAmount;

  /// Health guide: Breed examples
  ///
  /// In en, this message translates to:
  /// **'Breed Examples'**
  String get hgBreedExamples;

  /// Health guide: Low
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get hgLow;

  /// Health guide: Normal
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get hgNormal;

  /// Health guide: High
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get hgHigh;

  /// Health guide: Breed low examples
  ///
  /// In en, this message translates to:
  /// **'Bulldog, Basset Hound, Shih Tzu, Maltese'**
  String get hgBreedLowExamples;

  /// Health guide: Breed normal examples
  ///
  /// In en, this message translates to:
  /// **'Poodle, Bichon, Cocker Spaniel, Beagle'**
  String get hgBreedNormalExamples;

  /// Health guide: Breed high examples
  ///
  /// In en, this message translates to:
  /// **'Labrador, Golden Retriever, Husky, Border Collie'**
  String get hgBreedHighExamples;

  /// Health guide: Disclaimer
  ///
  /// In en, this message translates to:
  /// **'This guide provides general health care information, and necessary care may vary depending on your pet\'s condition. If there are abnormal symptoms or treatment is needed, be sure to consult a veterinarian.'**
  String get hgDisclaimer;

  /// No description provided for @categoryFilter.
  ///
  /// In en, this message translates to:
  /// **'Category Filter'**
  String get categoryFilter;

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get selectAll;

  /// No description provided for @deselectAll.
  ///
  /// In en, this message translates to:
  /// **'Deselect All'**
  String get deselectAll;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @saving.
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get saving;

  /// No description provided for @treatmentContent.
  ///
  /// In en, this message translates to:
  /// **'Treatment'**
  String get treatmentContent;

  /// No description provided for @conditionScoreWord1.
  ///
  /// In en, this message translates to:
  /// **'Terrible'**
  String get conditionScoreWord1;

  /// No description provided for @conditionScoreWord2.
  ///
  /// In en, this message translates to:
  /// **'Poor'**
  String get conditionScoreWord2;

  /// No description provided for @conditionScoreWord3.
  ///
  /// In en, this message translates to:
  /// **'Fair'**
  String get conditionScoreWord3;

  /// No description provided for @conditionScoreWord4.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get conditionScoreWord4;

  /// No description provided for @conditionScoreWord5.
  ///
  /// In en, this message translates to:
  /// **'Excellent'**
  String get conditionScoreWord5;

  /// No description provided for @conditionScoreFormat.
  ///
  /// In en, this message translates to:
  /// **'Condition {score} pts - {word}'**
  String conditionScoreFormat(Object score, Object word);
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
