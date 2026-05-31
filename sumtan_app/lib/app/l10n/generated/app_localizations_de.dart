// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Pet Sumtan';

  @override
  String get appTagline => 'Gesundheits-App für Haustiere';

  @override
  String get navHome => 'Start';

  @override
  String get navJournal => 'Tagebuch';

  @override
  String get navNotifications => 'Alarme';

  @override
  String get navProfile => 'Profil';

  @override
  String get navSettings => 'Einstellungen';

  @override
  String get navAddAlarm => 'Alarm hinzufügen';

  @override
  String get drawerService => 'Dienste';

  @override
  String get drawerNearbyHospitals => 'Tierärzte in der Nähe';

  @override
  String get drawerNearbyHospitalsSub => 'Finde eine Tierklinik';

  @override
  String get drawerHealthGuide => 'Gesundheitsratgeber';

  @override
  String get drawerHealthGuideSub => 'Gesundheitshandbuch für Haustiere';

  @override
  String get drawerApp => 'App';

  @override
  String get drawerHelp => 'Hilfe';

  @override
  String get dialogExternalTitle => 'Externe Seite öffnen';

  @override
  String get dialogExternalHospitalBody =>
      'Um Tierkliniken in der Nähe zu finden, müssen wir eine externe Webseite öffnen.\n\nMöchtest du sie jetzt öffnen?';

  @override
  String get commonCancel => 'Abbrechen';

  @override
  String get commonGo => 'Los';

  @override
  String get commonDelete => 'Löschen';

  @override
  String get commonSave => 'Speichern';

  @override
  String get commonLoading => 'Wird geladen...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'Tippe erneut, um die App zu beenden';

  @override
  String get toastNeedPet =>
      'Noch keine Haustiere. Bitte füge zuerst eines im Profil hinzu.';

  @override
  String get settingsNotifications => 'Benachrichtigungen';

  @override
  String get settingsPushNotifications => 'Push-Benachrichtigungen erlauben';

  @override
  String get settingsPushNotificationsSub => 'Geräteberechtigungen';

  @override
  String get settingsLanguageSection => 'Sprache';

  @override
  String get settingsLanguage => 'App-Sprache';

  @override
  String get settingsLanguageSystem => 'Systemsprache';

  @override
  String get settingsLanguageChanged => 'App-Sprache geändert';

  @override
  String get settingsData => 'Datenverwaltung';

  @override
  String get settingsExport => 'Daten exportieren';

  @override
  String get settingsExportSub => 'Als ZIP-Datei speichern';

  @override
  String get settingsImport => 'Daten importieren';

  @override
  String get settingsImportSub => 'Aus ZIP-Datei wiederherstellen';

  @override
  String get settingsAppInfo => 'App-Info';

  @override
  String get settingsVersion => 'App-Version';

  @override
  String get settingsPrivacy => 'Datenschutzrichtlinie';

  @override
  String get settingsFeedback => 'Feedback senden';

  @override
  String get settingsFeedbackSubject => 'Feedback zu Pet Sumtan';

  @override
  String get settingsEmailAppMissing => 'Keine E-Mail-App gefunden';

  @override
  String get settingsImportConfirmBody =>
      'Alle aktuellen Daten werden gelöscht und durch die Backup-Datei ersetzt.\n\nMöchtest du fortfahren?';

  @override
  String get settingsImportAction => 'Importieren';

  @override
  String get settingsImporting => 'Daten werden importiert...';

  @override
  String get settingsImportSuccess =>
      'Backup-Daten erfolgreich wiederhergestellt';

  @override
  String get settingsImportFailed => 'Import fehlgeschlagen';

  @override
  String get settingsExportTitle => 'Daten exportieren';

  @override
  String get settingsExportBenefitTitle => 'Bewahre deine Einträge sicher auf';

  @override
  String get settingsExportBenefitPets =>
      'Profile und Fotos all deiner Haustiere';

  @override
  String get settingsExportBenefitRecords =>
      'Alle medizinischen Daten, Tagebücher und Gewichte';

  @override
  String get settingsExportBenefitMedia =>
      'Enthält angehängte Bilder und Videos';

  @override
  String get settingsStoreUnavailable =>
      'Verbindung zum Store momentan nicht möglich.\nBitte versuche es später erneut.';

  @override
  String settingsPayAndExport(String price) {
    return '$price bezahlen und exportieren';
  }

  @override
  String get settingsUnlocked => 'Freigeschaltet';

  @override
  String get settingsExportUnlockedBody =>
      'Speichere alle Informationen und Einträge deiner Haustiere als ZIP-Datei.\nDu kannst diese Datei jederzeit kostenlos importieren und wiederherstellen.';

  @override
  String get settingsExporting => 'Wird exportiert...';

  @override
  String get settingsExportZip => 'Als ZIP exportieren';

  @override
  String get settingsExportConfirmBody =>
      'Alle Informationen, Einträge und Medien als ZIP-Datei exportieren.';

  @override
  String get settingsExportAction => 'Exportieren';

  @override
  String get settingsExportSuccess => 'Backup-Datei bereit zum Teilen';

  @override
  String get settingsExportFailed => 'Export fehlgeschlagen';

  @override
  String get settingsPurchaseFailed => 'Zahlung fehlgeschlagen';

  @override
  String get settingsPurchaseProductLoadFailed =>
      'Produktinformationen konnten nicht geladen werden. Bitte versuche es später erneut.';

  @override
  String get settingsPurchaseStartFailed =>
      'Zahlung konnte nicht gestartet werden. Bitte versuche es später erneut.';

  @override
  String get errorDbInit =>
      'Es gab ein Problem bei der Vorbereitung der App-Daten.\nBitte versuche es später erneut.';

  @override
  String get help => 'Hilfe';

  @override
  String get healthGuide => 'Gesundheitsratgeber';

  @override
  String get dog => 'Hund';

  @override
  String get cat => 'Katze';

  @override
  String get tabDog => '🐶 Hund';

  @override
  String get tabCat => '🐱 Katze';

  @override
  String get savedMsg => 'Gespeichert';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get deleteAction => 'Löschen';

  @override
  String get save => 'Speichern';

  @override
  String get memo => 'Notiz';

  @override
  String get memoPlaceholder => 'Füge hier eine Notiz hinzu';

  @override
  String get addBtn => '＋ Hinzufügen';

  @override
  String get errorOccurred => 'Ein Fehler ist aufgetreten';

  @override
  String errorOccurredWithDetail(String error) {
    return 'Ein Fehler ist aufgetreten\n$error';
  }

  @override
  String get pet => 'Haustier';

  @override
  String get selectPet => 'Haustier auswählen';

  @override
  String get addNewPet => 'Neues Haustier hinzufügen';

  @override
  String get noAlarms => 'Keine Alarme';

  @override
  String alarmEmptyDesc(String petName) {
    return 'Lass uns heute auf die Gesundheit von $petName achten.\nTippe unten auf \'Alarm hinzufügen\', um zu beginnen.';
  }

  @override
  String get scheduledAlarms => 'Geplante Alarme';

  @override
  String get swipeToDelete => 'Zum Löschen wischen';

  @override
  String get selectAlarmType => 'Alarmtyp auswählen';

  @override
  String get vetAppointment => 'Tierarzttermin';

  @override
  String get medication => 'Medikamente';

  @override
  String get mealTime => 'Fütterungszeit';

  @override
  String get dailyReminder => 'Tägliche Erinnerung';

  @override
  String get alarmLabel => 'Alarm';

  @override
  String get notificationChannelName => 'Pet Sumtan Alarme';

  @override
  String get notificationChannelDescription =>
      'Erinnerungen an die Haustierpflege';

  @override
  String alarmNotificationTitle(String type) {
    return 'Alarm: $type';
  }

  @override
  String get alarmBodyVaccination => 'Bitte überprüfe das Impfdatum.';

  @override
  String get alarmBodyVetAppointment => 'Dein Tierarzttermin rückt näher.';

  @override
  String get alarmBodyMedication => 'Es ist Zeit für die Medikamente.';

  @override
  String get alarmBodyMealTime => 'Vergiss die Fütterungszeit nicht.';

  @override
  String get alarmBodyDailyReminder =>
      'Bitte trage das heutige Gesundheitstagebuch ein.';

  @override
  String get alarmBodyDefault => 'Gesundheitserinnerung für dein Haustier.';

  @override
  String get alarmDeleted => 'Alarm gelöscht';

  @override
  String get hidePastAlarms => 'Vergangene Alarme ausblenden';

  @override
  String get showPastAlarms => 'Vergangene Alarme anzeigen';

  @override
  String get deleteAll => 'Alle löschen';

  @override
  String get deletePastAlarms => 'Vergangene Alarme löschen';

  @override
  String deletePastAlarmsConfirm(int count) {
    return 'Möchtest du wirklich alle $count vergangenen Alarme löschen?';
  }

  @override
  String get pastAlarmsDeleted => 'Alle vergangenen Alarme wurden gelöscht';

  @override
  String get pastLabel => 'Vergangen';

  @override
  String get today => 'Heute';

  @override
  String get tomorrowSameTime => 'Morgen zur selben Zeit';

  @override
  String get snoozeQuestion => 'Wann sollen wir dich erinnern?';

  @override
  String get snooze5min => 'In 5 Minuten';

  @override
  String get snooze10min => 'In 10 Minuten';

  @override
  String get snooze30min => 'In 30 Minuten';

  @override
  String get snooze1hour => 'In 1 Stunde';

  @override
  String get snooze3hour => 'In 3 Stunden';

  @override
  String get snoozeCustom => 'Zeit wählen';

  @override
  String get snoozeAtThisTime => 'Zu dieser Zeit erinnern';

  @override
  String snoozeConfirm(String time) {
    return 'Wir erinnern dich um $time';
  }

  @override
  String get selectFutureTime => 'Bitte wähle eine zukünftige Zeit';

  @override
  String recordCheckHint(String typeLabel) {
    return 'Du kannst dies unter Tagebuch > $typeLabel überprüfen.';
  }

  @override
  String get pushAlsoCancel =>
      'Geplante Push-Benachrichtigungen werden ebenfalls storniert.';

  @override
  String get reschedule => 'Verschieben';

  @override
  String get deleteThisAlarm => 'Diesen Alarm löschen';

  @override
  String get vaccineNameRequired => 'Name des Impfstoffs *';

  @override
  String get vaccineNameExample => 'Z.B.: Tollwut, SHPPi';

  @override
  String get scheduledDateRequired => 'Datum *';

  @override
  String get reminderTiming => 'Wann benachrichtigen';

  @override
  String get sameDay => 'Am selben Tag';

  @override
  String get reminderTimeRequired => 'Alarmzeit *';

  @override
  String get memoInputHint => 'Notiz eingeben';

  @override
  String get visitPurposeRequired => 'Grund des Besuchs *';

  @override
  String get visitPurposeExample => 'Z.B.: Routineuntersuchung, Hautproblem';

  @override
  String get appointmentDateTimeRequired => 'Datum und Uhrzeit des Termins *';

  @override
  String get hospitalName => 'Name der Klinik';

  @override
  String get hospitalNameHint => 'Kliniknamen eingeben';

  @override
  String get medicineNameRequired => 'Name des Medikaments *';

  @override
  String get medicineNameExample => 'Z.B.: Entwurmung, Zeckenschutz';

  @override
  String get doseExample => 'Z.B.: 0.5ml, 1 Tablette';

  @override
  String get repeatRequired => 'Wiederholen *';

  @override
  String get none => 'Nie';

  @override
  String get daily => 'Täglich';

  @override
  String get weekly => 'Wöchentlich';

  @override
  String get monthly => 'Monatlich';

  @override
  String get weekdays => 'Wochentags';

  @override
  String get weekdaysOnly => 'Nur wochentags';

  @override
  String get weekends => 'Wochenende';

  @override
  String get weekendsOnly => 'Nur am Wochenende';

  @override
  String get medicationDateTimeRequired =>
      'Datum und Uhrzeit der Medikamentengabe *';

  @override
  String get medicationTimeRequired => 'Uhrzeit der Medikamentengabe *';

  @override
  String get alarmNameRequired => 'Name des Alarms *';

  @override
  String get mealTimeExample => 'Z.B.: Frühstück, Abendessen';

  @override
  String get mealTimeRequired => 'Fütterungszeit *';

  @override
  String get alarmMessage => 'Alarmnachricht';

  @override
  String get alarmMessageExample =>
      'Z.B.: Hast du das heutige Tagebuch ausgefüllt?';

  @override
  String get alarmPastDueMsg =>
      'Das Datum für diesen Alarm liegt in der Vergangenheit.\nBitte wähle ein neues Datum oder lösche ihn.';

  @override
  String get reselectDate => 'Datum neu wählen';

  @override
  String get selectDate => 'Datum auswählen';

  @override
  String get selectTime => 'Uhrzeit auswählen';

  @override
  String get todayStatus => 'Heutiger Status';

  @override
  String get addRecord => '＋ Eintrag hinzufügen';

  @override
  String get todayReminders => 'Heutige Erinnerungen';

  @override
  String get todayRecords => 'Heutige Einträge';

  @override
  String get viewAll => 'Alle ansehen';

  @override
  String get weekStats => 'Wöchentliche Statistiken';

  @override
  String get pottyCount => 'Geschäft';

  @override
  String get mealCount => 'Mahlzeiten';

  @override
  String get waterLevel => 'Wasser';

  @override
  String get timesUnit => 'Mal';

  @override
  String get mealsUnit => 'Mahlzeiten';

  @override
  String get pointsUnit => 'Pkt';

  @override
  String get recordDeleted => 'Eintrag gelöscht';

  @override
  String get recordUpdated => 'Eintrag aktualisiert';

  @override
  String get deleteRecordConfirm =>
      'Möchtest du diesen Eintrag wirklich löschen?';

  @override
  String get deleteConfirmBody =>
      'Einmal gelöscht, kann er nicht wiederhergestellt werden!';

  @override
  String get deleteConfirmOk => 'Löschen';

  @override
  String get deleteThisRecord => 'Diesen Eintrag löschen';

  @override
  String get typeLabel => 'Typ';

  @override
  String get statusLabel => 'Status';

  @override
  String get conditionScore => 'Zustandswert';

  @override
  String get symptomTags => 'Symptom-Tags';

  @override
  String get medicineName => 'Name des Medikaments';

  @override
  String get dose => 'Dosis';

  @override
  String get medicationMethod => 'Verabreichungsmethode';

  @override
  String get weightKg => 'Gewicht (kg)';

  @override
  String get measurementMethod => 'Messmethode';

  @override
  String get mealAmount => 'Futtermenge';

  @override
  String get servingAmount => 'Portion';

  @override
  String get waterAmount => 'Wassermenge';

  @override
  String get visitType => 'Art des Besuchs';

  @override
  String get diagnosisName => 'Diagnose';

  @override
  String get vaccineType => 'Art des Impfstoffs';

  @override
  String get abnormalSymptomType => 'Art des abnormalen Symptoms';

  @override
  String get customSymptom => 'Anderes Symptom';

  @override
  String get customSymptomPlaceholder => 'Beschreibe das Symptom';

  @override
  String get sideEffects => 'Nebenwirkungen';

  @override
  String get groomingType => 'Art der Pflege';

  @override
  String get shopName => 'Name des Salons';

  @override
  String get cost => 'Kosten';

  @override
  String get nextAppointment => 'Nächster Termin';

  @override
  String get brushingArea => 'Putzbereich';

  @override
  String get duration => 'Dauer';

  @override
  String get walkTime => 'Gassizeit';

  @override
  String get distance => 'Entfernung';

  @override
  String get title => 'Titel';

  @override
  String get priority => 'Priorität';

  @override
  String get stool => 'Kot';

  @override
  String get urine => 'Urin';

  @override
  String get vomiting => 'Erbrechen';

  @override
  String get bleeding => 'Blutung';

  @override
  String get dyspnea => 'Atemnot';

  @override
  String get seizure => 'Krampfanfall';

  @override
  String get normal => 'Normal';

  @override
  String get loose => 'Weich';

  @override
  String get hard => 'Hart';

  @override
  String get bloodInStool => 'Blut im Kot';

  @override
  String get cough => 'Husten';

  @override
  String get lethargy => 'Lethargie';

  @override
  String get lossOfAppetite => 'Appetitlosigkeit';

  @override
  String get diarrhea => 'Durchfall';

  @override
  String get runnyNose => 'Laufende Nase';

  @override
  String get sneezing => 'Niesen';

  @override
  String get trembling => 'Zittern';

  @override
  String get bloodInUrine => 'Blut im Urin';

  @override
  String get oral => 'Oral';

  @override
  String get injection => 'Injektion';

  @override
  String get topical => 'Topisch';

  @override
  String get eyeDrops => 'Augentropfen';

  @override
  String get earDrops => 'Ohrentropfen';

  @override
  String get vetHospital => 'Tierklinik';

  @override
  String get homeScale => 'Waage zu Hause';

  @override
  String get holdAndWeigh => 'Halten und wiegen';

  @override
  String get veryLittle => 'Sehr wenig';

  @override
  String get little => 'Wenig';

  @override
  String get much => 'Viel';

  @override
  String get veryMuch => 'Sehr viel';

  @override
  String get general => 'Allgemein';

  @override
  String get regularCheckup => 'Routineuntersuchung';

  @override
  String get emergency => 'Notfall';

  @override
  String get mild => 'Leicht';

  @override
  String get severe => 'Schwer';

  @override
  String get bath => 'Bad';

  @override
  String get fullGrooming => 'Komplettschnitt';

  @override
  String get partialGrooming => 'Teilschnitt';

  @override
  String get nails => 'Krallen schneiden';

  @override
  String get earCleaning => 'Ohrenreinigung';

  @override
  String get tartarRemoval => 'Zahnsteinentfernung';

  @override
  String get analGlands => 'Analdrüsen';

  @override
  String get all => 'Alles';

  @override
  String get back => 'Rücken';

  @override
  String get belly => 'Bauch';

  @override
  String get tail => 'Schwanz';

  @override
  String get face => 'Gesicht';

  @override
  String get paws => 'Pfoten';

  @override
  String get important => 'Wichtig';

  @override
  String get photosAndVideos => 'Fotos und Videos';

  @override
  String get addMedia => 'Medien hinzufügen';

  @override
  String get selectMediaMethod => 'Methode auswählen';

  @override
  String get useCamera => 'Kamera verwenden';

  @override
  String get takePhotoOrVideo => 'Foto oder Video aufnehmen';

  @override
  String get chooseFromGallery => 'Aus Galerie wählen';

  @override
  String get multiSelectHint => 'Du kannst mehrere auswählen';

  @override
  String get takePhoto => 'Foto aufnehmen';

  @override
  String get takePhotoDesc => 'Ein Foto mit der Kamera aufnehmen';

  @override
  String get recordVideo => 'Video aufnehmen';

  @override
  String get recordVideoDesc => 'Ein Video mit der Kamera aufnehmen';

  @override
  String get deleteThisPhoto => 'Foto löschen';

  @override
  String get deletePhotoConfirm => 'Möchtest du dieses Foto wirklich löschen?';

  @override
  String get deleteThisVideo => 'Video löschen';

  @override
  String get deleteVideoConfirm => 'Möchtest du dieses Video wirklich löschen?';

  @override
  String get muted => 'Stummgeschaltet';

  @override
  String get soundOn => 'Ton an';

  @override
  String get allowPermissionInSettings =>
      'Bitte erlaube den Zugriff in den Einstellungen';

  @override
  String get openSettings => 'Einstellungen öffnen';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get contactDeveloper => 'Entwickler kontaktieren';

  @override
  String get contact => 'Kontakt';

  @override
  String get settingsLabel => 'Einstellungen';

  @override
  String get exportData => 'Daten exportieren';

  @override
  String get importData => 'Daten importieren';

  @override
  String get sendFeedback => 'Feedback senden';

  @override
  String get faq => 'FAQ';

  @override
  String get homeScreen => 'Startbildschirm';

  @override
  String get journalScreen => 'Tagebuch-Bildschirm';

  @override
  String get alarmScreen => 'Alarm-Bildschirm';

  @override
  String get petManagement => 'Haustierverwaltung';

  @override
  String get recordCategories => 'Eintragskategorien';

  @override
  String get whatIsPetSumtan => 'Was ist Pet Sumtan?';

  @override
  String get todayRecordSummary => 'Heutige Einträge zusammengefasst';

  @override
  String get weeklyStats => 'Wöchentliche Statistiken';

  @override
  String get weightChangeChart => 'Gewichtsentwicklungsdiagramm';

  @override
  String get findNearbyHospitals => 'Tierärzte in der Nähe finden';

  @override
  String get addNewRecord => 'Neuen Eintrag hinzufügen (+)';

  @override
  String get viewRecordList => 'Eintragsliste ansehen';

  @override
  String get editDeleteRecord => 'Einträge bearbeiten und löschen';

  @override
  String get attachMedia => 'Fotos/Videos anhängen';

  @override
  String get addAlarm => 'Alarm hinzufügen';

  @override
  String get repeatAlarm => 'Alarm wiederholen';

  @override
  String get advanceAlarmHint => 'Vorab-Alarm (T-7, T-3, T-1)';

  @override
  String get completeAlarm => 'Alarm abschließen';

  @override
  String get deleteAlarm => 'Alarm löschen';

  @override
  String get registerPet => 'Haustier registrieren';

  @override
  String get editProfile => 'Profil bearbeiten';

  @override
  String get manageMultiplePets => 'Mehrere Haustiere verwalten';

  @override
  String get dogHealthGuide => 'Gesundheitsratgeber für Hunde';

  @override
  String get catHealthGuide => 'Gesundheitsratgeber für Katzen';

  @override
  String get notificationSettings => 'Benachrichtigungseinstellungen';

  @override
  String get dogHealthCareGuide => 'Gesundheitspflege-Ratgeber für Hunde';

  @override
  String get catHealthCareGuide => 'Gesundheitspflege-Ratgeber für Katzen';

  @override
  String get healthGuideSubtitle =>
      'Professioneller Gesundheitsratgeber\nbasierend auf tierärztlichen Empfehlungen.';

  @override
  String get vaccination => 'Impfung';

  @override
  String get coreVaccines => 'Pflichtimpfungen';

  @override
  String get required => 'Erforderlich';

  @override
  String get nonCoreVaccines => 'Wahlimpfungen';

  @override
  String get recommended => 'Empfohlen';

  @override
  String get parasitePrevention => 'Parasitenprävention';

  @override
  String get heartworm => 'Herzwurm';

  @override
  String get monthlyFreq => 'Monatlich';

  @override
  String get externalParasites => 'Externe Parasiten (Flöhe/Zecken)';

  @override
  String get internalParasites => 'Interne Parasiten';

  @override
  String get threeToSixMonths => 'Alle 3-6 Monate';

  @override
  String get nutritionManagement => 'Ernährungsmanagement';

  @override
  String get dentalCare => 'Zahnpflege';

  @override
  String get healthCheckup => 'Gesundheitscheck';

  @override
  String get emergencySigns => 'Notfallanzeichen';

  @override
  String get age => 'Alter';

  @override
  String ageAutoCalculated(String age) {
    return 'Automatisch berechnet · $age';
  }

  @override
  String petAgeMonths(int months) {
    return '$months Mon.';
  }

  @override
  String petAgeYears(int years) {
    return '$years J.';
  }

  @override
  String petAgeYearsMonths(int years, int months) {
    return '$years J. $months Mon.';
  }

  @override
  String get checkupCycle => 'Check-up-Häufigkeit';

  @override
  String get mainItems => 'Hauptuntersuchungen';

  @override
  String get exerciseLevel => 'Bewegungsbedarf';

  @override
  String get breedExamples => 'Typische Rassen';

  @override
  String get low => 'Niedrig';

  @override
  String get high => 'Hoch';

  @override
  String get menu => 'Menü';

  @override
  String get helloGreeting => 'Hallo!';

  @override
  String get healthyTodayMsg => '\nWie ist die Gesundheit heute?';

  @override
  String get noRecordsYet => 'Noch keine Einträge';

  @override
  String lastRecord(String time) {
    return 'Letzter Eintrag · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return 'Durchschnitt $value$unit/Tag';
  }

  @override
  String get weightTrend => '⚖️ Gewichtstrend';

  @override
  String get weightChange => '⚖️ Gewichtsveränderung';

  @override
  String get noWeightData => 'Noch keine Gewichtsdaten';

  @override
  String get measuredWeight => 'Gemessenes Gewicht';

  @override
  String get noTodayRecords => 'Noch keine heutigen Einträge';

  @override
  String get homeNoRecordHint =>
      'Trage Zustand, Geschäft und Gewicht ein,\num die Gesundheit im Blick zu behalten.';

  @override
  String noRecordsForDate(String date) {
    return 'Keine Einträge für $date';
  }

  @override
  String recordsForDate(String date, String count) {
    return 'Einträge für $date ($count)';
  }

  @override
  String get daySun => 'So';

  @override
  String get dayMon => 'Mo';

  @override
  String get dayTue => 'Di';

  @override
  String get dayWed => 'Mi';

  @override
  String get dayThu => 'Do';

  @override
  String get dayFri => 'Fr';

  @override
  String get daySat => 'Sa';

  @override
  String get whatToRecord => '📝 Was möchtest du eintragen?';

  @override
  String saveErrorMsg(String error) {
    return 'Fehler beim Speichern: $error';
  }

  @override
  String get alarmUpdated => 'Alarm aktualisiert';

  @override
  String get alarmAdded => 'Alarm hinzugefügt';

  @override
  String get editAlarm => 'Alarm bearbeiten';

  @override
  String get deleteAlarmConfirm => 'Möchtest du diesen Alarm wirklich löschen?';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name wird gelöscht.\nGeplante Push-Benachrichtigungen werden ebenfalls storniert.';
  }

  @override
  String get doneMsg => '✅ Erledigt';

  @override
  String get laterMsg => '🕐 Später';

  @override
  String get saveCompletion => '✅ Als erledigt speichern';

  @override
  String completedQuestion(String type) {
    return 'Hast du $type erledigt?';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'Wir speichern $name automatisch\nin den heutigen Einträgen.';
  }

  @override
  String completionSaved(String name) {
    return 'Erledigt-Status von $name gespeichert';
  }

  @override
  String get tapAlarmTypeHint => '👆 Tippe auf den benötigten Alarmtyp';

  @override
  String countUnit(int count) {
    return '$count';
  }

  @override
  String dateCompleted(String date) {
    return '$date · Erledigt';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date ist vergangen · Tippen zum Verschieben';
  }

  @override
  String get completedLabel => 'Erledigt';

  @override
  String get edit => 'Bearbeiten';

  @override
  String recordDeleteCannotUndo(String category) {
    return 'Der Eintrag für $category wird gelöscht.\nDiese Aktion kann nicht rückgängig gemacht werden.';
  }

  @override
  String get hintMedicineNameAndDose =>
      '💡 Gib den Namen des Medikaments und die Dosis ein';

  @override
  String get hintMedicineName => '💡 Gib den Namen des Medikaments ein';

  @override
  String get hintDose => '💡 Gib die Dosis ein';

  @override
  String get hintWeightNumber => '💡 Gib das Gewicht als Zahl ein';

  @override
  String get hintWeight => '💡 Gib das Gewicht ein';

  @override
  String get hintWeightIsNumber => '💡 Das Gewicht muss eine Zahl sein';

  @override
  String get hintWalkTime => '💡 Gib die Gassizeit ein';

  @override
  String get hintWalkTimeIsNumber => '💡 Die Gassizeit muss eine Zahl sein';

  @override
  String get hintWalkTimeNumber => '💡 Gib die Gassizeit als Zahl ein';

  @override
  String get hintSelectBrushingArea => '💡 Wähle mindestens einen Putzbereich';

  @override
  String get hintSelectVaccineType => '💡 Wähle mindestens eine Impfstoffart';

  @override
  String get hintSelectGroomingType => '💡 Wähle mindestens eine Pflegeart';

  @override
  String get hintSelectSymptomType => '💡 Wähle mindestens eine Symptomart';

  @override
  String get hintTitle => '💡 Gib einen Titel ein';

  @override
  String get hintVaccineName => '💡 Gib den Namen des Impfstoffs ein';

  @override
  String get hintSelectScheduledDate => '💡 Wähle ein Datum';

  @override
  String get hintSelectScheduledTime => '💡 Wähle eine Uhrzeit';

  @override
  String get hintVisitPurpose => '💡 Gib den Grund des Besuchs ein';

  @override
  String get hintSelectAppointmentDate => '💡 Wähle das Datum des Termins';

  @override
  String get hintSelectAppointmentTime => '💡 Wähle die Uhrzeit des Termins';

  @override
  String get hintMedicineNameInput => '💡 Gib den Namen des Medikaments ein';

  @override
  String get hintSelectMedicationDate =>
      '💡 Wähle das Datum der Medikamentengabe';

  @override
  String get hintSelectMedicationTime =>
      '💡 Wähle die Uhrzeit der Medikamentengabe';

  @override
  String get hintAlarmName => '💡 Gib den Namen des Alarms ein';

  @override
  String get hintSelectMealTime => '💡 Wähle die Fütterungszeit';

  @override
  String get hintSelectAlarmTime => '💡 Wähle die Alarmzeit';

  @override
  String get noPetRegisterFirst =>
      'Kein Haustier registriert. Bitte füge im Profil eines hinzu.';

  @override
  String get alarmRescheduled => 'Alarm verschoben';

  @override
  String get examplePetName => 'Z.B.: Coco';

  @override
  String get exampleBreed => 'Z.B.: Pudel';

  @override
  String get exampleBreedMulti => 'Z.B.: Pudel, Perser';

  @override
  String get example30 => 'Z.B.: 30';

  @override
  String get example80 => 'Z.B.: 80';

  @override
  String get example200 => 'Z.B.: 200';

  @override
  String get example25 => 'Z.B.: 2.5';

  @override
  String get example42 => 'Z.B.: 4.2';

  @override
  String get example35000 => 'Z.B.: 35000';

  @override
  String get example50000 => 'Z.B.: 50000';

  @override
  String get enterNameHint => 'Namen eingeben';

  @override
  String get addNewPetTitle => 'Neues Haustier hinzufügen';

  @override
  String get basicInfo => 'Grundlegende Informationen';

  @override
  String get idInfo => 'Identifikationsdaten';

  @override
  String get idInfoOptional => 'Identifikation (Optional)';

  @override
  String get name => 'Name';

  @override
  String get petKind => 'Tierart';

  @override
  String get breed => 'Rasse';

  @override
  String get weight => 'Gewicht';

  @override
  String get microchip => 'Mikrochip-Nummer';

  @override
  String get registrationNumber => 'Registrierungsnummer';

  @override
  String get birthDate => 'Geburtsdatum';

  @override
  String get gender => 'Geschlecht';

  @override
  String get male => 'Männlich';

  @override
  String get female => 'Weiblich';

  @override
  String get maleSym => 'Männlich ♂';

  @override
  String get femaleSym => 'Weiblich ♀';

  @override
  String get neutered => 'Kastriert/Sterilisiert';

  @override
  String get done => 'Ja';

  @override
  String get notDone => 'Nein';

  @override
  String get notEntered => 'Nicht angegeben';

  @override
  String get notRegistered => 'Nicht registriert';

  @override
  String get dogEmoji => 'Hund 🐶';

  @override
  String get catEmoji => 'Katze 🐱';

  @override
  String get otherEmoji => 'Anderes 🐾';

  @override
  String get noPetsRegistered => 'Keine Haustiere registriert';

  @override
  String get registerPetPrompt =>
      'Registriere dein Haustier\nund lass uns gemeinsam auf seine Gesundheit achten!';

  @override
  String get registerPetBtn => 'Haustier registrieren';

  @override
  String get editPet => 'Informationen bearbeiten';

  @override
  String get neuteringStatus => 'Kastrationsstatus';

  @override
  String get neuteredDone => 'Kastriert/Sterilisiert';

  @override
  String get notNeutered => 'Nicht kastriert';

  @override
  String get selectDateHint => 'Datum auswählen';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get registerBtn => 'Registrieren';

  @override
  String deletePetName(String name) {
    return '$name löschen';
  }

  @override
  String deletePetConfirm(String name) {
    return 'Möchtest du $name wirklich löschen?';
  }

  @override
  String deletePetWarning(String name) {
    return 'Alle Einträge und Alarme von $name werden gelöscht und können nicht wiederhergestellt werden.';
  }

  @override
  String petDeleted(String name) {
    return '$name wurde gelöscht';
  }

  @override
  String petAdded(String name) {
    return '$name wurde hinzugefügt 🐾';
  }

  @override
  String get storeUnavailableMsg =>
      'Verbindung zum Store momentan nicht möglich. Bitte versuche es später erneut.';

  @override
  String get checkingPaymentMsg =>
      'Zahlungsinformationen werden geprüft. Bitte warte einen Moment und versuche es erneut.';

  @override
  String get paymentCompleteMsg =>
      'Zahlung abgeschlossen. Bitte gib die Informationen des neuen Familienmitglieds ein.';

  @override
  String get addNewFamilyMember => 'Neues Familienmitglied hinzufügen?';

  @override
  String get firstPetFreeDesc =>
      'Das erste Haustier ist kostenlos. Um weitere Haustiere hinzuzufügen, ist eine einmalige Zahlung für jedes weitere Tier erforderlich.';

  @override
  String petsRegisteredStoreUnavailable(int count) {
    return 'Du hast derzeit $count Haustiere registriert.\nBitte versuche es erneut, wenn der Store verfügbar ist.';
  }

  @override
  String petsRegisteredPayToAdd(int count, String price) {
    return 'Du hast derzeit $count Haustiere registriert.\nDu kannst ein neues Mitglied für $price hinzufügen.';
  }

  @override
  String get maybeLater => 'Vielleicht später';

  @override
  String get unavailable => 'Nicht verfügbar';

  @override
  String payAndAdd(String price) {
    return '$price bezahlen und hinzufügen';
  }

  @override
  String get addNextAppointment => '＋ Nächsten Termin hinzufügen';

  @override
  String get pottyRecordSaved => '💩 Geschäft gespeichert';

  @override
  String get conditionRecordSaved => '💗 Zustand gespeichert';

  @override
  String get medicationRecordSaved => '💊 Medikament gespeichert';

  @override
  String get weightRecordSaved => '⚖️ Gewicht gespeichert';

  @override
  String get mealRecordSaved => '🍽️ Mahlzeit gespeichert';

  @override
  String get waterRecordSaved => '💧 Wasser gespeichert';

  @override
  String get vetVisitRecordSaved => '🏥 Tierarztbesuch gespeichert';

  @override
  String get vaccinationRecordSaved => '💉 Impfung gespeichert';

  @override
  String get groomingRecordSaved => '✂️ Pflege gespeichert';

  @override
  String get brushingRecordSaved => '🪥 Zähneputzen gespeichert';

  @override
  String get walkRecordSaved => '🦮 Gassigehen gespeichert';

  @override
  String get memoSaved => '📝 Notiz gespeichert';

  @override
  String get abnormalSymptomRecordSaved => '🚨 Abnormales Symptom gespeichert';

  @override
  String get moreQuestions => 'Hast du weitere Fragen?';

  @override
  String get contactViaSendFeedback =>
      'Kontaktiere uns über Einstellungen > Feedback senden.\nWir werden so schnell wie möglich antworten 🐾';

  @override
  String get contactViaSendFeedbackLong =>
      'Bitte kontaktiere uns über den Button [Feedback senden] in den Einstellungen.\nWir werden dir so schnell wie möglich antworten.';

  @override
  String get privacyPolicyEffectiveDate =>
      'Diese Datenschutzrichtlinie ist ab dem 1. Januar 2026 gültig.\nZuletzt aktualisiert: 8. Mai 2026';

  @override
  String get privacyCollectedInfo =>
      'Die gesammelten Informationen werden nur für die folgenden Zwecke verwendet.';

  @override
  String get privacyDataFeatures =>
      'Pet Sumtan bietet Funktionen zum Exportieren (Backup) und Importieren (Wiederherstellen) von Daten.';

  @override
  String get privacyPolicyMayUpdate =>
      'Diese Datenschutzrichtlinie kann aufgrund von Gesetzes- oder Serviceänderungen aktualisiert werden.';

  @override
  String get privacyPolicyContact =>
      'Wenn du Fragen zur Datenschutzrichtlinie hast, kontaktiere uns bitte unten.';

  @override
  String get catMeal => 'Mahlzeit';

  @override
  String get catWater => 'Wasser';

  @override
  String get catGrooming => 'Pflege';

  @override
  String get catBrushing => 'Zähneputzen';

  @override
  String get catWalk => 'Gassigehen';

  @override
  String get catHospital => 'Tierarzt';

  @override
  String get catAbnormalSymptom => 'Abnormal';

  @override
  String get catCondition => 'Zustand';

  @override
  String get catPotty => 'Geschäft';

  @override
  String get mealFormTitle => '🍽️ Mahlzeiten-Tagebuch';

  @override
  String get walkFormTitle => '🦮 Gassi-Tagebuch';

  @override
  String get weightFormTitle => '⚖️ Gewichts-Tagebuch';

  @override
  String get waterFormTitle => '💧 Wasser-Tagebuch';

  @override
  String get medicationFormTitle => '💊 Medikamenten-Tagebuch';

  @override
  String get groomingFormTitle => '✂️ Pflege-Tagebuch';

  @override
  String get brushingFormTitle => '🪥 Zahnputz-Tagebuch';

  @override
  String get conditionFormTitle => '🌡️ Zustands-Tagebuch';

  @override
  String get poopFormTitle => '💩 Geschäfts-Tagebuch';

  @override
  String get vaccinationFormTitle => '💉 Impf-Tagebuch';

  @override
  String get hospitalFormTitle => '🏥 Tierarzt-Tagebuch';

  @override
  String get abnormalSymptomFormTitle => '🚨 Symptom-Tagebuch';

  @override
  String get memoFormTitle => '📝 Notiz';

  @override
  String get measureMethod => 'Messmethode';

  @override
  String get feedAmount => 'Menge';

  @override
  String get mlInputLabel => 'mL manuell eingeben';

  @override
  String get alarmRescheduleNote =>
      'Das Datum für diesen Alarm ist vergangen.\nBitte wähle ein neues Datum oder lösche ihn.';

  @override
  String get nailTrim => 'Krallen schneiden';

  @override
  String get shopNameExample => 'Z.B.: Happy Grooming Salon';

  @override
  String get poopRecordSaved => '💩 Geschäft gespeichert';

  @override
  String get memoRecordSaved => '📝 Notiz gespeichert';

  @override
  String get other => 'Anderes';

  @override
  String get whole => 'Ganzkörper';

  @override
  String get paw => 'Pfote';

  @override
  String get importance => 'Wichtigkeit';

  @override
  String get timeTaken => 'Benötigte Zeit';

  @override
  String get example10 => 'Z.B.: 10';

  @override
  String get minuteUnit => 'Min';

  @override
  String get hospitalNameExample => 'Z.B.: Happy Tierklinik';

  @override
  String get diagnosisExample => 'Z.B.: Enteritis, Dermatitis';

  @override
  String get memoTitlePlaceholder => 'Titel der Notiz eingeben';

  @override
  String get hintMemoTitle => '💡 Gib einen Titel ein';

  @override
  String get poopType => 'Typ';

  @override
  String get poopStatus => 'Status';

  @override
  String get feces => 'Kot';

  @override
  String get bloody => 'Blutig';

  @override
  String get vaccineDhppl => 'SHPPi (Staupe, etc.)';

  @override
  String get vaccineCorona => 'Coronavirus';

  @override
  String get vaccineKennelCough => 'Zwingerhusten';

  @override
  String get vaccineRabies => 'Tollwut';

  @override
  String get vaccineInfluenza => 'Grippe';

  @override
  String get vaccineFvrcp => 'Katzenschnupfen (FVRCP)';

  @override
  String get vaccineFelv => 'Leukose (FeLV)';

  @override
  String get vaccineChlamydia => 'Chlamydien';

  @override
  String get mute => 'Stumm';

  @override
  String get photoVideo => 'Foto · Video';

  @override
  String photoVideoCount(int count) {
    return 'Foto · Video · $count';
  }

  @override
  String get selectMediaSource => 'Medienquelle auswählen';

  @override
  String get cameraCapture => 'Mit Kamera aufnehmen';

  @override
  String get cameraCaptureSubtitle => 'Ein Foto oder Video aufnehmen';

  @override
  String get selectFromGallery => 'Aus Galerie wählen';

  @override
  String get selectFromGallerySubtitle => 'Du kannst mehrere auswählen';

  @override
  String get takePhotoSubtitle => 'Ein Foto mit der Kamera aufnehmen';

  @override
  String get recordVideoSubtitle => 'Ein Video mit der Kamera aufnehmen';

  @override
  String get permissionRequired =>
      'Bitte erlaube den Zugriff in den Einstellungen';

  @override
  String get confirmDeletePhoto => 'Möchtest du dieses Foto wirklich löschen?';

  @override
  String get confirmDeleteVideo => 'Möchtest du dieses Video wirklich löschen?';

  @override
  String get hintMedicineAndDose =>
      '💡 Gib den Namen des Medikaments und die Dosis ein';

  @override
  String deleteRecordBody(String category) {
    return 'Der Eintrag für $category wird gelöscht.\nDiese Aktion kann nicht rückgängig gemacht werden.';
  }

  @override
  String dayCountShort(int days) {
    return '$days Tage';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan ist eine App, mit der du die Gesundheit und den Alltag deines Haustiers an einem Ort aufzeichnen und verwalten kannst.\nDu kannst ganz einfach Mahlzeiten, Wasser, Geschäft, Gewicht, Medikamente und Tierarztbesuche eintragen und Alarme einstellen, um wichtige Ereignisse nicht zu vergessen.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'Sieh dir alle heute hinzugefügten Einträge auf einen Blick an. Tippe auf einen Eintrag, um Details zu sehen oder ihn zu bearbeiten.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'Überprüfe die Anzahl der Geschäfte, Mahlzeiten und den Wasserkonsum dieser Woche in Diagrammen, um die Gewohnheiten deines Haustiers zu verstehen.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'Zeigt die letzten Gewichtsmessungen in einem Diagramm an, um die Gewichtsentwicklung leicht zu verfolgen.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'Tippe auf den Button, um Tierkliniken in der Nähe auf der Karte zu suchen.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'Tippe auf den \'+\'-Button unten, um eine Kategorie auszuwählen und einen neuen Eintrag hinzuzufügen.';

  @override
  String get helpRecordCategoriesIntro =>
      'Du kannst den Alltag deines Haustiers in 12 verschiedenen Kategorien aufzeichnen.';

  @override
  String get helpCategoryPottyName => 'Geschäft';

  @override
  String get helpCategoryPottyDesc =>
      'Notiere Zustand und Art von Kot/Urin. Du kannst auch Fotos anhängen.';

  @override
  String get helpCategoryConditionName => 'Zustand';

  @override
  String get helpCategoryConditionDesc =>
      'Notiere den allgemeinen Gesundheitszustand deines Haustiers.';

  @override
  String get helpCategoryMedicationName => 'Medikament';

  @override
  String get helpCategoryMedicationDesc =>
      'Notiere den Namen des Medikaments, die Dosis und die Uhrzeit.';

  @override
  String get helpCategoryWeightName => 'Gewicht';

  @override
  String get helpCategoryWeightDesc =>
      'Trage das Gewicht (kg) ein. Du kannst den Trend auf dem Startbildschirm überprüfen.';

  @override
  String get helpCategoryMealName => 'Mahlzeit';

  @override
  String get helpCategoryMealDesc =>
      'Notiere Menge und Art der Mahlzeit. Du kannst Fotos/Videos anhängen.';

  @override
  String get helpCategoryWaterName => 'Wasser';

  @override
  String get helpCategoryWaterDesc =>
      'Notiere den Wasserkonsum (ml). Du kannst Fotos/Videos anhängen.';

  @override
  String get helpCategoryHospitalName => 'Tierarzt';

  @override
  String get helpCategoryHospitalDesc =>
      'Notiere den Namen der Klinik und die Diagnose. Du kannst Fotos/Videos anhängen.';

  @override
  String get helpCategoryVaccinationName => 'Impfung';

  @override
  String get helpCategoryVaccinationDesc =>
      'Notiere die Art des Impfstoffs und das Datum.';

  @override
  String get helpCategoryGroomingName => 'Pflege';

  @override
  String get helpCategoryGroomingDesc =>
      'Notiere Pflegedetails und hänge Fotos/Videos an.';

  @override
  String get helpCategoryDentalName => 'Zähneputzen';

  @override
  String get helpCategoryDentalDesc =>
      'Notiere den Zustand beim Zähneputzen und füge Notizen hinzu.';

  @override
  String get helpCategoryWalkName => 'Gassigehen';

  @override
  String get helpCategoryWalkDesc =>
      'Notiere die Entfernung und Dauer des Spaziergangs.';

  @override
  String get helpCategoryMemoName => 'Notiz';

  @override
  String get helpCategoryMemoDesc =>
      'Du kannst Notizen im freien Format hinterlassen.';

  @override
  String get helpJournalViewRecordListDesc =>
      'Zeigt alle Einträge nach Datum an. Du kannst sie leicht an den Kategorie-Symbolen erkennen.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'Wenn du auf einen Eintrag tippst, öffnet sich die Bearbeitungsseite. Du kannst den Inhalt ändern oder den Eintrag löschen.';

  @override
  String get helpJournalAttachMediaDesc =>
      'Du kannst Fotos oder Videos an Kategorien wie Mahlzeit, Wasser, Tierarzt, Pflege und Geschäft anhängen.';

  @override
  String get helpAlarmAddDesc =>
      'Richte Alarme für Impfungen, Medikamente, Tierarzt, Pflege usw. ein. Wähle zuerst den Typ, dann Datum und Uhrzeit.';

  @override
  String get helpAlarmRepeatDesc =>
      'Du kannst Wiederholungsregeln wie täglich, wöchentlich oder monatlich festlegen. Ideal für regelmäßige Medikamente oder Herzwurmprävention.';

  @override
  String get helpAlarmAdvanceDesc =>
      'Für wichtige Ereignisse wie Impfungen kannst du Vorab-Alarme 7 Tage, 3 Tage oder 1 Tag vorher erhalten.';

  @override
  String get helpAlarmCompleteDesc =>
      'Tippe auf einen Alarm, um ihn als erledigt zu markieren. Erledigte Alarme werden in die Liste \'Vergangene Alarme\' verschoben.';

  @override
  String get helpAlarmDeleteDesc =>
      'Wische einen Alarm nach links, um ihn zu löschen.';

  @override
  String get helpPetRegisterDesc =>
      'Registriere dein Haustier, indem du Name, Tierart (Hund/Katze), Rasse, Geschlecht, Geburtsdatum und Kastrationsstatus eingibst.';

  @override
  String get helpPetEditProfileDesc =>
      'Du kannst Name, Rasse, Gewicht, Mikrochip-Nummer, Registrierungsnummer und Profilbild auf dem Profilbildschirm ändern.';

  @override
  String get helpPetManageMultipleDesc =>
      'Du kannst mehrere Haustiere registrieren. Tippe auf das Haustier-Label oben, um zwischen ihnen zu wechseln.';

  @override
  String get helpDogHealthGuideDesc =>
      'Bietet Gesundheitsinformationen basierend auf tierärztlichen Empfehlungen: Impfplan für Pflicht-/Wahlimpfungen, Parasitenprävention, Zahnpflege, Ernährung usw.';

  @override
  String get helpCatHealthGuideDesc =>
      'Sieh dir den katzenspezifischen Impfplan, die Parasitenprävention, Zahnpflege und Ernährungsinformationen an.';

  @override
  String get helpSettingsNotificationDesc =>
      'Aktiviere oder deaktiviere alle App-Benachrichtigungen.';

  @override
  String get helpSettingsExportDesc =>
      'Exportiere alle gespeicherten Daten als ZIP-Datei. Kann als Backup beim Gerätewechsel verwendet werden.';

  @override
  String get helpSettingsImportDesc =>
      'Importiere eine zuvor gespeicherte ZIP-Backup-Datei, um Daten wiederherzustellen.';

  @override
  String get helpSettingsFeedbackDesc =>
      'Wenn du Probleme oder Vorschläge hast, lass es uns per E-Mail wissen. Das hilft uns, die App zu verbessern.';

  @override
  String get helpFaqDeletePetQ =>
      'Wenn ich ein Haustier lösche, werden dann auch alle seine Einträge gelöscht?';

  @override
  String get helpFaqDeletePetA =>
      'Ja, wenn du ein Haustier löschst, werden auch alle seine Einträge und Alarme gelöscht. Bitte exportiere und sichere deine Daten vor dem Löschen.';

  @override
  String get helpFaqMultipleMediaQ =>
      'Kann ich mehrere Fotos an einen einzigen Eintrag anhängen?';

  @override
  String get helpFaqMultipleMediaA =>
      'Ja, du kannst mehrere Fotos oder Videos anhängen. Du kannst sie aus deiner Galerie auswählen oder direkt mit der Kamera aufnehmen.';

  @override
  String get helpFaqNoNotificationQ => 'Ich erhalte keine Alarme.';

  @override
  String get helpFaqNoNotificationA =>
      'Bitte überprüfe, ob Benachrichtigungen für die Pet Sumtan App in deinen Geräteeinstellungen erlaubt sind. Überprüfe außerdem, ob die \'Benachrichtigungseinstellungen\' in der App (Einstellungen > Benachrichtigungen) aktiviert sind.';

  @override
  String get helpFaqMoveDataQ =>
      'Kann ich meine Daten auf ein neues Gerät übertragen?';

  @override
  String get helpFaqMoveDataA =>
      'Speichere eine Backup-Datei über \'Einstellungen > Daten exportieren\' auf deinem alten Gerät und stelle sie über \'Einstellungen > Daten importieren\' auf deinem neuen Gerät wieder her.';

  @override
  String get helpFaqMultiplePetsQ => 'Kann ich mehrere Haustiere registrieren?';

  @override
  String get helpFaqMultiplePetsA =>
      'Du kannst ein Haustier kostenlos registrieren. Weitere Haustiere können durch Nutzung von Premium-Funktionen hinzugefügt werden.';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan ist eine App, die ohne Registrierung genutzt werden kann, und alle Daten werden nur auf deinem Gerät gespeichert. Wir senden deine persönlichen Daten nicht an externe Server, sodass die wertvollen Informationen deines Haustiers sicher sind.';

  @override
  String get privacySection1Title => 'Gesammelte persönliche Informationen';

  @override
  String get privacySection1Body =>
      'Pet Sumtan kann ohne Registrierung genutzt werden und sammelt keine persönlich identifizierbaren Informationen. Um jedoch die App-Funktionen bereitzustellen, können die folgenden Informationen auf deinem Gerät gespeichert werden.';

  @override
  String get privacyLocalStorageInfo =>
      'Lokal auf dem Gerät gespeicherte Informationen';

  @override
  String get privacyPetInfo =>
      'Haustierinformationen: Name, Tierart, Rasse, Geburtsdatum, Geschlecht, Gewicht, Kastrationsstatus, Mikrochip-Nummer, Registrierungsnummer';

  @override
  String get privacyHealthRecords =>
      'Gesundheitsakten: Geschäft, Mahlzeit, Wasser, Gewicht, Medikament, Impfung, Tierarzt, Pflege, Zähneputzen, Gassigehen, Zustand, Notizen usw., die direkt von dir eingegeben wurden';

  @override
  String get privacyAttachedMedia =>
      'Angehängte Mediendateien: Fotos und Videos, die direkt von dir aufgenommen oder ausgewählt wurden';

  @override
  String get privacyNotificationSettings =>
      'Alarmeinstellungen: Alarmtyp, geplantes Datum und Uhrzeit, Wiederholungsregeln';

  @override
  String get privacyInAppPurchaseTitle => 'Über In-App-Käufe';

  @override
  String get privacyPaymentProcessing =>
      'Die Zahlungsabwicklung erfolgt über den Apple App Store oder Google Play Store, und die App sammelt oder speichert deine Zahlungsinformationen nicht direkt.';

  @override
  String get privacyReceiptVerification =>
      'Gemäß den Richtlinien der jeweiligen Plattform werden nur die minimal notwendigen Informationen zur Überprüfung des Kaufbelegs verarbeitet.';

  @override
  String get privacySection2Title => 'Zweck der Sammlung und Nutzung';

  @override
  String get privacyPurposeRecords =>
      'Aufzeichnen und Anzeigen der Gesundheitsakten des Haustiers';

  @override
  String get privacyPurposeStats =>
      'Bereitstellung von Statistiken auf dem Startbildschirm (wöchentlicher Status von Geschäft, Mahlzeit, Wasser, Gewichtsentwicklungsdiagramm usw.)';

  @override
  String get privacyPurposeReminders =>
      'Senden von gesundheitsbezogenen Alarmen wie Impfungen, Medikamente, Tierarzt usw.';

  @override
  String get privacyPurposeBackupRestore =>
      'Bereitstellung von Funktionen zur Datensicherung und -wiederherstellung';

  @override
  String get privacyPurposePaidEligibility =>
      'Überprüfung der Berechtigung zur Nutzung kostenpflichtiger Funktionen';

  @override
  String get privacySection3Title =>
      'Aufbewahrung und Vernichtung von Informationen';

  @override
  String get privacyRetentionBody =>
      'Alle Daten von Pet Sumtan werden nur in der lokalen Datenbank (SQLite) deines Geräts gespeichert und nicht an externe Server gesendet.';

  @override
  String get privacyDataDeletionMethod => 'Methode zur Datenvernichtung';

  @override
  String get privacyDeleteInApp =>
      'Du kannst die Informationen und Einträge des Haustiers direkt über \'Einstellungen > Datenverwaltung\' in der App löschen.';

  @override
  String get privacyDeleteUninstall =>
      'Das Löschen der App löscht auch alle auf dem Gerät gespeicherten Daten.';

  @override
  String get privacyDeleteBackupWarning =>
      'Bitte beachte, dass die Daten nicht wiederhergestellt werden können, wenn du vor dem Löschen der App kein Backup (Export) erstellst.';

  @override
  String get privacySection4Title => 'Weitergabe von Informationen an Dritte';

  @override
  String get privacyThirdPartyBody =>
      'Pet Sumtan gibt deine persönlichen Daten nicht an externe Dritte weiter. Es gibt jedoch folgende Ausnahmen:';

  @override
  String get privacyThirdPartyUserExport =>
      'Wenn du die Datenexportfunktion selbst nutzt (Teilen der Backup-Datei)';

  @override
  String get privacyThirdPartyLegalRequest =>
      'Wenn dies gesetzlich vorgeschrieben ist oder eine rechtliche Anfrage der zuständigen Behörden vorliegt';

  @override
  String get privacySection5Title => 'Informationen zu Zugriffsrechten';

  @override
  String get privacyPermissionsBody =>
      'Um die App-Funktionen bereitzustellen, können wir die folgenden Berechtigungen anfordern. Auch wenn du die Berechtigungen nicht erteilst, kannst du die anderen Funktionen normal nutzen.';

  @override
  String get privacyPermissionCameraName => 'Kamera';

  @override
  String get privacyPermissionCameraDesc =>
      'Wird verwendet, um Fotos oder Videos direkt aufzunehmen und an die Gesundheitsakten anzuhängen.';

  @override
  String get privacyPermissionMediaName => 'Foto- und Medienzugriff';

  @override
  String get privacyPermissionMediaDesc =>
      'Wird verwendet, um Fotos oder Videos aus der Galerie auszuwählen und an die Einträge anzuhängen.';

  @override
  String get privacyPermissionNotificationName => 'Benachrichtigungen';

  @override
  String get privacyPermissionNotificationDesc =>
      'Wird verwendet, um gesundheitsbezogene Alarme wie Impfungen, Medikamente, Tierarzt usw. zu senden.';

  @override
  String get privacyPermissionFileName => 'Dateizugriff (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'Wird verwendet, um Daten-Backup-Dateien zu speichern oder zu laden.';

  @override
  String get privacySection6Title => 'Datensicherung und Wiederherstellung';

  @override
  String get privacyBackupExport =>
      'Exportieren: Du kannst alle App-Daten als Datei (.zip) speichern oder teilen.';

  @override
  String get privacyBackupImport =>
      'Importieren: Du kannst eine zuvor exportierte Backup-Datei laden, um die Daten wiederherzustellen.';

  @override
  String get privacyBackupWarning =>
      'Die Backup-Datei wird von dir verwaltet, achte also darauf, die Datei nicht mit anderen zu teilen.';

  @override
  String get privacySection7Title => 'Schutz der Privatsphäre von Kindern';

  @override
  String get privacyChildrenBody =>
      'Pet Sumtan sammelt nicht separat persönliche Informationen von Kindern unter 14 Jahren. Alle App-Daten werden nur auf dem Gerät gespeichert und nicht an externe Server gesendet, sodass Kinder sie sicher nutzen können.';

  @override
  String get privacySection8Title => 'Änderungen der Datenschutzrichtlinie';

  @override
  String get privacyPolicyChangeNotice =>
      'Bei Änderungen werden wir dich über die Update-Notizen der App oder Hinweise in der App informieren.';

  @override
  String get privacyPolicyChangeEffective =>
      'Die geänderte Richtlinie tritt 7 Tage nach der Benachrichtigung in Kraft.';

  @override
  String get privacySection9Title => 'Kontakt';

  @override
  String get hgDogHeroTitle => 'Gesundheitsratgeber für Hunde';

  @override
  String get hgCatHeroTitle => 'Gesundheitsratgeber für Katzen';

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
      '**SHPPi-Impfung** — Staupe, Hepatitis, Parvovirose, Parainfluenza, Leptospirose.\n1. Dosis mit 6-8 Wochen, dann alle 3-4 Wochen (insgesamt 3 Dosen), jährliche Auffrischung.';

  @override
  String get hgDogCoreRabies =>
      '**Tollwut** — 1. Dosis ab 3 Monaten, dann jährliche Auffrischung (in vielen Regionen gesetzlich vorgeschrieben).';

  @override
  String get hgDogCoreCorona =>
      '**Coronavirus** — Ab 6-8 Wochen, 2 Dosen im Abstand von 3-4 Wochen, jährliche Auffrischung.';

  @override
  String get hgDogNonCoreKennel =>
      '**Zwingerhusten** — Empfohlen für Hunde, die in Pensionen, zum Hundefriseur oder in Hundeparks gehen. Intranasal oder Injektion.';

  @override
  String get hgDogNonCoreFlu =>
      '**Hundegrippe** — Empfohlen bei viel Aktivität im Freien oder häufigem Kontakt mit anderen Hunden.';

  @override
  String get hgDogHeartworm1 =>
      'Es wird empfohlen, während der Mückensaison (etwa März bis November) **einmal im Monat** eine vorbeugende Behandlung durchzuführen.';

  @override
  String get hgDogHeartworm2 =>
      'Bei einer Infektion ist die Behandlung schwierig und kann tödlich sein — **Vorbeugung ist die beste Methode**.';

  @override
  String get hgDogHeartworm3 =>
      'Ein Screening-Test (negatives Ergebnis) ist vor Beginn der Behandlung erforderlich.';

  @override
  String get hgDogHeartworm4 =>
      'Eine ganzjährige Behandlung ist sicherer (von Tierärzten empfohlen).';

  @override
  String get hgDogExternalParasites1 =>
      'Führe **jeden Monat** eine vorbeugende topische (Spot-on) oder orale Behandlung durch.';

  @override
  String get hgDogExternalParasites2 =>
      'Überprüfe nach dem Spaziergang immer die Innenseite der Ohren, zwischen den Pfotenballen und die Achselhöhlen auf Zecken.';

  @override
  String get hgDogExternalParasites3 =>
      'Verwende zum Entfernen einer Zecke eine Zeckenzange und ziehe sie vorsichtig senkrecht heraus (nicht drehen).';

  @override
  String get hgDogInternalParasites1 =>
      'Spulwürmer, Hakenwürmer, Peitschenwürmer: Verabreiche **alle 3 bis 6 Monate** eine Wurmkur.';

  @override
  String get hgDogInternalParasites2 =>
      'Welpen (ab 2 Wochen): Alle 2 Wochen entwurmen (insgesamt 4 Mal), danach regelmäßige Pflege.';

  @override
  String get hgDental1 =>
      'Tägliches Zähneputzen ist ideal — empfohlen **mindestens 3 Mal pro Woche**.';

  @override
  String get hgDental2 =>
      'Verwende immer eine **spezielle Tierzahnpasta** (menschliche Zahnpasta mit Xylit ist strengstens verboten).';

  @override
  String get hgDental3 =>
      'Bei starkem Zahnstein ist eine Zahnsteinentfernung beim Tierarzt erforderlich (unter Vollnarkose).';

  @override
  String get hgDental4 =>
      'Zahnpflege-Snacks und Kauspielzeug können als ergänzende Pflege verwendet werden.';

  @override
  String get hgDogForbiddenFoodAlert =>
      'Die folgenden Lebensmittel sind giftig für Hunde. Selbst kleine Mengen können tödlich sein, gib sie ihnen niemals.';

  @override
  String get hgDogForbiddenGrape =>
      '**Weintrauben/Rosinen** — Verursachen Nierenversagen, tödlich selbst in kleinen Mengen.';

  @override
  String get hgDogForbiddenChocolate =>
      '**Schokolade/Kakao** — Theobromin-Vergiftung, Herzversagen, Krampfanfälle.';

  @override
  String get hgDogForbiddenOnion =>
      '**Zwiebel/Lauch/Knoblauch** — Zerstören rote Blutkörperchen und verursachen hämolytische Anämie.';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xylit (Birkenzucker)** — Übermäßige Insulinausschüttung, Unterzuckerung, Leberversagen.';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Macadamianüsse** — Muskelschwäche, hohes Fieber, Erbrechen.';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Roher Teig/Alkohol** — Ethanolvergiftung, Unterzuckerung.';

  @override
  String get hgDogForbiddenAvocado =>
      '**Avocado** — Enthält Persin, verursacht Erbrechen und Durchfall.';

  @override
  String get hgEmergencyAlert =>
      'Wenn die folgenden Symptome auftreten, suche sofort einen Tierarzt auf.';

  @override
  String get hgDogEmergency1 =>
      'Völliger Appetitverlust für mehr als 24 Stunden.';

  @override
  String get hgDogEmergency2 =>
      'Wiederholtes Erbrechen oder Durchfall 3 Mal oder öfter an einem Tag.';

  @override
  String get hgDogEmergency3 =>
      'Aufgeblähter Bauch / erfolglose Versuche zu erbrechen (Verdacht auf Magendrehung).';

  @override
  String get hgDogEmergency4 =>
      'Atembeschwerden, blasses Zahnfleisch, Zyanose (Blaufärbung).';

  @override
  String get hgDogEmergency5 =>
      'Krampfanfälle, epileptische Anfälle, Bewusstseinsverlust.';

  @override
  String get hgDogEmergency6 => 'Kein Urinabsatz für mehr als 12 Stunden.';

  @override
  String get hgDogEmergency7 =>
      'Sichtbares Trauma, Knochenbrüche, starke Blutungen.';

  @override
  String get hgDogExerciseAlert =>
      'Bewegungsmangel bei Hunden ist nicht nur ein körperliches Problem. Er ist die Hauptursache für Stress, Angstzustände und destruktives Verhalten.';

  @override
  String get hgDogWalk1 =>
      'Kleine Hunde: empfohlen mindestens **20-30 Minuten** pro Tag. Mittlere/große Hunde: mehr als **1 Stunde**.';

  @override
  String get hgDogWalk2 =>
      'Der Spaziergang dient nicht nur dem Geschäft, sondern der **Geruchsstimulation, Sozialisierung und dem Stressabbau**.';

  @override
  String get hgDogWalk3 =>
      'Lass sie ausgiebig schnüffeln — das ist sehr effektiv, um geistige Ermüdung abzubauen.';

  @override
  String get hgDogWalk4 =>
      'Vorsicht vor Verbrennungen auf Asphalt im Sommer — Spaziergänge vor 7 Uhr morgens oder abends empfohlen.';

  @override
  String get hgDogPlay1 =>
      '**Apportieren / Tauziehen** — Verbrennt Energie und stärkt die Bindung zum Besitzer.';

  @override
  String get hgDogPlay2 =>
      '**Nasenarbeit (Nosework)** — Stimuliert das Gehirn, 15 Minuten entsprechen 30 Minuten Spazierengehen.';

  @override
  String get hgDogPlay3 =>
      '**Interaktives Spielzeug/Futterspender** — Wirksam zur Linderung von Trennungsangst beim Alleinsein.';

  @override
  String get hgDogPlay4 =>
      'Nur **10-15 Minuten** konzentriertes Spielen pro Tag können das Stresslevel erheblich senken.';

  @override
  String get hgDogStress1 =>
      'Zerstörung von Möbeln oder Gegenständen, übermäßiges Bellen — Anzeichen für Bewegungsmangel oder fehlende Stimulation.';

  @override
  String get hgDogStress2 =>
      'Schwanzjagen, übermäßiges Lecken (Pfoten oder Körper) — zwanghaftes Verhalten zum Stressabbau.';

  @override
  String get hgDogStress3 =>
      'Übermäßige Angst beim Verlassen des Besitzers, Unsauberkeit im Haus — Verdacht auf Trennungsangst.';

  @override
  String get hgDogStress4 =>
      'Wenn die Symptome anhalten, wird empfohlen, einen Tierarzt oder Verhaltenstherapeuten zu konsultieren.';

  @override
  String get hgDogSocial1 =>
      'Von **3 bis 14 Wochen** ist die goldene Zeit der Sozialisierung — es ist wichtig, sie verschiedenen Menschen, Geräuschen und Umgebungen auszusetzen.';

  @override
  String get hgDogSocial2 =>
      'Interaktion mit anderen Hunden — nutze Hundeparks oder Welpenkurse.';

  @override
  String get hgDogSocial3 =>
      'Das Entdecken neuer Orte, Gerüche und Geräusche trägt zur geistigen Bereicherung bei.';

  @override
  String get hgDogSocial4 =>
      'Training mit positiver Verstärkung (Clicker, Leckerlis) stimuliert das Gehirn und stärkt gleichzeitig die Bindung.';

  @override
  String get hgCatCoreFvrcp =>
      '**Katzenschnupfen/Katzenseuche (FVRCP)** — Herpesvirus, Calicivirus, Parvovirus (Panleukopenie).\n1. Dosis mit 6-8 Wochen, dann alle 3-4 Wochen (insgesamt 3 Dosen), Auffrischung alle 1 bis 3 Jahre.';

  @override
  String get hgCatCoreRabies =>
      '**Tollwut** — Obligatorisch für Freigänger, empfohlen für Wohnungskatzen (in vielen Regionen gesetzlich vorgeschrieben).';

  @override
  String get hgCatNonCoreFelv =>
      '**Felines Leukämievirus (FeLV)** — Dringend empfohlen für Freigänger oder Katzen, die mit anderen Katzen zusammenleben.';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Feline Chlamydiose** — In Mehrkatzenhaushalten, beugt Bindehautentzündung vor.';

  @override
  String get hgCatNonCoreFiv =>
      '**FIV (Katzenaids)** — Für männliche Freigänger (wird durch Bisse übertragen).';

  @override
  String get hgCatExternalParasites1 =>
      'Freigänger: Führe **einmal im Monat** eine vorbeugende Behandlung gegen Flöhe/Zecken durch.';

  @override
  String get hgCatExternalParasites2 =>
      'Auch Wohnungskatzen können Flöhe über Kleidung oder Schuhe bekommen → Vorbeugung **alle 3 Monate** empfohlen.';

  @override
  String get hgCatExternalParasites3 =>
      'Bei der Verwendung von Spot-ons genau im Nacken auftragen.';

  @override
  String get hgCatInternalHeartworm => 'Interne Parasiten und Herzwurm';

  @override
  String get hgCatInternalParasites1 =>
      'Spulwürmer/Bandwürmer: Verabreiche **alle 3 bis 6 Monate** eine Wurmkur.';

  @override
  String get hgCatInternalParasites2 =>
      'Bei Fütterung mit rohem Fleisch oder Fisch werden häufigere Kontrollen empfohlen.';

  @override
  String get hgCatHeartworm1 =>
      'Herzwurm — **Keine Behandlung für Katzen, Vorbeugung ist die einzige Methode**. Monatliche Behandlung für Freigänger dringend empfohlen.';

  @override
  String get hgCatMajorDiseases =>
      'Wichtige Katzenkrankheiten, auf die man achten sollte';

  @override
  String get hgCatDiseaseAlert =>
      'Katzen verbergen ihre Schmerzen sehr gut, Symptome treten oft erst auf, wenn die Krankheit bereits fortgeschritten ist. Regelmäßige Gesundheitschecks sind unerlässlich.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Erkrankung der unteren Harnwege (FLUTD)** — Häufig bei Katern. Die Unfähigkeit zu urinieren ist ein absoluter Notfall.';

  @override
  String get hgCatDiseaseCkd =>
      '**Chronische Nierenerkrankung (CNE)** — Häufigste Todesursache bei älteren Katzen. Regelmäßige Blutuntersuchungen sind nach 7 Jahren unerlässlich.';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Katzendiabetes** — Erhöhtes Risiko bei fettleibigen oder älteren Katzen. Achte auf vermehrten Durst und Urinabsatz.';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Schilddrüsenüberfunktion** — Häufig bei Katzen über 10 Jahren. Symptome sind Gewichtsverlust, Heißhunger und Unruhe.';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Stomatitis (Mundschleimhautentzündung)** — Sehr häufige Erkrankung bei Katzen. Achte auf Mundgeruch, Sabbern oder Appetitlosigkeit.';

  @override
  String get hgCatDiseaseFhv =>
      '**Felines Herpesvirus (FHV-1)** — Das Virus bleibt nach der Infektion lebenslang latent. Tritt bei Stress wieder auf und verursacht Niesen, Augenausfluss und Bindehautentzündung.';

  @override
  String get hgHydrationDiet => 'Flüssigkeitszufuhr und Ernährungsmanagement';

  @override
  String get hgCatHydrationAlert =>
      'Katzen trinken von Natur aus wenig, was sie anfällig für Harnwegserkrankungen macht. Es ist sehr wichtig, sie zum Trinken zu animieren.';

  @override
  String get hgCatHydration1 =>
      'Es wird empfohlen, mit Nassfutter (Dose oder Beutel) zu kombinieren, um die Flüssigkeitszufuhr zu ergänzen.';

  @override
  String get hgCatHydration2 =>
      'Sie bevorzugen fließendes Wasser — die Installation eines **Trinkbrunnens** ist sehr effektiv.';

  @override
  String get hgCatHydration3 =>
      'Stelle den Wassernapf vom Futternapf entfernt auf; sie bevorzugen breite und flache Näpfe.';

  @override
  String get hgCatHydration4 =>
      'Ziel der Flüssigkeitszufuhr: etwa **40-60 ml** pro kg Körpergewicht pro Tag.';

  @override
  String get hgCatForbiddenFoodAlert =>
      'Die folgenden Lebensmittel sind giftig für Katzen. Selbst kleine Mengen können tödlich sein, gib sie ihnen niemals.';

  @override
  String get hgCatForbiddenOnion =>
      '**Zwiebel/Lauch/Knoblauch** — Zerstören rote Blutkörperchen, verursachen hämolytische Anämie (empfindlicher als Hunde).';

  @override
  String get hgCatForbiddenGrape =>
      '**Weintrauben/Rosinen** — Verursachen Nierenversagen.';

  @override
  String get hgCatForbiddenChocolate =>
      '**Schokolade/Koffein** — Giftig für Herz und Nervensystem.';

  @override
  String get hgCatForbiddenRawFish =>
      '**Roher Fisch (dauerhafte Fütterung)** — Verursacht Thiaminmangel (Vitamin B1).';

  @override
  String get hgCatForbiddenMilk =>
      '**Milch/Milchprodukte** — Ausgewachsene Katzen sind laktoseintolerant, was Durchfall verursacht.';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xylit/Alkohol** — Giftig für Leber und Nervensystem.';

  @override
  String get hgCatForbiddenAvocado =>
      '**Avocado** — Enthält Persin, verursacht Erbrechen und Durchfall.';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Rohes Eiweiß** — Avidin blockiert die Aufnahme von Biotin und verursacht Haut- und Fellprobleme.';

  @override
  String get hgCatEmergency1 =>
      '**Völlige Unfähigkeit zu urinieren oder Blut im Urin** — Notfall wegen Harnröhrenverschluss (besonders bei Katern).';

  @override
  String get hgCatEmergency2 =>
      'Völliger Appetitverlust für mehr als 24 Stunden (Risiko einer hepatischen Lipidose / Fettleber).';

  @override
  String get hgCatEmergency3 =>
      '**Atmen mit offenem Mund** — Ist bei Katzen nie normal und erfordert sofortige Notfallversorgung.';

  @override
  String get hgCatEmergency4 =>
      'Plötzliche Lähmung oder Kälte der Hinterbeine (Verdacht auf Thrombose).';

  @override
  String get hgCatEmergency5 =>
      'Krampfanfälle, epileptische Anfälle, Bewusstseinsverlust.';

  @override
  String get hgCatEmergency6 =>
      'Blasses oder gelbliches (Gelbsucht) Zahnfleisch oder Zunge.';

  @override
  String get hgCatEmergency7 =>
      'Wiederholtes Erbrechen oder Durchfall 3 Mal oder öfter an einem Tag, oder Blut im Kot/Erbrochenen.';

  @override
  String get hgCatEmergency8 =>
      'Sichtbares Trauma, Knochenbrüche, starke Blutungen.';

  @override
  String get hgEnvironmentMentalHealth => 'Umgebung und geistige Gesundheit';

  @override
  String get hgIndoorEnvironment => 'Management der Innenraumumgebung';

  @override
  String get hgStressManagement => 'Stressmanagement';

  @override
  String get hgCatEnvironment1 =>
      '**Katzentoiletten**: Mindestens die Anzahl der Katzen + 1, täglich sauber halten.';

  @override
  String get hgCatEnvironment2 =>
      '**Kratzbäume**: Mindestens 2 oder mehr (Kombination aus vertikalen und horizontalen Typen).';

  @override
  String get hgCatEnvironment3 =>
      '**Erhöhte Plätze**: Biete vertikale Räume wie Kratzbäume oder Regale an (befriedigt den Revierinstinkt).';

  @override
  String get hgCatEnvironment4 =>
      '**Verstecke**: Biete sichere Versteckmöglichkeiten wie Kisten oder Tunnel.';

  @override
  String get hgCatStress1 =>
      'Stress bei Katzen führt direkt zu einer Schwächung des Immunsystems, Harnwegserkrankungen, Wiederauftreten von Herpes usw.';

  @override
  String get hgCatStress2 =>
      'Bei plötzlichen Veränderungen (Umzug, neue Familienmitglieder usw.) verwende Pheromon-Zerstäuber (Feliway).';

  @override
  String get hgCatStress3 =>
      'Sorge jeden Tag für mindestens **10-15 Minuten** interaktives Spielen mit einer Katzenangel.';

  @override
  String get hgCatStress4 =>
      'Mehrkatzenhaushalte: Trenne Ressourcen (Näpfe, Toiletten, Betten) entsprechend der Anzahl der Katzen.';

  @override
  String get hgAge => 'Alter';

  @override
  String get hgCheckupCycle => 'Check-up-Häufigkeit';

  @override
  String get hgMainItems => 'Hauptuntersuchungen';

  @override
  String get hgAge1to6 => '1 bis 6 Jahre';

  @override
  String get hgAge7to10 => '7 bis 10 Jahre';

  @override
  String get hgAge11Plus => '11 Jahre und älter';

  @override
  String get hgYearlyOnce => '1 Mal pro Jahr';

  @override
  String get hgYearlyTwice => '2 Mal pro Jahr';

  @override
  String get hgEvery3to4Months => 'Alle 3-4 Monate';

  @override
  String get hgDogCheckupItems1 =>
      'Blutuntersuchung, Herzauskultation, Gewicht, Zähne';

  @override
  String get hgDogCheckupItems2 => 'Blut, Urin, Röntgen, Blutdruck, Gelenke';

  @override
  String get hgDogCheckupItems3 =>
      'Großes Blutbild, Ultraschall, Nieren-/Leberfunktion';

  @override
  String get hgCatCheckupItems1 =>
      'Blutuntersuchung, Urinuntersuchung, Gewicht, Zähne';

  @override
  String get hgCatCheckupItems2 =>
      'Nieren-/Leberwerte, Blutdruck, Schilddrüse (T4)';

  @override
  String get hgCatCheckupItems3 =>
      'Großes Blutbild, Bauch-Ultraschall, intensive Nierenüberwachung';

  @override
  String get hgExerciseAmount => 'Bewegungsbedarf';

  @override
  String get hgBreedExamples => 'Typische Rassen';

  @override
  String get hgLow => 'Niedrig';

  @override
  String get hgNormal => 'Normal';

  @override
  String get hgHigh => 'Hoch';

  @override
  String get hgBreedLowExamples =>
      'Bulldogge, Basset Hound, Shih Tzu, Malteser';

  @override
  String get hgBreedNormalExamples =>
      'Pudel, Bichon Frisé, Cocker Spaniel, Beagle';

  @override
  String get hgBreedHighExamples =>
      'Labrador, Golden Retriever, Husky, Border Collie';

  @override
  String get hgDisclaimer =>
      'Dieser Ratgeber bietet allgemeine Gesundheitsinformationen. Die notwendige Pflege kann je nach spezifischem Zustand deines Haustiers variieren. Bei abnormalen Symptomen oder Behandlungsbedarf konsultiere immer einen Tierarzt.';

  @override
  String get categoryFilter => 'Kategoriefilter';

  @override
  String get selectAll => 'Alle auswählen';

  @override
  String get deselectAll => 'Alle abwählen';

  @override
  String get apply => 'Anwenden';

  @override
  String get saving => 'Wird gespeichert...';

  @override
  String get treatmentContent => 'Behandlung';

  @override
  String get conditionScoreWord1 => 'Sehr schlecht';

  @override
  String get conditionScoreWord2 => 'Schlecht';

  @override
  String get conditionScoreWord3 => 'Mittelmäßig';

  @override
  String get conditionScoreWord4 => 'Gut';

  @override
  String get conditionScoreWord5 => 'Sehr gut';

  @override
  String conditionScoreFormat(Object score, Object word) {
    return 'Score $score - $word';
  }
}
