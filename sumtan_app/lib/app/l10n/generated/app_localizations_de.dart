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
  String get appTagline => 'App für Tiergesundheit';

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
  String get drawerNearbyHospitals => 'Kliniken in der Nähe finden';

  @override
  String get drawerNearbyHospitalsSub => 'Tierkliniken in Ihrer Nähe';

  @override
  String get drawerHealthGuide => 'Gesundheitsratgeber';

  @override
  String get drawerHealthGuideSub => 'Ratgeber für Tiergesundheit';

  @override
  String get drawerApp => 'App';

  @override
  String get drawerHelp => 'Hilfe';

  @override
  String get dialogExternalTitle => 'Externe Seite öffnen';

  @override
  String get dialogExternalHospitalBody =>
      'Um Tierkliniken in der Nähe zu finden,\nwird eine externe Webseite benötigt.\n\nJetzt öffnen?';

  @override
  String get commonCancel => 'Abbrechen';

  @override
  String get commonGo => 'Öffnen';

  @override
  String get commonDelete => 'Löschen';

  @override
  String get commonSave => 'Speichern';

  @override
  String get commonLoading => 'Wird vorbereitet...';

  @override
  String commonPercent(String percent) {
    return '$percent %';
  }

  @override
  String get toastBackToExit => 'Nochmals drücken zum Beenden';

  @override
  String get toastNeedPet =>
      'Noch kein Haustier. Bitte zuerst im Profil hinzufügen!';

  @override
  String get settingsNotifications => 'Mitteilungen';

  @override
  String get settingsPushNotifications => 'Push-Mitteilungen erlauben';

  @override
  String get settingsPushNotificationsSub =>
      'Mitteilungsberechtigungen des Geräts';

  @override
  String get settingsLanguageSection => 'Sprache';

  @override
  String get settingsLanguage => 'App-Sprache';

  @override
  String get settingsLanguageSystem => 'Geräteeinstellungen verwenden';

  @override
  String get settingsLanguageChanged => 'App-Sprache geändert';

  @override
  String get settingsData => 'Datenverwaltung';

  @override
  String get settingsExport => 'Daten exportieren';

  @override
  String get settingsExportSub => 'Als ZIP speichern';

  @override
  String get settingsImport => 'Daten importieren';

  @override
  String get settingsImportSub => 'Aus ZIP wiederherstellen';

  @override
  String get settingsAppInfo => 'App-Info';

  @override
  String get settingsVersion => 'App-Version';

  @override
  String get settingsPrivacy => 'Datenschutzerklärung';

  @override
  String get settingsFeedback => 'Feedback senden';

  @override
  String get settingsFeedbackSubject => 'Pet Sumtan – Feedback';

  @override
  String get settingsEmailAppMissing => 'Keine E-Mail-App gefunden';

  @override
  String get settingsImportConfirmBody =>
      'Alle vorhandenen Daten werden gelöscht und durch die Sicherungsdaten ersetzt.\n\nFortfahren?';

  @override
  String get settingsImportAction => 'Importieren';

  @override
  String get settingsImporting => 'Daten werden importiert';

  @override
  String get settingsImportSuccess => 'Sicherung wiederhergestellt';

  @override
  String get settingsImportFailed => 'Import fehlgeschlagen';

  @override
  String get settingsExportTitle => 'Daten exportieren';

  @override
  String get settingsExportBenefitTitle =>
      'Deine Aufzeichnungen sicher aufbewahren';

  @override
  String get settingsExportBenefitPets => 'Alle Tierprofile und Fotos';

  @override
  String get settingsExportBenefitRecords =>
      'Alle Gesundheitseinträge, Tagebücher und Gewichte';

  @override
  String get settingsExportBenefitMedia =>
      'Inklusive angehängter Bilder und Videos';

  @override
  String get settingsStoreUnavailable =>
      'Verbindung zum Store nicht möglich.\nBitte später erneut versuchen.';

  @override
  String settingsPayAndExport(String price) {
    return '$price bezahlen und exportieren';
  }

  @override
  String get settingsUnlocked => 'Entsperrt';

  @override
  String get settingsExportUnlockedBody =>
      'Alle Tierinfos und Einträge als ZIP speichern.\nDie Datei kann jederzeit kostenlos importiert und wiederhergestellt werden.';

  @override
  String get settingsExporting => 'Wird exportiert...';

  @override
  String get settingsExportZip => 'Als ZIP exportieren';

  @override
  String get settingsExportConfirmBody =>
      'Alle Tierinfos, Einträge und Medien werden als ZIP exportiert.';

  @override
  String get settingsExportAction => 'Exportieren';

  @override
  String get settingsExportSuccess => 'Sicherungsdatei kann geteilt werden';

  @override
  String get settingsExportFailed => 'Export fehlgeschlagen';

  @override
  String get settingsPurchaseFailed => 'Zahlung fehlgeschlagen';

  @override
  String get settingsPurchaseProductLoadFailed =>
      'Produktinformationen konnten nicht geladen werden. Bitte in Kürze erneut versuchen.';

  @override
  String get settingsPurchaseStartFailed =>
      'Zahlung konnte nicht gestartet werden. Bitte in Kürze erneut versuchen.';

  @override
  String get errorDbInit =>
      'Beim Vorbereiten der App-Daten ist ein Problem aufgetreten.\nBitte später erneut starten.';

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
  String get memoPlaceholder => 'Schreibe eine Notiz frei';

  @override
  String get addBtn => '+ Hinzufügen';

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
  String get noAlarms => 'Noch keine Alarme';

  @override
  String alarmEmptyDesc(String petName) {
    return 'Halte $petName heute gesund.\nTippe unten auf Alarm hinzufügen, um zu beginnen.';
  }

  @override
  String get scheduledAlarms => 'Geplante Alarme';

  @override
  String get swipeToDelete => 'Wischen zum Löschen';

  @override
  String get selectAlarmType => 'Alarmtyp auswählen';

  @override
  String get vetAppointment => 'Tierarzttermin';

  @override
  String get medication => 'Medikament';

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
      'Erinnerungen zur Tiergesundheit';

  @override
  String alarmNotificationTitle(String type) {
    return '$type-Alarm';
  }

  @override
  String get alarmBodyVaccination => 'Bitte prüfe das Impfdatum.';

  @override
  String get alarmBodyVetAppointment => 'Dein Tierarzttermin rückt näher.';

  @override
  String get alarmBodyMedication => 'Es ist Zeit für das Medikament.';

  @override
  String get alarmBodyMealTime => 'Vergiss die Fütterungszeit nicht.';

  @override
  String get alarmBodyDailyReminder =>
      'Bitte füge den heutigen Gesundheitseintrag hinzu.';

  @override
  String get alarmBodyDefault => 'Tiergesundheits-Alarm.';

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
    return '$count vergangene Alarme löschen?';
  }

  @override
  String get pastAlarmsDeleted => 'Alle vergangenen Alarme gelöscht';

  @override
  String get pastLabel => 'Vergangen';

  @override
  String get today => 'Heute';

  @override
  String get tomorrowSameTime => 'Morgen, gleiche Uhrzeit';

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
  String get snoozeCustom => 'Manuell wählen';

  @override
  String get snoozeAtThisTime => 'Zu dieser Zeit erinnern';

  @override
  String snoozeConfirm(String time) {
    return 'Wir erinnern dich um $time';
  }

  @override
  String get selectFutureTime => 'Bitte eine zukünftige Uhrzeit wählen';

  @override
  String recordCheckHint(String typeLabel) {
    return 'Du kannst es unter Eintrag > $typeLabel sehen.';
  }

  @override
  String get pushAlsoCancel =>
      'Die geplante Push-Mitteilung wird ebenfalls abgebrochen.';

  @override
  String get reschedule => 'Neu planen';

  @override
  String get deleteThisAlarm => 'Diesen Alarm löschen';

  @override
  String get vaccineNameRequired => 'Impfstoffname *';

  @override
  String get vaccineNameExample => 'Z.B. Tollwut, Kombinationsimpfstoff';

  @override
  String get scheduledDateRequired => 'Datum *';

  @override
  String get reminderTiming => 'Erinnerungszeitpunkt';

  @override
  String get sameDay => 'Gleicher Tag';

  @override
  String get reminderTimeRequired => 'Erinnerungszeit *';

  @override
  String get memoInputHint => 'Notiz eingeben';

  @override
  String get visitPurposeRequired => 'Besuchszweck *';

  @override
  String get visitPurposeExample => 'Z.B. Vorsorge, Hautbehandlung';

  @override
  String get appointmentDateTimeRequired => 'Termindatum und -uhrzeit *';

  @override
  String get hospitalName => 'Klinikname';

  @override
  String get hospitalNameHint => 'Klinikname eingeben';

  @override
  String get medicineNameRequired => 'Medikamentenname *';

  @override
  String get medicineNameExample => 'Z.B. Herzwurm-Mittel, Entwurmungsmittel';

  @override
  String get repeatRequired => 'Wiederholen *';

  @override
  String get none => 'Keine';

  @override
  String get daily => 'Täglich';

  @override
  String get weekly => 'Wöchentlich';

  @override
  String get monthly => 'Monatlich';

  @override
  String get weekdays => 'Werktage';

  @override
  String get weekdaysOnly => 'Nur Werktage';

  @override
  String get weekends => 'Wochenende';

  @override
  String get weekendsOnly => 'Nur Wochenende';

  @override
  String get medicationDateTimeRequired => 'Medikamentendatum und -uhrzeit *';

  @override
  String get medicationTimeRequired => 'Medikamentenzeit *';

  @override
  String get alarmNameRequired => 'Alarmname *';

  @override
  String get mealTimeExample => 'Z.B. Frühstück, Abendessen';

  @override
  String get mealTimeRequired => 'Fütterungszeit *';

  @override
  String get alarmMessage => 'Alarmmeldung';

  @override
  String get alarmMessageExample =>
      'Z.B. Hast du den heutigen Eintrag hinzugefügt?';

  @override
  String get alarmPastDueMsg =>
      'Das Datum dieses Alarms ist abgelaufen.\nDu kannst ein neues Datum wählen oder ihn löschen.';

  @override
  String get reselectDate => 'Datum erneut auswählen';

  @override
  String get selectDate => 'Datum auswählen';

  @override
  String get selectTime => 'Uhrzeit auswählen';

  @override
  String get todayStatus => 'Heutiger Status';

  @override
  String get addRecord => '+ Eintrag hinzufügen';

  @override
  String get todayReminders => 'Heutige Erinnerungen';

  @override
  String get todayRecords => 'Heutige Einträge';

  @override
  String get viewAll => 'Alle anzeigen';

  @override
  String get weekStats => 'Gesundheitsstatistiken';

  @override
  String get pottyCount => 'Toilettengänge';

  @override
  String get mealCount => 'Mahlzeiten';

  @override
  String get waterLevel => 'Wasseraufnahme';

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
  String get deleteRecordConfirm => 'Diesen Eintrag löschen?';

  @override
  String get deleteConfirmBody =>
      'Das kann nicht rückgängig gemacht werden! 😢';

  @override
  String get deleteConfirmOk => 'Löschen';

  @override
  String get deleteThisRecord => 'Diesen Eintrag löschen';

  @override
  String get typeLabel => 'Art';

  @override
  String get statusLabel => 'Status';

  @override
  String get conditionScore => 'Konditionspunktzahl';

  @override
  String get symptomTags => 'Symptom-Tags';

  @override
  String get medicineName => 'Medikamentenname';

  @override
  String get dose => 'Dosis';

  @override
  String get medicationMethod => 'Verabreichungsmethode';

  @override
  String get weightKg => 'Gewicht (kg)';

  @override
  String get measurementMethod => 'Messmethode';

  @override
  String get mealType => 'Mahlzeitenart';

  @override
  String get mealAmount => 'Mahlzeitenmenge';

  @override
  String get servingAmount => 'Portionsgröße';

  @override
  String get waterAmount => 'Wassermenge';

  @override
  String get visitType => 'Besuchsart';

  @override
  String get diagnosisName => 'Diagnose';

  @override
  String get vaccineType => 'Impfstoffart';

  @override
  String get sideEffects => 'Nebenwirkungen';

  @override
  String get groomingType => 'Pflegeart';

  @override
  String get shopName => 'Salonname';

  @override
  String get cost => 'Kosten';

  @override
  String get nextAppointment => 'Nächster Termin';

  @override
  String get brushingArea => 'Bürstenbereich';

  @override
  String get duration => 'Dauer';

  @override
  String get walkTime => 'Spaziergangszeit';

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
  String get normal => 'Normal';

  @override
  String get loose => 'Weich';

  @override
  String get hard => 'Hart';

  @override
  String get bloodInStool => 'Blut im Stuhl';

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
  String get topical => 'Äußerlich';

  @override
  String get eyeDrops => 'Augentropfen';

  @override
  String get earDrops => 'Ohrentropfen';

  @override
  String get vetHospital => 'Tierklinik';

  @override
  String get homeScale => 'Haushaltswaage';

  @override
  String get holdAndWeigh => 'Im Arm wiegen';

  @override
  String get breakfast => 'Frühstück';

  @override
  String get lunch => 'Mittagessen';

  @override
  String get dinner => 'Abendessen';

  @override
  String get snack => 'Snack';

  @override
  String get veryLittle => 'Sehr wenig';

  @override
  String get little => 'Wenig';

  @override
  String get much => 'Viel';

  @override
  String get veryMuch => 'Sehr viel';

  @override
  String get general => 'Normal';

  @override
  String get regularCheckup => 'Vorsorge';

  @override
  String get emergency => 'Notfall';

  @override
  String get mild => 'Leicht';

  @override
  String get severe => 'Schwer';

  @override
  String get bath => 'Bad';

  @override
  String get fullGrooming => 'Vollpflege';

  @override
  String get partialGrooming => 'Teilpflege';

  @override
  String get nails => 'Nägel';

  @override
  String get earCleaning => 'Ohrenreinigung';

  @override
  String get tartarRemoval => 'Zahnsteinentfernung';

  @override
  String get analGlands => 'Analdrüsen';

  @override
  String get all => 'Alle';

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
  String get photosAndVideos => 'Fotos · Videos';

  @override
  String get addMedia => 'Medien hinzufügen';

  @override
  String get selectMediaMethod => 'Medien hinzufügen: Methode wählen';

  @override
  String get useCamera => 'Kamera verwenden';

  @override
  String get takePhotoOrVideo => 'Foto oder Video aufnehmen';

  @override
  String get chooseFromGallery => 'Aus Galerie wählen';

  @override
  String get multiSelectHint => 'Mehrere Fotos und Videos auswählen';

  @override
  String get takePhoto => 'Foto aufnehmen';

  @override
  String get takePhotoDesc => 'Foto mit der Kamera aufnehmen';

  @override
  String get recordVideo => 'Video aufnehmen';

  @override
  String get recordVideoDesc => 'Video mit der Kamera aufnehmen';

  @override
  String get deleteThisPhoto => 'Foto löschen';

  @override
  String get deletePhotoConfirm => 'Dieses Foto löschen?';

  @override
  String get deleteThisVideo => 'Video löschen';

  @override
  String get deleteVideoConfirm => 'Dieses Video löschen?';

  @override
  String get muted => 'Stumm';

  @override
  String get soundOn => 'Ton ein';

  @override
  String get allowPermissionInSettings =>
      'Bitte Berechtigung in Einstellungen erlauben';

  @override
  String get openSettings => 'Einstellungen öffnen';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

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
  String get faq => 'Häufige Fragen';

  @override
  String get homeScreen => 'Startbildschirm';

  @override
  String get journalScreen => 'Tagebuchbildschirm';

  @override
  String get alarmScreen => 'Alarmbildschirm';

  @override
  String get petManagement => 'Tierverwaltung';

  @override
  String get recordCategories => 'Eintragskategorien';

  @override
  String get whatIsPetSumtan => 'Was ist Pet Sumtan?';

  @override
  String get todayRecordSummary => 'Heutige Eintragsübersicht';

  @override
  String get weeklyStats => 'Wöchentliche Statistiken';

  @override
  String get weightChangeChart => 'Gewichtsverlaufsdiagramm';

  @override
  String get findNearbyHospitals => 'Kliniken in der Nähe suchen';

  @override
  String get addNewRecord => 'Neuen Eintrag hinzufügen (+)';

  @override
  String get viewRecordList => 'Einträge ansehen';

  @override
  String get editDeleteRecord => 'Einträge bearbeiten und löschen';

  @override
  String get attachMedia => 'Fotos/Videos anhängen';

  @override
  String get addAlarm => 'Alarm hinzufügen';

  @override
  String get repeatAlarm => 'Wiederholende Alarme';

  @override
  String get advanceAlarmHint => 'Vorab-Alarme (T-7, T-3, T-1)';

  @override
  String get completeAlarm => 'Alarme abschließen';

  @override
  String get deleteAlarm => 'Alarme löschen';

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
  String get dogHealthCareGuide => 'Gesundheitsratgeber für Hunde';

  @override
  String get catHealthCareGuide => 'Gesundheitsratgeber für Katzen';

  @override
  String get healthGuideSubtitle =>
      'Ein professioneller Gesundheitsratgeber\nbasierend auf tierärztlichen Empfehlungen.';

  @override
  String get vaccination => 'Impfung';

  @override
  String get coreVaccines => 'Kernimpfungen';

  @override
  String get required => 'Pflicht';

  @override
  String get nonCoreVaccines => 'Optionale Impfungen';

  @override
  String get recommended => 'Empfohlen';

  @override
  String get parasitePrevention => 'Parasitenprophylaxe';

  @override
  String get heartworm => 'Herzwurm';

  @override
  String get monthlyFreq => 'Monatlich';

  @override
  String get externalParasites => 'Äußere Parasiten (Flöhe/Zecken)';

  @override
  String get internalParasites => 'Innere Parasiten';

  @override
  String get threeToSixMonths => '3-6 Monate';

  @override
  String get nutritionManagement => 'Ernährung';

  @override
  String get dentalCare => 'Zahnpflege';

  @override
  String get healthCheckup => 'Gesundheitschecks';

  @override
  String get emergencySigns => 'Notfallzeichen';

  @override
  String get age => 'Alter';

  @override
  String get checkupCycle => 'Untersuchungsintervall';

  @override
  String get mainItems => 'Wichtige Punkte';

  @override
  String get exerciseLevel => 'Bewegungsbedarf';

  @override
  String get breedExamples => 'Rassebeispiele';

  @override
  String get low => 'Gering';

  @override
  String get high => 'Hoch';

  @override
  String get menu => 'Menü';

  @override
  String get helloGreeting => 'Hallo! ';

  @override
  String get healthyTodayMsg => '\nHeute gesund? 🐾';

  @override
  String get noRecordsYet => 'Noch keine Einträge';

  @override
  String lastRecord(String time) {
    return 'Letzter Eintrag · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return 'Durchschn. $value$unit/Tag';
  }

  @override
  String get weightTrend => '⚖️ Gewichtsverlauf';

  @override
  String get weightChange => '⚖️ Gewichtsveränderung';

  @override
  String get noWeightData => 'Noch keine Gewichtsdaten';

  @override
  String get measuredWeight => 'Gemessenes Gewicht';

  @override
  String get standardRange => 'Normalbereich';

  @override
  String get noTodayRecords => 'Heute noch keine Einträge';

  @override
  String get homeNoRecordHint =>
      'Kondition, Toilette und Gewicht erfassen\nfür die Gesundheitsvorsorge deines Tieres.';

  @override
  String noRecordsForDate(String date) {
    return 'Keine Einträge für $date';
  }

  @override
  String recordsForDate(String date, String count) {
    return 'Einträge vom $date ($count)';
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
  String get whatToRecord => '📝 Was möchtest du erfassen?';

  @override
  String saveErrorMsg(String error) {
    return 'Beim Speichern ist ein Fehler aufgetreten: $error';
  }

  @override
  String get alarmUpdated => 'Alarm aktualisiert';

  @override
  String get alarmAdded => 'Alarm hinzugefügt';

  @override
  String get editAlarm => 'Alarm bearbeiten';

  @override
  String get deleteAlarmConfirm => 'Diesen Alarm löschen?';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name wird gelöscht,\nund die geplante Push-Mitteilung wird ebenfalls abgebrochen.';
  }

  @override
  String get doneMsg => '✅ Erledigt';

  @override
  String get laterMsg => '🕐 Später';

  @override
  String get saveCompletion => '✅ Abschluss speichern';

  @override
  String completedQuestion(String type) {
    return 'Hast du $type abgeschlossen?';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'Wir speichern\n$name automatisch in den heutigen Einträgen.';
  }

  @override
  String completionSaved(String name) {
    return 'Abschluss von $name gespeichert';
  }

  @override
  String get tapAlarmTypeHint => '👆 Tippe auf den gewünschten Alarmtyp';

  @override
  String countUnit(int count) {
    return '$count';
  }

  @override
  String dateCompleted(String date) {
    return '$date · Abgeschlossen';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date abgelaufen · Tippen zum Neu planen';
  }

  @override
  String get completedLabel => 'Abgeschlossen';

  @override
  String get edit => 'Bearbeiten';

  @override
  String recordDeleteCannotUndo(String category) {
    return 'Der Eintrag $category wird gelöscht\nund kann nicht wiederhergestellt werden.';
  }

  @override
  String get hintMedicineNameAndDose =>
      'Bitte Medikamentenname und Dosis eingeben';

  @override
  String get hintMedicineName => 'Bitte einen Medikamentennamen eingeben';

  @override
  String get hintDose => 'Bitte eine Dosis eingeben';

  @override
  String get hintWeightNumber => 'Bitte Gewicht als Zahl eingeben';

  @override
  String get hintWeight => 'Bitte Gewicht eingeben';

  @override
  String get hintWeightIsNumber => 'Bitte Gewicht als Zahl eingeben';

  @override
  String get hintWalkTime => 'Bitte Spaziergangszeit eingeben';

  @override
  String get hintWalkTimeIsNumber => 'Bitte Spaziergangszeit als Zahl eingeben';

  @override
  String get hintWalkTimeNumber => 'Bitte Spaziergangszeit als Zahl eingeben';

  @override
  String get hintSelectBrushingArea =>
      'Bitte mindestens einen Bürstenbereich auswählen';

  @override
  String get hintSelectVaccineType =>
      'Bitte mindestens eine Impfstoffart auswählen';

  @override
  String get hintSelectGroomingType =>
      'Bitte mindestens eine Pflegeart auswählen';

  @override
  String get hintTitle => 'Bitte einen Titel eingeben';

  @override
  String get hintVaccineName => 'Bitte einen Impfstoffnamen eingeben';

  @override
  String get hintSelectScheduledDate => 'Bitte ein Datum auswählen';

  @override
  String get hintSelectScheduledTime => 'Bitte eine Uhrzeit auswählen';

  @override
  String get hintVisitPurpose => 'Bitte den Besuchszweck eingeben';

  @override
  String get hintSelectAppointmentDate => 'Bitte ein Termindatum auswählen';

  @override
  String get hintSelectAppointmentTime => 'Bitte eine Terminuhrzeit auswählen';

  @override
  String get hintMedicineNameInput => 'Bitte einen Medikamentennamen eingeben';

  @override
  String get hintSelectMedicationDate =>
      'Bitte ein Medikamentendatum auswählen';

  @override
  String get hintSelectMedicationTime =>
      'Bitte eine Medikamentenuhrzeit auswählen';

  @override
  String get hintAlarmName => 'Bitte einen Alarmnamen eingeben';

  @override
  String get hintSelectMealTime => 'Bitte eine Fütterungszeit auswählen';

  @override
  String get hintSelectAlarmTime => 'Bitte eine Alarmzeit auswählen';

  @override
  String get noPetRegisterFirst =>
      'Noch kein Haustier. Bitte zuerst im Profil hinzufügen.';

  @override
  String get alarmRescheduled => 'Alarm neu geplant';

  @override
  String get examplePetName => 'Z.B. Bello';

  @override
  String get exampleBreed => 'Z.B. Malteser';

  @override
  String get exampleBreedMulti => 'Z.B. Malteser, Perser';

  @override
  String get example30 => 'Z.B. 30';

  @override
  String get example80 => 'Z.B. 80';

  @override
  String get example200 => 'Z.B. 200';

  @override
  String get example25 => 'Z.B. 2.5';

  @override
  String get example35000 => 'Z.B. 35000';

  @override
  String get example50000 => 'Z.B. 50000';

  @override
  String get enterNameHint => 'Bitte einen Namen eingeben';

  @override
  String get addNewPetTitle => 'Neues Haustier hinzufügen';

  @override
  String get basicInfo => 'Grunddaten';

  @override
  String get idInfo => 'Identifikation';

  @override
  String get idInfoOptional => 'Identifikation (optional)';

  @override
  String get name => 'Name';

  @override
  String get petKind => 'Art';

  @override
  String get breed => 'Rasse';

  @override
  String get weight => 'Gewicht';

  @override
  String get microchip => 'Mikrochip';

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
  String get neutered => 'Kastration';

  @override
  String get done => 'Erledigt';

  @override
  String get notDone => 'Nicht erledigt';

  @override
  String get notEntered => 'Nicht angegeben';

  @override
  String get notRegistered => 'Nicht registriert';

  @override
  String get dogEmoji => 'Hund 🐶';

  @override
  String get catEmoji => 'Katze 🐱';

  @override
  String get otherEmoji => 'Andere 🐾';

  @override
  String get noPetsRegistered => 'Keine Haustiere registriert';

  @override
  String get registerPetPrompt =>
      'Füge ein Haustier hinzu und\nverwalte seine Gesundheit zusammen.';

  @override
  String get registerPetBtn => 'Haustier hinzufügen';

  @override
  String get editPet => 'Haustier bearbeiten';

  @override
  String get neuteringStatus => 'Kastrationsstatus';

  @override
  String get neuteredDone => 'Kastriert';

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
    return '$name löschen?';
  }

  @override
  String deletePetWarning(String name) {
    return 'Alle Einträge und Alarme von $name werden gelöscht und können nicht wiederhergestellt werden.';
  }

  @override
  String petDeleted(String name) {
    return '$name gelöscht';
  }

  @override
  String petAdded(String name) {
    return '$name hinzugefügt';
  }

  @override
  String get storeUnavailableMsg =>
      'Verbindung zum Store nicht möglich. Bitte später erneut versuchen.';

  @override
  String get checkingPaymentMsg =>
      'Zahlungsinformationen werden überprüft. Bitte in Kürze erneut versuchen.';

  @override
  String get paymentCompleteMsg =>
      'Zahlung abgeschlossen. Bitte die Informationen deines neuen Haustieres eingeben.';

  @override
  String get addNewFamilyMember => 'Neues Familienmitglied hinzufügen?';

  @override
  String get firstPetFreeDesc =>
      'Das erste Haustier ist kostenlos. Ab dem zweiten Haustier ist eine Zahlung pro Tier erforderlich.';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '$count Haustiere registriert\nBitte versuche es erneut, wenn der Store verfügbar ist.';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '$count Haustiere registriert\n$price bezahlen, um ein neues Familienmitglied hinzuzufügen.';
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
  String get addNextAppointment => '+ Nächsten Termin hinzufügen';

  @override
  String get pottyRecordSaved => 'Toilettengang erfasst';

  @override
  String get conditionRecordSaved => 'Kondition erfasst';

  @override
  String get medicationRecordSaved => 'Medikament erfasst';

  @override
  String get weightRecordSaved => 'Gewicht erfasst';

  @override
  String get mealRecordSaved => 'Mahlzeit erfasst';

  @override
  String get waterRecordSaved => 'Wasseraufnahme erfasst';

  @override
  String get vetVisitRecordSaved => 'Tierarztbesuch erfasst';

  @override
  String get vaccinationRecordSaved => 'Impfung erfasst';

  @override
  String get groomingRecordSaved => 'Pflege erfasst';

  @override
  String get brushingRecordSaved => 'Bürsten erfasst';

  @override
  String get walkRecordSaved => 'Spaziergang erfasst';

  @override
  String get memoSaved => 'Notiz gespeichert';

  @override
  String get moreQuestions => 'Noch weitere Fragen?';

  @override
  String get contactViaSendFeedback =>
      'Kontaktiere uns über Einstellungen > Feedback senden.\nWir melden uns bald.';

  @override
  String get contactViaSendFeedbackLong =>
      'Kontaktiere uns über Feedback senden in Einstellungen.\nWir antworten schnell.';

  @override
  String get privacyPolicyEffectiveDate =>
      'Diese Datenschutzerklärung gilt ab dem 1. Januar 2026.\nZuletzt aktualisiert: 8. Mai 2026';

  @override
  String get privacyCollectedInfo =>
      'Gesammelte Informationen werden nur für die unten genannten Zwecke verwendet.';

  @override
  String get privacyDataFeatures =>
      'Pet Sumtan bietet Funktionen zum Exportieren (Sicherung) und Importieren (Wiederherstellung) von Daten.';

  @override
  String get privacyPolicyMayUpdate =>
      'Diese Datenschutzerklärung kann aufgrund gesetzlicher oder dienstlicher Änderungen aktualisiert werden.';

  @override
  String get privacyPolicyContact =>
      'Bei Fragen zu dieser Datenschutzerklärung kontaktiere uns bitte unten.';

  @override
  String get catMeal => 'Fütterung';

  @override
  String get catWater => 'Wasser';

  @override
  String get catGrooming => 'Pflege';

  @override
  String get catBrushing => 'Bürsten';

  @override
  String get catWalk => 'Spaziergang';

  @override
  String get catHospital => 'Klinik';

  @override
  String get catCondition => 'Zustand';

  @override
  String get catPotty => 'Kot/Urin';

  @override
  String get mealFormTitle => '🍽️ Fütterungsprotokoll';

  @override
  String get walkFormTitle => '🦮 Spaziergangsprotokoll';

  @override
  String get weightFormTitle => '⚖️ Gewichtsprotokoll';

  @override
  String get waterFormTitle => '💧 Wasserprotokoll';

  @override
  String get medicationFormTitle => '💊 Medikamentenprotokoll';

  @override
  String get groomingFormTitle => '✂️ Pflegeprotokoll';

  @override
  String get brushingFormTitle => '🪥 Bürstenprotokoll';

  @override
  String get conditionFormTitle => '🌡️ Zustandsprotokoll';

  @override
  String get poopFormTitle => '💩 Kot/Urin-Protokoll';

  @override
  String get vaccinationFormTitle => '💉 Impfprotokoll';

  @override
  String get hospitalFormTitle => '🏥 Klinikprotokoll';

  @override
  String get memoFormTitle => '📝 Notiz';

  @override
  String get measureMethod => 'Messmethode';

  @override
  String get feedAmount => 'Gefütterte Menge';

  @override
  String get mlInputLabel => 'Direkte mL-Eingabe';

  @override
  String get alarmRescheduleNote =>
      'Das geplante Datum dieser Erinnerung ist vergangen.\nSie können ein neues Datum festlegen oder löschen.';

  @override
  String get nailTrim => 'Krallenpflege';

  @override
  String get shopNameExample => 'z.B. Flauschiger Tiersalon';

  @override
  String get poopRecordSaved => '💩 Stuhlgang aufgezeichnet';

  @override
  String get memoRecordSaved => '📝 Memo aufgezeichnet';

  @override
  String get other => 'Sonstiges';

  @override
  String get whole => 'Ganzer Körper';

  @override
  String get paw => 'Pfote';

  @override
  String get importance => 'Wichtigkeit';

  @override
  String get timeTaken => 'Benötigte Zeit';

  @override
  String get example10 => 'z.B. 10';

  @override
  String get hospitalNameExample => 'z.B. Tierarztpraxis Happy';

  @override
  String get diagnosisExample => 'z.B. Enteritis, Dermatitis';

  @override
  String get memoTitlePlaceholder => 'Memo-Titel eingeben';

  @override
  String get hintMemoTitle => '💡 Bitte einen Titel eingeben';

  @override
  String get poopType => 'Typ';

  @override
  String get poopStatus => 'Status';

  @override
  String get feces => 'Kot';

  @override
  String get bloody => 'Blutiger Stuhl';

  @override
  String get vaccineDhppl => 'DHPPL Kombi';

  @override
  String get vaccineCorona => 'Corona-Enteritis';

  @override
  String get vaccineKennelCough => 'Zwingerhusten';

  @override
  String get vaccineRabies => 'Tollwut';

  @override
  String get vaccineInfluenza => 'Influenza';

  @override
  String get vaccineFvrcp => 'FVRCP Kombi';

  @override
  String get vaccineFelv => 'Leukämie (FeLV)';

  @override
  String get vaccineChlamydia => 'Chlamydien';

  @override
  String get mute => 'Stumm';

  @override
  String get photoVideo => 'Foto · Video';

  @override
  String photoVideoCount(String count) {
    return 'Foto · Video · $count';
  }

  @override
  String get selectMediaSource => 'Medienquelle auswählen';

  @override
  String get cameraCapture => 'Kamera';

  @override
  String get cameraCaptureSubtitle => 'Foto oder Video aufnehmen';

  @override
  String get selectFromGallery => 'Galerie';

  @override
  String get selectFromGallerySubtitle => 'Fotos · Videos auswählen';

  @override
  String get takePhotoSubtitle => 'Foto mit Kamera aufnehmen';

  @override
  String get recordVideoSubtitle => 'Video mit Kamera aufnehmen';

  @override
  String get permissionRequired => 'Erlauben Sie den Zugriff in Einstellungen';

  @override
  String get confirmDeletePhoto => 'Dieses Foto löschen?';

  @override
  String get confirmDeleteVideo => 'Dieses Video löschen?';

  @override
  String get hintMedicineAndDose => '💡 Bitte Medikament und Dosis eingeben';

  @override
  String deleteRecordBody(String category) {
    return '$category-Eintrag wird gelöscht\nund kann nicht rückgängig gemacht werden.';
  }

  @override
  String dayCountShort(int days) {
    return '$days T.';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan ist eine App, mit der du die Gesundheit und den Alltag deines Haustiers an einem Ort erfassen und verwalten kannst.\nDu kannst verschiedene Gesundheitsdaten wie Mahlzeiten, Wasseraufnahme, Kot/Urin, Gewicht, Medikamente und Tierarztbesuche einfach festhalten und Alarme nutzen, damit du wichtige Termine nicht vergisst.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'Sieh dir alle heute hinzugefügten Einträge auf einen Blick an. Tippe auf einen Eintrag, um Details anzusehen oder ihn zu bearbeiten.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'Sieh dir die Toilettengänge, Mahlzeiten und Wasseraufnahme dieser Woche in Diagrammen an. So kannst du den Alltag deines Haustiers besser verstehen.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'Zeigt die letzten Gewichtseinträge als Diagramm an, damit du Gewichtsveränderungen leicht verfolgen kannst.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'Tippe auf die Schaltfläche, um Tierkliniken in der Nähe in Naver Maps zu suchen.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'Tippe unten auf dem Bildschirm auf die Schaltfläche +, wähle eine Eintragskategorie aus und füge einen neuen Eintrag hinzu.';

  @override
  String get helpRecordCategoriesIntro =>
      'Du kannst den Alltag deines Haustiers in 12 Kategorien erfassen.';

  @override
  String get helpCategoryPottyName => 'Kot/Urin';

  @override
  String get helpCategoryPottyDesc =>
      'Erfasse Kot-/Urin-Aktivitäten und deren Zustand. Du kannst auch Fotos anhängen.';

  @override
  String get helpCategoryConditionName => 'Zustand';

  @override
  String get helpCategoryConditionDesc =>
      'Erfasse den allgemeinen Gesundheitszustand deines Haustiers.';

  @override
  String get helpCategoryMedicationName => 'Medikament';

  @override
  String get helpCategoryMedicationDesc =>
      'Erfasse den Medikamentennamen, die Dosis und den Einnahmezeitpunkt.';

  @override
  String get helpCategoryWeightName => 'Gewicht';

  @override
  String get helpCategoryWeightDesc =>
      'Erfasse das Gewicht in kg. Du kannst den Gewichtsverlauf auf dem Startbildschirm überprüfen.';

  @override
  String get helpCategoryMealName => 'Mahlzeit';

  @override
  String get helpCategoryMealDesc =>
      'Erfasse Futtermenge und Futterart. Du kannst auch Fotos und Videos anhängen.';

  @override
  String get helpCategoryWaterName => 'Wasser';

  @override
  String get helpCategoryWaterDesc =>
      'Erfasse die Wasseraufnahme in ml. Du kannst auch Fotos und Videos anhängen.';

  @override
  String get helpCategoryHospitalName => 'Klinik';

  @override
  String get helpCategoryHospitalDesc =>
      'Erfasse den Kliniknamen und Details des Besuchs. Du kannst auch Fotos und Videos anhängen.';

  @override
  String get helpCategoryVaccinationName => 'Impfung';

  @override
  String get helpCategoryVaccinationDesc =>
      'Erfasse die Impfstoffart und das Impfdatum.';

  @override
  String get helpCategoryGroomingName => 'Pflege';

  @override
  String get helpCategoryGroomingDesc =>
      'Erfasse Pflegedetails und hänge Fotos oder Videos an.';

  @override
  String get helpCategoryDentalName => 'Zahnpflege';

  @override
  String get helpCategoryDentalDesc =>
      'Erfasse, ob die Zahnpflege durchgeführt wurde, und füge eine Notiz hinzu.';

  @override
  String get helpCategoryWalkName => 'Spaziergang';

  @override
  String get helpCategoryWalkDesc =>
      'Erfasse die Entfernung und Dauer des Spaziergangs.';

  @override
  String get helpCategoryMemoName => 'Notiz';

  @override
  String get helpCategoryMemoDesc => 'Hinterlasse frei eine Notiz.';

  @override
  String get helpJournalViewRecordListDesc =>
      'Sieh dir alle Einträge nach Datum an. Kategorie-Badges helfen dir, die Art jedes Eintrags schnell zu erkennen.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'Tippe auf einen Eintrag, um das Bearbeitungsfenster zu öffnen. Du kannst den Inhalt ändern oder den Eintrag löschen.';

  @override
  String get helpJournalAttachMediaDesc =>
      'In einigen Kategorien wie Mahlzeit, Wasser, Klinik, Pflege und Kot/Urin kannst du Fotos oder Videos anhängen.';

  @override
  String get helpAlarmAddDesc =>
      'Du kannst verschiedene Arten von Alarmen hinzufügen, z. B. für Impfungen, Medikamente, Tierarztbesuche und Pflege. Wähle zuerst den Alarmtyp aus und lege anschließend Datum und Uhrzeit fest.';

  @override
  String get helpAlarmRepeatDesc =>
      'Lege Wiederholungsregeln fest, z. B. täglich, wöchentlich oder monatlich. Das ist nützlich für regelmäßige Medikamente oder die Herzwurm-Prophylaxe.';

  @override
  String get helpAlarmAdvanceDesc =>
      'Für wichtige Termine wie Impfungen kannst du Vorab-Erinnerungen 7 Tage, 3 Tage und 1 Tag vorher erhalten.';

  @override
  String get helpAlarmCompleteDesc =>
      'Tippe auf einen Alarm, um ihn als abgeschlossen zu markieren. Abgeschlossene Alarme findest du in der Liste der vergangenen Alarme.';

  @override
  String get helpAlarmDeleteDesc =>
      'Wische einen Alarm nach links, um ihn zu löschen.';

  @override
  String get helpPetRegisterDesc =>
      'Registriere dein Haustier, indem du Name, Art, Rasse, Geschlecht, Geburtsdatum und Kastrationsstatus eingibst.';

  @override
  String get helpPetEditProfileDesc =>
      'Auf dem Profilbildschirm kannst du Name, Rasse, Gewicht, Mikrochipnummer, Registrierungsnummer und Profilfoto bearbeiten.';

  @override
  String get helpPetManageMultipleDesc =>
      'Du kannst mehrere Haustiere registrieren. Tippe oben auf den Haustier-Chip, um das Haustier zu wechseln, das du verwalten möchtest.';

  @override
  String get helpDogHealthGuideDesc =>
      'Bietet tierärztlich basierte Gesundheitsinformationen, darunter Pflicht- und optionale Impfpläne, Herzwurm- und Parasitenprophylaxe, Zahnpflege und Ernährung.';

  @override
  String get helpCatHealthGuideDesc =>
      'Sieh dir katzenspezifische Impfpläne, Parasitenprophylaxe, Zahnpflege und Ernährungsinformationen an.';

  @override
  String get helpSettingsNotificationDesc =>
      'Schalte alle App-Benachrichtigungen ein oder aus.';

  @override
  String get helpSettingsExportDesc =>
      'Exportiere alle gespeicherten Daten als ZIP-Datei. Nutze sie als Sicherung, wenn du das Gerät wechselst.';

  @override
  String get helpSettingsImportDesc =>
      'Importiere eine zuvor exportierte ZIP-Sicherungsdatei, um deine Daten wiederherzustellen.';

  @override
  String get helpSettingsFeedbackDesc =>
      'Sende uns Probleme, Unannehmlichkeiten oder Verbesserungsvorschläge per E-Mail. Das hilft uns sehr, die App zu verbessern.';

  @override
  String get helpFaqDeletePetQ =>
      'Wenn ich ein Haustier lösche, werden dann auch alle Einträge gelöscht?';

  @override
  String get helpFaqDeletePetA =>
      'Ja. Wenn du ein Haustier löschst, werden auch alle zugehörigen Einträge und Alarme gelöscht. Bitte sichere deine Daten vor dem Löschen über Daten exportieren.';

  @override
  String get helpFaqMultipleMediaQ =>
      'Kann ich mehrere Fotos an einen Eintrag anhängen?';

  @override
  String get helpFaqMultipleMediaA =>
      'Ja. Du kannst mehrere Fotos und Videos anhängen. Du kannst sie aus der Galerie auswählen oder direkt mit der Kamera aufnehmen.';

  @override
  String get helpFaqNoNotificationQ => 'Ich erhalte keine Benachrichtigungen.';

  @override
  String get helpFaqNoNotificationA =>
      'Prüfe, ob Benachrichtigungen für Pet Sumtan in den Benachrichtigungseinstellungen deines Geräts erlaubt sind. Prüfe außerdem, ob App-Benachrichtigungen unter Einstellungen > Benachrichtigungseinstellungen aktiviert sind.';

  @override
  String get helpFaqMoveDataQ =>
      'Kann ich meine Daten auf ein neues Gerät übertragen?';

  @override
  String get helpFaqMoveDataA =>
      'Ja. Speichere auf dem alten Gerät eine Sicherungsdatei über Einstellungen > Daten exportieren. Stelle sie anschließend auf dem neuen Gerät über Einstellungen > Daten importieren wieder her.';

  @override
  String get helpFaqMultiplePetsQ => 'Kann ich mehrere Haustiere registrieren?';

  @override
  String get helpFaqMultiplePetsA =>
      'Standardmäßig kannst du 1 Haustier kostenlos registrieren. Das Hinzufügen weiterer Haustiere ist als Premium-Funktion verfügbar.';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan ist eine App, die ohne Registrierung genutzt werden kann. Alle Daten werden ausschließlich auf dem Gerät des Nutzers gespeichert. Wir übertragen keine personenbezogenen Daten an externe Server und schützen die wertvollen Informationen deines Haustiers sicher.';

  @override
  String get privacySection1Title => 'Erhobene personenbezogene Daten';

  @override
  String get privacySection1Body =>
      'Pet Sumtan kann ohne Registrierung genutzt werden und erhebt keine separaten Informationen, mit denen Nutzer persönlich identifiziert werden können. Zur Bereitstellung der App-Funktionen können jedoch die folgenden Informationen auf dem Gerät gespeichert werden.';

  @override
  String get privacyLocalStorageInfo =>
      'Lokal auf dem Gerät gespeicherte Informationen';

  @override
  String get privacyPetInfo =>
      'Haustierinformationen: Name, Art, Rasse, Geburtsdatum, Geschlecht, Gewicht, Kastrationsstatus, Mikrochipnummer und Registrierungsnummer des Tieres';

  @override
  String get privacyHealthRecords =>
      'Gesundheitseinträge: Kot/Urin, Mahlzeiten, Wasseraufnahme, Gewicht, Medikamente, Impfungen, Klinikbesuche, Pflege, Zahnpflege, Spaziergänge, Zustand, Notizen sowie andere vom Nutzer direkt eingegebene Einträge';

  @override
  String get privacyAttachedMedia =>
      'Angehängte Medien: Fotos und Videos, die vom Nutzer direkt aufgenommen oder ausgewählt wurden';

  @override
  String get privacyNotificationSettings =>
      'Alarmeinstellungen: Alarmtyp, geplantes Datum und Uhrzeit sowie Wiederholungsregeln';

  @override
  String get privacyInAppPurchaseTitle => 'In-App-Käufe';

  @override
  String get privacyPaymentProcessing =>
      'Zahlungen werden über den Apple App Store oder Google Play Store abgewickelt. Die App erhebt oder speichert Zahlungsinformationen nicht direkt.';

  @override
  String get privacyReceiptVerification =>
      'Es werden nur die minimal erforderlichen Informationen zur Überprüfung von Kaufbelegen gemäß den Richtlinien der jeweiligen Plattform verarbeitet.';

  @override
  String get privacySection2Title =>
      'Zweck der Erhebung und Nutzung personenbezogener Daten';

  @override
  String get privacyPurposeRecords =>
      'Speichern und Anzeigen von Gesundheitseinträgen des Haustiers';

  @override
  String get privacyPurposeStats =>
      'Bereitstellung von Statistiken auf dem Startbildschirm, z. B. wöchentliche Kot-/Urin-, Mahlzeiten- und Wasseraufnahmeübersichten sowie Diagramme zur Gewichtsveränderung';

  @override
  String get privacyPurposeReminders =>
      'Senden gesundheitsbezogener Alarme, z. B. für Impfungen, Medikamente und Klinikbesuche';

  @override
  String get privacyPurposeBackupRestore =>
      'Bereitstellung von Funktionen zur Datensicherung und Wiederherstellung';

  @override
  String get privacyPurposePaidEligibility =>
      'Überprüfung der Berechtigung zur Nutzung kostenpflichtiger Funktionen';

  @override
  String get privacySection3Title =>
      'Aufbewahrung und Löschung personenbezogener Daten';

  @override
  String get privacyRetentionBody =>
      'Alle Daten von Pet Sumtan werden ausschließlich in der lokalen Datenbank (SQLite) auf dem Gerät des Nutzers gespeichert und nicht an externe Server übertragen.';

  @override
  String get privacyDataDeletionMethod => 'Möglichkeiten zum Löschen von Daten';

  @override
  String get privacyDeleteInApp =>
      'Du kannst Haustierinformationen und Einträge direkt in der App unter Einstellungen > Datenverwaltung löschen.';

  @override
  String get privacyDeleteUninstall =>
      'Wenn du die App löschst, werden auch alle auf dem Gerät gespeicherten Daten gelöscht.';

  @override
  String get privacyDeleteBackupWarning =>
      'Bitte beachte, dass Daten nicht wiederhergestellt werden können, wenn du vor dem Löschen der App keine Sicherung (Export) erstellt hast.';

  @override
  String get privacySection4Title =>
      'Weitergabe personenbezogener Daten an Dritte';

  @override
  String get privacyThirdPartyBody =>
      'Pet Sumtan gibt personenbezogene Daten der Nutzer nicht an Dritte weiter. Ausgenommen sind jedoch die folgenden Fälle.';

  @override
  String get privacyThirdPartyUserExport =>
      'Wenn der Nutzer selbst die Datenexportfunktion verwendet, z. B. zum Teilen einer Sicherungsdatei';

  @override
  String get privacyThirdPartyLegalRequest =>
      'Wenn dies gesetzlich vorgeschrieben ist oder eine rechtmäßige Anfrage von Ermittlungsbehörden vorliegt';

  @override
  String get privacySection5Title => 'Zugriffsberechtigungen';

  @override
  String get privacyPermissionsBody =>
      'Zur Bereitstellung der App-Funktionen können die folgenden Berechtigungen angefordert werden. Auch wenn du eine Berechtigung nicht erteilst, kannst du die übrigen Funktionen weiterhin normal nutzen, mit Ausnahme der Funktion, die diese Berechtigung benötigt.';

  @override
  String get privacyPermissionCameraName => 'Kamera';

  @override
  String get privacyPermissionCameraDesc =>
      'Wird verwendet, um Fotos oder Videos direkt aufzunehmen und an Gesundheitseinträge anzuhängen.';

  @override
  String get privacyPermissionMediaName => 'Zugriff auf Fotos und Medien';

  @override
  String get privacyPermissionMediaDesc =>
      'Wird verwendet, um Fotos und Videos aus der Galerie auszuwählen und an Einträge anzuhängen.';

  @override
  String get privacyPermissionNotificationName => 'Mitteilungen';

  @override
  String get privacyPermissionNotificationDesc =>
      'Werden verwendet, um gesundheitsbezogene Alarme zu senden, z. B. für Impfungen, Medikamente und Klinikbesuche.';

  @override
  String get privacyPermissionFileName => 'Dateizugriff (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'Wird verwendet, um Datensicherungsdateien zu speichern oder zu laden.';

  @override
  String get privacySection6Title => 'Datensicherung und Wiederherstellung';

  @override
  String get privacyBackupExport =>
      'Exportieren: Alle App-Daten können als Datei (.zip) gespeichert oder geteilt werden.';

  @override
  String get privacyBackupImport =>
      'Importieren: Eine zuvor exportierte Sicherungsdatei kann geladen werden, um Daten wiederherzustellen.';

  @override
  String get privacyBackupWarning =>
      'Sicherungsdateien werden direkt vom Nutzer verwaltet. Bitte achte darauf, die Dateien nicht mit anderen Personen zu teilen.';

  @override
  String get privacySection7Title =>
      'Schutz personenbezogener Daten von Kindern';

  @override
  String get privacyChildrenBody =>
      'Pet Sumtan erhebt keine separaten personenbezogenen Daten von Kindern unter 14 Jahren. Alle App-Daten werden ausschließlich auf dem Gerät gespeichert und nicht an externe Server übertragen, sodass auch Kinder die App sicher nutzen können.';

  @override
  String get privacySection8Title => 'Änderungen dieser Datenschutzerklärung';

  @override
  String get privacyPolicyChangeNotice =>
      'Falls Änderungen vorgenommen werden, informieren wir dich über App-Update-Hinweise oder Mitteilungen innerhalb der App.';

  @override
  String get privacyPolicyChangeEffective =>
      'Die geänderte Richtlinie tritt 7 Tage nach der Mitteilung in Kraft.';

  @override
  String get privacySection9Title => 'Kontakt';

  @override
  String get hgDogHeroTitle => 'Gesundheitsratgeber für Hunde';

  @override
  String get hgCatHeroTitle => 'Gesundheitsratgeber für Katzen';

  @override
  String get hgHeroSubtitle =>
      'Ein professioneller Gesundheitsratgeber\nbasierend auf tierärztlichen Empfehlungen.';

  @override
  String get hgVaccination => 'Impfung';

  @override
  String get hgCoreVaccines => 'Core-Impfungen (Pflichtimpfungen)';

  @override
  String get hgNonCoreVaccines => 'Non-Core-Impfungen';

  @override
  String get hgRequired => 'Pflicht';

  @override
  String get hgRecommended => 'Empfohlen';

  @override
  String get hgParasitePrevention => 'Parasitenvorbeugung';

  @override
  String get hgHeartworm => 'Herzwurm';

  @override
  String get hgMonthly => 'Monatlich';

  @override
  String get hgExternalParasites => 'Äußere Parasiten (Flöhe und Zecken)';

  @override
  String get hgInternalParasites => 'Innere Parasiten';

  @override
  String get hgThreeToSixMonths => 'Alle 3–6 Monate';

  @override
  String get hgRegular => 'Regelmäßig';

  @override
  String get hgRegularCheckup => 'Regelmäßige Gesundheitskontrolle';

  @override
  String get hgDentalCare => 'Zahn- und Mundpflege';

  @override
  String get hgForbiddenFoods => 'Streng verbotene Lebensmittel';

  @override
  String get hgEmergencySymptoms =>
      'Symptome, die sofortige tierärztliche Hilfe erfordern';

  @override
  String get hgExerciseMentalHealth => 'Bewegung und mentale Gesundheit';

  @override
  String get hgWalk => 'Spaziergang';

  @override
  String get hgDaily => 'Täglich';

  @override
  String get hgBreedExerciseAmount => 'Empfohlene Bewegung nach Rasse';

  @override
  String get hgPlayBrainStimulation => 'Spiel und geistige Stimulation';

  @override
  String get hgStressSignals => 'Stresssignale erkennen';

  @override
  String get hgCaution => 'Achtung';

  @override
  String get hgSocialization => 'Sozialisierung und Umweltreize';

  @override
  String get hgDogCoreDhppl =>
      '**DHPPL (Kombinationsimpfung)** — Staupe, Hepatitis, Parvovirose, Parainfluenza und Leptospirose.\n1. Dosis im Alter von 6–8 Wochen, 3 Dosen im Abstand von 3–4 Wochen, danach jährliche Auffrischung';

  @override
  String get hgDogCoreRabies =>
      '**Tollwut** — 1. Dosis nach dem 3. Lebensmonat, danach einmal jährlich (gesetzlich vorgeschriebene Impfung)';

  @override
  String get hgDogCoreCorona =>
      '**Coronavirus-Enteritis** — Beginn im Alter von 6–8 Wochen, 2 Dosen im Abstand von 3–4 Wochen, danach jährliche Auffrischung';

  @override
  String get hgDogNonCoreKennel =>
      '**Zwingerhusten** — empfohlen in Mehrhundehaushalten, bei Nutzung von Hundesalons oder Hundepensionen. Als Nasen- oder Injektionsimpfung verfügbar';

  @override
  String get hgDogNonCoreFlu =>
      '**Hundeinfluenza** — empfohlen für Hunde mit viel Aktivität im Freien oder häufigem Kontakt zu anderen Hunden';

  @override
  String get hgDogHeartworm1 =>
      'Während und rund um die Mückensaison (März bis November) wird eine vorbeugende Gabe **einmal monatlich** empfohlen';

  @override
  String get hgDogHeartworm2 =>
      'Eine Infektion ist schwer zu behandeln und kann tödlich sein — **Vorbeugung ist der beste Schutz**';

  @override
  String get hgDogHeartworm3 =>
      'Vor Beginn der Medikation muss durch einen Test bestätigt werden, dass keine Infektion vorliegt';

  @override
  String get hgDogHeartworm4 =>
      'Ganzjährige Vorbeugung ist sicherer und wird häufig tierärztlich empfohlen';

  @override
  String get hgDogExternalParasites1 =>
      'Spot-on- oder orale Präparate **monatlich** anwenden';

  @override
  String get hgDogExternalParasites2 =>
      'Nach Spaziergängen Ohren, Zehenzwischenräume und Achseln immer auf Zecken kontrollieren';

  @override
  String get hgDogExternalParasites3 =>
      'Beim Entfernen einer Zecke eine Pinzette verwenden und sie langsam gerade nach oben herausziehen, ohne zu drehen';

  @override
  String get hgDogInternalParasites1 =>
      'Spulwürmer, Hakenwürmer und Peitschenwürmer: Entwurmung **alle 3–6 Monate**';

  @override
  String get hgDogInternalParasites2 =>
      'Bei Welpen ab 2 Wochen: 4 Entwurmungen im Abstand von 2 Wochen, danach regelmäßige Kontrolle';

  @override
  String get hgDental1 =>
      'Tägliches Zähneputzen ist ideal — mindestens **3-mal pro Woche** wird empfohlen';

  @override
  String get hgDental2 =>
      'Immer **spezielle Haustier-Zahnpasta** verwenden. Keine menschliche Zahnpasta mit Xylit verwenden';

  @override
  String get hgDental3 =>
      'Starker Zahnstein erfordert eine professionelle Zahnreinigung in der Tierklinik unter Vollnarkose';

  @override
  String get hgDental4 =>
      'Zahnpflege-Snacks und Zahnspielzeug können die Mundpflege ergänzen';

  @override
  String get hgDogForbiddenFoodAlert =>
      'Die folgenden Lebensmittel sind für Hunde giftig. Schon kleine Mengen können gefährlich sein, daher niemals füttern.';

  @override
  String get hgDogForbiddenGrape =>
      '**Trauben und Rosinen** — können Nierenversagen verursachen; selbst kleine Mengen können tödlich sein';

  @override
  String get hgDogForbiddenChocolate =>
      '**Schokolade und Kakao** — Theobrominvergiftung, Herzversagen und Krampfanfälle';

  @override
  String get hgDogForbiddenOnion =>
      '**Zwiebeln, Knoblauch und Lauch** — zerstören rote Blutkörperchen und verursachen hämolytische Anämie';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xylit** — verursacht übermäßige Insulinfreisetzung, Unterzuckerung und Leberversagen';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Macadamianüsse** — Muskelschwäche, hohes Fieber und Erbrechen';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Roher Teig und Alkohol** — Ethanolvergiftung und Unterzuckerung';

  @override
  String get hgDogForbiddenAvocado =>
      '**Avocado** — enthält Persin und kann Erbrechen sowie Durchfall verursachen';

  @override
  String get hgEmergencyAlert =>
      'Wenn eines der folgenden Symptome auftritt, suchen Sie sofort eine Tierklinik auf.';

  @override
  String get hgDogEmergency1 =>
      'Vollständiger Appetitverlust für mehr als 24 Stunden';

  @override
  String get hgDogEmergency2 =>
      'Erbrechen oder Durchfall 3-mal oder häufiger an einem Tag';

  @override
  String get hgDogEmergency3 =>
      'Aufgeblähter Bauch und erfolgloses Würgen, mögliche Magendrehung';

  @override
  String get hgDogEmergency4 => 'Atemnot, blasse Schleimhäute oder Zyanose';

  @override
  String get hgDogEmergency5 =>
      'Krampfanfälle, Konvulsionen oder Bewusstlosigkeit';

  @override
  String get hgDogEmergency6 => 'Kein Urinabsatz für mehr als 12 Stunden';

  @override
  String get hgDogEmergency7 =>
      'Sichtbare Verletzung, Knochenbruch oder starke Blutung';

  @override
  String get hgDogExerciseAlert =>
      'Bei Hunden ist Bewegungsmangel nicht nur ein Fitnessproblem. Er kann eine Hauptursache für Stress, Angst und zerstörerisches Verhalten sein.';

  @override
  String get hgDogWalk1 =>
      'Kleine Rassen: mindestens **20–30 Minuten** täglich; mittlere und große Rassen: **1 Stunde oder mehr** empfohlen';

  @override
  String get hgDogWalk2 =>
      'Spaziergänge dienen nicht nur dem Lösen — sie bieten **Geruchsstimulation, Sozialisierung und Stressabbau**';

  @override
  String get hgDogWalk3 =>
      'Ausreichend Zeit zum Schnüffeln lassen — das ist sehr wirksam gegen mentale Ermüdung';

  @override
  String get hgDogWalk4 =>
      'Im Sommer auf Verbrennungen durch Asphalt achten — Spaziergänge vor 7 Uhr morgens oder abends werden empfohlen';

  @override
  String get hgDogPlay1 =>
      '**Apportieren und Zerrspiele** — helfen, körperliche Energie abzubauen und die Bindung zum Halter zu stärken';

  @override
  String get hgDogPlay2 =>
      '**Nasenarbeit** — stimuliert das Gehirn und kann in nur 15 Minuten eine ähnliche Wirkung wie 30 Minuten Spaziergang haben';

  @override
  String get hgDogPlay3 =>
      '**Intelligenzspielzeuge und Kong-Spielzeuge** — helfen, Trennungsangst während Alleinzeiten zu reduzieren';

  @override
  String get hgDogPlay4 =>
      'Schon **10–15 Minuten** konzentriertes Spielen täglich können Stress deutlich reduzieren';

  @override
  String get hgDogStress1 =>
      'Zerstören von Möbeln oder Gegenständen und übermäßiges Bellen können auf Bewegungs- oder Reizmangel hinweisen';

  @override
  String get hgDogStress2 =>
      'Schwanzbeißen oder übermäßiges Lecken von Pfoten/Körper kann zwanghaftes Verhalten oder Stressabbauversuche anzeigen';

  @override
  String get hgDogStress3 =>
      'Starke Angst beim Weggehen des Halters und Unsauberkeit können auf Trennungsangst hindeuten';

  @override
  String get hgDogStress4 =>
      'Wenn die Symptome anhalten, wenden Sie sich an einen Tierarzt oder Spezialisten für Tierverhalten';

  @override
  String get hgDogSocial1 =>
      '**3–14 Wochen** sind die goldene Phase der Sozialisierung — Kontakt mit verschiedenen Menschen, Geräuschen und Umgebungen ist wichtig';

  @override
  String get hgDogSocial2 =>
      'Kontakt mit anderen Hunden — Hundeparks und Welpenkurse können helfen';

  @override
  String get hgDogSocial3 =>
      'Neue Orte, Gerüche und Geräusche zu erleben, trägt zur mentalen Bereicherung bei';

  @override
  String get hgDogSocial4 =>
      'Training mit positiver Verstärkung, z. B. Clicker und Leckerlis, stimuliert das Gehirn und stärkt gleichzeitig die Bindung';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP (Kombinationsimpfung)** — felines Herpesvirus, Calicivirus und Panleukopenie.\n1. Dosis im Alter von 6–8 Wochen, 3 Dosen im Abstand von 3–4 Wochen, danach alle 1–3 Jahre';

  @override
  String get hgCatCoreRabies =>
      '**Tollwut** — erforderlich für Freigänger-Katzen und auch für Wohnungskatzen empfohlen (gesetzlich vorgeschrieben)';

  @override
  String get hgCatNonCoreFelv =>
      '**Feline Leukämie (FeLV)** — dringend empfohlen für Freigänger-Katzen und Mehrkatzenhaushalte';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Feline Chlamydien** — hilft, Bindehautentzündungen in Mehrkatzenumgebungen vorzubeugen';

  @override
  String get hgCatNonCoreFiv =>
      '**Felines Immundefizienzvirus (FIV)** — besonders relevant für männliche Freigänger; Übertragung durch Kampfverletzungen';

  @override
  String get hgCatExternalParasites1 =>
      'Freigänger-Katzen: Floh- und Zeckenvorbeugung **einmal monatlich** anwenden';

  @override
  String get hgCatExternalParasites2 =>
      'Auch Wohnungskatzen können Flöhen ausgesetzt sein, die über Kleidung oder Schuhe eingeschleppt werden → Vorbeugung **alle 3 Monate** empfohlen';

  @override
  String get hgCatExternalParasites3 =>
      'Spot-on-Produkte genau im Nackenbereich auftragen';

  @override
  String get hgCatInternalHeartworm => 'Innere Parasiten und Herzwurm';

  @override
  String get hgCatInternalParasites1 =>
      'Spulwürmer und Bandwürmer: Entwurmung **alle 3–6 Monate**';

  @override
  String get hgCatInternalParasites2 =>
      'Bei Fütterung von rohem Fleisch oder rohem Fisch werden häufigere Untersuchungen empfohlen';

  @override
  String get hgCatHeartworm1 =>
      'Herzwurm — bei Katzen gibt es **keine heilende Behandlung, daher ist Vorbeugung die einzige Möglichkeit**. Monatliche Vorbeugung wird für Freigänger-Katzen dringend empfohlen';

  @override
  String get hgCatMajorDiseases =>
      'Wichtige Katzenerkrankungen, auf die Sie achten sollten';

  @override
  String get hgCatDiseaseAlert =>
      'Katzen neigen dazu, Schmerzen und Krankheiten zu verbergen. Symptome treten oft erst auf, wenn die Erkrankung bereits fortgeschritten ist. Regelmäßige Kontrollen sind besonders wichtig.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Feline Erkrankung der unteren Harnwege (FLUTD)** — häufig bei Katern. Wenn die Katze nicht urinieren kann, ist das ein sofortiger Notfall';

  @override
  String get hgCatDiseaseCkd =>
      '**Chronische Nierenerkrankung (CKD)** — eine der häufigsten Todesursachen bei älteren Katzen. Regelmäßige Nierenkontrollen sind ab 7 Jahren unerlässlich';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Katzendiabetes** — höheres Risiko bei übergewichtigen und älteren Katzen. Achten Sie auf vermehrten Durst und Urinabsatz';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Hyperthyreose** — häufig bei Katzen über 10 Jahren. Achten Sie auf Gewichtsverlust, gesteigerten Appetit und Hyperaktivität';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Stomatitis** — sehr häufig bei Katzen. Mundgeruch, Sabbern oder Appetitverlust sollten untersucht werden';

  @override
  String get hgCatDiseaseFhv =>
      '**Felines Herpesvirus (FHV-1)** — nach der Infektion bleibt es lebenslang latent. Stress kann Rückfälle mit Niesen, Augenausfluss und Bindehautentzündung auslösen';

  @override
  String get hgHydrationDiet => 'Flüssigkeitsaufnahme und Ernährung';

  @override
  String get hgCatHydrationAlert =>
      'Katzen trinken von Natur aus wenig Wasser und sind anfällig für Harnwegserkrankungen. Die Förderung der Wasseraufnahme ist sehr wichtig.';

  @override
  String get hgCatHydration1 =>
      'Nassfutter wie Dosen oder Beutel wird empfohlen, um die Flüssigkeitsaufnahme zu erhöhen';

  @override
  String get hgCatHydration2 =>
      'Viele Katzen bevorzugen fließendes Wasser — ein **Trinkbrunnen** kann wirksam sein';

  @override
  String get hgCatHydration3 =>
      'Stellen Sie den Wassernapf vom Futternapf getrennt auf; breite, flache Näpfe werden oft bevorzugt';

  @override
  String get hgCatHydration4 =>
      'Zielmenge für die Wasseraufnahme: etwa **40–60 ml** pro kg Körpergewicht pro Tag';

  @override
  String get hgCatForbiddenFoodAlert =>
      'Die folgenden Lebensmittel sind für Katzen giftig. Schon kleine Mengen können gefährlich sein, daher niemals füttern.';

  @override
  String get hgCatForbiddenOnion =>
      '**Zwiebeln, Knoblauch und Lauch** — zerstören rote Blutkörperchen und verursachen hämolytische Anämie; Katzen sind empfindlicher als Hunde';

  @override
  String get hgCatForbiddenGrape =>
      '**Trauben und Rosinen** — können Nierenversagen verursachen';

  @override
  String get hgCatForbiddenChocolate =>
      '**Schokolade und Koffein** — giftig für Herz und Nervensystem';

  @override
  String get hgCatForbiddenRawFish =>
      '**Roher Fisch bei dauerhafter Fütterung** — kann Thiamin-, Vitamin-B1-, Mangel verursachen';

  @override
  String get hgCatForbiddenMilk =>
      '**Milch und Milchprodukte** — viele erwachsene Katzen sind laktoseintolerant und können Durchfall bekommen';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xylit und Alkohol** — giftig für Leber und Nervensystem';

  @override
  String get hgCatForbiddenAvocado =>
      '**Avocado** — enthält Persin und kann Erbrechen sowie Durchfall verursachen';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Rohes Eiweiß** — Avidin blockiert die Biotinaufnahme und kann Haut- und Fellprobleme verursachen';

  @override
  String get hgCatEmergency1 =>
      '**Kann nicht urinieren oder Blut im Urin** — Harnröhrenverschluss ist ein Notfall, besonders bei Katern';

  @override
  String get hgCatEmergency2 =>
      'Vollständiger Appetitverlust für mehr als 24 Stunden, mit Risiko einer Fettleber';

  @override
  String get hgCatEmergency3 =>
      '**Atmung mit offenem Maul** — bei Katzen niemals normal und erfordert sofortige Notfallversorgung';

  @override
  String get hgCatEmergency4 =>
      'Plötzliche Lähmung oder Kälte der Hinterbeine, möglicher Thromboembolismus';

  @override
  String get hgCatEmergency5 =>
      'Krampfanfälle, Konvulsionen oder Bewusstlosigkeit';

  @override
  String get hgCatEmergency6 =>
      'Blasse Schleimhäute oder Zunge, oder gelbliche Verfärbung/Gelbsucht';

  @override
  String get hgCatEmergency7 =>
      'Erbrechen oder Durchfall 3-mal oder häufiger an einem Tag, oder Blut im Kot/Erbrochenen';

  @override
  String get hgCatEmergency8 =>
      'Sichtbare Verletzung, Knochenbruch oder starke Blutung';

  @override
  String get hgEnvironmentMentalHealth => 'Umgebung und mentale Gesundheit';

  @override
  String get hgIndoorEnvironment => 'Management der Innenumgebung';

  @override
  String get hgStressManagement => 'Stressmanagement';

  @override
  String get hgCatEnvironment1 =>
      '**Katzentoiletten**: Anzahl der Katzen + mindestens 1, täglich reinigen';

  @override
  String get hgCatEnvironment2 =>
      '**Kratzmöglichkeiten**: mindestens 2, mit vertikalen und horizontalen Varianten';

  @override
  String get hgCatEnvironment3 =>
      '**Erhöhte Plätze**: Kratzbäume, Regale oder vertikale Räume bereitstellen, um territoriale Instinkte zu erfüllen';

  @override
  String get hgCatEnvironment4 =>
      '**Verstecke**: Kartons, Tunnel oder sichere Orte bereitstellen, an denen sich die Katze verstecken kann';

  @override
  String get hgCatStress1 =>
      'Stress bei Katzen steht direkt mit geschwächter Immunität, FLUTD und Rückfällen des felinen Herpesvirus in Verbindung';

  @override
  String get hgCatStress2 =>
      'Bei größeren Umweltveränderungen wie Umzug oder einem neuen Familienmitglied kann ein Pheromon-Diffusor wie Feliway helfen';

  @override
  String get hgCatStress3 =>
      'Täglich mindestens **10–15 Minuten** interaktives Spiel mit Spielzeug ermöglichen';

  @override
  String get hgCatStress4 =>
      'In Mehrkatzenhaushalten Ressourcen wie Futternäpfe, Katzentoiletten und Schlafplätze entsprechend der Katzenanzahl getrennt anbieten';

  @override
  String get hgAge => 'Alter';

  @override
  String get hgCheckupCycle => 'Kontrollintervall';

  @override
  String get hgMainItems => 'Hauptpunkte';

  @override
  String get hgAge1to6 => '1–6 Jahre';

  @override
  String get hgAge7to10 => '7–10 Jahre';

  @override
  String get hgAge11Plus => '11 Jahre und älter';

  @override
  String get hgYearlyOnce => 'Einmal jährlich';

  @override
  String get hgYearlyTwice => 'Zweimal jährlich';

  @override
  String get hgEvery3to4Months => 'Alle 3–4 Monate';

  @override
  String get hgDogCheckupItems1 =>
      'Bluttest, Herzabhören, Gewicht, Zahnkontrolle';

  @override
  String get hgDogCheckupItems2 => 'Blut, Urin, Röntgen, Blutdruck, Gelenke';

  @override
  String get hgDogCheckupItems3 =>
      'Umfassende Blutuntersuchung, Ultraschall, Nieren- und Leberfunktion';

  @override
  String get hgCatCheckupItems1 => 'Bluttest, Urintest, Gewicht, Zahnkontrolle';

  @override
  String get hgCatCheckupItems2 =>
      'Nieren- und Leberwerte, Blutdruck, Schilddrüse T4';

  @override
  String get hgCatCheckupItems3 =>
      'Umfassende Blutuntersuchung, Bauchultraschall, intensive Nierenüberwachung';

  @override
  String get hgExerciseAmount => 'Bewegungsniveau';

  @override
  String get hgBreedExamples => 'Rassebeispiele';

  @override
  String get hgLow => 'Niedrig';

  @override
  String get hgNormal => 'Moderat';

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
      'Dieser Ratgeber bietet allgemeine Informationen zur Gesundheitsvorsorge. Die erforderliche Pflege kann je nach Zustand Ihres Haustiers variieren. Wenn ungewöhnliche Symptome auftreten oder eine Behandlung erforderlich ist, konsultieren Sie immer einen Tierarzt.';
}
