// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Pet Sumtan';

  @override
  String get appTagline => 'App de saúde para pets';

  @override
  String get navHome => 'Início';

  @override
  String get navJournal => 'Diário';

  @override
  String get navNotifications => 'Alertas';

  @override
  String get navProfile => 'Perfil';

  @override
  String get navSettings => 'Configurações';

  @override
  String get navAddAlarm => 'Adicionar alerta';

  @override
  String get drawerService => 'Serviços';

  @override
  String get drawerNearbyHospitals => 'Encontrar clínicas próximas';

  @override
  String get drawerNearbyHospitalsSub => 'Hospitais veterinários perto de você';

  @override
  String get drawerHealthGuide => 'Guia de saúde';

  @override
  String get drawerHealthGuideSub => 'Guia de saúde para pets';

  @override
  String get drawerApp => 'App';

  @override
  String get drawerHelp => 'Ajuda';

  @override
  String get dialogExternalTitle => 'Abrir página externa';

  @override
  String get dialogExternalHospitalBody =>
      'Para encontrar clínicas veterinárias próximas,\nserá necessário abrir uma página externa.\n\nAbrir agora?';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonGo => 'Ir';

  @override
  String get commonDelete => 'Excluir';

  @override
  String get commonSave => 'Salvar';

  @override
  String get commonLoading => 'Preparando...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'Pressione novamente para sair';

  @override
  String get toastNeedPet =>
      'Nenhum pet ainda. Cadastre um no Perfil primeiro!';

  @override
  String get settingsNotifications => 'Notificações';

  @override
  String get settingsPushNotifications => 'Permitir notificações push';

  @override
  String get settingsPushNotificationsSub =>
      'Permissão de notificações do dispositivo';

  @override
  String get settingsLanguageSection => 'Idioma';

  @override
  String get settingsLanguage => 'Idioma do app';

  @override
  String get settingsLanguageSystem => 'Usar configurações do dispositivo';

  @override
  String get settingsLanguageChanged => 'Idioma do app alterado';

  @override
  String get settingsData => 'Gerenciamento de dados';

  @override
  String get settingsExport => 'Exportar dados';

  @override
  String get settingsExportSub => 'Salvar como ZIP';

  @override
  String get settingsImport => 'Importar dados';

  @override
  String get settingsImportSub => 'Restaurar de um ZIP';

  @override
  String get settingsAppInfo => 'Informações do app';

  @override
  String get settingsVersion => 'Versão do app';

  @override
  String get settingsPrivacy => 'Política de privacidade';

  @override
  String get settingsFeedback => 'Enviar feedback';

  @override
  String get settingsFeedbackSubject => 'Feedback – Pet Sumtan';

  @override
  String get settingsEmailAppMissing => 'Nenhum app de e-mail encontrado';

  @override
  String get settingsImportConfirmBody =>
      'Todos os dados existentes serão excluídos e substituídos pelos dados do arquivo de backup.\n\nContinuar?';

  @override
  String get settingsImportAction => 'Importar';

  @override
  String get settingsImporting => 'Importando dados';

  @override
  String get settingsImportSuccess => 'Dados de backup restaurados';

  @override
  String get settingsImportFailed => 'Falha na importação';

  @override
  String get settingsExportTitle => 'Exportar dados';

  @override
  String get settingsExportBenefitTitle =>
      'Guarde seus registros com segurança';

  @override
  String get settingsExportBenefitPets => 'Todos os perfis e fotos de pets';

  @override
  String get settingsExportBenefitRecords =>
      'Todos os registros de saúde, diários e pesos';

  @override
  String get settingsExportBenefitMedia => 'Inclui imagens e vídeos anexados';

  @override
  String get settingsStoreUnavailable =>
      'Não foi possível conectar à loja.\nTente novamente mais tarde.';

  @override
  String settingsPayAndExport(String price) {
    return 'Pagar $price e exportar';
  }

  @override
  String get settingsUnlocked => 'Desbloqueado';

  @override
  String get settingsExportUnlockedBody =>
      'Salve todas as informações e registros dos seus pets como um arquivo ZIP.\nVocê pode importar e restaurar o arquivo gratuitamente a qualquer momento.';

  @override
  String get settingsExporting => 'Exportando...';

  @override
  String get settingsExportZip => 'Exportar como ZIP';

  @override
  String get settingsExportConfirmBody =>
      'Exporta todas as informações, registros e mídias dos pets em um arquivo ZIP.';

  @override
  String get settingsExportAction => 'Exportar';

  @override
  String get settingsExportSuccess =>
      'Arquivo de backup pronto para compartilhar';

  @override
  String get settingsExportFailed => 'Falha na exportação';

  @override
  String get settingsPurchaseFailed => 'Falha no pagamento';

  @override
  String get settingsPurchaseProductLoadFailed =>
      'Não foi possível carregar as informações do produto. Tente novamente em breve.';

  @override
  String get settingsPurchaseStartFailed =>
      'Não foi possível iniciar o pagamento. Tente novamente em breve.';

  @override
  String get errorDbInit =>
      'Ocorreu um problema ao preparar os dados do app.\nTente novamente mais tarde.';

  @override
  String get help => 'Ajuda';

  @override
  String get healthGuide => 'Guia de saúde';

  @override
  String get dog => 'Cão';

  @override
  String get cat => 'Gato';

  @override
  String get tabDog => '🐶 Cão';

  @override
  String get tabCat => '🐱 Gato';

  @override
  String get savedMsg => 'Salvo';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get deleteAction => 'Excluir';

  @override
  String get save => 'Salvar';

  @override
  String get memo => 'Nota';

  @override
  String get memoPlaceholder => 'Escreva uma nota livremente';

  @override
  String get addBtn => '+ Adicionar';

  @override
  String get errorOccurred => 'Ocorreu um erro';

  @override
  String errorOccurredWithDetail(String error) {
    return 'Ocorreu um erro\n$error';
  }

  @override
  String get pet => 'pet';

  @override
  String get selectPet => 'Selecionar pet';

  @override
  String get addNewPet => 'Adicionar novo pet';

  @override
  String get noAlarms => 'Ainda não há alertas';

  @override
  String alarmEmptyDesc(String petName) {
    return 'Mantenha $petName saudável hoje.\nToque em Adicionar alerta para começar.';
  }

  @override
  String get scheduledAlarms => 'Alertas agendados';

  @override
  String get swipeToDelete => 'Deslize para excluir';

  @override
  String get selectAlarmType => 'Selecionar tipo de alerta';

  @override
  String get vetAppointment => 'Consulta veterinária';

  @override
  String get medication => 'Medicação';

  @override
  String get mealTime => 'Hora da refeição';

  @override
  String get dailyReminder => 'Lembrete diário';

  @override
  String get alarmLabel => 'Alerta';

  @override
  String get notificationChannelName => 'Alertas do Pet Sumtan';

  @override
  String get notificationChannelDescription =>
      'Lembretes de cuidados de saúde do pet';

  @override
  String alarmNotificationTitle(String type) {
    return 'Alerta de $type';
  }

  @override
  String get alarmBodyVaccination =>
      'Por favor, verifique a data de vacinação.';

  @override
  String get alarmBodyVetAppointment =>
      'Sua consulta veterinária está se aproximando.';

  @override
  String get alarmBodyMedication => 'É hora da medicação.';

  @override
  String get alarmBodyMealTime => 'Lembre-se da hora da refeição.';

  @override
  String get alarmBodyDailyReminder =>
      'Por favor, adicione o registro de saúde de hoje.';

  @override
  String get alarmBodyDefault => 'Alerta de cuidados de saúde do pet.';

  @override
  String get alarmDeleted => 'Alerta excluído';

  @override
  String get hidePastAlarms => 'Ocultar alertas passados';

  @override
  String get showPastAlarms => 'Mostrar alertas passados';

  @override
  String get deleteAll => 'Excluir tudo';

  @override
  String get deletePastAlarms => 'Excluir alertas passados';

  @override
  String deletePastAlarmsConfirm(int count) {
    return 'Excluir todos os $count alertas passados?';
  }

  @override
  String get pastAlarmsDeleted => 'Todos os alertas passados excluídos';

  @override
  String get pastLabel => 'Passado';

  @override
  String get today => 'Hoje';

  @override
  String get tomorrowSameTime => 'Amanhã, mesma hora';

  @override
  String get snoozeQuestion => 'Quando devemos lembrar você novamente?';

  @override
  String get snooze5min => 'Em 5 minutos';

  @override
  String get snooze10min => 'Em 10 minutos';

  @override
  String get snooze30min => 'Em 30 minutos';

  @override
  String get snooze1hour => 'Em 1 hora';

  @override
  String get snooze3hour => 'Em 3 horas';

  @override
  String get snoozeCustom => 'Escolher manualmente';

  @override
  String get snoozeAtThisTime => 'Lembrar a esta hora';

  @override
  String snoozeConfirm(String time) {
    return 'Vamos lembrar você às $time';
  }

  @override
  String get selectFutureTime => 'Escolha um horário futuro';

  @override
  String recordCheckHint(String typeLabel) {
    return 'Você pode verificar em Registro > $typeLabel.';
  }

  @override
  String get pushAlsoCancel =>
      'A notificação push agendada também será cancelada.';

  @override
  String get reschedule => 'Reagendar';

  @override
  String get deleteThisAlarm => 'Excluir este alerta';

  @override
  String get vaccineNameRequired => 'Nome da vacina *';

  @override
  String get vaccineNameExample => 'Ex. Raiva, vacina combinada';

  @override
  String get scheduledDateRequired => 'Data *';

  @override
  String get reminderTiming => 'Momento do lembrete';

  @override
  String get sameDay => 'Mesmo dia';

  @override
  String get reminderTimeRequired => 'Hora do lembrete *';

  @override
  String get memoInputHint => 'Digite uma nota';

  @override
  String get visitPurposeRequired => 'Motivo da visita *';

  @override
  String get visitPurposeExample =>
      'Ex. Consulta de rotina, tratamento de pele';

  @override
  String get appointmentDateTimeRequired => 'Data e hora da consulta *';

  @override
  String get hospitalName => 'Nome do hospital';

  @override
  String get hospitalNameHint => 'Digite o nome do hospital';

  @override
  String get medicineNameRequired => 'Nome do medicamento *';

  @override
  String get medicineNameExample => 'Ex. Antipulgas, vermífugo';

  @override
  String get repeatRequired => 'Repetir *';

  @override
  String get none => 'Nenhum';

  @override
  String get daily => 'Diário';

  @override
  String get weekly => 'Semanal';

  @override
  String get monthly => 'Mensal';

  @override
  String get weekdays => 'Dias úteis';

  @override
  String get weekdaysOnly => 'Apenas dias úteis';

  @override
  String get weekends => 'Fins de semana';

  @override
  String get weekendsOnly => 'Apenas fins de semana';

  @override
  String get medicationDateTimeRequired => 'Data e hora da medicação *';

  @override
  String get medicationTimeRequired => 'Hora da medicação *';

  @override
  String get alarmNameRequired => 'Nome do alerta *';

  @override
  String get mealTimeExample => 'Ex. Café da manhã, jantar';

  @override
  String get mealTimeRequired => 'Hora da refeição *';

  @override
  String get alarmMessage => 'Mensagem do alerta';

  @override
  String get alarmMessageExample => 'Ex. Você adicionou o registro de hoje?';

  @override
  String get alarmPastDueMsg =>
      'A data deste alerta já passou.\nVocê pode escolher uma nova data ou excluí-lo.';

  @override
  String get reselectDate => 'Selecionar data novamente';

  @override
  String get selectDate => 'Selecionar data';

  @override
  String get selectTime => 'Selecionar hora';

  @override
  String get todayStatus => 'Status de hoje';

  @override
  String get addRecord => '+ Adicionar registro';

  @override
  String get todayReminders => 'Lembretes de hoje';

  @override
  String get todayRecords => 'Registros de hoje';

  @override
  String get viewAll => 'Ver tudo';

  @override
  String get weekStats => 'Estatísticas de saúde';

  @override
  String get pottyCount => 'Contagem de evacuações';

  @override
  String get mealCount => 'Contagem de refeições';

  @override
  String get waterLevel => 'Nível de água';

  @override
  String get timesUnit => 'vezes';

  @override
  String get mealsUnit => 'refeições';

  @override
  String get pointsUnit => 'pts';

  @override
  String get recordDeleted => 'Registro excluído';

  @override
  String get recordUpdated => 'Registro atualizado';

  @override
  String get deleteRecordConfirm => 'Excluir este registro?';

  @override
  String get deleteConfirmBody => 'Não é possível desfazer esta ação!';

  @override
  String get deleteConfirmOk => 'Excluir';

  @override
  String get deleteThisRecord => 'Excluir este registro';

  @override
  String get typeLabel => 'Tipo';

  @override
  String get statusLabel => 'Status';

  @override
  String get conditionScore => 'Pontuação de condição';

  @override
  String get symptomTags => 'Tags de sintomas';

  @override
  String get medicineName => 'Nome do medicamento';

  @override
  String get dose => 'Dose';

  @override
  String get medicationMethod => 'Método de medicação';

  @override
  String get weightKg => 'Peso (kg)';

  @override
  String get measurementMethod => 'Método de medição';

  @override
  String get mealAmount => 'Quantidade de refeição';

  @override
  String get servingAmount => 'Porção';

  @override
  String get waterAmount => 'Quantidade de água';

  @override
  String get visitType => 'Tipo de visita';

  @override
  String get diagnosisName => 'Diagnóstico';

  @override
  String get vaccineType => 'Tipo de vacina';

  @override
  String get abnormalSymptomType => 'Tipo de Sintoma Anormal';

  @override
  String get customSymptom => 'Sintoma Personalizado';

  @override
  String get customSymptomPlaceholder => 'Descreva o sintoma';

  @override
  String get sideEffects => 'Efeitos colaterais';

  @override
  String get groomingType => 'Tipo de banho e tosa';

  @override
  String get shopName => 'Nome do pet shop';

  @override
  String get cost => 'Custo';

  @override
  String get nextAppointment => 'Próxima consulta';

  @override
  String get brushingArea => 'Área de escovação';

  @override
  String get duration => 'Duração';

  @override
  String get walkTime => 'Tempo de passeio';

  @override
  String get distance => 'Distância';

  @override
  String get title => 'Título';

  @override
  String get priority => 'Prioridade';

  @override
  String get stool => 'Fezes';

  @override
  String get urine => 'Urina';

  @override
  String get vomiting => 'Vômito';

  @override
  String get bleeding => 'Sangramento';

  @override
  String get dyspnea => 'Dispneia';

  @override
  String get seizure => 'Convulsão';

  @override
  String get normal => 'Normal';

  @override
  String get loose => 'Mole';

  @override
  String get hard => 'Dura';

  @override
  String get bloodInStool => 'Sangue nas fezes';

  @override
  String get cough => 'Tosse';

  @override
  String get lethargy => 'Letargia';

  @override
  String get lossOfAppetite => 'Perda de apetite';

  @override
  String get diarrhea => 'Diarreia';

  @override
  String get runnyNose => 'Coriza';

  @override
  String get sneezing => 'Espirros';

  @override
  String get trembling => 'Tremores';

  @override
  String get bloodInUrine => 'Sangue na urina';

  @override
  String get oral => 'Oral';

  @override
  String get injection => 'Injeção';

  @override
  String get topical => 'Tópico';

  @override
  String get eyeDrops => 'Colírio';

  @override
  String get earDrops => 'Gotas auriculares';

  @override
  String get vetHospital => 'Hospital veterinário';

  @override
  String get homeScale => 'Balança doméstica';

  @override
  String get holdAndWeigh => 'Pesar no colo';

  @override
  String get veryLittle => 'Muito pouco';

  @override
  String get little => 'Pouco';

  @override
  String get much => 'Muito';

  @override
  String get veryMuch => 'Muitíssimo';

  @override
  String get general => 'Normal';

  @override
  String get regularCheckup => 'Check-up';

  @override
  String get emergency => 'Emergência';

  @override
  String get mild => 'Leve';

  @override
  String get severe => 'Grave';

  @override
  String get bath => 'Banho';

  @override
  String get fullGrooming => 'Banho e tosa completo';

  @override
  String get partialGrooming => 'Tosa parcial';

  @override
  String get nails => 'Unhas';

  @override
  String get earCleaning => 'Limpeza de ouvidos';

  @override
  String get tartarRemoval => 'Remoção de tártaro';

  @override
  String get analGlands => 'Glândulas anais';

  @override
  String get all => 'Tudo';

  @override
  String get back => 'Costas';

  @override
  String get belly => 'Barriga';

  @override
  String get tail => 'Cauda';

  @override
  String get face => 'Rosto';

  @override
  String get paws => 'Patas';

  @override
  String get important => 'Importante';

  @override
  String get photosAndVideos => 'Fotos · Vídeos';

  @override
  String get addMedia => 'Adicionar mídia';

  @override
  String get selectMediaMethod => 'Escolher como adicionar mídia';

  @override
  String get useCamera => 'Usar câmera';

  @override
  String get takePhotoOrVideo => 'Tirar foto ou gravar vídeo';

  @override
  String get chooseFromGallery => 'Escolher da galeria';

  @override
  String get multiSelectHint => 'Selecionar múltiplas fotos e vídeos';

  @override
  String get takePhoto => 'Tirar foto';

  @override
  String get takePhotoDesc => 'Tirar uma foto com a câmera';

  @override
  String get recordVideo => 'Gravar vídeo';

  @override
  String get recordVideoDesc => 'Gravar um vídeo com a câmera';

  @override
  String get deleteThisPhoto => 'Excluir foto';

  @override
  String get deletePhotoConfirm => 'Excluir esta foto?';

  @override
  String get deleteThisVideo => 'Excluir vídeo';

  @override
  String get deleteVideoConfirm => 'Excluir este vídeo?';

  @override
  String get muted => 'Mudo';

  @override
  String get soundOn => 'Som ativado';

  @override
  String get allowPermissionInSettings =>
      'Por favor, permita o acesso nas Configurações';

  @override
  String get openSettings => 'Abrir configurações';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get contactDeveloper => 'Contatar o desenvolvedor';

  @override
  String get contact => 'Contato';

  @override
  String get settingsLabel => 'Configurações';

  @override
  String get exportData => 'Exportar dados';

  @override
  String get importData => 'Importar dados';

  @override
  String get sendFeedback => 'Enviar feedback';

  @override
  String get faq => 'Perguntas frequentes';

  @override
  String get homeScreen => 'Tela inicial';

  @override
  String get journalScreen => 'Tela do diário';

  @override
  String get alarmScreen => 'Tela de alertas';

  @override
  String get petManagement => 'Gerenciamento de pets';

  @override
  String get recordCategories => 'Categorias de registros';

  @override
  String get whatIsPetSumtan => 'O que é Pet Sumtan?';

  @override
  String get todayRecordSummary => 'Resumo dos registros de hoje';

  @override
  String get weeklyStats => 'Estatísticas semanais';

  @override
  String get weightChangeChart => 'Gráfico de variação de peso';

  @override
  String get findNearbyHospitals => 'Encontrar clínicas próximas';

  @override
  String get addNewRecord => 'Adicionar novo registro (+)';

  @override
  String get viewRecordList => 'Ver registros';

  @override
  String get editDeleteRecord => 'Editar e excluir registros';

  @override
  String get attachMedia => 'Anexar fotos/vídeos';

  @override
  String get addAlarm => 'Adicionar alerta';

  @override
  String get repeatAlarm => 'Alertas repetidos';

  @override
  String get advanceAlarmHint => 'Alertas antecipados (D-7, D-3, D-1)';

  @override
  String get completeAlarm => 'Concluir alertas';

  @override
  String get deleteAlarm => 'Excluir alertas';

  @override
  String get registerPet => 'Registrar pet';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get manageMultiplePets => 'Gerenciar vários pets';

  @override
  String get dogHealthGuide => 'Guia de saúde para cães';

  @override
  String get catHealthGuide => 'Guia de saúde para gatos';

  @override
  String get notificationSettings => 'Configurações de notificações';

  @override
  String get dogHealthCareGuide => 'Guia de saúde para cães';

  @override
  String get catHealthCareGuide => 'Guia de saúde para gatos';

  @override
  String get healthGuideSubtitle =>
      'Um guia profissional de saúde\nbaseado em recomendações veterinárias.';

  @override
  String get vaccination => 'Vacinação';

  @override
  String get coreVaccines => 'Vacinas essenciais';

  @override
  String get required => 'Obrigatório';

  @override
  String get nonCoreVaccines => 'Vacinas opcionais';

  @override
  String get recommended => 'Recomendado';

  @override
  String get parasitePrevention => 'Prevenção de parasitas';

  @override
  String get heartworm => 'Dirofilariose';

  @override
  String get monthlyFreq => 'Mensal';

  @override
  String get externalParasites => 'Parasitas externos (pulgas/carrapatos)';

  @override
  String get internalParasites => 'Parasitas internos';

  @override
  String get threeToSixMonths => '3-6 meses';

  @override
  String get nutritionManagement => 'Nutrição';

  @override
  String get dentalCare => 'Cuidado dental';

  @override
  String get healthCheckup => 'Check-ups de saúde';

  @override
  String get emergencySigns => 'Sinais de emergência';

  @override
  String get age => 'Idade';

  @override
  String get checkupCycle => 'Frequência';

  @override
  String get mainItems => 'Itens principais';

  @override
  String get exerciseLevel => 'Nível de exercício';

  @override
  String get breedExamples => 'Exemplos de raças';

  @override
  String get low => 'Baixo';

  @override
  String get high => 'Alto';

  @override
  String get menu => 'Menu';

  @override
  String get helloGreeting => 'Olá! ';

  @override
  String get healthyTodayMsg => '\nEstá saudável hoje? 🐾';

  @override
  String get noRecordsYet => 'Ainda não há registros';

  @override
  String lastRecord(String time) {
    return 'Último registro · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return 'Média $value$unit/dia';
  }

  @override
  String get weightTrend => '⚖️ Tendência de peso';

  @override
  String get weightChange => '⚖️ Variação de peso';

  @override
  String get noWeightData => 'Ainda não há dados de peso';

  @override
  String get measuredWeight => 'Peso medido';

  @override
  String get noTodayRecords => 'Ainda não há registros para hoje';

  @override
  String get homeNoRecordHint =>
      'Registre condição, evacuações e peso\npara cuidar da saúde do seu pet.';

  @override
  String noRecordsForDate(String date) {
    return 'Sem registros para $date';
  }

  @override
  String recordsForDate(String date, String count) {
    return 'Registros de $date ($count)';
  }

  @override
  String get daySun => 'Dom';

  @override
  String get dayMon => 'Seg';

  @override
  String get dayTue => 'Ter';

  @override
  String get dayWed => 'Qua';

  @override
  String get dayThu => 'Qui';

  @override
  String get dayFri => 'Sex';

  @override
  String get daySat => 'Sáb';

  @override
  String get whatToRecord => '📝 O que você quer registrar?';

  @override
  String saveErrorMsg(String error) {
    return 'Ocorreu um erro ao salvar: $error';
  }

  @override
  String get alarmUpdated => 'Alerta atualizado';

  @override
  String get alarmAdded => 'Alerta adicionado';

  @override
  String get editAlarm => 'Editar alerta';

  @override
  String get deleteAlarmConfirm => 'Excluir este alerta?';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name será excluído,\ne a notificação push agendada também será cancelada.';
  }

  @override
  String get doneMsg => '✅ Pronto';

  @override
  String get laterMsg => '🕐 Depois';

  @override
  String get saveCompletion => '✅ Salvar conclusão';

  @override
  String completedQuestion(String type) {
    return 'Você concluiu $type?';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'Vamos salvar automaticamente\n$name nos registros de hoje.';
  }

  @override
  String completionSaved(String name) {
    return 'Conclusão de $name salva';
  }

  @override
  String get tapAlarmTypeHint => '👆 Toque no tipo de alerta que deseja';

  @override
  String countUnit(int count) {
    return '$count';
  }

  @override
  String dateCompleted(String date) {
    return '$date · Concluído';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date passado · Toque para reagendar';
  }

  @override
  String get completedLabel => 'Concluído';

  @override
  String get edit => 'Editar';

  @override
  String recordDeleteCannotUndo(String category) {
    return 'O registro de $category será excluído\ne não poderá ser restaurado.';
  }

  @override
  String get hintMedicineNameAndDose =>
      'Por favor, insira o nome e a dose do medicamento';

  @override
  String get hintMedicineName => 'Por favor, insira um nome de medicamento';

  @override
  String get hintDose => 'Por favor, insira uma dose';

  @override
  String get hintWeightNumber => 'Por favor, insira o peso como número';

  @override
  String get hintWeight => 'Por favor, insira o peso';

  @override
  String get hintWeightIsNumber => 'Por favor, insira o peso como número';

  @override
  String get hintWalkTime => 'Por favor, insira o tempo de passeio';

  @override
  String get hintWalkTimeIsNumber =>
      'Por favor, insira o tempo de passeio como número';

  @override
  String get hintWalkTimeNumber =>
      'Por favor, insira o tempo de passeio como número';

  @override
  String get hintSelectBrushingArea =>
      'Por favor, selecione pelo menos uma área de escovação';

  @override
  String get hintSelectVaccineType =>
      'Por favor, selecione pelo menos um tipo de vacina';

  @override
  String get hintSelectGroomingType =>
      'Por favor, selecione pelo menos um tipo de banho e tosa';

  @override
  String get hintSelectSymptomType =>
      '💡 Selecione pelo menos um tipo de sintoma';

  @override
  String get hintTitle => 'Por favor, insira um título';

  @override
  String get hintVaccineName => 'Por favor, insira um nome de vacina';

  @override
  String get hintSelectScheduledDate => 'Por favor, selecione uma data';

  @override
  String get hintSelectScheduledTime => 'Por favor, selecione um horário';

  @override
  String get hintVisitPurpose => 'Por favor, insira o motivo da visita';

  @override
  String get hintSelectAppointmentDate =>
      'Por favor, selecione uma data de consulta';

  @override
  String get hintSelectAppointmentTime =>
      'Por favor, selecione um horário de consulta';

  @override
  String get hintMedicineNameInput =>
      'Por favor, insira um nome de medicamento';

  @override
  String get hintSelectMedicationDate =>
      'Por favor, selecione uma data de medicação';

  @override
  String get hintSelectMedicationTime =>
      'Por favor, selecione um horário de medicação';

  @override
  String get hintAlarmName => 'Por favor, insira um nome de alerta';

  @override
  String get hintSelectMealTime =>
      'Por favor, selecione um horário de refeição';

  @override
  String get hintSelectAlarmTime => 'Por favor, selecione um horário de alerta';

  @override
  String get noPetRegisterFirst =>
      'Nenhum pet ainda. Por favor, adicione um no Perfil primeiro.';

  @override
  String get alarmRescheduled => 'Alerta reagendado';

  @override
  String get examplePetName => 'Ex. Rex';

  @override
  String get exampleBreed => 'Ex. Maltês';

  @override
  String get exampleBreedMulti => 'Ex. Maltês, Persa';

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
  String get enterNameHint => 'Por favor, insira um nome';

  @override
  String get addNewPetTitle => 'Adicionar novo pet';

  @override
  String get basicInfo => 'Informações básicas';

  @override
  String get idInfo => 'Identificação';

  @override
  String get idInfoOptional => 'Identificação (opcional)';

  @override
  String get name => 'Nome';

  @override
  String get petKind => 'Tipo';

  @override
  String get breed => 'Raça';

  @override
  String get weight => 'Peso';

  @override
  String get microchip => 'Microchip';

  @override
  String get registrationNumber => 'Número de registro';

  @override
  String get birthDate => 'Data de nascimento';

  @override
  String get gender => 'Sexo';

  @override
  String get male => 'Macho';

  @override
  String get female => 'Fêmea';

  @override
  String get maleSym => 'Macho ♂';

  @override
  String get femaleSym => 'Fêmea ♀';

  @override
  String get neutered => 'Castrado';

  @override
  String get done => 'Concluído';

  @override
  String get notDone => 'Não concluído';

  @override
  String get notEntered => 'Não informado';

  @override
  String get notRegistered => 'Não registrado';

  @override
  String get dogEmoji => 'Cão 🐶';

  @override
  String get catEmoji => 'Gato 🐱';

  @override
  String get otherEmoji => 'Outro 🐾';

  @override
  String get noPetsRegistered => 'Nenhum pet registrado';

  @override
  String get registerPetPrompt =>
      'Adicione um pet e\ngerencie sua saúde juntos.';

  @override
  String get registerPetBtn => 'Adicionar pet';

  @override
  String get editPet => 'Editar pet';

  @override
  String get neuteringStatus => 'Status de castração';

  @override
  String get neuteredDone => 'Castrado';

  @override
  String get notNeutered => 'Não castrado';

  @override
  String get selectDateHint => 'Selecione uma data';

  @override
  String get saveChanges => 'Salvar alterações';

  @override
  String get registerBtn => 'Registrar';

  @override
  String deletePetName(String name) {
    return 'Excluir $name';
  }

  @override
  String deletePetConfirm(String name) {
    return 'Excluir $name?';
  }

  @override
  String deletePetWarning(String name) {
    return 'Todos os registros e alertas de $name serão excluídos e não poderão ser restaurados.';
  }

  @override
  String petDeleted(String name) {
    return '$name excluído';
  }

  @override
  String petAdded(String name) {
    return '$name adicionado';
  }

  @override
  String get storeUnavailableMsg =>
      'Não foi possível conectar à loja agora. Tente novamente mais tarde.';

  @override
  String get checkingPaymentMsg =>
      'Verificando informações de pagamento. Tente novamente em breve.';

  @override
  String get paymentCompleteMsg =>
      'Pagamento concluído. Por favor, insira as informações do seu novo pet.';

  @override
  String get addNewFamilyMember => 'Adicionar novo membro da família?';

  @override
  String get firstPetFreeDesc =>
      'O primeiro pet é gratuito. A partir do segundo, cada pet adicional requer pagamento.';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '$count pets registrados\nTente novamente quando a loja estiver disponível.';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '$count pets registrados\nPague $price para adicionar um novo membro.';
  }

  @override
  String get maybeLater => 'Talvez depois';

  @override
  String get unavailable => 'Indisponível';

  @override
  String payAndAdd(String price) {
    return 'Pagar $price e adicionar';
  }

  @override
  String get addNextAppointment => '+ Adicionar próxima consulta';

  @override
  String get pottyRecordSaved => 'Registro de evacuação salvo';

  @override
  String get conditionRecordSaved => 'Registro de condição salvo';

  @override
  String get medicationRecordSaved => 'Registro de medicação salvo';

  @override
  String get weightRecordSaved => 'Registro de peso salvo';

  @override
  String get mealRecordSaved => 'Registro de refeição salvo';

  @override
  String get waterRecordSaved => 'Registro de água salvo';

  @override
  String get vetVisitRecordSaved => 'Registro de visita veterinária salvo';

  @override
  String get vaccinationRecordSaved => 'Registro de vacinação salvo';

  @override
  String get groomingRecordSaved => 'Registro de banho e tosa salvo';

  @override
  String get brushingRecordSaved => 'Registro de escovação salvo';

  @override
  String get walkRecordSaved => 'Registro de passeio salvo';

  @override
  String get memoSaved => 'Nota salva';

  @override
  String get abnormalSymptomRecordSaved => '⚠️ Sintoma anormal registrado';

  @override
  String get moreQuestions => 'Mais perguntas?';

  @override
  String get contactViaSendFeedback =>
      'Entre em contato por Configurações > Enviar feedback.\nResponderemos em breve.';

  @override
  String get contactViaSendFeedbackLong =>
      'Entre em contato pelo Enviar feedback em Configurações.\nResponderemos rapidamente.';

  @override
  String get privacyPolicyEffectiveDate =>
      'Esta política de privacidade é válida desde 1º de janeiro de 2026.\nÚltima atualização: 8 de maio de 2026';

  @override
  String get privacyCollectedInfo =>
      'As informações coletadas são usadas apenas para os fins indicados.';

  @override
  String get privacyDataFeatures =>
      'O Pet Sumtan oferece recursos de exportação (backup) e importação (restauração) de dados.';

  @override
  String get privacyPolicyMayUpdate =>
      'Esta política de privacidade pode ser atualizada devido a mudanças legais ou de serviço.';

  @override
  String get privacyPolicyContact =>
      'Para dúvidas sobre esta política de privacidade, entre em contato conosco abaixo.';

  @override
  String get catMeal => 'Refeição';

  @override
  String get catWater => 'Água';

  @override
  String get catGrooming => 'Banho e tosa';

  @override
  String get catBrushing => 'Escovação';

  @override
  String get catWalk => 'Passeio';

  @override
  String get catHospital => 'Hospital';

  @override
  String get catAbnormalSymptom => 'Sintoma Anormal';

  @override
  String get catCondition => 'Condição';

  @override
  String get catPotty => 'Evacuação';

  @override
  String get mealFormTitle => '🍽️ Registro de refeição';

  @override
  String get walkFormTitle => '🦮 Registro de passeio';

  @override
  String get weightFormTitle => '⚖️ Registro de peso';

  @override
  String get waterFormTitle => '💧 Registro de água';

  @override
  String get medicationFormTitle => '💊 Registro de medicação';

  @override
  String get groomingFormTitle => '✂️ Registro de banho e tosa';

  @override
  String get brushingFormTitle => '🪥 Registro de escovação';

  @override
  String get conditionFormTitle => '🌡️ Registro de condição';

  @override
  String get poopFormTitle => '💩 Registro de evacuação';

  @override
  String get vaccinationFormTitle => '💉 Registro de vacinação';

  @override
  String get hospitalFormTitle => '🏥 Registro hospitalar';

  @override
  String get abnormalSymptomFormTitle => '⚠️ Sintoma Anormal';

  @override
  String get memoFormTitle => '📝 Nota';

  @override
  String get measureMethod => 'Método de medição';

  @override
  String get feedAmount => 'Quantidade alimentada';

  @override
  String get mlInputLabel => 'Entrada direta em mL';

  @override
  String get alarmRescheduleNote =>
      'A data programada deste alerta passou.\nVocê pode definir uma nova data ou excluí-lo.';

  @override
  String get nailTrim => 'Corte de unhas';

  @override
  String get shopNameExample => 'ex: Salão de animais Fluffy';

  @override
  String get poopRecordSaved => '💩 Fezes registradas';

  @override
  String get memoRecordSaved => '📝 Memo registrado';

  @override
  String get other => 'Outro';

  @override
  String get whole => 'Corpo inteiro';

  @override
  String get paw => 'Pata';

  @override
  String get importance => 'Importância';

  @override
  String get timeTaken => 'Tempo gasto';

  @override
  String get example10 => 'ex: 10';

  @override
  String get hospitalNameExample => 'ex: Hospital Happy Animal';

  @override
  String get diagnosisExample => 'ex: Enterite, Dermatite';

  @override
  String get memoTitlePlaceholder => 'Digite o título do memo';

  @override
  String get hintMemoTitle => '💡 Por favor insira um título';

  @override
  String get poopType => 'Tipo';

  @override
  String get poopStatus => 'Status';

  @override
  String get feces => 'Fezes';

  @override
  String get bloody => 'Sangue nas fezes';

  @override
  String get vaccineDhppl => 'Combo DHPPL';

  @override
  String get vaccineCorona => 'Enterite por coronavírus';

  @override
  String get vaccineKennelCough => 'Tosse dos canis';

  @override
  String get vaccineRabies => 'Raiva';

  @override
  String get vaccineInfluenza => 'Influenza';

  @override
  String get vaccineFvrcp => 'Combo FVRCP';

  @override
  String get vaccineFelv => 'Leucemia (FeLV)';

  @override
  String get vaccineChlamydia => 'Clamídia';

  @override
  String get mute => 'Mudo';

  @override
  String get photoVideo => 'Foto · Vídeo';

  @override
  String photoVideoCount(String count) {
    return 'Foto · Vídeo · $count';
  }

  @override
  String get selectMediaSource => 'Selecionar fonte de mídia';

  @override
  String get cameraCapture => 'Câmera';

  @override
  String get cameraCaptureSubtitle => 'Tirar foto ou vídeo';

  @override
  String get selectFromGallery => 'Galeria';

  @override
  String get selectFromGallerySubtitle => 'Selecionar fotos · vídeos';

  @override
  String get takePhotoSubtitle => 'Tirar foto com câmera';

  @override
  String get recordVideoSubtitle => 'Gravar vídeo com câmera';

  @override
  String get permissionRequired => 'Permita o acesso nas Configurações';

  @override
  String get confirmDeletePhoto => 'Excluir esta foto?';

  @override
  String get confirmDeleteVideo => 'Excluir este vídeo?';

  @override
  String get hintMedicineAndDose => '💡 Digite o medicamento e a dose';

  @override
  String deleteRecordBody(String category) {
    return 'O registro de $category será excluído\ne não poderá ser desfeito.';
  }

  @override
  String dayCountShort(int days) {
    return '$days d';
  }

  @override
  String get helpIntroContent =>
      'O Pet Sumtan é um app onde você pode registrar e gerenciar, em um só lugar, a saúde e a rotina do seu pet.\nVocê pode registrar facilmente diversos dados de saúde, como alimentação, água, evacuações, peso, medicação e visitas ao veterinário, além de usar alertas para não esquecer compromissos importantes.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'Confira rapidamente todos os registros adicionados hoje. Toque em um registro para ver detalhes ou editá-lo.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'Veja em gráficos a quantidade de evacuações, refeições e consumo de água desta semana. Isso ajuda a entender a rotina do seu pet.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'Mostra os registros recentes de peso em um gráfico, facilitando acompanhar a variação ao longo do tempo.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'Ao tocar no botão, você pode pesquisar clínicas veterinárias próximas no Naver Maps.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'Toque no botão + na parte inferior da tela para escolher uma categoria e adicionar um novo registro.';

  @override
  String get helpRecordCategoriesIntro =>
      'Você pode registrar a rotina do seu pet em 12 categorias.';

  @override
  String get helpCategoryPottyName => 'Evacuação';

  @override
  String get helpCategoryPottyDesc =>
      'Registre evacuações e seu estado. Também é possível anexar fotos.';

  @override
  String get helpCategoryConditionName => 'Condição';

  @override
  String get helpCategoryConditionDesc =>
      'Registre o estado geral de saúde e disposição do seu pet.';

  @override
  String get helpCategoryMedicationName => 'Medicação';

  @override
  String get helpCategoryMedicationDesc =>
      'Registre o nome do medicamento, a dose e o horário da medicação.';

  @override
  String get helpCategoryWeightName => 'Peso';

  @override
  String get helpCategoryWeightDesc =>
      'Registre o peso em kg. Você pode acompanhar a variação na tela inicial.';

  @override
  String get helpCategoryMealName => 'Refeição';

  @override
  String get helpCategoryMealDesc =>
      'Registre a quantidade de comida e o tipo de ração. Fotos e vídeos também podem ser anexados.';

  @override
  String get helpCategoryWaterName => 'Água';

  @override
  String get helpCategoryWaterDesc =>
      'Registre a quantidade de água em ml. Fotos e vídeos também podem ser anexados.';

  @override
  String get helpCategoryHospitalName => 'Hospital';

  @override
  String get helpCategoryHospitalDesc =>
      'Registre o nome da clínica e os detalhes da consulta. Fotos e vídeos também podem ser anexados.';

  @override
  String get helpCategoryVaccinationName => 'Vacinação';

  @override
  String get helpCategoryVaccinationDesc =>
      'Registre o tipo de vacina e a data da vacinação.';

  @override
  String get helpCategoryGroomingName => 'Banho e tosa';

  @override
  String get helpCategoryGroomingDesc =>
      'Registre os detalhes do banho e tosa, e anexe fotos ou vídeos.';

  @override
  String get helpCategoryDentalName => 'Escovação dental';

  @override
  String get helpCategoryDentalDesc =>
      'Registre se a escovação dental foi feita e adicione observações.';

  @override
  String get helpCategoryWalkName => 'Passeio';

  @override
  String get helpCategoryWalkDesc =>
      'Registre a distância e o tempo do passeio.';

  @override
  String get helpCategoryMemoName => 'Nota';

  @override
  String get helpCategoryMemoDesc => 'Escreva livremente qualquer observação.';

  @override
  String get helpJournalViewRecordListDesc =>
      'Veja todos os registros por data. Os badges de categoria ajudam a identificar rapidamente cada tipo de registro.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'Toque em um registro para abrir a folha de edição. Você pode alterar o conteúdo ou excluí-lo.';

  @override
  String get helpJournalAttachMediaDesc =>
      'Em algumas categorias, como refeição, água, hospital, banho e tosa e evacuação, é possível anexar fotos ou vídeos.';

  @override
  String get helpAlarmAddDesc =>
      'Você pode cadastrar alertas de vários tipos, como vacinação, medicação, visita ao veterinário e banho e tosa. Escolha primeiro o tipo de alerta e depois defina a data e a hora.';

  @override
  String get helpAlarmRepeatDesc =>
      'Configure regras de repetição, como diariamente, semanalmente ou mensalmente. Isso é útil para medicações regulares ou prevenção de dirofilariose.';

  @override
  String get helpAlarmAdvanceDesc =>
      'Para compromissos importantes, como vacinação, você pode receber lembretes antecipados 7 dias, 3 dias e 1 dia antes.';

  @override
  String get helpAlarmCompleteDesc =>
      'Toque em um alerta para marcá-lo como concluído. Alertas concluídos podem ser vistos na lista de alertas passados.';

  @override
  String get helpAlarmDeleteDesc =>
      'Deslize um alerta para a esquerda para excluí-lo.';

  @override
  String get helpPetRegisterDesc =>
      'Cadastre seu pet informando nome, tipo, raça, sexo, data de nascimento e status de castração.';

  @override
  String get helpPetEditProfileDesc =>
      'Na tela de perfil, você pode editar nome, raça, peso, número do microchip, número de registro e foto de perfil.';

  @override
  String get helpPetManageMultipleDesc =>
      'Você pode cadastrar vários pets. Toque no chip do pet na parte superior para alternar o pet que deseja gerenciar.';

  @override
  String get helpDogHealthGuideDesc =>
      'Oferece informações de saúde com base em orientações veterinárias, incluindo calendário de vacinas essenciais e opcionais, prevenção de dirofilariose e parasitas externos, cuidados dentais e nutrição.';

  @override
  String get helpCatHealthGuideDesc =>
      'Confira calendário de vacinação específico para gatos, prevenção de parasitas, cuidados dentais e informações nutricionais.';

  @override
  String get helpSettingsNotificationDesc =>
      'Ative ou desative todas as notificações do app.';

  @override
  String get helpSettingsExportDesc =>
      'Exporte todos os dados registrados como um arquivo ZIP. Use como backup ao trocar de dispositivo.';

  @override
  String get helpSettingsImportDesc =>
      'Importe um arquivo ZIP de backup exportado anteriormente para restaurar seus dados.';

  @override
  String get helpSettingsFeedbackDesc =>
      'Envie por e-mail dúvidas, problemas ou sugestões de melhoria. Isso ajuda muito a tornar o app melhor.';

  @override
  String get helpFaqDeletePetQ =>
      'Se eu excluir um pet, todos os registros também serão excluídos?';

  @override
  String get helpFaqDeletePetA =>
      'Sim. Ao excluir um pet, todos os registros e alertas relacionados a ele também serão excluídos. Antes de excluir, faça um backup usando Exportar dados.';

  @override
  String get helpFaqMultipleMediaQ =>
      'Posso anexar várias fotos a um registro?';

  @override
  String get helpFaqMultipleMediaA =>
      'Sim. Você pode anexar várias fotos e vídeos. É possível escolher da galeria ou capturar diretamente com a câmera.';

  @override
  String get helpFaqNoNotificationQ => 'Não estou recebendo notificações.';

  @override
  String get helpFaqNoNotificationA =>
      'Verifique se as notificações do Pet Sumtan estão permitidas nas configurações de notificação do dispositivo. Confira também se as notificações do app estão ativadas em Configurações > Configurações de notificações.';

  @override
  String get helpFaqMoveDataQ =>
      'Posso transferir os dados para um novo dispositivo?';

  @override
  String get helpFaqMoveDataA =>
      'Sim. No dispositivo antigo, salve um arquivo de backup em Configurações > Exportar dados. Depois, no novo dispositivo, restaure-o em Configurações > Importar dados.';

  @override
  String get helpFaqMultiplePetsQ => 'Posso cadastrar vários pets?';

  @override
  String get helpFaqMultiplePetsA =>
      'Por padrão, você pode cadastrar 1 pet gratuitamente. O cadastro de pets adicionais está disponível como recurso premium.';

  @override
  String get privacyIntroBody =>
      'O Pet Sumtan é um app que pode ser usado sem cadastro, e todos os dados são armazenados apenas no dispositivo do usuário. Não transmitimos informações pessoais para servidores externos e protegemos com segurança as informações preciosas dos seus pets.';

  @override
  String get privacySection1Title => 'Informações pessoais coletadas';

  @override
  String get privacySection1Body =>
      'O Pet Sumtan pode ser usado sem cadastro e não coleta informações de identificação pessoal separadas. No entanto, para fornecer as funcionalidades do app, as informações abaixo podem ser armazenadas no dispositivo.';

  @override
  String get privacyLocalStorageInfo =>
      'Informações armazenadas localmente no dispositivo';

  @override
  String get privacyPetInfo =>
      'Informações do pet: nome, espécie, raça, data de nascimento, sexo, peso, status de castração, número do microchip e número de registro animal';

  @override
  String get privacyHealthRecords =>
      'Registros de saúde: evacuação, alimentação, água, peso, medicação, vacinação, hospital, banho e tosa, escovação dental, passeio, condição, notas e outros registros inseridos diretamente pelo usuário';

  @override
  String get privacyAttachedMedia =>
      'Mídias anexadas: fotos e vídeos capturados ou selecionados diretamente pelo usuário';

  @override
  String get privacyNotificationSettings =>
      'Configurações de alerta: tipo de alerta, data e hora agendadas e regras de repetição';

  @override
  String get privacyInAppPurchaseTitle => 'Compras no app';

  @override
  String get privacyPaymentProcessing =>
      'Os pagamentos são processados pela Apple App Store ou Google Play Store, e o app não coleta nem armazena diretamente informações de pagamento.';

  @override
  String get privacyReceiptVerification =>
      'Apenas as informações mínimas necessárias para verificar recibos de compra são processadas de acordo com as políticas de cada plataforma.';

  @override
  String get privacySection2Title =>
      'Finalidade da coleta e uso de informações pessoais';

  @override
  String get privacyPurposeRecords =>
      'Salvar e consultar registros de saúde dos pets';

  @override
  String get privacyPurposeStats =>
      'Fornecer estatísticas na tela inicial, como evacuações, refeições e consumo de água da semana, além de gráficos de variação de peso';

  @override
  String get privacyPurposeReminders =>
      'Enviar alertas relacionados à saúde, como vacinação, medicação e visitas ao veterinário';

  @override
  String get privacyPurposeBackupRestore =>
      'Fornecer recursos de backup e restauração de dados';

  @override
  String get privacyPurposePaidEligibility =>
      'Verificar a elegibilidade para uso de recursos pagos';

  @override
  String get privacySection3Title =>
      'Retenção e exclusão de informações pessoais';

  @override
  String get privacyRetentionBody =>
      'Todos os dados do Pet Sumtan são armazenados apenas no banco de dados local do dispositivo do usuário (SQLite) e não são transmitidos para servidores externos.';

  @override
  String get privacyDataDeletionMethod => 'Como excluir dados';

  @override
  String get privacyDeleteInApp =>
      'Você pode excluir diretamente as informações dos pets e registros em Configurações > Gerenciamento de dados no app.';

  @override
  String get privacyDeleteUninstall =>
      'Ao excluir o app, todos os dados armazenados no dispositivo também serão excluídos.';

  @override
  String get privacyDeleteBackupWarning =>
      'Observe que, se você não fizer um backup (exportação) antes de excluir o app, os dados não poderão ser recuperados.';

  @override
  String get privacySection4Title =>
      'Compartilhamento de informações pessoais com terceiros';

  @override
  String get privacyThirdPartyBody =>
      'O Pet Sumtan não fornece informações pessoais do usuário a terceiros. No entanto, as situações abaixo são exceções.';

  @override
  String get privacyThirdPartyUserExport =>
      'Quando o próprio usuário utiliza o recurso de exportação de dados, como compartilhamento de arquivo de backup';

  @override
  String get privacyThirdPartyLegalRequest =>
      'Quando exigido por lei ou mediante solicitação legal de autoridades investigativas';

  @override
  String get privacySection5Title => 'Permissões de acesso';

  @override
  String get privacyPermissionsBody =>
      'Para fornecer as funcionalidades do app, as permissões abaixo podem ser solicitadas. Mesmo que você não permita uma permissão, ainda poderá usar normalmente as demais funcionalidades, exceto aquela que depende da permissão.';

  @override
  String get privacyPermissionCameraName => 'Câmera';

  @override
  String get privacyPermissionCameraDesc =>
      'Usada para tirar fotos ou gravar vídeos diretamente e anexá-los aos registros de saúde.';

  @override
  String get privacyPermissionMediaName => 'Acesso a fotos e mídia';

  @override
  String get privacyPermissionMediaDesc =>
      'Usado para selecionar fotos e vídeos da galeria e anexá-los aos registros.';

  @override
  String get privacyPermissionNotificationName => 'Notificações';

  @override
  String get privacyPermissionNotificationDesc =>
      'Usadas para enviar alertas relacionados à saúde, como vacinação, medicação e visitas ao veterinário.';

  @override
  String get privacyPermissionFileName => 'Acesso a arquivos (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'Usado para salvar ou carregar arquivos de backup de dados.';

  @override
  String get privacySection6Title => 'Backup e restauração de dados';

  @override
  String get privacyBackupExport =>
      'Exportar: permite salvar ou compartilhar todos os dados do app como um arquivo (.zip).';

  @override
  String get privacyBackupImport =>
      'Importar: permite carregar um arquivo de backup exportado anteriormente e restaurar os dados.';

  @override
  String get privacyBackupWarning =>
      'Os arquivos de backup são gerenciados diretamente pelo usuário. Tome cuidado para não compartilhá-los com outras pessoas.';

  @override
  String get privacySection7Title =>
      'Proteção de informações pessoais de crianças';

  @override
  String get privacyChildrenBody =>
      'O Pet Sumtan não coleta separadamente informações pessoais de crianças menores de 14 anos. Todos os dados do app são armazenados apenas no dispositivo e não são transmitidos para servidores externos, permitindo um uso seguro também por crianças.';

  @override
  String get privacySection8Title => 'Alterações nesta política de privacidade';

  @override
  String get privacyPolicyChangeNotice =>
      'Em caso de alteração, informaremos por meio das notas de atualização do app ou de avisos dentro do app.';

  @override
  String get privacyPolicyChangeEffective =>
      'A política alterada entrará em vigor 7 dias após o aviso.';

  @override
  String get privacySection9Title => 'Contato';

  @override
  String get hgDogHeroTitle => 'Guia de cuidados de saúde para cães';

  @override
  String get hgCatHeroTitle => 'Guia de cuidados de saúde para gatos';

  @override
  String get hgHeroSubtitle =>
      'Um guia profissional de saúde\nbaseado em recomendações veterinárias.';

  @override
  String get hgVaccination => 'Vacinação';

  @override
  String get hgCoreVaccines => 'Vacinas essenciais (Core Vaccine)';

  @override
  String get hgNonCoreVaccines => 'Vacinas opcionais (Non-Core)';

  @override
  String get hgRequired => 'Obrigatório';

  @override
  String get hgRecommended => 'Recomendado';

  @override
  String get hgParasitePrevention => 'Prevenção de parasitas';

  @override
  String get hgHeartworm => 'Dirofilariose';

  @override
  String get hgMonthly => 'Mensal';

  @override
  String get hgExternalParasites => 'Parasitas externos (pulgas e carrapatos)';

  @override
  String get hgInternalParasites => 'Parasitas internos';

  @override
  String get hgThreeToSixMonths => '3 a 6 meses';

  @override
  String get hgRegular => 'Regular';

  @override
  String get hgRegularCheckup => 'Check-up de saúde regular';

  @override
  String get hgDentalCare => 'Cuidados dentários e bucais';

  @override
  String get hgForbiddenFoods => 'Alimentos estritamente proibidos';

  @override
  String get hgEmergencySymptoms =>
      'Sintomas que exigem visita imediata ao veterinário';

  @override
  String get hgExerciseMentalHealth => 'Exercício e saúde mental';

  @override
  String get hgWalk => 'Passeio';

  @override
  String get hgDaily => 'Diário';

  @override
  String get hgBreedExerciseAmount => 'Exercício recomendado por raça';

  @override
  String get hgPlayBrainStimulation => 'Brincadeiras e estímulo mental';

  @override
  String get hgStressSignals => 'Identificando sinais de estresse';

  @override
  String get hgCaution => 'Atenção';

  @override
  String get hgSocialization => 'Socialização e estímulos ambientais';

  @override
  String get hgDogCoreDhppl =>
      '**DHPPL (vacina combinada)** — cinomose, hepatite, parvovirose, parainfluenza e leptospirose.\n1ª dose com 6 a 8 semanas de vida, 3 doses com intervalo de 3 a 4 semanas e reforço anual';

  @override
  String get hgDogCoreRabies =>
      '**Raiva** — 1ª dose após os 3 meses de idade, depois 1 vez ao ano (vacinação obrigatória por lei)';

  @override
  String get hgDogCoreCorona =>
      '**Enterite por coronavírus** — início com 6 a 8 semanas de vida, 2 doses com intervalo de 3 a 4 semanas e reforço anual';

  @override
  String get hgDogNonCoreKennel =>
      '**Tosse dos canis** — recomendada para cães em ambientes com muitos animais, pet shops ou hotéis para pets. Pode ser intranasal ou injetável';

  @override
  String get hgDogNonCoreFlu =>
      '**Influenza** — recomendada para cães com muita atividade ao ar livre ou contato frequente com outros cães';

  @override
  String get hgDogHeartworm1 =>
      'Durante e próximo ao período de maior atividade dos mosquitos (março a novembro), recomenda-se administrar preventivo **1 vez por mês**';

  @override
  String get hgDogHeartworm2 =>
      'A infecção é difícil de tratar e pode ser fatal — **a prevenção é a melhor opção**';

  @override
  String get hgDogHeartworm3 =>
      'Antes de administrar o preventivo, é necessário confirmar resultado negativo em teste de infecção';

  @override
  String get hgDogHeartworm4 =>
      'A administração durante todo o ano é ainda mais segura (recomendação veterinária)';

  @override
  String get hgDogExternalParasites1 =>
      'Administrar preventivo spot-on ou oral **todos os meses**';

  @override
  String get hgDogExternalParasites2 =>
      'Após passeios, verifique obrigatoriamente orelhas, entre os dedos e axilas para procurar carrapatos';

  @override
  String get hgDogExternalParasites3 =>
      'Ao remover carrapatos, use pinça e puxe lentamente na direção vertical (não torça)';

  @override
  String get hgDogInternalParasites1 =>
      'Lombrigas, ancilostomídeos e tricurídeos: administrar vermífugo **a cada 3 a 6 meses**';

  @override
  String get hgDogInternalParasites2 =>
      'Filhotes, a partir de 2 semanas de vida: vermifugar 4 vezes com intervalo de 2 semanas e depois manter controle regular';

  @override
  String get hgDental1 =>
      'A escovação diária é ideal — recomenda-se pelo menos **3 vezes por semana**';

  @override
  String get hgDental2 =>
      'Use obrigatoriamente **creme dental próprio para pets** (não use creme dental humano com xilitol)';

  @override
  String get hgDental3 =>
      'Em caso de muito tártaro, faça limpeza dentária em clínica veterinária (requer anestesia geral)';

  @override
  String get hgDental4 =>
      'Petiscos dentais e brinquedos dentários podem ajudar como cuidado complementar';

  @override
  String get hgDogForbiddenFoodAlert =>
      'Os alimentos abaixo são tóxicos para cães. Mesmo pequenas quantidades podem ser perigosas, portanto nunca ofereça.';

  @override
  String get hgDogForbiddenGrape =>
      '**Uvas e uvas-passas** — podem causar insuficiência renal; mesmo pequenas quantidades podem ser fatais';

  @override
  String get hgDogForbiddenChocolate =>
      '**Chocolate e cacau** — intoxicação por teobromina, insuficiência cardíaca e convulsões';

  @override
  String get hgDogForbiddenOnion =>
      '**Cebola, alho e cebolinha** — destruição de glóbulos vermelhos e anemia hemolítica';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xilitol** — liberação excessiva de insulina, hipoglicemia e insuficiência hepática';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Noz de macadâmia** — fraqueza muscular, febre alta e vômitos';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Massa crua e álcool** — intoxicação por etanol e hipoglicemia';

  @override
  String get hgDogForbiddenAvocado =>
      '**Abacate** — contém persina, podendo causar vômitos e diarreia';

  @override
  String get hgEmergencyAlert =>
      'Se algum dos sintomas abaixo aparecer, leve o pet imediatamente ao veterinário.';

  @override
  String get hgDogEmergency1 =>
      'Perda completa de apetite por mais de 24 horas';

  @override
  String get hgDogEmergency2 =>
      'Vômitos ou diarreia repetidos 3 vezes ou mais em um dia';

  @override
  String get hgDogEmergency3 =>
      'Abdômen distendido e tentativas improdutivas de vomitar (suspeita de dilatação-torção gástrica)';

  @override
  String get hgDogEmergency4 =>
      'Dificuldade para respirar, gengivas pálidas ou cianose';

  @override
  String get hgDogEmergency5 => 'Convulsões, crises ou perda de consciência';

  @override
  String get hgDogEmergency6 => 'Não urinar por mais de 12 horas';

  @override
  String get hgDogEmergency7 =>
      'Trauma visível, fratura ou sangramento intenso';

  @override
  String get hgDogExerciseAlert =>
      'Para cães, falta de exercício não é apenas um problema físico. Ela pode ser uma das principais causas de estresse, ansiedade e comportamentos destrutivos.';

  @override
  String get hgDogWalk1 =>
      'Cães pequenos: pelo menos **20 a 30 minutos** por dia; cães médios e grandes: recomenda-se **1 hora** ou mais';

  @override
  String get hgDogWalk2 =>
      'O passeio não é apenas para fazer necessidades — é um momento de **estímulo olfativo, socialização e alívio do estresse**';

  @override
  String get hgDogWalk3 =>
      'Permita bastante tempo para cheirar o ambiente — isso é muito eficaz para aliviar o cansaço mental';

  @override
  String get hgDogWalk4 =>
      'Cuidado com queimaduras no asfalto no verão — recomenda-se passear antes das 7h ou à noite';

  @override
  String get hgDogPlay1 =>
      '**Buscar bolinha e cabo de guerra** — ajudam a gastar energia física e fortalecer o vínculo com o tutor';

  @override
  String get hgDogPlay2 =>
      '**Atividades de faro** — estimulam o cérebro e podem gerar efeito semelhante a 30 minutos de passeio em apenas 15 minutos';

  @override
  String get hgDogPlay3 =>
      '**Brinquedos interativos e tipo Kong** — ajudam a reduzir ansiedade de separação durante períodos sozinho';

  @override
  String get hgDogPlay4 =>
      'Apenas **10 a 15 minutos** de brincadeira focada por dia já podem reduzir significativamente o estresse';

  @override
  String get hgDogStress1 =>
      'Destruição de móveis ou objetos e latidos excessivos — sinais de falta de exercício ou estímulo';

  @override
  String get hgDogStress2 =>
      'Morder a própria cauda ou lamber excessivamente patas/corpo — comportamento compulsivo e tentativa de aliviar estresse';

  @override
  String get hgDogStress3 =>
      'Ansiedade intensa quando o tutor sai e erros de eliminação — suspeita de ansiedade de separação';

  @override
  String get hgDogStress4 =>
      'Se persistir, recomenda-se consultar um veterinário ou especialista em comportamento animal';

  @override
  String get hgDogSocial1 =>
      'Entre **3 e 14 semanas** de vida ocorre o período-chave de socialização — é importante expor o filhote a diferentes pessoas, sons e ambientes';

  @override
  String get hgDogSocial2 =>
      'Interação com outros cães — use parques para cães ou aulas para filhotes';

  @override
  String get hgDogSocial3 =>
      'Experiências com novos lugares, cheiros e sons contribuem para maior bem-estar mental';

  @override
  String get hgDogSocial4 =>
      'Treinamento com reforço positivo, como clicker e petiscos, estimula o cérebro e fortalece o vínculo ao mesmo tempo';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP (vacina combinada)** — herpesvírus felino, calicivírus e panleucopenia felina.\n1ª dose com 6 a 8 semanas de vida, 3 doses com intervalo de 3 a 4 semanas e depois a cada 1 a 3 anos';

  @override
  String get hgCatCoreRabies =>
      '**Raiva** — essencial para gatos que saem de casa e recomendada também para gatos exclusivamente internos (obrigatória por lei)';

  @override
  String get hgCatNonCoreFelv =>
      '**Leucemia felina (FeLV)** — fortemente recomendada para gatos que saem de casa ou vivem com vários gatos';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Clamídia felina** — prevenção de conjuntivite em ambientes com vários gatos';

  @override
  String get hgCatNonCoreFiv =>
      '**Imunodeficiência felina (FIV)** — especialmente para machos que saem de casa, pois é transmitida por feridas de brigas';

  @override
  String get hgCatExternalParasites1 =>
      'Gatos que saem de casa: administrar preventivo contra pulgas e carrapatos **1 vez por mês**';

  @override
  String get hgCatExternalParasites2 =>
      'Mesmo gatos internos podem ter contato com pulgas trazidas por roupas ou sapatos → recomenda-se prevenção **a cada 3 meses**';

  @override
  String get hgCatExternalParasites3 =>
      'Ao usar produtos spot-on, aplique corretamente na nuca';

  @override
  String get hgCatInternalHeartworm => 'Parasitas internos e dirofilariose';

  @override
  String get hgCatInternalParasites1 =>
      'Lombrigas e tênias: administrar vermífugo **a cada 3 a 6 meses**';

  @override
  String get hgCatInternalParasites2 =>
      'Se houver alimentação crua, como carne ou peixe cru, recomenda-se fazer exames com maior frequência';

  @override
  String get hgCatHeartworm1 =>
      'Dirofilariose — em gatos, **não há tratamento específico, então a prevenção é o único método**. Para gatos que saem de casa, a prevenção mensal é fortemente recomendada';

  @override
  String get hgCatMajorDiseases =>
      'Principais doenças felinas que exigem atenção';

  @override
  String get hgCatDiseaseAlert =>
      'Gatos têm o hábito de esconder dor ou doença, então quando os sintomas aparecem, muitas vezes a condição já está avançada. Check-ups regulares são especialmente importantes.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Doença do trato urinário inferior felino (FLUTD)** — comum em machos. Se não conseguir urinar, é uma emergência imediata';

  @override
  String get hgCatDiseaseCkd =>
      '**Doença renal crônica (DRC)** — principal causa de morte em gatos idosos. A partir dos 7 anos, exames renais regulares são essenciais';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Diabetes felina** — risco maior em gatos obesos e idosos. Observe aumento de sede e urina';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Hipertireoidismo** — comum acima dos 10 anos. Observe perda de peso, aumento do apetite e hiperatividade';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Estomatite** — muito comum em gatos. Mau hálito, salivação excessiva e perda de apetite exigem avaliação';

  @override
  String get hgCatDiseaseFhv =>
      '**Herpesvírus felino (FHV-1)** — após a infecção, permanece latente por toda a vida. Pode recidivar com estresse, causando espirros, secreção ocular e conjuntivite';

  @override
  String get hgHydrationDiet => 'Ingestão de água e manejo alimentar';

  @override
  String get hgCatHydrationAlert =>
      'Gatos naturalmente bebem pouca água e são vulneráveis a doenças urinárias. Estimular a ingestão hídrica é muito importante.';

  @override
  String get hgCatHydration1 =>
      'Recomenda-se combinar alimento úmido, como sachês ou latas, para ajudar na hidratação';

  @override
  String get hgCatHydration2 =>
      'Muitos gatos preferem água corrente — uma **fonte de água** pode ser eficaz';

  @override
  String get hgCatHydration3 =>
      'Deixe a tigela de água separada da comida; gatos costumam preferir recipientes largos e rasos';

  @override
  String get hgCatHydration4 =>
      'Meta de ingestão de água: cerca de **40 a 60 ml** por kg de peso corporal por dia';

  @override
  String get hgCatForbiddenFoodAlert =>
      'Os alimentos abaixo são tóxicos para gatos. Mesmo pequenas quantidades podem ser perigosas, portanto nunca ofereça.';

  @override
  String get hgCatForbiddenOnion =>
      '**Cebola, alho e cebolinha** — destruição de glóbulos vermelhos e anemia hemolítica (gatos são ainda mais sensíveis que cães)';

  @override
  String get hgCatForbiddenGrape =>
      '**Uvas e uvas-passas** — podem causar insuficiência renal';

  @override
  String get hgCatForbiddenChocolate =>
      '**Chocolate e cafeína** — toxicidade cardíaca e neurológica';

  @override
  String get hgCatForbiddenRawFish =>
      '**Peixe cru em alimentação contínua** — pode causar deficiência de tiamina (vitamina B1)';

  @override
  String get hgCatForbiddenMilk =>
      '**Leite e derivados** — gatos adultos podem ter intolerância à lactose e desenvolver diarreia';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xilitol e álcool** — toxicidade hepática e neurológica';

  @override
  String get hgCatForbiddenAvocado =>
      '**Abacate** — contém persina, podendo causar vômitos e diarreia';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Clara de ovo crua** — a avidina bloqueia a biotina, podendo causar problemas de pele e pelagem';

  @override
  String get hgCatEmergency1 =>
      '**Não conseguir urinar ou presença de sangue na urina** — obstrução uretral é emergência, especialmente em gatos machos';

  @override
  String get hgCatEmergency2 =>
      'Perda completa de apetite por mais de 24 horas (risco de lipidose hepática)';

  @override
  String get hgCatEmergency3 =>
      '**Respirar com a boca aberta** — nunca é normal em gatos e exige atendimento imediato';

  @override
  String get hgCatEmergency4 =>
      'Paralisia súbita ou frieza nas patas traseiras (suspeita de tromboembolismo)';

  @override
  String get hgCatEmergency5 => 'Convulsões, crises ou perda de consciência';

  @override
  String get hgCatEmergency6 =>
      'Gengivas ou língua pálidas, ou icterícia/amarelamento';

  @override
  String get hgCatEmergency7 =>
      'Vômitos ou diarreia 3 vezes ou mais em um dia, ou presença de sangue nas fezes/vômito';

  @override
  String get hgCatEmergency8 =>
      'Trauma visível, fratura ou sangramento intenso';

  @override
  String get hgEnvironmentMentalHealth => 'Ambiente e saúde mental';

  @override
  String get hgIndoorEnvironment => 'Manejo do ambiente interno';

  @override
  String get hgStressManagement => 'Controle do estresse';

  @override
  String get hgCatEnvironment1 =>
      '**Caixas de areia**: número de gatos + 1 ou mais, com limpeza diária';

  @override
  String get hgCatEnvironment2 =>
      '**Arranhadores**: pelo menos 2, combinando modelos verticais e horizontais';

  @override
  String get hgCatEnvironment3 =>
      '**Espaços altos**: ofereça torres, prateleiras ou áreas verticais para satisfazer o instinto territorial';

  @override
  String get hgCatEnvironment4 =>
      '**Esconderijos**: ofereça caixas, túneis ou locais onde o gato possa se esconder com segurança';

  @override
  String get hgCatStress1 =>
      'O estresse em gatos está diretamente ligado à queda de imunidade, FLUTD e recorrência de herpesvírus';

  @override
  String get hgCatStress2 =>
      'Em mudanças bruscas de ambiente, como mudança de casa ou novo membro da família, considere usar difusores de feromônio (Feliway)';

  @override
  String get hgCatStress3 =>
      'Garanta pelo menos **10 a 15 minutos por dia** de brincadeiras com brinquedos';

  @override
  String get hgCatStress4 =>
      'Em casas com vários gatos: separe recursos como comedouros, caixas de areia e locais de descanso conforme o número de animais';

  @override
  String get hgAge => 'Idade';

  @override
  String get hgCheckupCycle => 'Frequência do check-up';

  @override
  String get hgMainItems => 'Itens principais';

  @override
  String get hgAge1to6 => '1 a 6 anos';

  @override
  String get hgAge7to10 => '7 a 10 anos';

  @override
  String get hgAge11Plus => '11 anos ou mais';

  @override
  String get hgYearlyOnce => '1 vez ao ano';

  @override
  String get hgYearlyTwice => '2 vezes ao ano';

  @override
  String get hgEvery3to4Months => 'A cada 3 a 4 meses';

  @override
  String get hgDogCheckupItems1 =>
      'Exame de sangue, auscultação cardíaca, peso e dentes';

  @override
  String get hgDogCheckupItems2 =>
      'Sangue, urina, raio-X, pressão arterial e articulações';

  @override
  String get hgDogCheckupItems3 =>
      'Hemograma completo, ultrassom, função renal e hepática';

  @override
  String get hgCatCheckupItems1 =>
      'Exame de sangue, exame de urina, peso e dentes';

  @override
  String get hgCatCheckupItems2 =>
      'Valores renais e hepáticos, pressão arterial e tireoide (T4)';

  @override
  String get hgCatCheckupItems3 =>
      'Hemograma completo, ultrassom abdominal e monitoramento intensivo dos rins';

  @override
  String get hgExerciseAmount => 'Nível de exercício';

  @override
  String get hgBreedExamples => 'Exemplos de raças';

  @override
  String get hgLow => 'Baixo';

  @override
  String get hgNormal => 'Moderado';

  @override
  String get hgHigh => 'Alto';

  @override
  String get hgBreedLowExamples => 'Bulldog, Basset Hound, Shih Tzu, Maltês';

  @override
  String get hgBreedNormalExamples =>
      'Poodle, Bichon Frisé, Cocker Spaniel, Beagle';

  @override
  String get hgBreedHighExamples =>
      'Labrador, Golden Retriever, Husky, Border Collie';

  @override
  String get hgDisclaimer =>
      'Este guia oferece informações gerais de saúde, e os cuidados necessários podem variar conforme a condição de cada pet. Se houver sintomas anormais ou necessidade de tratamento, consulte obrigatoriamente um veterinário.';
}
