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
  String get settingsPurchaseProductLoadFailed =>
      'Impossible de charger les informations du produit. Veuillez réessayer dans un instant.';

  @override
  String get settingsPurchaseStartFailed =>
      'Impossible de démarrer le paiement. Veuillez réessayer dans un instant.';

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
  String get notificationChannelName => 'Alertes Pet Sumtan';

  @override
  String get notificationChannelDescription =>
      'Rappels de santé pour votre animal';

  @override
  String alarmNotificationTitle(String type) {
    return 'Alerte $type';
  }

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
  String get weekStats => 'Statistiques de santé';

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
  String get deleteConfirmBody => 'Cette action est irréversible !';

  @override
  String get deleteConfirmOk => 'Supprimer';

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

  @override
  String dayCountShort(int days) {
    return '$days j';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan est une application qui vous permet d’enregistrer et de gérer au même endroit la santé et le quotidien de votre animal.\nVous pouvez facilement noter différentes informations de santé, comme les repas, l’eau, les selles, le poids, les médicaments et les visites chez le vétérinaire, et utiliser les alertes pour ne pas oublier les rendez-vous importants.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'Consultez d’un coup d’œil toutes les notes ajoutées aujourd’hui. Touchez une note pour voir les détails ou la modifier.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'Consultez sous forme de graphiques le nombre de selles, les repas et la quantité d’eau de cette semaine. Cela vous aide à comprendre le rythme de vie de votre animal.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'Affiche les derniers poids enregistrés sous forme de graphique afin de suivre facilement leur évolution.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'Touchez le bouton pour rechercher les cliniques vétérinaires proches dans Naver Maps.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'Touchez le bouton + en bas de l’écran pour choisir une catégorie et ajouter une nouvelle note.';

  @override
  String get helpRecordCategoriesIntro =>
      'Vous pouvez noter le quotidien de votre animal dans 12 catégories.';

  @override
  String get helpCategoryPottyName => 'Selles';

  @override
  String get helpCategoryPottyDesc =>
      'Notez les selles et leur état. Vous pouvez aussi joindre des photos.';

  @override
  String get helpCategoryConditionName => 'État';

  @override
  String get helpCategoryConditionDesc =>
      'Notez l’état général de votre animal.';

  @override
  String get helpCategoryMedicationName => 'Médicament';

  @override
  String get helpCategoryMedicationDesc =>
      'Notez le nom du médicament, la dose et l’heure d’administration.';

  @override
  String get helpCategoryWeightName => 'Poids';

  @override
  String get helpCategoryWeightDesc =>
      'Notez le poids en kg. Vous pouvez suivre son évolution sur l’écran d’accueil.';

  @override
  String get helpCategoryMealName => 'Repas';

  @override
  String get helpCategoryMealDesc =>
      'Notez la quantité de nourriture et le type d’aliment. Vous pouvez aussi joindre des photos et des vidéos.';

  @override
  String get helpCategoryWaterName => 'Eau';

  @override
  String get helpCategoryWaterDesc =>
      'Notez la quantité d’eau en ml. Vous pouvez aussi joindre des photos et des vidéos.';

  @override
  String get helpCategoryHospitalName => 'Clinique';

  @override
  String get helpCategoryHospitalDesc =>
      'Notez le nom de la clinique et les détails de la consultation. Vous pouvez aussi joindre des photos et des vidéos.';

  @override
  String get helpCategoryVaccinationName => 'Vaccination';

  @override
  String get helpCategoryVaccinationDesc =>
      'Notez le type de vaccin et la date de vaccination.';

  @override
  String get helpCategoryGroomingName => 'Toilettage';

  @override
  String get helpCategoryGroomingDesc =>
      'Notez les détails du toilettage et joignez des photos ou des vidéos.';

  @override
  String get helpCategoryDentalName => 'Brossage des dents';

  @override
  String get helpCategoryDentalDesc =>
      'Notez si le brossage des dents a été fait et ajoutez un mémo.';

  @override
  String get helpCategoryWalkName => 'Promenade';

  @override
  String get helpCategoryWalkDesc =>
      'Notez la distance et la durée de la promenade.';

  @override
  String get helpCategoryMemoName => 'Mémo';

  @override
  String get helpCategoryMemoDesc => 'Laissez librement un mémo.';

  @override
  String get helpJournalViewRecordListDesc =>
      'Consultez tous les enregistrements par date. Les badges de catégorie permettent d’identifier rapidement le type de note.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'Touchez une note pour ouvrir la feuille de modification. Vous pouvez modifier le contenu ou le supprimer.';

  @override
  String get helpJournalAttachMediaDesc =>
      'Dans certaines catégories, comme repas, eau, clinique, toilettage ou selles, vous pouvez joindre des photos ou des vidéos.';

  @override
  String get helpAlarmAddDesc =>
      'Vous pouvez ajouter différents types d’alertes, comme vaccination, médicament, visite vétérinaire ou toilettage. Choisissez d’abord le type d’alerte, puis définissez la date et l’heure.';

  @override
  String get helpAlarmRepeatDesc =>
      'Configurez des règles de répétition, par exemple tous les jours, chaque semaine ou chaque mois. C’est utile pour les traitements réguliers ou la prévention de la dirofilariose.';

  @override
  String get helpAlarmAdvanceDesc =>
      'Pour les rendez-vous importants comme la vaccination, vous pouvez recevoir des rappels 7 jours, 3 jours et 1 jour à l’avance.';

  @override
  String get helpAlarmCompleteDesc =>
      'Touchez une alerte pour la marquer comme terminée. Les alertes terminées sont visibles dans la liste des alertes passées.';

  @override
  String get helpAlarmDeleteDesc =>
      'Faites glisser une alerte vers la gauche pour la supprimer.';

  @override
  String get helpPetRegisterDesc =>
      'Enregistrez votre animal en saisissant son nom, son type, sa race, son sexe, sa date de naissance et son statut de stérilisation.';

  @override
  String get helpPetEditProfileDesc =>
      'Depuis l’écran de profil, vous pouvez modifier le nom, la race, le poids, le numéro de puce électronique, le numéro d’enregistrement et la photo de profil.';

  @override
  String get helpPetManageMultipleDesc =>
      'Vous pouvez enregistrer plusieurs animaux. Touchez la pastille de l’animal en haut de l’écran pour changer l’animal à gérer.';

  @override
  String get helpDogHealthGuideDesc =>
      'Fournit des informations de santé fondées sur des recommandations vétérinaires, notamment les calendriers de vaccins essentiels et optionnels, la prévention de la dirofilariose et des parasites externes, les soins dentaires et la nutrition.';

  @override
  String get helpCatHealthGuideDesc =>
      'Consultez le calendrier de vaccination propre aux chats, la prévention des parasites, les soins dentaires et les informations nutritionnelles.';

  @override
  String get helpSettingsNotificationDesc =>
      'Activez ou désactivez toutes les notifications de l’application.';

  @override
  String get helpSettingsExportDesc =>
      'Exportez toutes les données enregistrées dans un fichier ZIP. Utilisez-le comme sauvegarde lors d’un changement d’appareil.';

  @override
  String get helpSettingsImportDesc =>
      'Importez un fichier de sauvegarde ZIP précédemment exporté pour restaurer vos données.';

  @override
  String get helpSettingsFeedbackDesc =>
      'Envoyez-nous par e-mail les problèmes rencontrés ou vos suggestions d’amélioration. Cela nous aide beaucoup à améliorer l’application.';

  @override
  String get helpFaqDeletePetQ =>
      'Si je supprime un animal, toutes ses notes seront-elles aussi supprimées ?';

  @override
  String get helpFaqDeletePetA =>
      'Oui. Si vous supprimez un animal, toutes ses notes et alertes associées seront également supprimées. Avant de supprimer, pensez à faire une sauvegarde avec Exporter les données.';

  @override
  String get helpFaqMultipleMediaQ =>
      'Puis-je joindre plusieurs photos à une note ?';

  @override
  String get helpFaqMultipleMediaA =>
      'Oui. Vous pouvez joindre plusieurs photos et vidéos. Vous pouvez les choisir depuis la galerie ou les prendre directement avec l’appareil photo.';

  @override
  String get helpFaqNoNotificationQ => 'Je ne reçois pas les notifications.';

  @override
  String get helpFaqNoNotificationA =>
      'Vérifiez que les notifications de Pet Sumtan sont autorisées dans les réglages de notification de l’appareil. Vérifiez aussi que les notifications de l’app sont activées dans Réglages > Paramètres de notifications.';

  @override
  String get helpFaqMoveDataQ =>
      'Puis-je transférer mes données vers un nouvel appareil ?';

  @override
  String get helpFaqMoveDataA =>
      'Oui. Sur l’ancien appareil, enregistrez un fichier de sauvegarde depuis Réglages > Exporter les données. Puis, sur le nouvel appareil, restaurez-le depuis Réglages > Importer les données.';

  @override
  String get helpFaqMultiplePetsQ => 'Puis-je enregistrer plusieurs animaux ?';

  @override
  String get helpFaqMultiplePetsA =>
      'Par défaut, vous pouvez enregistrer 1 animal gratuitement. L’enregistrement d’animaux supplémentaires est disponible via une fonctionnalité premium.';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan est une application utilisable sans inscription, et toutes les données sont stockées uniquement sur l’appareil de l’utilisateur. Nous ne transmettons aucune information personnelle à des serveurs externes et protégeons en toute sécurité les précieuses informations de vos animaux.';

  @override
  String get privacySection1Title => 'Informations personnelles collectées';

  @override
  String get privacySection1Body =>
      'Pet Sumtan peut être utilisé sans inscription et ne collecte pas d’informations permettant d’identifier personnellement l’utilisateur. Toutefois, afin de fournir les fonctionnalités de l’app, les informations suivantes peuvent être stockées sur l’appareil.';

  @override
  String get privacyLocalStorageInfo =>
      'Informations stockées localement sur l’appareil';

  @override
  String get privacyPetInfo =>
      'Informations sur l’animal : nom, espèce, race, date de naissance, sexe, poids, statut de stérilisation, numéro de puce électronique et numéro d’enregistrement';

  @override
  String get privacyHealthRecords =>
      'Notes de santé : selles, repas, eau, poids, médicaments, vaccinations, clinique, toilettage, brossage des dents, promenade, état, mémos et autres notes saisies directement par l’utilisateur';

  @override
  String get privacyAttachedMedia =>
      'Médias joints : photos et vidéos prises ou sélectionnées directement par l’utilisateur';

  @override
  String get privacyNotificationSettings =>
      'Paramètres d’alerte : type d’alerte, date et heure prévues, règles de répétition';

  @override
  String get privacyInAppPurchaseTitle => 'Achats intégrés';

  @override
  String get privacyPaymentProcessing =>
      'Les paiements sont traités par l’Apple App Store ou le Google Play Store, et l’app ne collecte ni ne stocke directement les informations de paiement.';

  @override
  String get privacyReceiptVerification =>
      'Seules les informations minimales nécessaires à la vérification des reçus d’achat sont traitées conformément aux politiques de chaque plateforme.';

  @override
  String get privacySection2Title =>
      'Finalités de la collecte et de l’utilisation des informations personnelles';

  @override
  String get privacyPurposeRecords =>
      'Enregistrer et consulter les notes de santé des animaux';

  @override
  String get privacyPurposeStats =>
      'Fournir des statistiques sur l’écran d’accueil, comme les selles, les repas et la consommation d’eau de la semaine, ainsi que des graphiques d’évolution du poids';

  @override
  String get privacyPurposeReminders =>
      'Envoyer des alertes liées à la santé, comme les vaccinations, les médicaments et les visites vétérinaires';

  @override
  String get privacyPurposeBackupRestore =>
      'Fournir des fonctions de sauvegarde et de restauration des données';

  @override
  String get privacyPurposePaidEligibility =>
      'Vérifier l’éligibilité à l’utilisation des fonctionnalités payantes';

  @override
  String get privacySection3Title =>
      'Conservation et suppression des informations personnelles';

  @override
  String get privacyRetentionBody =>
      'Toutes les données de Pet Sumtan sont stockées uniquement dans la base de données locale de l’appareil de l’utilisateur (SQLite) et ne sont pas transmises à des serveurs externes.';

  @override
  String get privacyDataDeletionMethod => 'Méthodes de suppression des données';

  @override
  String get privacyDeleteInApp =>
      'Vous pouvez supprimer directement les informations et notes de vos animaux dans Réglages > Gestion des données dans l’app.';

  @override
  String get privacyDeleteUninstall =>
      'Lorsque vous supprimez l’app, toutes les données stockées sur l’appareil sont également supprimées.';

  @override
  String get privacyDeleteBackupWarning =>
      'Veuillez noter que si vous n’effectuez pas de sauvegarde (exportation) avant de supprimer l’app, les données ne pourront pas être récupérées.';

  @override
  String get privacySection4Title =>
      'Partage des informations personnelles avec des tiers';

  @override
  String get privacyThirdPartyBody =>
      'Pet Sumtan ne fournit pas les informations personnelles de l’utilisateur à des tiers. Toutefois, les situations suivantes constituent des exceptions.';

  @override
  String get privacyThirdPartyUserExport =>
      'Lorsque l’utilisateur utilise lui-même la fonction d’exportation des données, par exemple pour partager un fichier de sauvegarde';

  @override
  String get privacyThirdPartyLegalRequest =>
      'Lorsque cela est requis par la loi ou à la suite d’une demande légale des autorités compétentes';

  @override
  String get privacySection5Title => 'Autorisations d’accès';

  @override
  String get privacyPermissionsBody =>
      'Afin de fournir les fonctionnalités de l’app, les autorisations ci-dessous peuvent être demandées. Même si vous refusez une autorisation, vous pouvez continuer à utiliser normalement les autres fonctionnalités, à l’exception de celle qui dépend de cette autorisation.';

  @override
  String get privacyPermissionCameraName => 'Appareil photo';

  @override
  String get privacyPermissionCameraDesc =>
      'Utilisé pour prendre directement des photos ou enregistrer des vidéos et les joindre aux notes de santé.';

  @override
  String get privacyPermissionMediaName => 'Accès aux photos et médias';

  @override
  String get privacyPermissionMediaDesc =>
      'Utilisé pour sélectionner des photos et vidéos depuis la galerie et les joindre aux notes.';

  @override
  String get privacyPermissionNotificationName => 'Notifications';

  @override
  String get privacyPermissionNotificationDesc =>
      'Utilisées pour envoyer des alertes liées à la santé, comme les vaccinations, les médicaments et les visites vétérinaires.';

  @override
  String get privacyPermissionFileName => 'Accès aux fichiers (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'Utilisé pour enregistrer ou charger des fichiers de sauvegarde de données.';

  @override
  String get privacySection6Title => 'Sauvegarde et restauration des données';

  @override
  String get privacyBackupExport =>
      'Exporter : permet d’enregistrer ou de partager toutes les données de l’app sous forme de fichier (.zip).';

  @override
  String get privacyBackupImport =>
      'Importer : permet de charger un fichier de sauvegarde précédemment exporté et de restaurer les données.';

  @override
  String get privacyBackupWarning =>
      'Les fichiers de sauvegarde sont gérés directement par l’utilisateur. Veillez à ne pas les partager avec d’autres personnes.';

  @override
  String get privacySection7Title =>
      'Protection des informations personnelles des enfants';

  @override
  String get privacyChildrenBody =>
      'Pet Sumtan ne collecte pas séparément d’informations personnelles auprès des enfants de moins de 14 ans. Toutes les données de l’app sont stockées uniquement sur l’appareil et ne sont pas transmises à des serveurs externes, ce qui permet également aux enfants de l’utiliser en toute sécurité.';

  @override
  String get privacySection8Title =>
      'Modifications de la présente politique de confidentialité';

  @override
  String get privacyPolicyChangeNotice =>
      'En cas de modification, nous vous en informerons par les notes de mise à jour de l’app ou par un avis dans l’app.';

  @override
  String get privacyPolicyChangeEffective =>
      'La politique modifiée prendra effet 7 jours après l’avis.';

  @override
  String get privacySection9Title => 'Contact';

  @override
  String get hgDogHeroTitle => 'Guide de santé du chien';

  @override
  String get hgCatHeroTitle => 'Guide de santé du chat';

  @override
  String get hgHeroSubtitle =>
      'Un guide de santé professionnel\nfondé sur les recommandations vétérinaires.';

  @override
  String get hgVaccination => 'Vaccination';

  @override
  String get hgCoreVaccines => 'Vaccins essentiels (Core Vaccine)';

  @override
  String get hgNonCoreVaccines => 'Vaccins optionnels (Non-Core)';

  @override
  String get hgRequired => 'Obligatoire';

  @override
  String get hgRecommended => 'Conseillé';

  @override
  String get hgParasitePrevention => 'Prévention des parasites';

  @override
  String get hgHeartworm => 'Dirofilariose';

  @override
  String get hgMonthly => 'Mensuel';

  @override
  String get hgExternalParasites => 'Parasites externes (puces et tiques)';

  @override
  String get hgInternalParasites => 'Parasites internes';

  @override
  String get hgThreeToSixMonths => '3 à 6 mois';

  @override
  String get hgRegular => 'Régulier';

  @override
  String get hgRegularCheckup => 'Bilan de santé régulier';

  @override
  String get hgDentalCare => 'Soins dentaires et bucco-dentaires';

  @override
  String get hgForbiddenFoods => 'Aliments strictement interdits';

  @override
  String get hgEmergencySymptoms =>
      'Symptômes nécessitant une consultation immédiate';

  @override
  String get hgExerciseMentalHealth => 'Exercice et santé mentale';

  @override
  String get hgWalk => 'Promenade';

  @override
  String get hgDaily => 'Tous les jours';

  @override
  String get hgBreedExerciseAmount => 'Exercice recommandé selon la race';

  @override
  String get hgPlayBrainStimulation => 'Jeu et stimulation mentale';

  @override
  String get hgStressSignals => 'Reconnaître les signes de stress';

  @override
  String get hgCaution => 'Attention';

  @override
  String get hgSocialization =>
      'Socialisation et stimulation de l’environnement';

  @override
  String get hgDogCoreDhppl =>
      '**DHPPL (vaccin combiné)** — maladie de Carré, hépatite, parvovirose, parainfluenza et leptospirose.\n1re dose à 6–8 semaines, 3 doses espacées de 3–4 semaines, puis rappel annuel';

  @override
  String get hgDogCoreRabies =>
      '**Rage** — 1re dose après 3 mois, puis 1 fois par an (vaccination légalement obligatoire)';

  @override
  String get hgDogCoreCorona =>
      '**Entérite à coronavirus** — début à 6–8 semaines, 2 doses espacées de 3–4 semaines, puis rappel annuel';

  @override
  String get hgDogNonCoreKennel =>
      '**Toux du chenil** — recommandée en collectivité, lors de toilettage ou de garde en pension. Forme intranasale ou injectable';

  @override
  String get hgDogNonCoreFlu =>
      '**Grippe canine** — recommandée en cas d’activités extérieures fréquentes ou de contacts réguliers avec d’autres chiens';

  @override
  String get hgDogHeartworm1 =>
      'Pendant et autour de la période d’activité des moustiques (mars à novembre), l’administration d’un préventif **1 fois par mois** est recommandée';

  @override
  String get hgDogHeartworm2 =>
      'L’infection est difficile à traiter et peut être mortelle — **la prévention est la meilleure solution**';

  @override
  String get hgDogHeartworm3 =>
      'Avant l’administration, un test doit confirmer l’absence d’infection';

  @override
  String get hgDogHeartworm4 =>
      'Une prévention toute l’année est encore plus sûre (recommandation vétérinaire)';

  @override
  String get hgDogExternalParasites1 =>
      'Administrer un traitement préventif spot-on ou oral **tous les mois**';

  @override
  String get hgDogExternalParasites2 =>
      'Après la promenade, vérifiez impérativement les oreilles, les espaces entre les doigts et les aisselles pour détecter les tiques';

  @override
  String get hgDogExternalParasites3 =>
      'Pour retirer une tique, utilisez une pince et tirez lentement verticalement (ne pas tourner)';

  @override
  String get hgDogInternalParasites1 =>
      'Ascaris, ankylostomes et trichures : vermifuge **tous les 3 à 6 mois**';

  @override
  String get hgDogInternalParasites2 =>
      'Chez le chiot, dès 2 semaines : vermifuger 4 fois toutes les 2 semaines, puis assurer un suivi régulier';

  @override
  String get hgDental1 =>
      'Le brossage quotidien est idéal — au minimum **3 fois par semaine** recommandé';

  @override
  String get hgDental2 =>
      'Utilisez impérativement un **dentifrice spécial animaux** (pas de dentifrice humain contenant du xylitol)';

  @override
  String get hgDental3 =>
      'En cas de tartre important, un détartrage en clinique vétérinaire est nécessaire (sous anesthésie générale)';

  @override
  String get hgDental4 =>
      'Les friandises dentaires et jouets dentaires peuvent compléter les soins';

  @override
  String get hgDogForbiddenFoodAlert =>
      'Les aliments ci-dessous sont toxiques pour les chiens. Même de petites quantités peuvent être dangereuses : ne les donnez jamais.';

  @override
  String get hgDogForbiddenGrape =>
      '**Raisins et raisins secs** — peuvent provoquer une insuffisance rénale, même une petite quantité peut être mortelle';

  @override
  String get hgDogForbiddenChocolate =>
      '**Chocolat et cacao** — intoxication à la théobromine, insuffisance cardiaque et convulsions';

  @override
  String get hgDogForbiddenOnion =>
      '**Oignon, ail et ciboule** — destruction des globules rouges, anémie hémolytique';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xylitol** — sécrétion excessive d’insuline, hypoglycémie et insuffisance hépatique';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Noix de macadamia** — faiblesse musculaire, forte fièvre, vomissements';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Pâte crue et alcool** — intoxication à l’éthanol, hypoglycémie';

  @override
  String get hgDogForbiddenAvocado =>
      '**Avocat** — contient de la persine, pouvant provoquer vomissements et diarrhée';

  @override
  String get hgEmergencyAlert =>
      'Si l’un des symptômes ci-dessous apparaît, consultez immédiatement une clinique vétérinaire.';

  @override
  String get hgDogEmergency1 =>
      'Perte totale d’appétit pendant plus de 24 heures';

  @override
  String get hgDogEmergency2 =>
      'Vomissements ou diarrhée répétés 3 fois ou plus dans la journée';

  @override
  String get hgDogEmergency3 =>
      'Abdomen gonflé et tentatives de vomir sans succès (suspicion de dilatation-torsion de l’estomac)';

  @override
  String get hgDogEmergency4 =>
      'Difficulté respiratoire, gencives pâles ou cyanose';

  @override
  String get hgDogEmergency5 => 'Convulsions, crises ou perte de connaissance';

  @override
  String get hgDogEmergency6 => 'Absence d’urine pendant plus de 12 heures';

  @override
  String get hgDogEmergency7 =>
      'Traumatisme visible, fracture ou saignement abondant';

  @override
  String get hgDogExerciseAlert =>
      'Chez le chien, le manque d’exercice n’est pas seulement un problème physique. Il peut être une cause majeure de stress, d’anxiété et de comportements destructeurs.';

  @override
  String get hgDogWalk1 =>
      'Petits chiens : au moins **20 à 30 minutes** par jour ; chiens moyens et grands : **1 heure** ou plus recommandée';

  @override
  String get hgDogWalk2 =>
      'La promenade n’est pas seulement un moment pour faire ses besoins — c’est un temps de **stimulation olfactive, socialisation et détente**';

  @override
  String get hgDogWalk3 =>
      'Laissez suffisamment de temps pour renifler — c’est très efficace pour réduire la fatigue mentale';

  @override
  String get hgDogWalk4 =>
      'Attention aux brûlures sur l’asphalte en été — privilégiez les sorties avant 7 h ou le soir';

  @override
  String get hgDogPlay1 =>
      '**Jeu de balle et tir à la corde** — dépense physique et renforcement du lien avec le maître';

  @override
  String get hgDogPlay2 =>
      '**Jeux de flair** — stimulation mentale, avec un effet proche de 30 minutes de promenade en seulement 15 minutes';

  @override
  String get hgDogPlay3 =>
      '**Jouets puzzle et Kong** — utiles pour réduire l’anxiété de séparation pendant les moments seul';

  @override
  String get hgDogPlay4 =>
      'Seulement **10 à 15 minutes** de jeu concentré par jour peuvent réduire nettement le stress';

  @override
  String get hgDogStress1 =>
      'Destruction de meubles ou d’objets, aboiements excessifs — signe possible de manque d’exercice ou de stimulation';

  @override
  String get hgDogStress2 =>
      'Mordillage de la queue, léchage excessif des pattes ou du corps — comportement compulsif, tentative d’évacuer le stress';

  @override
  String get hgDogStress3 =>
      'Anxiété excessive lors des départs du maître, accidents de propreté — suspicion d’anxiété de séparation';

  @override
  String get hgDogStress4 =>
      'Si cela persiste, consultez un vétérinaire ou un spécialiste du comportement animal';

  @override
  String get hgDogSocial1 =>
      'Entre **3 et 14 semaines**, c’est la période clé de socialisation — l’exposition à diverses personnes, sons et environnements est importante';

  @override
  String get hgDogSocial2 =>
      'Interactions avec d’autres chiens — parcs canins ou cours pour chiots peuvent aider';

  @override
  String get hgDogSocial3 =>
      'Découvrir de nouveaux lieux, odeurs et sons contribue au bien-être mental';

  @override
  String get hgDogSocial4 =>
      'Le renforcement positif (clicker, friandises) stimule le cerveau et renforce le lien en même temps';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP (vaccin combiné)** — herpèsvirus félin, calicivirus et panleucopénie féline.\n1re dose à 6–8 semaines, 3 doses espacées de 3–4 semaines, puis rappel tous les 1 à 3 ans';

  @override
  String get hgCatCoreRabies =>
      '**Rage** — indispensable pour les chats qui sortent, également recommandée pour les chats d’intérieur (obligatoire selon la loi)';

  @override
  String get hgCatNonCoreFelv =>
      '**Leucémie féline (FeLV)** — fortement recommandée pour les chats qui sortent et les foyers avec plusieurs chats';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Chlamydia féline** — prévention de la conjonctivite en environnement multi-chats';

  @override
  String get hgCatNonCoreFiv =>
      '**Virus de l’immunodéficience féline (FIV)** — surtout chez les mâles qui sortent, transmission par morsures lors de bagarres';

  @override
  String get hgCatExternalParasites1 =>
      'Chats qui sortent : prévention contre puces et tiques **1 fois par mois**';

  @override
  String get hgCatExternalParasites2 =>
      'Même les chats d’intérieur peuvent être exposés aux puces ramenées par les vêtements ou chaussures → prévention recommandée **tous les 3 mois**';

  @override
  String get hgCatExternalParasites3 =>
      'Avec les produits spot-on, appliquez correctement sur la nuque';

  @override
  String get hgCatInternalHeartworm => 'Parasites internes et dirofilariose';

  @override
  String get hgCatInternalParasites1 =>
      'Ascaris et ténias : vermifuge **tous les 3 à 6 mois**';

  @override
  String get hgCatInternalParasites2 =>
      'En cas d’alimentation crue (viande ou poisson cru), des contrôles plus fréquents sont recommandés';

  @override
  String get hgCatHeartworm1 =>
      'Dirofilariose — chez le chat, **il n’existe pas de traitement spécifique, la prévention est donc la seule solution**. Une prévention mensuelle est fortement recommandée pour les chats qui sortent';

  @override
  String get hgCatMajorDiseases => 'Principales maladies du chat à surveiller';

  @override
  String get hgCatDiseaseAlert =>
      'Les chats ont tendance à cacher la douleur et la maladie ; lorsque des symptômes apparaissent, l’affection est souvent déjà avancée. Les bilans réguliers sont particulièrement importants.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Maladie du bas appareil urinaire félin (FLUTD)** — fréquente chez les mâles. Si le chat n’urine pas, c’est une urgence immédiate';

  @override
  String get hgCatDiseaseCkd =>
      '**Maladie rénale chronique (MRC)** — l’une des principales causes de décès chez les chats âgés. Dès 7 ans, un contrôle régulier des paramètres rénaux est indispensable';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Diabète félin** — risque accru chez les chats obèses ou âgés. Surveillez l’augmentation de la soif et des urines';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Hyperthyroïdie** — fréquente après 10 ans. Surveillez perte de poids, appétit augmenté et hyperactivité';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Stomatite** — très fréquente chez le chat. Mauvaise haleine, salivation ou perte d’appétit nécessitent un examen';

  @override
  String get hgCatDiseaseFhv =>
      '**Herpèsvirus félin (FHV-1)** — après infection, il reste latent à vie. Le stress peut provoquer des rechutes : éternuements, sécrétions oculaires, conjonctivite';

  @override
  String get hgHydrationDiet => 'Hydratation et gestion alimentaire';

  @override
  String get hgCatHydrationAlert =>
      'Les chats boivent naturellement peu et sont vulnérables aux maladies urinaires. Favoriser l’hydratation est très important.';

  @override
  String get hgCatHydration1 =>
      'L’association avec de la nourriture humide (boîtes ou sachets) est recommandée pour augmenter l’apport en eau';

  @override
  String get hgCatHydration2 =>
      'Les chats préfèrent souvent l’eau qui coule — une **fontaine à eau** peut être efficace';

  @override
  String get hgCatHydration3 =>
      'Placez la gamelle d’eau séparément de la nourriture ; les chats préfèrent souvent les récipients larges et peu profonds';

  @override
  String get hgCatHydration4 =>
      'Objectif d’apport hydrique : environ **40 à 60 ml** par kg de poids corporel par jour';

  @override
  String get hgCatForbiddenFoodAlert =>
      'Les aliments ci-dessous sont toxiques pour les chats. Même de petites quantités peuvent être dangereuses : ne les donnez jamais.';

  @override
  String get hgCatForbiddenOnion =>
      '**Oignon, ail et ciboule** — destruction des globules rouges, anémie hémolytique (les chats sont encore plus sensibles que les chiens)';

  @override
  String get hgCatForbiddenGrape =>
      '**Raisins et raisins secs** — peuvent provoquer une insuffisance rénale';

  @override
  String get hgCatForbiddenChocolate =>
      '**Chocolat et caféine** — toxicité cardiaque et neurologique';

  @override
  String get hgCatForbiddenRawFish =>
      '**Poisson cru donné régulièrement** — peut entraîner une carence en thiamine (vitamine B1)';

  @override
  String get hgCatForbiddenMilk =>
      '**Lait et produits laitiers** — intolérance au lactose fréquente chez le chat adulte, diarrhée possible';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xylitol et alcool** — toxicité hépatique et neurologique';

  @override
  String get hgCatForbiddenAvocado =>
      '**Avocat** — contient de la persine, pouvant provoquer vomissements et diarrhée';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Blanc d’œuf cru** — l’avidine bloque la biotine, pouvant entraîner des problèmes de peau et de pelage';

  @override
  String get hgCatEmergency1 =>
      '**Impossible d’uriner ou présence de sang dans les urines** — obstruction urétrale urgente, surtout chez les mâles';

  @override
  String get hgCatEmergency2 =>
      'Perte totale d’appétit pendant plus de 24 heures (risque de lipidose hépatique)';

  @override
  String get hgCatEmergency3 =>
      '**Respiration bouche ouverte** — jamais normale chez le chat, urgence immédiate';

  @override
  String get hgCatEmergency4 =>
      'Paralysie soudaine ou froideur des pattes arrière (suspicion de thromboembolie)';

  @override
  String get hgCatEmergency5 => 'Convulsions, crises ou perte de connaissance';

  @override
  String get hgCatEmergency6 =>
      'Gencives ou langue pâles, ou jaunissement/ictère';

  @override
  String get hgCatEmergency7 =>
      'Vomissements ou diarrhée 3 fois ou plus dans la journée, ou sang dans les selles/vomissements';

  @override
  String get hgCatEmergency8 =>
      'Traumatisme visible, fracture ou saignement abondant';

  @override
  String get hgEnvironmentMentalHealth => 'Environnement et santé mentale';

  @override
  String get hgIndoorEnvironment => 'Gestion de l’environnement intérieur';

  @override
  String get hgStressManagement => 'Gestion du stress';

  @override
  String get hgCatEnvironment1 =>
      '**Litières** : nombre de chats + 1 minimum, nettoyage quotidien';

  @override
  String get hgCatEnvironment2 =>
      '**Griffoirs** : au moins 2, en combinant modèles verticaux et horizontaux';

  @override
  String get hgCatEnvironment3 =>
      '**Espaces en hauteur** : arbre à chat, étagères ou espaces verticaux pour satisfaire l’instinct territorial';

  @override
  String get hgCatEnvironment4 =>
      '**Cachettes** : cartons, tunnels ou lieux sûrs où le chat peut se cacher';

  @override
  String get hgCatStress1 =>
      'Le stress chez le chat est directement lié à une baisse d’immunité, au FLUTD et aux récidives d’herpèsvirus';

  @override
  String get hgCatStress2 =>
      'Lors de changements brusques d’environnement (déménagement, nouveau membre de la famille), l’usage d’un diffuseur de phéromones (Feliway) peut aider';

  @override
  String get hgCatStress3 =>
      'Prévoir au moins **10 à 15 minutes par jour** de jeu avec des jouets';

  @override
  String get hgCatStress4 =>
      'Foyers multi-chats : séparez les ressources (gamelles, litières, couchages) selon le nombre de chats';

  @override
  String get hgAge => 'Âge';

  @override
  String get hgCheckupCycle => 'Fréquence du bilan';

  @override
  String get hgMainItems => 'Points principaux';

  @override
  String get hgAge1to6 => '1 à 6 ans';

  @override
  String get hgAge7to10 => '7 à 10 ans';

  @override
  String get hgAge11Plus => '11 ans et plus';

  @override
  String get hgYearlyOnce => '1 fois par an';

  @override
  String get hgYearlyTwice => '2 fois par an';

  @override
  String get hgEvery3to4Months => 'Tous les 3 à 4 mois';

  @override
  String get hgDogCheckupItems1 =>
      'Analyse sanguine, auscultation cardiaque, poids, dents';

  @override
  String get hgDogCheckupItems2 =>
      'Sang, urine, radiographie, tension artérielle, articulations';

  @override
  String get hgDogCheckupItems3 =>
      'Bilan sanguin complet, échographie, fonctions rénale et hépatique';

  @override
  String get hgCatCheckupItems1 =>
      'Analyse sanguine, analyse d’urine, poids, dents';

  @override
  String get hgCatCheckupItems2 =>
      'Paramètres rénaux et hépatiques, tension artérielle, thyroïde (T4)';

  @override
  String get hgCatCheckupItems3 =>
      'Bilan sanguin complet, échographie abdominale, surveillance renforcée des reins';

  @override
  String get hgExerciseAmount => 'Niveau d’exercice';

  @override
  String get hgBreedExamples => 'Exemples de races';

  @override
  String get hgLow => 'Faible';

  @override
  String get hgNormal => 'Modéré';

  @override
  String get hgHigh => 'Élevé';

  @override
  String get hgBreedLowExamples =>
      'Bouledogue, Basset Hound, Shih Tzu, Bichon maltais';

  @override
  String get hgBreedNormalExamples =>
      'Caniche, Bichon frisé, Cocker Spaniel, Beagle';

  @override
  String get hgBreedHighExamples =>
      'Labrador, Golden Retriever, Husky, Border Collie';

  @override
  String get hgDisclaimer =>
      'Ce guide fournit des informations générales de santé, et les soins nécessaires peuvent varier selon l’état de chaque animal. En cas de symptômes anormaux ou de besoin de traitement, consultez impérativement un vétérinaire.';
}
