// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Pet Sumtan';

  @override
  String get appTagline => 'App de santé pour animaux';

  @override
  String get navHome => 'Accueil';

  @override
  String get navJournal => 'Journal';

  @override
  String get navNotifications => 'Alertes';

  @override
  String get navProfile => 'Profil';

  @override
  String get navSettings => 'Réglages';

  @override
  String get navAddAlarm => 'Ajouter une alerte';

  @override
  String get drawerService => 'Services';

  @override
  String get drawerNearbyHospitals => 'Trouver des cliniques proches';

  @override
  String get drawerNearbyHospitalsSub => 'Cliniques vétérinaires près de vous';

  @override
  String get drawerHealthGuide => 'Guide santé';

  @override
  String get drawerHealthGuideSub => 'Guide santé pour animaux';

  @override
  String get drawerApp => 'App';

  @override
  String get drawerHelp => 'Aide';

  @override
  String get dialogExternalTitle => 'Ouvrir une page externe';

  @override
  String get dialogExternalHospitalBody =>
      'Trouver des cliniques vétérinaires\nnécessite une page web externe.\n\nOuvrir maintenant ?';

  @override
  String get commonCancel => 'Annuler';

  @override
  String get commonGo => 'Ouvrir';

  @override
  String get commonDelete => 'Supprimer';

  @override
  String get commonSave => 'Enregistrer';

  @override
  String get commonLoading => 'Chargement...';

  @override
  String commonPercent(String percent) {
    return '$percent %';
  }

  @override
  String get toastBackToExit => 'Appuyez à nouveau pour quitter';

  @override
  String get toastNeedPet =>
      'Aucun animal enregistré. Ajoutez-en un depuis Profil !';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsPushNotifications => 'Autoriser les notifications';

  @override
  String get settingsPushNotificationsSub => 'Autorisations de notification';

  @override
  String get settingsLanguageSection => 'Langue';

  @override
  String get settingsLanguage => 'Langue de l\'app';

  @override
  String get settingsLanguageSystem => 'Utiliser la langue de l\'appareil';

  @override
  String get settingsLanguageChanged => 'Langue de l\'app modifiée';

  @override
  String get settingsData => 'Gestion des données';

  @override
  String get settingsExport => 'Exporter les données';

  @override
  String get settingsExportSub => 'Enregistrer en ZIP';

  @override
  String get settingsImport => 'Importer les données';

  @override
  String get settingsImportSub => 'Restaurer depuis un ZIP';

  @override
  String get settingsAppInfo => 'Infos de l\'app';

  @override
  String get settingsVersion => 'Version de l\'app';

  @override
  String get settingsPrivacy => 'Politique de confidentialité';

  @override
  String get settingsFeedback => 'Envoyer un avis';

  @override
  String get settingsFeedbackSubject => 'Pet Sumtan – Avis';

  @override
  String get settingsEmailAppMissing => 'Aucune app e-mail trouvée';

  @override
  String get settingsImportConfirmBody =>
      'Toutes les données existantes seront supprimées et remplacées par celles du fichier de sauvegarde.\n\nContinuer ?';

  @override
  String get settingsImportAction => 'Importer';

  @override
  String get settingsImporting => 'Importation en cours';

  @override
  String get settingsImportSuccess => 'Sauvegarde restaurée';

  @override
  String get settingsImportFailed => 'Échec de l\'importation';

  @override
  String get settingsExportTitle => 'Exporter les données';

  @override
  String get settingsExportBenefitTitle =>
      'Gardez vos précieux enregistrements en sécurité';

  @override
  String get settingsExportBenefitPets =>
      'Tous les profils et photos d\'animaux';

  @override
  String get settingsExportBenefitRecords =>
      'Tous les journaux, enregistrements et poids';

  @override
  String get settingsExportBenefitMedia =>
      'Inclut les images et vidéos jointes';

  @override
  String get settingsStoreUnavailable =>
      'Impossible de se connecter au Store.\nVeuillez réessayer plus tard.';

  @override
  String settingsPayAndExport(String price) {
    return 'Payer $price et exporter';
  }

  @override
  String get settingsUnlocked => 'Débloqué';

  @override
  String get settingsExportUnlockedBody =>
      'Enregistrez toutes les infos et données de vos animaux en ZIP.\nVous pouvez les importer et restaurer gratuitement à tout moment.';

  @override
  String get settingsExporting => 'Exportation...';

  @override
  String get settingsExportZip => 'Exporter en ZIP';

  @override
  String get settingsExportConfirmBody =>
      'Exporte toutes les infos, données et médias de vos animaux en ZIP.';

  @override
  String get settingsExportAction => 'Exporter';

  @override
  String get settingsExportSuccess => 'Fichier de sauvegarde prêt à partager';

  @override
  String get settingsExportFailed => 'Échec de l\'exportation';

  @override
  String get settingsPurchaseFailed => 'Échec du paiement';

  @override
  String get errorDbInit =>
      'Un problème est survenu lors de la préparation des données.\nVeuillez réessayer plus tard.';

  @override
  String get help => 'Aide';

  @override
  String get healthGuide => 'Guide santé';

  @override
  String get dog => 'Chien';

  @override
  String get cat => 'Chat';

  @override
  String get tabDog => '🐶 Chien';

  @override
  String get tabCat => '🐱 Chat';

  @override
  String get savedMsg => 'Enregistré';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get deleteAction => 'Supprimer';

  @override
  String get save => 'Enregistrer';

  @override
  String get memo => 'Mémo';

  @override
  String get memoPlaceholder => 'Laissez un mémo librement';

  @override
  String get addBtn => '+ Ajouter';

  @override
  String get errorOccurred => 'Une erreur s\'est produite';

  @override
  String errorOccurredWithDetail(String error) {
    return 'Une erreur s\'est produite\n$error';
  }

  @override
  String get pet => 'animal';

  @override
  String get selectPet => 'Sélectionner un animal';

  @override
  String get addNewPet => 'Ajouter un nouvel animal';

  @override
  String get noAlarms => 'Pas encore d\'alertes';

  @override
  String alarmEmptyDesc(String petName) {
    return 'Gardez $petName en bonne santé aujourd\'hui.\nAppuyez sur Ajouter une alerte pour commencer.';
  }

  @override
  String get scheduledAlarms => 'Alertes programmées';

  @override
  String get swipeToDelete => 'Glissez pour supprimer';

  @override
  String get selectAlarmType => 'Sélectionner le type d\'alerte';

  @override
  String get vetAppointment => 'Rendez-vous vétérinaire';

  @override
  String get medication => 'Médicament';

  @override
  String get mealTime => 'Heure du repas';

  @override
  String get dailyReminder => 'Rappel quotidien';

  @override
  String get alarmLabel => 'Alerte';

  @override
  String get alarmBodyVaccination =>
      'Veuillez vérifier la date de vaccination.';

  @override
  String get alarmBodyVetAppointment =>
      'Votre rendez-vous vétérinaire approche.';

  @override
  String get alarmBodyMedication => 'C\'est l\'heure du médicament.';

  @override
  String get alarmBodyMealTime => 'N\'oubliez pas l\'heure du repas.';

  @override
  String get alarmBodyDailyReminder =>
      'Veuillez ajouter le bilan de santé d\'aujourd\'hui.';

  @override
  String get alarmBodyDefault => 'Alerte de soins pour votre animal.';

  @override
  String get alarmDeleted => 'Alerte supprimée';

  @override
  String get hidePastAlarms => 'Masquer les alertes passées';

  @override
  String get showPastAlarms => 'Afficher les alertes passées';

  @override
  String get deleteAll => 'Tout supprimer';

  @override
  String get deletePastAlarms => 'Supprimer les alertes passées';

  @override
  String deletePastAlarmsConfirm(int count) {
    return 'Supprimer les $count alertes passées ?';
  }

  @override
  String get pastAlarmsDeleted => 'Toutes les alertes passées supprimées';

  @override
  String get pastLabel => 'Passé';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get tomorrowSameTime => 'Demain, même heure';

  @override
  String get snoozeQuestion => 'Quand souhaitez-vous être rappelé ?';

  @override
  String get snooze5min => 'Dans 5 minutes';

  @override
  String get snooze10min => 'Dans 10 minutes';

  @override
  String get snooze30min => 'Dans 30 minutes';

  @override
  String get snooze1hour => 'Dans 1 heure';

  @override
  String get snooze3hour => 'Dans 3 heures';

  @override
  String get snoozeCustom => 'Choisir manuellement';

  @override
  String get snoozeAtThisTime => 'Me rappeler à cette heure';

  @override
  String snoozeConfirm(String time) {
    return 'Nous vous rappellerons à $time';
  }

  @override
  String get selectFutureTime => 'Choisissez une heure future';

  @override
  String recordCheckHint(String typeLabel) {
    return 'Vous pouvez le voir sous Note > $typeLabel.';
  }

  @override
  String get pushAlsoCancel =>
      'La notification push programmée sera également annulée.';

  @override
  String get reschedule => 'Reprogrammer';

  @override
  String get deleteThisAlarm => 'Supprimer cette alerte';

  @override
  String get vaccineNameRequired => 'Nom du vaccin *';

  @override
  String get vaccineNameExample => 'Ex. Rage, vaccin combiné';

  @override
  String get scheduledDateRequired => 'Date *';

  @override
  String get reminderTiming => 'Moment du rappel';

  @override
  String get sameDay => 'Même jour';

  @override
  String get reminderTimeRequired => 'Heure du rappel *';

  @override
  String get memoInputHint => 'Saisir un mémo';

  @override
  String get visitPurposeRequired => 'Motif de la visite *';

  @override
  String get visitPurposeExample => 'Ex. Bilan, traitement cutané';

  @override
  String get appointmentDateTimeRequired => 'Date et heure du rendez-vous *';

  @override
  String get hospitalName => 'Nom de la clinique';

  @override
  String get hospitalNameHint => 'Entrez le nom de la clinique';

  @override
  String get medicineNameRequired => 'Nom du médicament *';

  @override
  String get medicineNameExample => 'Ex. Antiparasitaire, vermifuge';

  @override
  String get repeatRequired => 'Répétition *';

  @override
  String get none => 'Aucun';

  @override
  String get daily => 'Quotidien';

  @override
  String get weekly => 'Hebdomadaire';

  @override
  String get monthly => 'Mensuel';

  @override
  String get weekdays => 'Jours ouvrables';

  @override
  String get weekdaysOnly => 'Jours ouvrables uniquement';

  @override
  String get weekends => 'Week-ends';

  @override
  String get weekendsOnly => 'Week-ends uniquement';

  @override
  String get medicationDateTimeRequired => 'Date et heure du médicament *';

  @override
  String get medicationTimeRequired => 'Heure du médicament *';

  @override
  String get alarmNameRequired => 'Nom de l\'alerte *';

  @override
  String get mealTimeExample => 'Ex. Petit-déjeuner, dîner';

  @override
  String get mealTimeRequired => 'Heure du repas *';

  @override
  String get alarmMessage => 'Message d\'alerte';

  @override
  String get alarmMessageExample =>
      'Ex. As-tu ajouté le bilan d\'aujourd\'hui ?';

  @override
  String get alarmPastDueMsg =>
      'La date de cette alerte est passée.\nVous pouvez choisir une nouvelle date ou la supprimer.';

  @override
  String get reselectDate => 'Resélectionner la date';

  @override
  String get selectDate => 'Sélectionner une date';

  @override
  String get selectTime => 'Sélectionner une heure';

  @override
  String get todayStatus => 'État d\'aujourd\'hui';

  @override
  String get addRecord => '+ Ajouter une note';

  @override
  String get todayReminders => 'Rappels d\'aujourd\'hui';

  @override
  String get todayRecords => 'Notes d\'aujourd\'hui';

  @override
  String get viewAll => 'Tout voir';

  @override
  String get weekStats => 'Statistiques de la semaine';

  @override
  String get pottyCount => 'Nombre de selles';

  @override
  String get mealCount => 'Nombre de repas';

  @override
  String get waterLevel => 'Niveau d\'eau';

  @override
  String get timesUnit => 'fois';

  @override
  String get mealsUnit => 'repas';

  @override
  String get pointsUnit => 'pts';

  @override
  String get recordDeleted => 'Note supprimée';

  @override
  String get recordUpdated => 'Note mise à jour';

  @override
  String get deleteRecordConfirm => 'Supprimer cette note ?';

  @override
  String get deleteThisRecord => 'Supprimer cette note';

  @override
  String get typeLabel => 'Type';

  @override
  String get statusLabel => 'État';

  @override
  String get conditionScore => 'Score de condition';

  @override
  String get symptomTags => 'Étiquettes de symptômes';

  @override
  String get medicineName => 'Nom du médicament';

  @override
  String get dose => 'Dose';

  @override
  String get medicationMethod => 'Méthode de médication';

  @override
  String get weightKg => 'Poids (kg)';

  @override
  String get measurementMethod => 'Méthode de mesure';

  @override
  String get mealType => 'Type de repas';

  @override
  String get mealAmount => 'Quantité de repas';

  @override
  String get servingAmount => 'Portion';

  @override
  String get waterAmount => 'Quantité d\'eau';

  @override
  String get visitType => 'Type de visite';

  @override
  String get diagnosisName => 'Diagnostic';

  @override
  String get vaccineType => 'Type de vaccin';

  @override
  String get sideEffects => 'Effets secondaires';

  @override
  String get groomingType => 'Type de toilettage';

  @override
  String get shopName => 'Nom du salon';

  @override
  String get cost => 'Coût';

  @override
  String get nextAppointment => 'Prochain rendez-vous';

  @override
  String get brushingArea => 'Zone de brossage';

  @override
  String get duration => 'Durée';

  @override
  String get walkTime => 'Temps de promenade';

  @override
  String get distance => 'Distance';

  @override
  String get title => 'Titre';

  @override
  String get priority => 'Priorité';

  @override
  String get stool => 'Selles';

  @override
  String get urine => 'Urine';

  @override
  String get vomiting => 'Vomissement';

  @override
  String get normal => 'Normal';

  @override
  String get loose => 'Mou';

  @override
  String get hard => 'Dur';

  @override
  String get bloodInStool => 'Sang dans les selles';

  @override
  String get cough => 'Toux';

  @override
  String get lethargy => 'Léthargie';

  @override
  String get lossOfAppetite => 'Perte d\'appétit';

  @override
  String get diarrhea => 'Diarrhée';

  @override
  String get runnyNose => 'Nez qui coule';

  @override
  String get sneezing => 'Éternuements';

  @override
  String get trembling => 'Tremblements';

  @override
  String get bloodInUrine => 'Sang dans l\'urine';

  @override
  String get oral => 'Oral';

  @override
  String get injection => 'Injection';

  @override
  String get topical => 'Topique';

  @override
  String get eyeDrops => 'Gouttes oculaires';

  @override
  String get earDrops => 'Gouttes auriculaires';

  @override
  String get vetHospital => 'Clinique vétérinaire';

  @override
  String get homeScale => 'Balance domestique';

  @override
  String get holdAndWeigh => 'Peser dans les bras';

  @override
  String get breakfast => 'Petit-déjeuner';

  @override
  String get lunch => 'Déjeuner';

  @override
  String get dinner => 'Dîner';

  @override
  String get snack => 'Collation';

  @override
  String get veryLittle => 'Très peu';

  @override
  String get little => 'Peu';

  @override
  String get much => 'Beaucoup';

  @override
  String get veryMuch => 'Très beaucoup';

  @override
  String get general => 'Normal';

  @override
  String get regularCheckup => 'Bilan';

  @override
  String get emergency => 'Urgence';

  @override
  String get mild => 'Léger';

  @override
  String get severe => 'Grave';

  @override
  String get bath => 'Bain';

  @override
  String get fullGrooming => 'Toilettage complet';

  @override
  String get partialGrooming => 'Toilettage partiel';

  @override
  String get nails => 'Griffes';

  @override
  String get earCleaning => 'Nettoyage des oreilles';

  @override
  String get tartarRemoval => 'Détartrage';

  @override
  String get analGlands => 'Glandes anales';

  @override
  String get all => 'Tout';

  @override
  String get back => 'Dos';

  @override
  String get belly => 'Ventre';

  @override
  String get tail => 'Queue';

  @override
  String get face => 'Visage';

  @override
  String get paws => 'Pattes';

  @override
  String get important => 'Important';

  @override
  String get photosAndVideos => 'Photos · Vidéos';

  @override
  String get addMedia => 'Ajouter des médias';

  @override
  String get selectMediaMethod => 'Choisir comment ajouter des médias';

  @override
  String get useCamera => 'Utiliser la caméra';

  @override
  String get takePhotoOrVideo => 'Prendre une photo ou vidéo';

  @override
  String get chooseFromGallery => 'Choisir dans la galerie';

  @override
  String get multiSelectHint => 'Sélection multiple de photos et vidéos';

  @override
  String get takePhoto => 'Prendre une photo';

  @override
  String get takePhotoDesc => 'Prendre une photo avec la caméra';

  @override
  String get recordVideo => 'Enregistrer une vidéo';

  @override
  String get recordVideoDesc => 'Enregistrer une vidéo avec la caméra';

  @override
  String get deleteThisPhoto => 'Supprimer la photo';

  @override
  String get deletePhotoConfirm => 'Supprimer cette photo ?';

  @override
  String get deleteThisVideo => 'Supprimer la vidéo';

  @override
  String get deleteVideoConfirm => 'Supprimer cette vidéo ?';

  @override
  String get muted => 'Silencieux';

  @override
  String get soundOn => 'Son activé';

  @override
  String get allowPermissionInSettings =>
      'Veuillez autoriser la permission dans Réglages';

  @override
  String get openSettings => 'Ouvrir les réglages';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get contactDeveloper => 'Contacter le développeur';

  @override
  String get contact => 'Contact';

  @override
  String get settingsLabel => 'Réglages';

  @override
  String get exportData => 'Exporter les données';

  @override
  String get importData => 'Importer les données';

  @override
  String get sendFeedback => 'Envoyer un avis';

  @override
  String get faq => 'Questions fréquentes';

  @override
  String get homeScreen => 'Écran d\'accueil';

  @override
  String get journalScreen => 'Écran journal';

  @override
  String get alarmScreen => 'Écran des alertes';

  @override
  String get petManagement => 'Gestion des animaux';

  @override
  String get recordCategories => 'Catégories de notes';

  @override
  String get whatIsPetSumtan => 'Qu\'est-ce que Pet Sumtan ?';

  @override
  String get todayRecordSummary => 'Résumé des notes d\'aujourd\'hui';

  @override
  String get weeklyStats => 'Statistiques hebdomadaires';

  @override
  String get weightChangeChart => 'Graphique d\'évolution du poids';

  @override
  String get findNearbyHospitals => 'Trouver des cliniques proches';

  @override
  String get addNewRecord => 'Ajouter une nouvelle note (+)';

  @override
  String get viewRecordList => 'Voir les notes';

  @override
  String get editDeleteRecord => 'Modifier et supprimer des notes';

  @override
  String get attachMedia => 'Joindre photos/vidéos';

  @override
  String get addAlarm => 'Ajouter une alerte';

  @override
  String get repeatAlarm => 'Alertes répétées';

  @override
  String get advanceAlarmHint => 'Alertes anticipées (J-7, J-3, J-1)';

  @override
  String get completeAlarm => 'Compléter les alertes';

  @override
  String get deleteAlarm => 'Supprimer les alertes';

  @override
  String get registerPet => 'Enregistrer un animal';

  @override
  String get editProfile => 'Modifier le profil';

  @override
  String get manageMultiplePets => 'Gérer plusieurs animaux';

  @override
  String get dogHealthGuide => 'Guide santé du chien';

  @override
  String get catHealthGuide => 'Guide santé du chat';

  @override
  String get notificationSettings => 'Paramètres de notifications';

  @override
  String get dogHealthCareGuide => 'Guide santé du chien';

  @override
  String get catHealthCareGuide => 'Guide santé du chat';

  @override
  String get healthGuideSubtitle =>
      'Un guide santé professionnel\nfondé sur les recommandations vétérinaires.';

  @override
  String get vaccination => 'Vaccination';

  @override
  String get coreVaccines => 'Vaccins essentiels';

  @override
  String get required => 'Obligatoire';

  @override
  String get nonCoreVaccines => 'Vaccins optionnels';

  @override
  String get recommended => 'Conseillé';

  @override
  String get parasitePrevention => 'Prévention des parasites';

  @override
  String get heartworm => 'Dirofilariose';

  @override
  String get monthlyFreq => 'Mensuel';

  @override
  String get externalParasites => 'Parasites externes (puces/tiques)';

  @override
  String get internalParasites => 'Parasites internes';

  @override
  String get threeToSixMonths => '3-6 mois';

  @override
  String get nutritionManagement => 'Nutrition';

  @override
  String get dentalCare => 'Soins dentaires';

  @override
  String get healthCheckup => 'Bilans de santé';

  @override
  String get emergencySigns => 'Signes d\'urgence';

  @override
  String get age => 'Âge';

  @override
  String get checkupCycle => 'Fréquence';

  @override
  String get mainItems => 'Points principaux';

  @override
  String get exerciseLevel => 'Niveau d\'exercice';

  @override
  String get breedExamples => 'Exemples de races';

  @override
  String get low => 'Bas';

  @override
  String get high => 'Élevé';

  @override
  String get menu => 'Menu';

  @override
  String get helloGreeting => 'Bonjour ! ';

  @override
  String get healthyTodayMsg => '\nEn bonne santé aujourd\'hui ? 🐾';

  @override
  String get noRecordsYet => 'Pas encore de notes';

  @override
  String lastRecord(String time) {
    return 'Dernière note · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return 'Moy. $value$unit/jour';
  }

  @override
  String get weightTrend => '⚖️ Tendance du poids';

  @override
  String get weightChange => '⚖️ Évolution du poids';

  @override
  String get noWeightData => 'Pas encore de données de poids';

  @override
  String get measuredWeight => 'Poids mesuré';

  @override
  String get standardRange => 'Plage standard';

  @override
  String get noTodayRecords => 'Pas encore de notes pour aujourd\'hui';

  @override
  String get homeNoRecordHint =>
      'Notez l\'état, les selles et le poids\npour gérer la santé de votre animal.';

  @override
  String noRecordsForDate(String date) {
    return 'Pas de notes pour $date';
  }

  @override
  String recordsForDate(String date, String count) {
    return 'Notes du $date ($count)';
  }

  @override
  String get daySun => 'Dim';

  @override
  String get dayMon => 'Lun';

  @override
  String get dayTue => 'Mar';

  @override
  String get dayWed => 'Mer';

  @override
  String get dayThu => 'Jeu';

  @override
  String get dayFri => 'Ven';

  @override
  String get daySat => 'Sam';

  @override
  String get whatToRecord => '📝 Que voulez-vous noter ?';

  @override
  String saveErrorMsg(String error) {
    return 'Une erreur s\'est produite lors de l\'enregistrement : $error';
  }

  @override
  String get alarmUpdated => 'Alerte mise à jour';

  @override
  String get alarmAdded => 'Alerte ajoutée';

  @override
  String get editAlarm => 'Modifier l\'alerte';

  @override
  String get deleteAlarmConfirm => 'Supprimer cette alerte ?';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name sera supprimée,\net sa notification push programmée sera également annulée.';
  }

  @override
  String get doneMsg => '✅ Terminé';

  @override
  String get laterMsg => '🕐 Plus tard';

  @override
  String get saveCompletion => '✅ Enregistrer la finalisation';

  @override
  String completedQuestion(String type) {
    return 'Avez-vous terminé $type ?';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'Nous enregistrerons automatiquement\n$name dans les notes d\'aujourd\'hui.';
  }

  @override
  String completionSaved(String name) {
    return 'Finalisation de $name enregistrée';
  }

  @override
  String get tapAlarmTypeHint => '👆 Appuyez sur le type d\'alerte souhaité';

  @override
  String countUnit(int count) {
    return '$count';
  }

  @override
  String dateCompleted(String date) {
    return '$date · Terminé';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date passé · Appuyez pour reprogrammer';
  }

  @override
  String get completedLabel => 'Terminé';

  @override
  String get edit => 'Modifier';

  @override
  String recordDeleteCannotUndo(String category) {
    return 'La note $category sera supprimée\net ne pourra pas être restaurée.';
  }

  @override
  String get hintMedicineNameAndDose =>
      'Veuillez saisir le nom et la dose du médicament';

  @override
  String get hintMedicineName => 'Veuillez saisir un nom de médicament';

  @override
  String get hintDose => 'Veuillez saisir une dose';

  @override
  String get hintWeightNumber => 'Veuillez saisir le poids en chiffres';

  @override
  String get hintWeight => 'Veuillez saisir le poids';

  @override
  String get hintWeightIsNumber => 'Veuillez saisir le poids en chiffres';

  @override
  String get hintWalkTime => 'Veuillez saisir le temps de promenade';

  @override
  String get hintWalkTimeIsNumber =>
      'Veuillez saisir le temps de promenade en chiffres';

  @override
  String get hintWalkTimeNumber =>
      'Veuillez saisir le temps de promenade en chiffres';

  @override
  String get hintSelectBrushingArea =>
      'Veuillez sélectionner au moins une zone de brossage';

  @override
  String get hintSelectVaccineType =>
      'Veuillez sélectionner au moins un type de vaccin';

  @override
  String get hintSelectGroomingType =>
      'Veuillez sélectionner au moins un type de toilettage';

  @override
  String get hintTitle => 'Veuillez saisir un titre';

  @override
  String get hintVaccineName => 'Veuillez saisir un nom de vaccin';

  @override
  String get hintSelectScheduledDate => 'Veuillez sélectionner une date';

  @override
  String get hintSelectScheduledTime => 'Veuillez sélectionner une heure';

  @override
  String get hintVisitPurpose => 'Veuillez saisir le motif de la visite';

  @override
  String get hintSelectAppointmentDate =>
      'Veuillez sélectionner une date de rendez-vous';

  @override
  String get hintSelectAppointmentTime =>
      'Veuillez sélectionner une heure de rendez-vous';

  @override
  String get hintMedicineNameInput => 'Veuillez saisir un nom de médicament';

  @override
  String get hintSelectMedicationDate =>
      'Veuillez sélectionner une date de médicament';

  @override
  String get hintSelectMedicationTime =>
      'Veuillez sélectionner une heure de médicament';

  @override
  String get hintAlarmName => 'Veuillez saisir un nom d\'alerte';

  @override
  String get hintSelectMealTime => 'Veuillez sélectionner une heure de repas';

  @override
  String get hintSelectAlarmTime => 'Veuillez sélectionner une heure d\'alerte';

  @override
  String get noPetRegisterFirst =>
      'Pas encore d\'animal. Ajoutez-en un depuis Profil d\'abord.';

  @override
  String get alarmRescheduled => 'Alerte reprogrammée';

  @override
  String get examplePetName => 'Ex. Luna';

  @override
  String get exampleBreed => 'Ex. Maltais';

  @override
  String get exampleBreedMulti => 'Ex. Maltais, Persan';

  @override
  String get example30 => 'Ex. 30';

  @override
  String get example80 => 'Ex. 80';

  @override
  String get example200 => 'Ex. 200';

  @override
  String get example25 => 'Ex. 2.5';

  @override
  String get example35000 => 'Ex. 35000';

  @override
  String get example50000 => 'Ex. 50000';

  @override
  String get enterNameHint => 'Veuillez saisir un nom';

  @override
  String get addNewPetTitle => 'Ajouter un nouvel animal';

  @override
  String get basicInfo => 'Informations de base';

  @override
  String get idInfo => 'Identification';

  @override
  String get idInfoOptional => 'Identification (optionnel)';

  @override
  String get name => 'Nom';

  @override
  String get petKind => 'Type';

  @override
  String get breed => 'Race';

  @override
  String get weight => 'Poids';

  @override
  String get microchip => 'Puce électronique';

  @override
  String get registrationNumber => 'Numéro d\'enregistrement';

  @override
  String get birthDate => 'Date de naissance';

  @override
  String get gender => 'Sexe';

  @override
  String get male => 'Mâle';

  @override
  String get female => 'Femelle';

  @override
  String get maleSym => 'Mâle ♂';

  @override
  String get femaleSym => 'Femelle ♀';

  @override
  String get neutered => 'Stérilisation';

  @override
  String get done => 'Terminé';

  @override
  String get notDone => 'Non terminé';

  @override
  String get notEntered => 'Non renseigné';

  @override
  String get notRegistered => 'Non enregistré';

  @override
  String get dogEmoji => 'Chien 🐶';

  @override
  String get catEmoji => 'Chat 🐱';

  @override
  String get otherEmoji => 'Autre 🐾';

  @override
  String get noPetsRegistered => 'Aucun animal enregistré';

  @override
  String get registerPetPrompt =>
      'Ajoutez un animal et\ngérez sa santé ensemble.';

  @override
  String get registerPetBtn => 'Ajouter un animal';

  @override
  String get editPet => 'Modifier l\'animal';

  @override
  String get neuteringStatus => 'Statut de stérilisation';

  @override
  String get neuteredDone => 'Stérilisé';

  @override
  String get notNeutered => 'Non stérilisé';

  @override
  String get selectDateHint => 'Sélectionner une date';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get registerBtn => 'Enregistrer';

  @override
  String deletePetName(String name) {
    return 'Supprimer $name';
  }

  @override
  String deletePetConfirm(String name) {
    return 'Supprimer $name ?';
  }

  @override
  String deletePetWarning(String name) {
    return 'Toutes les notes et alertes de $name seront supprimées et ne pourront pas être restaurées.';
  }

  @override
  String petDeleted(String name) {
    return '$name supprimé';
  }

  @override
  String petAdded(String name) {
    return '$name ajouté';
  }

  @override
  String get storeUnavailableMsg =>
      'Impossible de se connecter au Store. Veuillez réessayer plus tard.';

  @override
  String get checkingPaymentMsg =>
      'Vérification des informations de paiement. Veuillez réessayer dans un instant.';

  @override
  String get paymentCompleteMsg =>
      'Paiement effectué. Veuillez saisir les informations de votre nouvel animal.';

  @override
  String get addNewFamilyMember => 'Ajouter un nouveau membre de la famille ?';

  @override
  String get firstPetFreeDesc =>
      'Le premier animal est gratuit. À partir du deuxième, chaque animal supplémentaire nécessite un paiement.';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '$count animaux enregistrés\nVeuillez réessayer quand le Store est disponible.';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '$count animaux enregistrés\nPayez $price pour ajouter un nouveau membre.';
  }

  @override
  String get maybeLater => 'Peut-être plus tard';

  @override
  String get unavailable => 'Non disponible';

  @override
  String payAndAdd(String price) {
    return 'Payer $price et ajouter';
  }

  @override
  String get addNextAppointment => '+ Ajouter le prochain rendez-vous';

  @override
  String get pottyRecordSaved => 'Note de selles enregistrée';

  @override
  String get conditionRecordSaved => 'Note d\'état enregistrée';

  @override
  String get medicationRecordSaved => 'Note de médicament enregistrée';

  @override
  String get weightRecordSaved => 'Note de poids enregistrée';

  @override
  String get mealRecordSaved => 'Note de repas enregistrée';

  @override
  String get waterRecordSaved => 'Note d\'eau enregistrée';

  @override
  String get vetVisitRecordSaved => 'Note de visite vétérinaire enregistrée';

  @override
  String get vaccinationRecordSaved => 'Note de vaccination enregistrée';

  @override
  String get groomingRecordSaved => 'Note de toilettage enregistrée';

  @override
  String get brushingRecordSaved => 'Note de brossage enregistrée';

  @override
  String get walkRecordSaved => 'Note de promenade enregistrée';

  @override
  String get memoSaved => 'Mémo enregistré';

  @override
  String get moreQuestions => 'D\'autres questions ?';

  @override
  String get contactViaSendFeedback =>
      'Contactez-nous depuis Réglages > Envoyer un avis.\nNous vous répondrons rapidement.';

  @override
  String get contactViaSendFeedbackLong =>
      'Contactez-nous via Envoyer un avis dans Réglages.\nNous répondrons rapidement.';

  @override
  String get privacyPolicyEffectiveDate =>
      'Cette politique de confidentialité est en vigueur depuis le 1er janvier 2026.\nDernière mise à jour : 8 mai 2026';

  @override
  String get privacyCollectedInfo =>
      'Les informations collectées ne sont utilisées qu\'aux fins indiquées.';

  @override
  String get privacyDataFeatures =>
      'Pet Sumtan propose des fonctions d\'exportation (sauvegarde) et d\'importation (restauration) de données.';

  @override
  String get privacyPolicyMayUpdate =>
      'Cette politique de confidentialité peut être mise à jour en raison de changements légaux ou de service.';

  @override
  String get privacyPolicyContact =>
      'Pour toute question sur cette politique de confidentialité, veuillez nous contacter ci-dessous.';

  @override
  String get catMeal => 'Repas';

  @override
  String get catWater => 'Eau';

  @override
  String get catGrooming => 'Toilettage';

  @override
  String get catBrushing => 'Brossage';

  @override
  String get catWalk => 'Promenade';

  @override
  String get catHospital => 'Clinique';

  @override
  String get catCondition => 'État';

  @override
  String get catPotty => 'Selles';

  @override
  String get mealFormTitle => '🍽️ Enregistrement repas';

  @override
  String get walkFormTitle => '🦮 Enregistrement promenade';

  @override
  String get weightFormTitle => '⚖️ Enregistrement poids';

  @override
  String get waterFormTitle => '💧 Enregistrement eau';

  @override
  String get medicationFormTitle => '💊 Enregistrement médicament';

  @override
  String get groomingFormTitle => '✂️ Enregistrement toilettage';

  @override
  String get brushingFormTitle => '🪥 Enregistrement brossage';

  @override
  String get conditionFormTitle => '🌡️ Enregistrement état';

  @override
  String get poopFormTitle => '💩 Enregistrement selles';

  @override
  String get vaccinationFormTitle => '💉 Enregistrement vaccination';

  @override
  String get hospitalFormTitle => '🏥 Enregistrement clinique';

  @override
  String get memoFormTitle => '📝 Note';

  @override
  String get measureMethod => 'Méthode de mesure';

  @override
  String get feedAmount => 'Quantité donnée';

  @override
  String get mlInputLabel => 'Saisie directe en mL';

  @override
  String get alarmRescheduleNote =>
      'La date prévue de cette alerte est passée.\nVous pouvez définir une nouvelle date ou la supprimer.';

  @override
  String get nailTrim => 'Coupe des griffes';

  @override
  String get shopNameExample => 'ex: Salon Fluffy pour animaux';

  @override
  String get poopRecordSaved => '💩 Selles enregistrées';

  @override
  String get memoRecordSaved => '📝 Mémo enregistré';

  @override
  String get other => 'Autre';

  @override
  String get whole => 'Corps entier';

  @override
  String get paw => 'Patte';

  @override
  String get importance => 'Importance';

  @override
  String get timeTaken => 'Temps requis';

  @override
  String get example10 => 'ex: 10';

  @override
  String get hospitalNameExample => 'ex: Clinique Happy Animal';

  @override
  String get diagnosisExample => 'ex: Entérite, Dermatite';

  @override
  String get memoTitlePlaceholder => 'Entrez le titre du mémo';

  @override
  String get hintMemoTitle => '💡 Veuillez entrer un titre';

  @override
  String get poopType => 'Type';

  @override
  String get poopStatus => 'État';

  @override
  String get feces => 'Selles';

  @override
  String get bloody => 'Sang dans les selles';

  @override
  String get vaccineDhppl => 'Combo DHPPL';

  @override
  String get vaccineCorona => 'Entérite coronavirale';

  @override
  String get vaccineKennelCough => 'Toux du chenil';

  @override
  String get vaccineRabies => 'Rage';

  @override
  String get vaccineInfluenza => 'Grippe';

  @override
  String get vaccineFvrcp => 'Combo FVRCP';

  @override
  String get vaccineFelv => 'Leucémie (FeLV)';

  @override
  String get vaccineChlamydia => 'Chlamydia';

  @override
  String get mute => 'Muet';

  @override
  String get photoVideo => 'Photo · Vidéo';

  @override
  String photoVideoCount(String count) {
    return 'Photo · Vidéo · $count';
  }

  @override
  String get selectMediaSource => 'Choisir la source';

  @override
  String get cameraCapture => 'Appareil photo';

  @override
  String get cameraCaptureSubtitle => 'Prendre une photo ou vidéo';

  @override
  String get selectFromGallery => 'Galerie';

  @override
  String get selectFromGallerySubtitle => 'Sélectionner photos · vidéos';

  @override
  String get takePhotoSubtitle => 'Prendre une photo';

  @override
  String get recordVideoSubtitle => 'Enregistrer une vidéo';

  @override
  String get permissionRequired => 'Autorisez l\'accès dans Réglages';

  @override
  String get confirmDeletePhoto => 'Supprimer cette photo ?';

  @override
  String get confirmDeleteVideo => 'Supprimer cette vidéo ?';

  @override
  String get hintMedicineAndDose => '💡 Entrez le médicament et la dose';

  @override
  String deleteRecordBody(String category) {
    return 'L\'enregistrement $category sera supprimé\net ne pourra pas être annulé.';
  }
}
