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
  String get weekStats => 'Estatísticas desta semana';

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
  String get mealType => 'Tipo de refeição';

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
  String get breakfast => 'Café da manhã';

  @override
  String get lunch => 'Almoço';

  @override
  String get dinner => 'Jantar';

  @override
  String get snack => 'Petisco';

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
  String get standardRange => 'Faixa padrão';

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
}
