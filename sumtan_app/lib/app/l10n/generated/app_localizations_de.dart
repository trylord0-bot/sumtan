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
  String get weekStats => 'Statistiken dieser Woche';

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
}
