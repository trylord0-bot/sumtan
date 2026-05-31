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
  String get appTagline => 'Appli de santé pour animaux';

  @override
  String get navHome => 'Accueil';

  @override
  String get navJournal => 'Journal';

  @override
  String get navNotifications => 'Alertes';

  @override
  String get navProfile => 'Profil';

  @override
  String get navSettings => 'Paramètres';

  @override
  String get navAddAlarm => 'Ajouter une alerte';

  @override
  String get drawerService => 'Services';

  @override
  String get drawerNearbyHospitals => 'Vétérinaires à proximité';

  @override
  String get drawerNearbyHospitalsSub => 'Trouver une clinique vétérinaire';

  @override
  String get drawerHealthGuide => 'Guide de santé';

  @override
  String get drawerHealthGuideSub => 'Manuel de santé pour animaux';

  @override
  String get drawerApp => 'Application';

  @override
  String get drawerHelp => 'Aide';

  @override
  String get dialogExternalTitle => 'Ouvrir une page externe';

  @override
  String get dialogExternalHospitalBody =>
      'Pour trouver des cliniques à proximité, nous devons ouvrir une page web externe.\n\nVoulez-vous l\'ouvrir maintenant ?';

  @override
  String get commonCancel => 'Annuler';

  @override
  String get commonGo => 'Aller';

  @override
  String get commonDelete => 'Supprimer';

  @override
  String get commonSave => 'Enregistrer';

  @override
  String get commonLoading => 'Chargement...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'Appuyez encore une fois pour quitter';

  @override
  String get toastNeedPet =>
      'Aucun animal enregistré. Veuillez en ajouter un dans le Profil.';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsPushNotifications => 'Autoriser les notifications push';

  @override
  String get settingsPushNotificationsSub => 'Autorisations de l\'appareil';

  @override
  String get settingsLanguageSection => 'Langue';

  @override
  String get settingsLanguage => 'Langue de l\'application';

  @override
  String get settingsLanguageSystem => 'Langue du système';

  @override
  String get settingsLanguageChanged => 'Langue de l\'application modifiée';

  @override
  String get settingsData => 'Gestion des données';

  @override
  String get settingsExport => 'Exporter les données';

  @override
  String get settingsExportSub => 'Enregistrer en fichier ZIP';

  @override
  String get settingsImport => 'Importer les données';

  @override
  String get settingsImportSub => 'Restaurer depuis un fichier ZIP';

  @override
  String get settingsAppInfo => 'Infos sur l\'application';

  @override
  String get settingsVersion => 'Version de l\'application';

  @override
  String get settingsPrivacy => 'Politique de confidentialité';

  @override
  String get settingsFeedback => 'Envoyer des commentaires';

  @override
  String get settingsFeedbackSubject => 'Commentaires sur Pet Sumtan';

  @override
  String get settingsEmailAppMissing =>
      'Aucune application de messagerie trouvée';

  @override
  String get settingsImportConfirmBody =>
      'Toutes les données actuelles seront supprimées et remplacées par le fichier de sauvegarde.\n\nVoulez-vous continuer ?';

  @override
  String get settingsImportAction => 'Importer';

  @override
  String get settingsImporting => 'Importation des données...';

  @override
  String get settingsImportSuccess => 'Données restaurées avec succès';

  @override
  String get settingsImportFailed => 'Échec de l\'importation';

  @override
  String get settingsExportTitle => 'Exporter les données';

  @override
  String get settingsExportBenefitTitle => 'Gardez vos dossiers en sécurité';

  @override
  String get settingsExportBenefitPets =>
      'Profils et photos de tous vos animaux';

  @override
  String get settingsExportBenefitRecords =>
      'Tous les dossiers médicaux, journaux et poids';

  @override
  String get settingsExportBenefitMedia =>
      'Inclut les photos et vidéos jointes';

  @override
  String get settingsStoreUnavailable =>
      'Impossible de se connecter à la boutique pour le moment.\nVeuillez réessayer plus tard.';

  @override
  String settingsPayAndExport(String price) {
    return 'Payer $price et exporter';
  }

  @override
  String get settingsUnlocked => 'Déverrouillé';

  @override
  String get settingsExportUnlockedBody =>
      'Enregistrez toutes les informations de vos animaux sous forme de fichier ZIP.\nVous pouvez importer et restaurer ce fichier gratuitement à tout moment.';

  @override
  String get settingsExporting => 'Exportation...';

  @override
  String get settingsExportZip => 'Exporter en ZIP';

  @override
  String get settingsExportConfirmBody =>
      'Exporter toutes les informations, dossiers et médias sous forme de fichier ZIP.';

  @override
  String get settingsExportAction => 'Exporter';

  @override
  String get settingsExportSuccess =>
      'Fichier de sauvegarde prêt à être partagé';

  @override
  String get settingsExportFailed => 'Échec de l\'exportation';

  @override
  String get settingsPurchaseFailed => 'Échec du paiement';

  @override
  String get settingsPurchaseProductLoadFailed =>
      'Impossible de charger les informations du produit. Veuillez réessayer plus tard.';

  @override
  String get settingsPurchaseStartFailed =>
      'Impossible de lancer le paiement. Veuillez réessayer plus tard.';

  @override
  String get errorDbInit =>
      'Un problème est survenu lors de la préparation des données de l\'application.\nVeuillez réessayer plus tard.';

  @override
  String get help => 'Aide';

  @override
  String get healthGuide => 'Guide de santé';

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
  String get memo => 'Note';

  @override
  String get memoPlaceholder => 'Ajouter une note ici';

  @override
  String get addBtn => '＋ Ajouter';

  @override
  String get errorOccurred => 'Une erreur s\'est produite';

  @override
  String errorOccurredWithDetail(String error) {
    return 'Une erreur s\'est produite\n$error';
  }

  @override
  String get pet => 'Animal';

  @override
  String get selectPet => 'Sélectionner un animal';

  @override
  String get addNewPet => 'Ajouter un nouvel animal';

  @override
  String get noAlarms => 'Aucune alerte';

  @override
  String alarmEmptyDesc(String petName) {
    return 'Prenons soin de la santé de $petName aujourd\'hui.\nAppuyez sur « Ajouter une alerte » ci-dessous pour commencer.';
  }

  @override
  String get scheduledAlarms => 'Alertes programmées';

  @override
  String get swipeToDelete => 'Balayez pour supprimer';

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
  String get notificationChannelDescription => 'Rappels de soins pour animaux';

  @override
  String alarmNotificationTitle(String type) {
    return 'Alerte : $type';
  }

  @override
  String get alarmBodyVaccination =>
      'Veuillez vérifier la date de vaccination.';

  @override
  String get alarmBodyVetAppointment =>
      'Votre rendez-vous vétérinaire approche.';

  @override
  String get alarmBodyMedication => 'C\'est l\'heure des médicaments.';

  @override
  String get alarmBodyMealTime => 'N\'oubliez pas l\'heure du repas.';

  @override
  String get alarmBodyDailyReminder =>
      'Veuillez ajouter votre journal de santé d\'aujourd\'hui.';

  @override
  String get alarmBodyDefault => 'Rappel de santé pour votre animal.';

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
    return 'Voulez-vous vraiment supprimer toutes les $count alertes passées ?';
  }

  @override
  String get pastAlarmsDeleted =>
      'Toutes les alertes passées ont été supprimées';

  @override
  String get pastLabel => 'Passé';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get tomorrowSameTime => 'Demain, même heure';

  @override
  String get snoozeQuestion => 'Quand voulez-vous un rappel ?';

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
  String get snoozeCustom => 'Choisir l\'heure';

  @override
  String get snoozeAtThisTime => 'Rappeler à cette heure';

  @override
  String snoozeConfirm(String time) {
    return 'Nous vous le rappellerons à $time';
  }

  @override
  String get selectFutureTime => 'Veuillez sélectionner une heure future';

  @override
  String recordCheckHint(String typeLabel) {
    return 'Vous pouvez vérifier dans Journal > $typeLabel.';
  }

  @override
  String get pushAlsoCancel =>
      'Les notifications push programmées seront également annulées.';

  @override
  String get reschedule => 'Reprogrammer';

  @override
  String get deleteThisAlarm => 'Supprimer cette alerte';

  @override
  String get vaccineNameRequired => 'Nom du vaccin *';

  @override
  String get vaccineNameExample => 'Ex : Rage, CHPPi';

  @override
  String get scheduledDateRequired => 'Date *';

  @override
  String get reminderTiming => 'Quand être averti';

  @override
  String get sameDay => 'Le jour même';

  @override
  String get reminderTimeRequired => 'Heure de l\'alerte *';

  @override
  String get memoInputHint => 'Saisir une note';

  @override
  String get visitPurposeRequired => 'Motif de la visite *';

  @override
  String get visitPurposeExample => 'Ex : Bilan de santé, Problème de peau';

  @override
  String get appointmentDateTimeRequired => 'Date et heure du rendez-vous *';

  @override
  String get hospitalName => 'Nom de la clinique';

  @override
  String get hospitalNameHint => 'Saisir le nom de la clinique';

  @override
  String get medicineNameRequired => 'Nom du médicament *';

  @override
  String get medicineNameExample => 'Ex : Vermifuge, Anti-puces';

  @override
  String get doseExample => 'Ex : 0.5ml, 1 comprimé';

  @override
  String get repeatRequired => 'Répéter *';

  @override
  String get none => 'Aucun';

  @override
  String get daily => 'Tous les jours';

  @override
  String get weekly => 'Toutes les semaines';

  @override
  String get monthly => 'Tous les mois';

  @override
  String get weekdays => 'En semaine';

  @override
  String get weekdaysOnly => 'En semaine uniquement';

  @override
  String get weekends => 'Le week-end';

  @override
  String get weekendsOnly => 'Le week-end uniquement';

  @override
  String get medicationDateTimeRequired => 'Date et heure de médication *';

  @override
  String get medicationTimeRequired => 'Heure de médication *';

  @override
  String get alarmNameRequired => 'Nom de l\'alerte *';

  @override
  String get mealTimeExample => 'Ex : Petit-déjeuner, Dîner';

  @override
  String get mealTimeRequired => 'Heure du repas *';

  @override
  String get alarmMessage => 'Message de l\'alerte';

  @override
  String get alarmMessageExample =>
      'Ex : Avez-vous ajouté le journal d\'aujourd\'hui ?';

  @override
  String get alarmPastDueMsg =>
      'La date de cette alerte est dépassée.\nVeuillez sélectionner une nouvelle date ou la supprimer.';

  @override
  String get reselectDate => 'Resélectionner la date';

  @override
  String get selectDate => 'Sélectionner la date';

  @override
  String get selectTime => 'Sélectionner l\'heure';

  @override
  String get todayStatus => 'Statut d\'aujourd\'hui';

  @override
  String get addRecord => '＋ Ajouter un journal';

  @override
  String get todayReminders => 'Rappels d\'aujourd\'hui';

  @override
  String get todayRecords => 'Journaux d\'aujourd\'hui';

  @override
  String get viewAll => 'Tout voir';

  @override
  String get weekStats => 'Statistiques hebdomadaires';

  @override
  String get pottyCount => 'Besoins';

  @override
  String get mealCount => 'Repas';

  @override
  String get waterLevel => 'Eau';

  @override
  String get timesUnit => 'fois';

  @override
  String get mealsUnit => 'repas';

  @override
  String get pointsUnit => 'pts';

  @override
  String get recordDeleted => 'Journal supprimé';

  @override
  String get recordUpdated => 'Journal mis à jour';

  @override
  String get deleteRecordConfirm =>
      'Voulez-vous vraiment supprimer ce journal ?';

  @override
  String get deleteConfirmBody =>
      'Une fois supprimé, il ne peut pas être récupéré !';

  @override
  String get deleteConfirmOk => 'Supprimer';

  @override
  String get deleteThisRecord => 'Supprimer ce journal';

  @override
  String get typeLabel => 'Type';

  @override
  String get statusLabel => 'Statut';

  @override
  String get conditionScore => 'Score d\'état';

  @override
  String get symptomTags => 'Symptômes';

  @override
  String get medicineName => 'Nom du médicament';

  @override
  String get dose => 'Dose';

  @override
  String get medicationMethod => 'Méthode d\'administration';

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
  String get abnormalSymptomType => 'Type de symptôme anormal';

  @override
  String get customSymptom => 'Autre symptôme';

  @override
  String get customSymptomPlaceholder => 'Décrivez le symptôme';

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
  String get bleeding => 'Saignement';

  @override
  String get dyspnea => 'Difficulté à respirer';

  @override
  String get seizure => 'Convulsion/Crise';

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
  String get runnyNose => 'Écoulement nasal';

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
  String get eyeDrops => 'Gouttes pour les yeux';

  @override
  String get earDrops => 'Gouttes pour les oreilles';

  @override
  String get vetHospital => 'Clinique vétérinaire';

  @override
  String get homeScale => 'Balance à la maison';

  @override
  String get holdAndWeigh => 'Tenir et peser';

  @override
  String get veryLittle => 'Très peu';

  @override
  String get little => 'Peu';

  @override
  String get much => 'Beaucoup';

  @override
  String get veryMuch => 'Énormément';

  @override
  String get general => 'Général';

  @override
  String get regularCheckup => 'Bilan de santé régulier';

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
  String get nails => 'Coupe des griffes';

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
  String get photosAndVideos => 'Photos et vidéos';

  @override
  String get addMedia => 'Ajouter un média';

  @override
  String get selectMediaMethod => 'Sélectionner la méthode';

  @override
  String get useCamera => 'Utiliser la caméra';

  @override
  String get takePhotoOrVideo => 'Prendre une photo ou une vidéo';

  @override
  String get chooseFromGallery => 'Choisir dans la galerie';

  @override
  String get multiSelectHint => 'Vous pouvez en sélectionner plusieurs';

  @override
  String get takePhoto => 'Prendre une photo';

  @override
  String get takePhotoDesc => 'Prendre une photo avec l\'appareil photo';

  @override
  String get recordVideo => 'Enregistrer une vidéo';

  @override
  String get recordVideoDesc => 'Enregistrer une vidéo avec l\'appareil photo';

  @override
  String get deleteThisPhoto => 'Supprimer la photo';

  @override
  String get deletePhotoConfirm =>
      'Voulez-vous vraiment supprimer cette photo ?';

  @override
  String get deleteThisVideo => 'Supprimer la vidéo';

  @override
  String get deleteVideoConfirm =>
      'Voulez-vous vraiment supprimer cette vidéo ?';

  @override
  String get muted => 'Sourdine';

  @override
  String get soundOn => 'Son activé';

  @override
  String get allowPermissionInSettings =>
      'Veuillez autoriser l\'accès dans les Paramètres';

  @override
  String get openSettings => 'Ouvrir les Paramètres';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get contactDeveloper => 'Contacter le développeur';

  @override
  String get contact => 'Contact';

  @override
  String get settingsLabel => 'Paramètres';

  @override
  String get exportData => 'Exporter les données';

  @override
  String get importData => 'Importer les données';

  @override
  String get sendFeedback => 'Envoyer des commentaires';

  @override
  String get faq => 'FAQ';

  @override
  String get homeScreen => 'Écran d\'accueil';

  @override
  String get journalScreen => 'Écran du journal';

  @override
  String get alarmScreen => 'Écran des alertes';

  @override
  String get petManagement => 'Gestion des animaux';

  @override
  String get recordCategories => 'Catégories de journal';

  @override
  String get whatIsPetSumtan => 'Qu\'est-ce que Pet Sumtan ?';

  @override
  String get todayRecordSummary => 'Résumé du journal d\'aujourd\'hui';

  @override
  String get weeklyStats => 'Statistiques hebdomadaires';

  @override
  String get weightChangeChart => 'Graphique d\'évolution du poids';

  @override
  String get findNearbyHospitals => 'Trouver des cliniques vétérinaires';

  @override
  String get addNewRecord => 'Ajouter un nouveau journal (+)';

  @override
  String get viewRecordList => 'Voir la liste des journaux';

  @override
  String get editDeleteRecord => 'Modifier et supprimer des journaux';

  @override
  String get attachMedia => 'Joindre des photos/vidéos';

  @override
  String get addAlarm => 'Ajouter une alerte';

  @override
  String get repeatAlarm => 'Répéter l\'alerte';

  @override
  String get advanceAlarmHint => 'Alerte anticipée (J-7, J-3, J-1)';

  @override
  String get completeAlarm => 'Terminer l\'alerte';

  @override
  String get deleteAlarm => 'Supprimer l\'alerte';

  @override
  String get registerPet => 'Enregistrer un animal';

  @override
  String get editProfile => 'Modifier le profil';

  @override
  String get manageMultiplePets => 'Gérer plusieurs animaux';

  @override
  String get dogHealthGuide => 'Guide de santé pour chiens';

  @override
  String get catHealthGuide => 'Guide de santé pour chats';

  @override
  String get notificationSettings => 'Paramètres de notification';

  @override
  String get dogHealthCareGuide => 'Guide de soins de santé pour chiens';

  @override
  String get catHealthCareGuide => 'Guide de soins de santé pour chats';

  @override
  String get healthGuideSubtitle =>
      'Guide de santé professionnel\nbasé sur les recommandations vétérinaires.';

  @override
  String get vaccination => 'Vaccination';

  @override
  String get coreVaccines => 'Vaccins essentiels';

  @override
  String get required => 'Obligatoire';

  @override
  String get nonCoreVaccines => 'Vaccins non essentiels';

  @override
  String get recommended => 'Recommandé';

  @override
  String get parasitePrevention => 'Prévention des parasites';

  @override
  String get heartworm => 'Ver du cœur';

  @override
  String get monthlyFreq => 'Mensuel';

  @override
  String get externalParasites => 'Parasites externes (Puces/Tiques)';

  @override
  String get internalParasites => 'Parasites internes';

  @override
  String get threeToSixMonths => 'Tous les 3 à 6 mois';

  @override
  String get nutritionManagement => 'Gestion de la nutrition';

  @override
  String get dentalCare => 'Soins dentaires';

  @override
  String get healthCheckup => 'Bilan de santé';

  @override
  String get emergencySigns => 'Signes d\'urgence';

  @override
  String get age => 'Âge';

  @override
  String ageAutoCalculated(String age) {
    return 'Calcul automatique · $age';
  }

  @override
  String petAgeMonths(int months) {
    return '$months mois';
  }

  @override
  String petAgeYears(int years) {
    return '$years ans';
  }

  @override
  String petAgeYearsMonths(int years, int months) {
    return '$years ans $months mois';
  }

  @override
  String get checkupCycle => 'Fréquence des bilans';

  @override
  String get mainItems => 'Examens principaux';

  @override
  String get exerciseLevel => 'Niveau d\'exercice';

  @override
  String get breedExamples => 'Races représentatives';

  @override
  String get low => 'Faible';

  @override
  String get high => 'Élevé';

  @override
  String get menu => 'Menu';

  @override
  String get helloGreeting => 'Bonjour !';

  @override
  String get healthyTodayMsg => '\nComment va la santé aujourd\'hui ?';

  @override
  String get noRecordsYet => 'Aucun journal pour le moment';

  @override
  String lastRecord(String time) {
    return 'Dernier journal · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return 'Moyenne $value$unit/jour';
  }

  @override
  String get weightTrend => '⚖️ Tendance du poids';

  @override
  String get weightChange => '⚖️ Évolution du poids';

  @override
  String get noWeightData => 'Aucune donnée de poids';

  @override
  String get measuredWeight => 'Poids mesuré';

  @override
  String get noTodayRecords => 'Aucun journal aujourd\'hui';

  @override
  String get homeNoRecordHint =>
      'Enregistrez son état, ses besoins et son poids\npour suivre sa santé.';

  @override
  String noRecordsForDate(String date) {
    return 'Aucun journal pour le $date';
  }

  @override
  String recordsForDate(String date, String count) {
    return 'Journaux du $date ($count)';
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
  String get whatToRecord => '📝 Que voulez-vous enregistrer ?';

  @override
  String saveErrorMsg(String error) {
    return 'Erreur d\'enregistrement : $error';
  }

  @override
  String get alarmUpdated => 'Alerte mise à jour';

  @override
  String get alarmAdded => 'Alerte ajoutée';

  @override
  String get editAlarm => 'Modifier l\'alerte';

  @override
  String get deleteAlarmConfirm =>
      'Voulez-vous vraiment supprimer cette alerte ?';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name sera supprimée.\nLes notifications push programmées seront également annulées.';
  }

  @override
  String get doneMsg => '✅ Terminé';

  @override
  String get laterMsg => '🕐 Plus tard';

  @override
  String get saveCompletion => '✅ Enregistrer comme terminé';

  @override
  String completedQuestion(String type) {
    return 'Avez-vous terminé $type ?';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'Nous enregistrerons automatiquement $name\ndans le journal d\'aujourd\'hui.';
  }

  @override
  String completionSaved(String name) {
    return 'Statut terminé de $name enregistré';
  }

  @override
  String get tapAlarmTypeHint =>
      '👆 Appuyez sur le type d\'alerte dont vous avez besoin';

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
    return '⚠️ $date est passée · Appuyez pour reprogrammer';
  }

  @override
  String get completedLabel => 'Terminé';

  @override
  String get edit => 'Modifier';

  @override
  String recordDeleteCannotUndo(String category) {
    return 'Le journal de $category sera supprimé.\nCette action est irréversible.';
  }

  @override
  String get hintMedicineNameAndDose =>
      '💡 Saisissez le nom du médicament et la dose';

  @override
  String get hintMedicineName => '💡 Saisissez le nom du médicament';

  @override
  String get hintDose => '💡 Saisissez la dose';

  @override
  String get hintWeightNumber => '💡 Saisissez le poids en chiffres';

  @override
  String get hintWeight => '💡 Saisissez le poids';

  @override
  String get hintWeightIsNumber => '💡 Le poids doit être un nombre';

  @override
  String get hintWalkTime => '💡 Saisissez le temps de promenade';

  @override
  String get hintWalkTimeIsNumber =>
      '💡 Le temps de promenade doit être un nombre';

  @override
  String get hintWalkTimeNumber =>
      '💡 Saisissez le temps de promenade en chiffres';

  @override
  String get hintSelectBrushingArea =>
      '💡 Sélectionnez au moins une zone de brossage';

  @override
  String get hintSelectVaccineType =>
      '💡 Sélectionnez au moins un type de vaccin';

  @override
  String get hintSelectGroomingType =>
      '💡 Sélectionnez au moins un type de toilettage';

  @override
  String get hintSelectSymptomType =>
      '💡 Sélectionnez au moins un type de symptôme';

  @override
  String get hintTitle => '💡 Saisissez un titre';

  @override
  String get hintVaccineName => '💡 Saisissez le nom du vaccin';

  @override
  String get hintSelectScheduledDate => '💡 Sélectionnez une date';

  @override
  String get hintSelectScheduledTime => '💡 Sélectionnez une heure';

  @override
  String get hintVisitPurpose => '💡 Saisissez le motif de la visite';

  @override
  String get hintSelectAppointmentDate =>
      '💡 Sélectionnez la date du rendez-vous';

  @override
  String get hintSelectAppointmentTime =>
      '💡 Sélectionnez l\'heure du rendez-vous';

  @override
  String get hintMedicineNameInput => '💡 Saisissez le nom du médicament';

  @override
  String get hintSelectMedicationDate =>
      '💡 Sélectionnez la date de médication';

  @override
  String get hintSelectMedicationTime =>
      '💡 Sélectionnez l\'heure de médication';

  @override
  String get hintAlarmName => '💡 Saisissez le nom de l\'alerte';

  @override
  String get hintSelectMealTime => '💡 Sélectionnez l\'heure du repas';

  @override
  String get hintSelectAlarmTime => '💡 Sélectionnez l\'heure de l\'alerte';

  @override
  String get noPetRegisterFirst =>
      'Aucun animal enregistré. Veuillez en ajouter un dans le Profil.';

  @override
  String get alarmRescheduled => 'Alerte reprogrammée';

  @override
  String get examplePetName => 'Ex : Coco';

  @override
  String get exampleBreed => 'Ex : Caniche';

  @override
  String get exampleBreedMulti => 'Ex : Caniche, Persan';

  @override
  String get example30 => 'Ex : 30';

  @override
  String get example80 => 'Ex : 80';

  @override
  String get example200 => 'Ex : 200';

  @override
  String get example25 => 'Ex : 2.5';

  @override
  String get example42 => 'Ex : 4.2';

  @override
  String get example35000 => 'Ex : 35000';

  @override
  String get example50000 => 'Ex : 50000';

  @override
  String get enterNameHint => 'Saisissez le nom';

  @override
  String get addNewPetTitle => 'Ajouter un nouvel animal';

  @override
  String get basicInfo => 'Informations de base';

  @override
  String get idInfo => 'Informations d\'identification';

  @override
  String get idInfoOptional => 'Identification (Optionnel)';

  @override
  String get name => 'Nom';

  @override
  String get petKind => 'Espèce';

  @override
  String get breed => 'Race';

  @override
  String get weight => 'Poids';

  @override
  String get microchip => 'Numéro de puce';

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
  String get neutered => 'Stérilisé(e)/Castré(e)';

  @override
  String get done => 'Oui';

  @override
  String get notDone => 'Non';

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
      'Enregistrez votre animal\net gérons sa santé ensemble !';

  @override
  String get registerPetBtn => 'Enregistrer un animal';

  @override
  String get editPet => 'Modifier les informations';

  @override
  String get neuteringStatus => 'Statut de stérilisation';

  @override
  String get neuteredDone => 'Stérilisé(e)/Castré(e)';

  @override
  String get notNeutered => 'Intact(e)';

  @override
  String get selectDateHint => 'Sélectionnez une date';

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
    return 'Voulez-vous vraiment supprimer $name ?';
  }

  @override
  String deletePetWarning(String name) {
    return 'Tous les journaux et alertes de $name seront supprimés et ne pourront pas être récupérés.';
  }

  @override
  String petDeleted(String name) {
    return '$name a été supprimé(e)';
  }

  @override
  String petAdded(String name) {
    return '$name a été ajouté(e) 🐾';
  }

  @override
  String get storeUnavailableMsg =>
      'Impossible de se connecter à la boutique pour le moment. Veuillez réessayer plus tard.';

  @override
  String get checkingPaymentMsg =>
      'Vérification des informations de paiement. Veuillez patienter un instant et réessayer.';

  @override
  String get paymentCompleteMsg =>
      'Paiement terminé. Veuillez saisir les informations du nouveau membre de la famille.';

  @override
  String get addNewFamilyMember => 'Ajouter un nouveau membre à la famille ?';

  @override
  String get firstPetFreeDesc =>
      'Le premier animal est enregistré gratuitement. Pour ajouter d\'autres animaux, un paiement unique est requis pour chaque animal supplémentaire.';

  @override
  String petsRegisteredStoreUnavailable(int count) {
    return 'Vous avez actuellement $count animaux enregistrés.\nVeuillez réessayer lorsque la boutique sera disponible.';
  }

  @override
  String petsRegisteredPayToAdd(int count, String price) {
    return 'Vous avez actuellement $count animaux enregistrés.\nVous pouvez ajouter un nouveau membre pour $price.';
  }

  @override
  String get maybeLater => 'Peut-être plus tard';

  @override
  String get unavailable => 'Indisponible';

  @override
  String payAndAdd(String price) {
    return 'Payer $price et ajouter';
  }

  @override
  String get addNextAppointment => '＋ Ajouter un prochain rendez-vous';

  @override
  String get pottyRecordSaved => '💩 Besoins enregistrés';

  @override
  String get conditionRecordSaved => '💗 État enregistré';

  @override
  String get medicationRecordSaved => '💊 Médicament enregistré';

  @override
  String get weightRecordSaved => '⚖️ Poids enregistré';

  @override
  String get mealRecordSaved => '🍽️ Repas enregistré';

  @override
  String get waterRecordSaved => '💧 Eau enregistrée';

  @override
  String get vetVisitRecordSaved => '🏥 Visite vétérinaire enregistrée';

  @override
  String get vaccinationRecordSaved => '💉 Vaccin enregistré';

  @override
  String get groomingRecordSaved => '✂️ Toilettage enregistré';

  @override
  String get brushingRecordSaved => '🪥 Brossage enregistré';

  @override
  String get walkRecordSaved => '🦮 Promenade enregistrée';

  @override
  String get memoSaved => '📝 Note enregistrée';

  @override
  String get abnormalSymptomRecordSaved => '🚨 Symptôme anormal enregistré';

  @override
  String get moreQuestions => 'Vous avez d\'autres questions ?';

  @override
  String get contactViaSendFeedback =>
      'Contactez-nous via Paramètres > Envoyer des commentaires.\nNous vous répondrons dans les plus brefs délais 🐾';

  @override
  String get contactViaSendFeedbackLong =>
      'Veuillez nous contacter en utilisant le bouton [Envoyer des commentaires] dans les Paramètres.\nNous vous répondrons le plus rapidement possible.';

  @override
  String get privacyPolicyEffectiveDate =>
      'Cette politique de confidentialité est en vigueur à compter du 1er janvier 2026.\nDernière mise à jour : 8 mai 2026';

  @override
  String get privacyCollectedInfo =>
      'Les informations collectées sont utilisées uniquement aux fins suivantes.';

  @override
  String get privacyDataFeatures =>
      'Pet Sumtan propose des fonctionnalités d\'exportation (sauvegarde) et d\'importation (restauration) des données.';

  @override
  String get privacyPolicyMayUpdate =>
      'Cette politique de confidentialité peut être mise à jour en raison de modifications de la loi ou du service.';

  @override
  String get privacyPolicyContact =>
      'Si vous avez des questions sur la politique de confidentialité, veuillez nous contacter ci-dessous.';

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
  String get catHospital => 'Vétérinaire';

  @override
  String get catAbnormalSymptom => 'Anormal';

  @override
  String get catCondition => 'État';

  @override
  String get catPotty => 'Besoins';

  @override
  String get mealFormTitle => '🍽️ Journal des repas';

  @override
  String get walkFormTitle => '🦮 Journal de promenade';

  @override
  String get weightFormTitle => '⚖️ Journal de poids';

  @override
  String get waterFormTitle => '💧 Journal d\'eau';

  @override
  String get medicationFormTitle => '💊 Journal de médication';

  @override
  String get groomingFormTitle => '✂️ Journal de toilettage';

  @override
  String get brushingFormTitle => '🪥 Journal de brossage';

  @override
  String get conditionFormTitle => '🌡️ Journal d\'état';

  @override
  String get poopFormTitle => '💩 Journal des besoins';

  @override
  String get vaccinationFormTitle => '💉 Journal de vaccination';

  @override
  String get hospitalFormTitle => '🏥 Journal vétérinaire';

  @override
  String get abnormalSymptomFormTitle => '🚨 Journal des symptômes';

  @override
  String get memoFormTitle => '📝 Note';

  @override
  String get measureMethod => 'Méthode de mesure';

  @override
  String get feedAmount => 'Quantité';

  @override
  String get mlInputLabel => 'Saisir les mL manuellement';

  @override
  String get alarmRescheduleNote =>
      'La date de cette alerte est dépassée.\nVeuillez sélectionner une nouvelle date ou la supprimer.';

  @override
  String get nailTrim => 'Coupe des griffes';

  @override
  String get shopNameExample => 'Ex : Salon de Toilettage Happy';

  @override
  String get poopRecordSaved => '💩 Besoins enregistrés';

  @override
  String get memoRecordSaved => '📝 Note enregistrée';

  @override
  String get other => 'Autre';

  @override
  String get whole => 'Corps entier';

  @override
  String get paw => 'Patte';

  @override
  String get importance => 'Importance';

  @override
  String get timeTaken => 'Temps écoulé';

  @override
  String get example10 => 'Ex : 10';

  @override
  String get minuteUnit => 'min';

  @override
  String get hospitalNameExample => 'Ex : Clinique Vétérinaire Happy';

  @override
  String get diagnosisExample => 'Ex : Entérite, Dermatite';

  @override
  String get memoTitlePlaceholder => 'Saisissez le titre de la note';

  @override
  String get hintMemoTitle => '💡 Saisissez un titre';

  @override
  String get poopType => 'Type';

  @override
  String get poopStatus => 'Statut';

  @override
  String get feces => 'Selles';

  @override
  String get bloody => 'Avec du sang';

  @override
  String get vaccineDhppl => 'CHPPi (Maladie de Carré, etc.)';

  @override
  String get vaccineCorona => 'Coronavirus';

  @override
  String get vaccineKennelCough => 'Toux du chenil';

  @override
  String get vaccineRabies => 'Rage';

  @override
  String get vaccineInfluenza => 'Grippe';

  @override
  String get vaccineFvrcp => 'Typhus/Coryza (FVRCP)';

  @override
  String get vaccineFelv => 'Leucose (FeLV)';

  @override
  String get vaccineChlamydia => 'Chlamydiose';

  @override
  String get mute => 'Sourdine';

  @override
  String get photoVideo => 'Photo · Vidéo';

  @override
  String photoVideoCount(int count) {
    return 'Photo · Vidéo · $count';
  }

  @override
  String get selectMediaSource => 'Sélectionner la source média';

  @override
  String get cameraCapture => 'Prendre avec l\'appareil photo';

  @override
  String get cameraCaptureSubtitle =>
      'Prendre une photo ou enregistrer une vidéo';

  @override
  String get selectFromGallery => 'Choisir dans la galerie';

  @override
  String get selectFromGallerySubtitle =>
      'Vous pouvez en sélectionner plusieurs';

  @override
  String get takePhotoSubtitle => 'Prendre une photo avec l\'appareil photo';

  @override
  String get recordVideoSubtitle =>
      'Enregistrer une vidéo avec l\'appareil photo';

  @override
  String get permissionRequired =>
      'Veuillez autoriser l\'accès dans les Paramètres';

  @override
  String get confirmDeletePhoto =>
      'Voulez-vous vraiment supprimer cette photo ?';

  @override
  String get confirmDeleteVideo =>
      'Voulez-vous vraiment supprimer cette vidéo ?';

  @override
  String get hintMedicineAndDose =>
      '💡 Saisissez le nom du médicament et la dose';

  @override
  String deleteRecordBody(String category) {
    return 'Le journal de $category sera supprimé.\nCette action est irréversible.';
  }

  @override
  String dayCountShort(int days) {
    return '$days jours';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan est une application où vous pouvez enregistrer et gérer la santé et la vie quotidienne de votre animal au même endroit.\nVous pouvez facilement enregistrer les repas, l\'eau, les besoins, le poids, les médicaments, les visites chez le vétérinaire et configurer des alertes pour ne pas oublier les événements importants.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'Consultez tous les journaux ajoutés aujourd\'hui en un coup d\'œil. Appuyez sur un journal pour voir les détails ou le modifier.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'Vérifiez le nombre de fois où il a fait ses besoins, la quantité de repas et la consommation d\'eau de cette semaine sous forme de graphiques pour comprendre les habitudes de votre animal.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'Affiche les récents relevés de poids sur un graphique pour suivre facilement l\'évolution du poids.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'Appuyez sur le bouton pour rechercher des cliniques vétérinaires à proximité sur la carte.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'Appuyez sur le bouton \'+\' en bas pour sélectionner une catégorie et ajouter un nouveau journal.';

  @override
  String get helpRecordCategoriesIntro =>
      'Vous pouvez enregistrer la vie quotidienne de votre animal dans 12 catégories différentes.';

  @override
  String get helpCategoryPottyName => 'Besoins';

  @override
  String get helpCategoryPottyDesc =>
      'Enregistrez l\'état et le type des selles/urines. Vous pouvez également joindre des photos.';

  @override
  String get helpCategoryConditionName => 'État';

  @override
  String get helpCategoryConditionDesc =>
      'Enregistrez l\'état de santé général de votre animal.';

  @override
  String get helpCategoryMedicationName => 'Médicament';

  @override
  String get helpCategoryMedicationDesc =>
      'Enregistrez le nom du médicament, la dose et l\'heure.';

  @override
  String get helpCategoryWeightName => 'Poids';

  @override
  String get helpCategoryWeightDesc =>
      'Enregistrez le poids (kg). Vous pouvez vérifier la tendance sur l\'écran d\'accueil.';

  @override
  String get helpCategoryMealName => 'Repas';

  @override
  String get helpCategoryMealDesc =>
      'Enregistrez la quantité et le type de repas. Vous pouvez joindre des photos/vidéos.';

  @override
  String get helpCategoryWaterName => 'Eau';

  @override
  String get helpCategoryWaterDesc =>
      'Enregistrez la consommation d\'eau (ml). Vous pouvez joindre des photos/vidéos.';

  @override
  String get helpCategoryHospitalName => 'Vétérinaire';

  @override
  String get helpCategoryHospitalDesc =>
      'Enregistrez le nom de la clinique et le diagnostic. Vous pouvez joindre des photos/vidéos.';

  @override
  String get helpCategoryVaccinationName => 'Vaccin';

  @override
  String get helpCategoryVaccinationDesc =>
      'Enregistrez le type de vaccin et la date.';

  @override
  String get helpCategoryGroomingName => 'Toilettage';

  @override
  String get helpCategoryGroomingDesc =>
      'Enregistrez les détails du toilettage et joignez des photos/vidéos.';

  @override
  String get helpCategoryDentalName => 'Brossage';

  @override
  String get helpCategoryDentalDesc =>
      'Enregistrez l\'état du brossage des dents et des notes.';

  @override
  String get helpCategoryWalkName => 'Promenade';

  @override
  String get helpCategoryWalkDesc =>
      'Enregistrez la distance et la durée de la promenade.';

  @override
  String get helpCategoryMemoName => 'Note';

  @override
  String get helpCategoryMemoDesc =>
      'Vous pouvez laisser des notes au format libre.';

  @override
  String get helpJournalViewRecordListDesc =>
      'Affiche tous les journaux par date. Vous pouvez facilement les distinguer par les icônes de catégorie.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'Appuyer sur un journal ouvre la page de modification. Vous pouvez modifier le contenu ou supprimer le journal.';

  @override
  String get helpJournalAttachMediaDesc =>
      'Vous pouvez joindre des photos ou des vidéos à des catégories telles que Repas, Eau, Vétérinaire, Toilettage et Besoins.';

  @override
  String get helpAlarmAddDesc =>
      'Configurez des alertes pour les vaccins, les médicaments, le vétérinaire, le toilettage, etc. Choisissez d\'abord le type, puis définissez la date et l\'heure.';

  @override
  String get helpAlarmRepeatDesc =>
      'Vous pouvez définir des règles de répétition telles que quotidienne, hebdomadaire ou mensuelle. Idéal pour les médicaments réguliers ou la prévention du ver du cœur.';

  @override
  String get helpAlarmAdvanceDesc =>
      'Pour des événements importants comme les vaccins, vous pouvez recevoir des alertes anticipées 7 jours, 3 jours ou 1 jour avant.';

  @override
  String get helpAlarmCompleteDesc =>
      'Appuyez sur une alerte pour la marquer comme terminée. Les alertes terminées sont déplacées vers la liste des \'Alertes passées\'.';

  @override
  String get helpAlarmDeleteDesc =>
      'Balayez une alerte vers la gauche pour la supprimer.';

  @override
  String get helpPetRegisterDesc =>
      'Enregistrez votre animal en saisissant son nom, son espèce (chien/chat), sa race, son sexe, sa date de naissance et son statut de stérilisation.';

  @override
  String get helpPetEditProfileDesc =>
      'Vous pouvez modifier le nom, la race, le poids, le numéro de puce, le numéro d\'enregistrement et la photo de profil sur l\'écran Profil.';

  @override
  String get helpPetManageMultipleDesc =>
      'Vous pouvez enregistrer plusieurs animaux. Appuyez sur l\'étiquette de l\'animal en haut pour basculer entre eux.';

  @override
  String get helpDogHealthGuideDesc =>
      'Fournit des informations de santé basées sur les recommandations vétérinaires : calendrier des vaccins essentiels/non essentiels, prévention des parasites, soins dentaires, nutrition, etc.';

  @override
  String get helpCatHealthGuideDesc =>
      'Consultez le calendrier de vaccination spécifique aux chats, la prévention des parasites, les soins dentaires et les informations nutritionnelles.';

  @override
  String get helpSettingsNotificationDesc =>
      'Activez ou désactivez toutes les notifications de l\'application.';

  @override
  String get helpSettingsExportDesc =>
      'Exportez toutes les données enregistrées sous forme de fichier ZIP. Peut être utilisé comme sauvegarde lors d\'un changement d\'appareil.';

  @override
  String get helpSettingsImportDesc =>
      'Importez un fichier de sauvegarde ZIP précédemment enregistré pour restaurer les données.';

  @override
  String get helpSettingsFeedbackDesc =>
      'Si vous avez des problèmes ou des suggestions, faites-le nous savoir par e-mail. Cela nous aidera à améliorer l\'application.';

  @override
  String get helpFaqDeletePetQ =>
      'Si je supprime un animal, tous ses journaux sont-ils également supprimés ?';

  @override
  String get helpFaqDeletePetA =>
      'Oui, si vous supprimez un animal, tous ses journaux et alertes seront également supprimés. Veuillez exporter et sauvegarder vos données avant de supprimer.';

  @override
  String get helpFaqMultipleMediaQ =>
      'Puis-je joindre plusieurs photos à un seul journal ?';

  @override
  String get helpFaqMultipleMediaA =>
      'Oui, vous pouvez joindre plusieurs photos ou vidéos. Vous pouvez les sélectionner dans votre galerie ou prendre des photos directement avec l\'appareil photo.';

  @override
  String get helpFaqNoNotificationQ => 'Je ne reçois pas d\'alertes.';

  @override
  String get helpFaqNoNotificationA =>
      'Veuillez vérifier si les notifications pour l\'application Pet Sumtan sont autorisées dans les paramètres de votre appareil. De plus, vérifiez si les \'Paramètres de notification\' dans l\'application (Paramètres > Notifications) sont activés.';

  @override
  String get helpFaqMoveDataQ =>
      'Puis-je transférer mes données vers un nouvel appareil ?';

  @override
  String get helpFaqMoveDataA =>
      'Enregistrez un fichier de sauvegarde via \'Paramètres > Exporter les données\' sur votre ancien appareil, puis restaurez-le via \'Paramètres > Importer les données\' sur votre nouvel appareil.';

  @override
  String get helpFaqMultiplePetsQ => 'Puis-je enregistrer plusieurs animaux ?';

  @override
  String get helpFaqMultiplePetsA =>
      'Vous pouvez enregistrer un animal gratuitement. Des animaux supplémentaires peuvent être ajoutés en utilisant des fonctionnalités premium.';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan est une application qui peut être utilisée sans inscription, et toutes les données sont enregistrées uniquement sur votre appareil. Nous n\'envoyons pas vos informations personnelles à des serveurs externes, gardant ainsi les informations précieuses de votre animal en sécurité.';

  @override
  String get privacySection1Title => 'Informations personnelles collectées';

  @override
  String get privacySection1Body =>
      'Pet Sumtan peut être utilisé sans inscription et ne collecte aucune information personnellement identifiable. Cependant, pour fournir les fonctionnalités de l\'application, les informations suivantes peuvent être enregistrées sur votre appareil.';

  @override
  String get privacyLocalStorageInfo =>
      'Informations enregistrées localement sur l\'appareil';

  @override
  String get privacyPetInfo =>
      'Informations sur l\'animal : Nom, espèce, race, date de naissance, sexe, poids, statut de stérilisation, numéro de puce, numéro d\'enregistrement';

  @override
  String get privacyHealthRecords =>
      'Dossiers de santé : Besoins, repas, eau, poids, médicament, vaccin, vétérinaire, toilettage, brossage, promenade, état, notes, etc., saisis directement par vous';

  @override
  String get privacyAttachedMedia =>
      'Fichiers multimédias joints : Photos et vidéos prises ou sélectionnées directement par vous';

  @override
  String get privacyNotificationSettings =>
      'Paramètres d\'alerte : Type d\'alerte, date et heure programmées, règles de répétition';

  @override
  String get privacyInAppPurchaseTitle => 'À propos des achats intégrés';

  @override
  String get privacyPaymentProcessing =>
      'Le traitement des paiements est effectué via l\'App Store d\'Apple ou le Google Play Store, et l\'application ne collecte ni n\'enregistre directement vos informations de paiement.';

  @override
  String get privacyReceiptVerification =>
      'Conformément aux politiques de chaque plateforme, seules les informations minimales nécessaires à la vérification du reçu d\'achat sont traitées.';

  @override
  String get privacySection2Title =>
      'Objectif de la collecte et de l\'utilisation';

  @override
  String get privacyPurposeRecords =>
      'Enregistrer et consulter les dossiers de santé de l\'animal';

  @override
  String get privacyPurposeStats =>
      'Fournir des statistiques sur l\'écran d\'accueil (état hebdomadaire des besoins, repas, eau, graphique d\'évolution du poids, etc.)';

  @override
  String get privacyPurposeReminders =>
      'Envoyer des alertes liées à la santé, telles que les vaccins, les médicaments, le vétérinaire, etc.';

  @override
  String get privacyPurposeBackupRestore =>
      'Fournir des fonctionnalités de sauvegarde et de restauration des données';

  @override
  String get privacyPurposePaidEligibility =>
      'Vérifier l\'éligibilité à l\'utilisation des fonctionnalités payantes';

  @override
  String get privacySection3Title =>
      'Conservation et destruction des informations';

  @override
  String get privacyRetentionBody =>
      'Toutes les données de Pet Sumtan sont enregistrées uniquement dans la base de données locale (SQLite) de votre appareil et ne sont pas envoyées à des serveurs externes.';

  @override
  String get privacyDataDeletionMethod => 'Méthode de destruction des données';

  @override
  String get privacyDeleteInApp =>
      'Vous pouvez supprimer directement les informations et les journaux de l\'animal via \'Paramètres > Gestion des données\' dans l\'application.';

  @override
  String get privacyDeleteUninstall =>
      'La suppression de l\'application supprimera également toutes les données enregistrées sur l\'appareil.';

  @override
  String get privacyDeleteBackupWarning =>
      'Veuillez noter que si vous ne sauvegardez pas (exporter) avant de supprimer l\'application, les données ne pourront pas être récupérées.';

  @override
  String get privacySection4Title => 'Fourniture d\'informations à des tiers';

  @override
  String get privacyThirdPartyBody =>
      'Pet Sumtan ne fournit pas vos informations personnelles à des tiers externes. Cependant, il existe les exceptions suivantes :';

  @override
  String get privacyThirdPartyUserExport =>
      'Lorsque vous utilisez vous-même la fonction d\'exportation de données (partage de fichier de sauvegarde)';

  @override
  String get privacyThirdPartyLegalRequest =>
      'Lorsque la loi l\'exige ou qu\'il y a une demande légale des autorités compétentes';

  @override
  String get privacySection5Title =>
      'Informations sur les autorisations d\'accès';

  @override
  String get privacyPermissionsBody =>
      'Pour fournir les fonctionnalités de l\'application, nous pouvons demander les autorisations suivantes. Même si vous n\'accordez pas les autorisations, vous pouvez utiliser les autres fonctionnalités normalement.';

  @override
  String get privacyPermissionCameraName => 'Appareil photo';

  @override
  String get privacyPermissionCameraDesc =>
      'Utilisé pour prendre des photos ou enregistrer des vidéos directement pour les joindre aux dossiers de santé.';

  @override
  String get privacyPermissionMediaName => 'Accès aux photos et médias';

  @override
  String get privacyPermissionMediaDesc =>
      'Utilisé pour sélectionner des photos ou des vidéos dans la galerie pour les joindre aux journaux.';

  @override
  String get privacyPermissionNotificationName => 'Notifications';

  @override
  String get privacyPermissionNotificationDesc =>
      'Utilisé pour envoyer des alertes liées à la santé, telles que les vaccins, les médicaments, le vétérinaire, etc.';

  @override
  String get privacyPermissionFileName => 'Accès aux fichiers (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'Utilisé pour enregistrer ou charger des fichiers de sauvegarde de données.';

  @override
  String get privacySection6Title => 'Sauvegarde et restauration des données';

  @override
  String get privacyBackupExport =>
      'Exporter : Vous pouvez enregistrer ou partager toutes les données de l\'application sous forme de fichier (.zip).';

  @override
  String get privacyBackupImport =>
      'Importer : Vous pouvez charger un fichier de sauvegarde précédemment exporté pour restaurer les données.';

  @override
  String get privacyBackupWarning =>
      'Le fichier de sauvegarde est géré par vous, alors faites attention à ne pas partager le fichier avec d\'autres.';

  @override
  String get privacySection7Title => 'Protection de la vie privée des enfants';

  @override
  String get privacyChildrenBody =>
      'Pet Sumtan ne collecte pas séparément les informations personnelles des enfants de moins de 14 ans. Toutes les données de l\'application sont enregistrées uniquement sur l\'appareil et ne sont pas envoyées à des serveurs externes, de sorte que les enfants peuvent l\'utiliser en toute sécurité.';

  @override
  String get privacySection8Title =>
      'Modifications de la politique de confidentialité';

  @override
  String get privacyPolicyChangeNotice =>
      'S\'il y a des changements, nous vous en informerons via les notes de mise à jour de l\'application ou des avis dans l\'application.';

  @override
  String get privacyPolicyChangeEffective =>
      'La politique modifiée entrera en vigueur 7 jours après la notification.';

  @override
  String get privacySection9Title => 'Contact';

  @override
  String get hgDogHeroTitle => 'Guide de santé pour chiens';

  @override
  String get hgCatHeroTitle => 'Guide de santé pour chats';

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
      '**Vaccin CHPPi** — Maladie de Carré, Hépatite, Parvovirose, Parainfluenza, Leptospirose.\n1ère dose à 6-8 semaines, puis toutes les 3-4 semaines (3 doses au total), rappel annuel.';

  @override
  String get hgDogCoreRabies =>
      '**Rage** — 1ère dose à partir de 3 mois, puis rappel annuel (obligatoire dans de nombreuses régions).';

  @override
  String get hgDogCoreCorona =>
      '**Coronavirus** — À partir de 6-8 semaines, 2 doses à 3-4 semaines d\'intervalle, rappel annuel.';

  @override
  String get hgDogNonCoreKennel =>
      '**Toux du chenil** — Recommandé pour les chiens allant en pension, au toilettage ou dans les parcs. Intranasal ou injection.';

  @override
  String get hgDogNonCoreFlu =>
      '**Grippe canine** — Recommandé en cas de forte activité en extérieur ou de contacts fréquents avec d\'autres chiens.';

  @override
  String get hgDogHeartworm1 =>
      'Il est recommandé d\'administrer un traitement préventif **une fois par mois** pendant la saison des moustiques (environ de mars à novembre).';

  @override
  String get hgDogHeartworm2 =>
      'En cas d\'infection, le traitement est difficile et peut être mortel — **la prévention est la meilleure méthode**.';

  @override
  String get hgDogHeartworm3 =>
      'Un test de dépistage (résultat négatif) est obligatoire avant de commencer le traitement.';

  @override
  String get hgDogHeartworm4 =>
      'Un traitement tout au long de l\'année est plus sûr (recommandé par les vétérinaires).';

  @override
  String get hgDogExternalParasites1 =>
      'Administrer un traitement préventif topique (pipette) ou oral **tous les mois**.';

  @override
  String get hgDogExternalParasites2 =>
      'Après la promenade, vérifiez toujours l\'intérieur des oreilles, entre les coussinets et les aisselles pour détecter les tiques.';

  @override
  String get hgDogExternalParasites3 =>
      'Pour retirer une tique, utilisez un tire-tique et tirez doucement à la verticale (ne pas tourner).';

  @override
  String get hgDogInternalParasites1 =>
      'Ascaris, ankylostomes, trichocéphales : Administrer un vermifuge **tous les 3 à 6 mois**.';

  @override
  String get hgDogInternalParasites2 =>
      'Chiots (dès 2 semaines) : Vermifuger toutes les 2 semaines (4 fois au total), puis entretien régulier.';

  @override
  String get hgDental1 =>
      'Un brossage quotidien est idéal — recommandé **au moins 3 fois par semaine**.';

  @override
  String get hgDental2 =>
      'Utilisez toujours un **dentifrice spécial pour animaux** (le dentifrice humain contenant du xylitol est strictement interdit).';

  @override
  String get hgDental3 =>
      'En cas de tartre important, un détartrage chez le vétérinaire est nécessaire (sous anesthésie générale).';

  @override
  String get hgDental4 =>
      'Les friandises dentaires et les jouets à mâcher peuvent être utilisés comme soins complémentaires.';

  @override
  String get hgDogForbiddenFoodAlert =>
      'Les aliments suivants sont toxiques pour les chiens. Même de petites quantités peuvent être mortelles, ne leur en donnez jamais.';

  @override
  String get hgDogForbiddenGrape =>
      '**Raisins/Raisins secs** — Provoquent une insuffisance rénale, mortels même en petite quantité.';

  @override
  String get hgDogForbiddenChocolate =>
      '**Chocolat/Cacao** — Intoxication à la théobromine, insuffisance cardiaque, convulsions.';

  @override
  String get hgDogForbiddenOnion =>
      '**Oignon/Poireau/Ail** — Détruisent les globules rouges, provoquant une anémie hémolytique.';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xylitol** — Sécrétion excessive d\'insuline, hypoglycémie, insuffisance hépatique.';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Noix de macadamia** — Faiblesse musculaire, forte fièvre, vomissements.';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Pâte crue/Alcool** — Intoxication à l\'éthanol, hypoglycémie.';

  @override
  String get hgDogForbiddenAvocado =>
      '**Avocat** — Contient de la persine, provoque vomissements et diarrhées.';

  @override
  String get hgEmergencyAlert =>
      'Si les symptômes suivants apparaissent, consultez immédiatement un vétérinaire.';

  @override
  String get hgDogEmergency1 =>
      'Perte totale d\'appétit pendant plus de 24 heures.';

  @override
  String get hgDogEmergency2 =>
      'Vomissements ou diarrhées répétés 3 fois ou plus en une journée.';

  @override
  String get hgDogEmergency3 =>
      'Ventre gonflé / tentatives de vomir sans résultat (suspicion de dilatation/torsion de l\'estomac).';

  @override
  String get hgDogEmergency4 =>
      'Difficultés respiratoires, gencives pâles, cyanose.';

  @override
  String get hgDogEmergency5 =>
      'Convulsions, crises d\'épilepsie, perte de conscience.';

  @override
  String get hgDogEmergency6 => 'Absence d\'urine pendant plus de 12 heures.';

  @override
  String get hgDogEmergency7 =>
      'Traumatisme visible, fractures, saignements abondants.';

  @override
  String get hgDogExerciseAlert =>
      'Le manque d\'exercice chez les chiens n\'est pas seulement un problème physique. C\'est la cause principale du stress, de l\'anxiété et des comportements destructeurs.';

  @override
  String get hgDogWalk1 =>
      'Petits chiens : recommandé au moins **20-30 minutes** par jour. Chiens moyens/grands : plus d\'**1 heure**.';

  @override
  String get hgDogWalk2 =>
      'La promenade n\'est pas seulement pour les besoins, mais pour la **stimulation olfactive, la socialisation et le soulagement du stress**.';

  @override
  String get hgDogWalk3 =>
      'Laissez-les renifler suffisamment — c\'est très efficace pour soulager la fatigue mentale.';

  @override
  String get hgDogWalk4 =>
      'Attention aux brûlures sur l\'asphalte en été — promenades recommandées avant 7h ou le soir.';

  @override
  String get hgDogPlay1 =>
      '**Rapporter / Tirer à la corde** — Dépense l\'énergie et renforce le lien avec le maître.';

  @override
  String get hgDogPlay2 =>
      '**Jeux de flair (Nosework)** — Stimule le cerveau, 15 minutes équivalent à 30 minutes de promenade.';

  @override
  String get hgDogPlay3 =>
      '**Jouets interactifs/Distributeurs** — Efficaces pour soulager l\'anxiété de séparation lorsqu\'ils sont seuls.';

  @override
  String get hgDogPlay4 =>
      'Seulement **10-15 minutes** de jeu concentré par jour peuvent réduire considérablement le niveau de stress.';

  @override
  String get hgDogStress1 =>
      'Destruction de meubles ou d\'objets, aboiements excessifs — signes d\'un manque d\'exercice ou de stimulation.';

  @override
  String get hgDogStress2 =>
      'Se courir après la queue, léchage excessif (pattes ou corps) — comportement compulsif pour soulager le stress.';

  @override
  String get hgDogStress3 =>
      'Anxiété excessive au départ du maître, malpropreté — suspicion d\'anxiété de séparation.';

  @override
  String get hgDogStress4 =>
      'Si les symptômes persistent, il est recommandé de consulter un vétérinaire ou un comportementaliste.';

  @override
  String get hgDogSocial1 =>
      'De **3 à 14 semaines** est la période d\'or de la socialisation — il est crucial de les exposer à diverses personnes, sons et environnements.';

  @override
  String get hgDogSocial2 =>
      'Interaction avec d\'autres chiens — profitez des parcs canins ou des cours pour chiots.';

  @override
  String get hgDogSocial3 =>
      'Découvrir de nouveaux lieux, odeurs et sons contribue à l\'enrichissement mental.';

  @override
  String get hgDogSocial4 =>
      'L\'éducation par renforcement positif (clicker, friandises) stimule le cerveau et renforce le lien simultanément.';

  @override
  String get hgCatCoreFvrcp =>
      '**Typhus/Coryza (FVRCP)** — Herpèsvirus, Calicivirus, Parvovirus (Panleucopénie).\n1ère dose à 6-8 semaines, puis toutes les 3-4 semaines (3 doses au total), rappel tous les 1 à 3 ans.';

  @override
  String get hgCatCoreRabies =>
      '**Rage** — Obligatoire pour les chats sortant, recommandé pour les chats d\'intérieur (obligatoire dans de nombreuses régions).';

  @override
  String get hgCatNonCoreFelv =>
      '**Leucose féline (FeLV)** — Fortement recommandé pour les chats sortant ou vivant avec d\'autres chats.';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Chlamydiose féline** — Dans les environnements à plusieurs chats, prévient la conjonctivite.';

  @override
  String get hgCatNonCoreFiv =>
      '**FIV (Sida du chat)** — Pour les chats mâles sortant (se transmet par morsure).';

  @override
  String get hgCatExternalParasites1 =>
      'Chats sortant : Administrer un traitement préventif contre les puces/tiques **une fois par mois**.';

  @override
  String get hgCatExternalParasites2 =>
      'Même les chats d\'intérieur peuvent attraper des puces via les vêtements ou chaussures → prévention recommandée **tous les 3 mois**.';

  @override
  String get hgCatExternalParasites3 =>
      'Lors de l\'utilisation de pipettes, appliquez précisément à la base du cou.';

  @override
  String get hgCatInternalHeartworm => 'Parasites internes et Ver du cœur';

  @override
  String get hgCatInternalParasites1 =>
      'Ascaris/Ténias : Administrer un vermifuge **tous les 3 à 6 mois**.';

  @override
  String get hgCatInternalParasites2 =>
      'En cas d\'alimentation à base de viande ou de poisson cru, des contrôles plus fréquents sont recommandés.';

  @override
  String get hgCatHeartworm1 =>
      'Ver du cœur — **Aucun traitement pour les chats, la prévention est la seule méthode**. Traitement mensuel fortement recommandé pour les chats sortant.';

  @override
  String get hgCatMajorDiseases => 'Principales maladies félines à surveiller';

  @override
  String get hgCatDiseaseAlert =>
      'Les chats cachent très bien leur douleur, les symptômes apparaissent souvent quand la maladie est déjà avancée. Les bilans de santé réguliers sont essentiels.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Maladie du bas appareil urinaire (SUAF/FLUTD)** — Fréquente chez les mâles. L\'incapacité d\'uriner est une urgence absolue.';

  @override
  String get hgCatDiseaseCkd =>
      '**Maladie rénale chronique (MRC)** — Première cause de mortalité chez les chats âgés. Des analyses de sang régulières sont essentielles après 7 ans.';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Diabète félin** — Risque accru chez les chats obèses ou âgés. Surveillez toute augmentation de la soif et de l\'urine.';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Hyperthyroïdie** — Fréquente chez les chats de plus de 10 ans. Les symptômes incluent perte de poids, appétit vorace et agitation.';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Stomatite** — Maladie très courante chez les chats. Surveillez la mauvaise haleine, la bave ou la perte d\'appétit.';

  @override
  String get hgCatDiseaseFhv =>
      '**Herpèsvirus félin (FHV-1)** — Le virus reste latent à vie après l\'infection. Réapparaît lors de stress, provoquant éternuements, écoulements oculaires et conjonctivite.';

  @override
  String get hgHydrationDiet => 'Hydratation et gestion de l\'alimentation';

  @override
  String get hgCatHydrationAlert =>
      'Les chats boivent naturellement peu, ce qui les rend sujets aux maladies urinaires. Il est très important de les encourager à boire.';

  @override
  String get hgCatHydration1 =>
      'Il est recommandé de combiner avec de la nourriture humide (pâtée ou sachet) pour compléter l\'hydratation.';

  @override
  String get hgCatHydration2 =>
      'Ils préfèrent l\'eau en mouvement — installer une **fontaine à eau** est très efficace.';

  @override
  String get hgCatHydration3 =>
      'Éloignez le bol d\'eau de la gamelle de nourriture ; ils préfèrent les bols larges et peu profonds.';

  @override
  String get hgCatHydration4 =>
      'Objectif d\'hydratation : environ **40-60 ml** par kg de poids corporel par jour.';

  @override
  String get hgCatForbiddenFoodAlert =>
      'Les aliments suivants sont toxiques pour les chats. Même de petites quantités peuvent être mortelles, ne leur en donnez jamais.';

  @override
  String get hgCatForbiddenOnion =>
      '**Oignon/Poireau/Ail** — Détruisent les globules rouges, provoquant une anémie hémolytique (plus sensibles que les chiens).';

  @override
  String get hgCatForbiddenGrape =>
      '**Raisins/Raisins secs** — Provoquent une insuffisance rénale.';

  @override
  String get hgCatForbiddenChocolate =>
      '**Chocolat/Caféine** — Toxiques pour le cœur et le système nerveux.';

  @override
  String get hgCatForbiddenRawFish =>
      '**Poisson cru (alimentation continue)** — Provoque une carence en thiamine (Vitamine B1).';

  @override
  String get hgCatForbiddenMilk =>
      '**Lait/Produits laitiers** — Les chats adultes sont intolérants au lactose, ce qui provoque des diarrhées.';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xylitol/Alcool** — Toxiques pour le foie et le système nerveux.';

  @override
  String get hgCatForbiddenAvocado =>
      '**Avocat** — Contient de la persine, provoque vomissements et diarrhées.';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Blanc d\'œuf cru** — L\'avidine bloque l\'absorption de la biotine, causant des problèmes de peau et de pelage.';

  @override
  String get hgCatEmergency1 =>
      '**Incapacité totale d\'uriner ou sang dans l\'urine** — Urgence pour obstruction urétrale (surtout chez les mâles).';

  @override
  String get hgCatEmergency2 =>
      'Perte totale d\'appétit pendant plus de 24 heures (risque de lipidose hépatique).';

  @override
  String get hgCatEmergency3 =>
      '**Respiration la bouche ouverte** — N\'est jamais normal chez le chat, nécessite des soins d\'urgence immédiats.';

  @override
  String get hgCatEmergency4 =>
      'Paralysie soudaine ou froideur des pattes arrière (suspicion de thrombose).';

  @override
  String get hgCatEmergency5 =>
      'Convulsions, crises d\'épilepsie, perte de conscience.';

  @override
  String get hgCatEmergency6 =>
      'Gencives ou langue pâles, ou jaunâtres (ictère).';

  @override
  String get hgCatEmergency7 =>
      'Vomissements ou diarrhées répétés 3 fois ou plus en une journée, ou sang dans les selles/vomissements.';

  @override
  String get hgCatEmergency8 =>
      'Traumatisme visible, fractures, saignements abondants.';

  @override
  String get hgEnvironmentMentalHealth => 'Environnement et santé mentale';

  @override
  String get hgIndoorEnvironment => 'Gestion de l\'environnement intérieur';

  @override
  String get hgStressManagement => 'Gestion du stress';

  @override
  String get hgCatEnvironment1 =>
      '**Bacs à litière** : Au moins le nombre de chats + 1, à garder propres tous les jours.';

  @override
  String get hgCatEnvironment2 =>
      '**Grattoirs** : Au moins 2 ou plus (combinaison de types verticaux et horizontaux).';

  @override
  String get hgCatEnvironment3 =>
      '**Espaces en hauteur** : Fournissez des espaces verticaux comme des arbres à chat ou des étagères (satisfait l\'instinct territorial).';

  @override
  String get hgCatEnvironment4 =>
      '**Cachettes** : Fournissez des espaces sûrs pour se cacher, comme des boîtes ou des tunnels.';

  @override
  String get hgCatStress1 =>
      'Le stress chez le chat entraîne directement une baisse de l\'immunité, des maladies urinaires, la récurrence de l\'herpès, etc.';

  @override
  String get hgCatStress2 =>
      'Lors de changements soudains (déménagement, nouveaux membres, etc.), utilisez des diffuseurs de phéromones (Feliway).';

  @override
  String get hgCatStress3 =>
      'Assurez au moins **10-15 minutes** de jeu interactif avec une canne à pêche chaque jour.';

  @override
  String get hgCatStress4 =>
      'Foyers multi-chats : Séparez les ressources (gamelles, litières, lits) en fonction du nombre de chats.';

  @override
  String get hgAge => 'Âge';

  @override
  String get hgCheckupCycle => 'Fréquence des bilans';

  @override
  String get hgMainItems => 'Examens principaux';

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
  String get hgEvery3to4Months => 'Tous les 3-4 mois';

  @override
  String get hgDogCheckupItems1 =>
      'Analyse de sang, auscultation cardiaque, poids, dents';

  @override
  String get hgDogCheckupItems2 =>
      'Sang, urine, radiographie, tension artérielle, articulations';

  @override
  String get hgDogCheckupItems3 =>
      'Bilan sanguin complet, échographie, fonction rénale/hépatique';

  @override
  String get hgCatCheckupItems1 =>
      'Analyse de sang, analyse d\'urine, poids, dents';

  @override
  String get hgCatCheckupItems2 =>
      'Bilan rénal/hépatique, tension artérielle, thyroïde (T4)';

  @override
  String get hgCatCheckupItems3 =>
      'Bilan sanguin complet, échographie abdominale, suivi rénal intensif';

  @override
  String get hgExerciseAmount => 'Niveau d\'exercice';

  @override
  String get hgBreedExamples => 'Races représentatives';

  @override
  String get hgLow => 'Faible';

  @override
  String get hgNormal => 'Normal';

  @override
  String get hgHigh => 'Élevé';

  @override
  String get hgBreedLowExamples =>
      'Bouledogue, Basset Hound, Shih Tzu, Bichon Maltais';

  @override
  String get hgBreedNormalExamples =>
      'Caniche, Bichon à poil frisé, Cocker, Beagle';

  @override
  String get hgBreedHighExamples =>
      'Labrador, Golden Retriever, Husky, Border Collie';

  @override
  String get hgDisclaimer =>
      'Ce guide fournit des informations générales sur la santé. Les soins nécessaires peuvent varier selon l\'état spécifique de votre animal. En cas de symptômes anormaux ou de besoin de traitement, consultez toujours un vétérinaire.';

  @override
  String get categoryFilter => 'Filtre de catégories';

  @override
  String get selectAll => 'Tout sélectionner';

  @override
  String get deselectAll => 'Tout désélectionner';

  @override
  String get apply => 'Appliquer';

  @override
  String get saving => 'Enregistrement...';

  @override
  String get treatmentContent => 'Traitement';

  @override
  String get conditionScoreWord1 => 'Très mauvais';

  @override
  String get conditionScoreWord2 => 'Mauvais';

  @override
  String get conditionScoreWord3 => 'Moyen';

  @override
  String get conditionScoreWord4 => 'Bon';

  @override
  String get conditionScoreWord5 => 'Très bon';

  @override
  String conditionScoreFormat(Object score, Object word) {
    return 'Score $score - $word';
  }
}
