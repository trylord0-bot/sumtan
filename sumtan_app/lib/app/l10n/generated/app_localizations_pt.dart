// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Pet Note';

  @override
  String get appTagline => 'Aplicativo de saúde para pets';

  @override
  String get navHome => 'Início';

  @override
  String get navJournal => 'Diário';

  @override
  String get navNotifications => 'Alarmes';

  @override
  String get navProfile => 'Perfil';

  @override
  String get navSettings => 'Configurações';

  @override
  String get navAddAlarm => 'Adicionar Alarme';

  @override
  String get drawerService => 'Serviços';

  @override
  String get drawerNearbyHospitals => 'Veterinários Próximos';

  @override
  String get drawerNearbyHospitalsSub => 'Encontre uma clínica veterinária';

  @override
  String get drawerHealthGuide => 'Guia de Saúde';

  @override
  String get drawerHealthGuideSub => 'Manual de saúde para pets';

  @override
  String get drawerApp => 'Aplicativo';

  @override
  String get drawerHelp => 'Ajuda';

  @override
  String get dialogExternalTitle => 'Abrir página externa';

  @override
  String get dialogExternalHospitalBody =>
      'Para buscar clínicas veterinárias próximas, precisamos abrir uma página da web externa.\n\nDeseja abrir agora?';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonGo => 'Ir';

  @override
  String get commonDelete => 'Excluir';

  @override
  String get commonSave => 'Salvar';

  @override
  String get commonLoading => 'Carregando...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'Toque novamente para sair';

  @override
  String get toastNeedPet =>
      'Nenhum pet ainda. Por favor, adicione um no Perfil primeiro.';

  @override
  String get settingsNotifications => 'Notificações';

  @override
  String get settingsPushNotifications => 'Permitir notificações push';

  @override
  String get settingsPushNotificationsSub => 'Permissões do dispositivo';

  @override
  String get settingsLanguageSection => 'Idioma';

  @override
  String get settingsLanguage => 'Idioma do aplicativo';

  @override
  String get settingsLanguageSystem => 'Idioma do sistema';

  @override
  String get settingsLanguageChanged => 'Idioma do aplicativo alterado';

  @override
  String get settingsData => 'Gerenciamento de Dados';

  @override
  String get settingsExport => 'Exportar Dados';

  @override
  String get settingsExportSub => 'Salvar como arquivo ZIP';

  @override
  String get settingsImport => 'Importar Dados';

  @override
  String get settingsImportSub => 'Restaurar de arquivo ZIP';

  @override
  String get settingsAppInfo => 'Informações do App';

  @override
  String get settingsVersion => 'Versão do App';

  @override
  String get settingsPrivacy => 'Política de Privacidade';

  @override
  String get settingsFeedback => 'Enviar Feedback';

  @override
  String get settingsFeedbackSubject => 'Feedback sobre o Pet Note';

  @override
  String get settingsEmailAppMissing =>
      'Nenhum aplicativo de e-mail encontrado';

  @override
  String get settingsImportConfirmBody =>
      'Todos os dados atuais serão excluídos e substituídos pelo arquivo de backup.\n\nDeseja continuar?';

  @override
  String get settingsImportAction => 'Importar';

  @override
  String get settingsImporting => 'Importando dados...';

  @override
  String get settingsImportSuccess => 'Dados de backup restaurados com sucesso';

  @override
  String get settingsImportFailed => 'Falha ao importar';

  @override
  String get settingsExportTitle => 'Exportar Dados';

  @override
  String get settingsExportBenefitTitle => 'Mantenha seus registros seguros';

  @override
  String get settingsExportBenefitPets =>
      'Perfis e fotos de todos os seus pets';

  @override
  String get settingsExportBenefitRecords =>
      'Todos os registros médicos, diários e pesos';

  @override
  String get settingsExportBenefitMedia => 'Inclui imagens e vídeos anexados';

  @override
  String get settingsStoreUnavailable =>
      'Não é possível conectar à loja no momento.\nPor favor, tente novamente mais tarde.';

  @override
  String settingsPayAndExport(String price) {
    return 'Pagar $price e exportar';
  }

  @override
  String get settingsUnlocked => 'Desbloqueado';

  @override
  String get settingsExportUnlockedBody =>
      'Salve todas as informações e registros dos seus pets como um arquivo ZIP.\nVocê pode importar e restaurar este arquivo a qualquer momento gratuitamente.';

  @override
  String get settingsExporting => 'Exportando...';

  @override
  String get settingsExportZip => 'Exportar como ZIP';

  @override
  String get settingsExportConfirmBody =>
      'Exportar todas as informações, registros e mídias como um arquivo ZIP.';

  @override
  String get settingsExportAction => 'Exportar';

  @override
  String get settingsExportSuccess =>
      'Arquivo de backup pronto para compartilhar';

  @override
  String get settingsExportFailed => 'Falha ao exportar';

  @override
  String get settingsPurchaseFailed => 'Falha no pagamento';

  @override
  String get settingsPurchaseProductLoadFailed =>
      'Não foi possível carregar as informações do produto. Por favor, tente novamente mais tarde.';

  @override
  String get settingsPurchaseStartFailed =>
      'Não foi possível iniciar o pagamento. Por favor, tente novamente mais tarde.';

  @override
  String get errorDbInit =>
      'Houve um problema ao preparar os dados do aplicativo.\nPor favor, tente novamente mais tarde.';

  @override
  String get help => 'Ajuda';

  @override
  String get healthGuide => 'Guia de Saúde';

  @override
  String get dog => 'Cachorro';

  @override
  String get cat => 'Gato';

  @override
  String get tabDog => '🐶 Cachorro';

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
  String get memoPlaceholder => 'Adicione uma nota aqui';

  @override
  String get addBtn => '＋ Adicionar';

  @override
  String get errorOccurred => 'Ocorreu um erro';

  @override
  String errorOccurredWithDetail(String error) {
    return 'Ocorreu um erro\n$error';
  }

  @override
  String get pet => 'Pet';

  @override
  String get selectPet => 'Selecionar pet';

  @override
  String get addNewPet => 'Adicionar novo pet';

  @override
  String get noAlarms => 'Sem alarmes';

  @override
  String alarmEmptyDesc(String petName) {
    return 'Vamos cuidar da saúde de $petName hoje.\nToque em \'Adicionar Alarme\' abaixo para começar.';
  }

  @override
  String get scheduledAlarms => 'Alarmes Programados';

  @override
  String get swipeToDelete => 'Deslize para excluir';

  @override
  String get selectAlarmType => 'Selecionar tipo de alarme';

  @override
  String get vetAppointment => 'Consulta Veterinária';

  @override
  String get medication => 'Medicação';

  @override
  String get mealTime => 'Hora da Refeição';

  @override
  String get dailyReminder => 'Lembrete Diário';

  @override
  String get alarmLabel => 'Alarme';

  @override
  String get notificationChannelName => 'Alarmes Pet Note';

  @override
  String get notificationChannelDescription =>
      'Lembretes de cuidados com o pet';

  @override
  String alarmNotificationTitle(String type) {
    return 'Alarme: $type';
  }

  @override
  String get alarmBodyVaccination =>
      'Por favor, verifique a data da vacinação.';

  @override
  String get alarmBodyVetAppointment =>
      'Sua consulta veterinária está chegando.';

  @override
  String get alarmBodyMedication => 'É hora da medicação.';

  @override
  String get alarmBodyMealTime => 'Não esqueça a hora da refeição.';

  @override
  String get alarmBodyDailyReminder =>
      'Por favor, preencha o diário de saúde de hoje.';

  @override
  String get alarmBodyDefault => 'Lembrete de saúde para o seu pet.';

  @override
  String get alarmDeleted => 'Alarme excluído';

  @override
  String get hidePastAlarms => 'Ocultar alarmes passados';

  @override
  String get showPastAlarms => 'Mostrar alarmes passados';

  @override
  String get deleteAll => 'Excluir tudo';

  @override
  String get deletePastAlarms => 'Excluir alarmes passados';

  @override
  String deletePastAlarmsConfirm(int count) {
    return 'Tem certeza de que deseja excluir todos os $count alarmes passados?';
  }

  @override
  String get pastAlarmsDeleted => 'Todos os alarmes passados foram excluídos';

  @override
  String get pastLabel => 'Passado';

  @override
  String get today => 'Hoje';

  @override
  String get tomorrowSameTime => 'Amanhã no mesmo horário';

  @override
  String get snoozeQuestion => 'Quando devemos lembrar você?';

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
  String get snoozeCustom => 'Escolher horário';

  @override
  String get snoozeAtThisTime => 'Lembrar neste horário';

  @override
  String snoozeConfirm(String time) {
    return 'Nós lembraremos você às $time';
  }

  @override
  String get selectFutureTime => 'Por favor, escolha um horário futuro';

  @override
  String recordCheckHint(String typeLabel) {
    return 'Você pode verificar isso em Diário > $typeLabel.';
  }

  @override
  String get pushAlsoCancel =>
      'As notificações push programadas também serão canceladas.';

  @override
  String get reschedule => 'Reprogramar';

  @override
  String get deleteThisAlarm => 'Excluir este alarme';

  @override
  String get vaccineNameRequired => 'Nome da vacina *';

  @override
  String get vaccineNameExample => 'Ex: Raiva, V10';

  @override
  String get scheduledDateRequired => 'Data *';

  @override
  String get reminderTiming => 'Quando notificar';

  @override
  String get sameDay => 'No mesmo dia';

  @override
  String get reminderTimeRequired => 'Hora do alarme *';

  @override
  String get memoInputHint => 'Digite uma nota';

  @override
  String get visitPurposeRequired => 'Motivo da visita *';

  @override
  String get visitPurposeExample => 'Ex: Check-up de rotina, problema de pele';

  @override
  String get appointmentDateTimeRequired => 'Data e hora da consulta *';

  @override
  String get hospitalName => 'Nome da clínica';

  @override
  String get hospitalNameHint => 'Digite o nome da clínica';

  @override
  String get medicineNameRequired => 'Nome do medicamento *';

  @override
  String get medicineNameExample => 'Ex: Vermífugo, antipulgas';

  @override
  String get doseExample => 'Ex: 0.5ml, 1 comprimido';

  @override
  String get repeatRequired => 'Repetir *';

  @override
  String get none => 'Nunca';

  @override
  String get daily => 'Diariamente';

  @override
  String get weekly => 'Semanalmente';

  @override
  String get monthly => 'Mensalmente';

  @override
  String get weekdays => 'Dias de semana';

  @override
  String get weekdaysOnly => 'Apenas dias de semana';

  @override
  String get weekends => 'Finais de semana';

  @override
  String get weekendsOnly => 'Apenas finais de semana';

  @override
  String get medicationDateTimeRequired => 'Data e hora da medicação *';

  @override
  String get medicationTimeRequired => 'Hora da medicação *';

  @override
  String get alarmNameRequired => 'Nome do alarme *';

  @override
  String get mealTimeExample => 'Ex: Café da manhã, jantar';

  @override
  String get mealTimeRequired => 'Hora da refeição *';

  @override
  String get alarmMessage => 'Mensagem do alarme';

  @override
  String get alarmMessageExample => 'Ex: Você preencheu o diário de hoje?';

  @override
  String get alarmPastDueMsg =>
      'A data deste alarme já passou.\nPor favor, escolha uma nova data ou exclua-o.';

  @override
  String get reselectDate => 'Selecionar data novamente';

  @override
  String get selectDate => 'Selecionar data';

  @override
  String get selectTime => 'Selecionar hora';

  @override
  String get todayStatus => 'Status de Hoje';

  @override
  String get addRecord => '＋ Adicionar registro';

  @override
  String get todayReminders => 'Lembretes de Hoje';

  @override
  String get todayRecords => 'Registros de Hoje';

  @override
  String get viewAll => 'Ver tudo';

  @override
  String get weekStats => 'Estatísticas da Semana';

  @override
  String get pottyCount => 'Necessidades';

  @override
  String get mealCount => 'Refeições';

  @override
  String get waterLevel => 'Água';

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
  String get deleteRecordConfirm =>
      'Tem certeza de que deseja excluir este registro?';

  @override
  String get deleteConfirmBody =>
      'Uma vez excluído, não poderá ser recuperado!';

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
  String get medicationMethod => 'Método de administração';

  @override
  String get weightKg => 'Peso (kg)';

  @override
  String get measurementMethod => 'Método de medição';

  @override
  String get mealAmount => 'Quantidade de comida';

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
  String get abnormalSymptomType => 'Tipo de sintoma anormal';

  @override
  String get customSymptom => 'Outro sintoma';

  @override
  String get customSymptomPlaceholder => 'Descreva o sintoma';

  @override
  String get sideEffects => 'Efeitos colaterais';

  @override
  String get groomingType => 'Tipo de tosa/banho';

  @override
  String get shopName => 'Nome do estabelecimento';

  @override
  String get cost => 'Custo';

  @override
  String get nextAppointment => 'Próximo agendamento';

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
  String get dyspnea => 'Dificuldade para respirar';

  @override
  String get seizure => 'Convulsão';

  @override
  String get normal => 'Normal';

  @override
  String get loose => 'Forma anormal';

  @override
  String get hard => 'Cor anormal';

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
  String get earDrops => 'Gotas otológicas';

  @override
  String get vetHospital => 'Clínica veterinária';

  @override
  String get homeScale => 'Balança de casa';

  @override
  String get holdAndWeigh => 'Segurar e pesar';

  @override
  String get veryLittle => 'Muito pouco';

  @override
  String get little => 'Pouco';

  @override
  String get much => 'Muito';

  @override
  String get veryMuch => 'Demais';

  @override
  String get general => 'Geral';

  @override
  String get regularCheckup => 'Check-up de rotina';

  @override
  String get emergency => 'Emergência';

  @override
  String get mild => 'Leve';

  @override
  String get severe => 'Grave';

  @override
  String get bath => 'Banho';

  @override
  String get fullGrooming => 'Tosa completa';

  @override
  String get partialGrooming => 'Tosa higiênica';

  @override
  String get nails => 'Corte de unhas';

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
  String get tail => 'Rabo';

  @override
  String get face => 'Rosto';

  @override
  String get paws => 'Patas';

  @override
  String get important => 'Importante';

  @override
  String get photosAndVideos => 'Fotos e vídeos';

  @override
  String get addMedia => 'Adicionar mídia';

  @override
  String get selectMediaMethod => 'Selecionar método';

  @override
  String get useCamera => 'Usar câmera';

  @override
  String get takePhotoOrVideo => 'Tirar foto ou gravar vídeo';

  @override
  String get chooseFromGallery => 'Escolher da galeria';

  @override
  String get multiSelectHint => 'Você pode selecionar vários';

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
  String get deletePhotoConfirm =>
      'Tem certeza de que deseja excluir esta foto?';

  @override
  String get deleteThisVideo => 'Excluir vídeo';

  @override
  String get deleteVideoConfirm =>
      'Tem certeza de que deseja excluir este vídeo?';

  @override
  String get muted => 'Mudo';

  @override
  String get soundOn => 'Som ativado';

  @override
  String get allowPermissionInSettings =>
      'Por favor, permita o acesso nas Configurações';

  @override
  String get openSettings => 'Abrir Configurações';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String get contactDeveloper => 'Contatar Desenvolvedor';

  @override
  String get contact => 'Contato';

  @override
  String get settingsLabel => 'Configurações';

  @override
  String get exportData => 'Exportar Dados';

  @override
  String get importData => 'Importar Dados';

  @override
  String get sendFeedback => 'Enviar Feedback';

  @override
  String get faq => 'FAQ';

  @override
  String get homeScreen => 'Tela Inicial';

  @override
  String get journalScreen => 'Tela do Diário';

  @override
  String get alarmScreen => 'Tela de Alarmes';

  @override
  String get petManagement => 'Gerenciamento de Pets';

  @override
  String get recordCategories => 'Categorias de Registro';

  @override
  String get whatIsPetNote => 'O que é Pet Note?';

  @override
  String get todayRecordSummary => 'Resumo dos registros de hoje';

  @override
  String get weeklyStats => 'Estatísticas semanais';

  @override
  String get weightChangeChart => 'Gráfico de mudança de peso';

  @override
  String get findNearbyHospitals => 'Encontrar veterinários próximos';

  @override
  String get addNewRecord => 'Adicionar novo registro (+)';

  @override
  String get viewRecordList => 'Ver lista de registros';

  @override
  String get editDeleteRecord => 'Editar e excluir registros';

  @override
  String get attachMedia => 'Anexar fotos/vídeos';

  @override
  String get addAlarm => 'Adicionar alarme';

  @override
  String get repeatAlarm => 'Repetir alarme';

  @override
  String get advanceAlarmHint => 'Aviso antecipado (D-7, D-3, D-1)';

  @override
  String get completeAlarm => 'Concluir alarme';

  @override
  String get deleteAlarm => 'Excluir alarme';

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
  String get notificationSettings => 'Configurações de notificação';

  @override
  String get dogHealthCareGuide => 'Guia de cuidados de saúde para cães';

  @override
  String get catHealthCareGuide => 'Guia de cuidados de saúde para gatos';

  @override
  String get healthGuideSubtitle =>
      'Guia de saúde profissional\nbaseado em recomendações veterinárias.';

  @override
  String get vaccination => 'Vacinação';

  @override
  String get coreVaccines => 'Vacinas essenciais';

  @override
  String get required => 'Obrigatório';

  @override
  String get nonCoreVaccines => 'Vacinas não essenciais';

  @override
  String get recommended => 'Recomendado';

  @override
  String get parasitePrevention => 'Prevenção de parasitas';

  @override
  String get heartworm => 'Verme do coração';

  @override
  String get monthlyFreq => 'Mensal';

  @override
  String get externalParasites => 'Parasitas externos (Pulgas/Carrapatos)';

  @override
  String get internalParasites => 'Parasitas internos';

  @override
  String get threeToSixMonths => 'A cada 3-6 meses';

  @override
  String get nutritionManagement => 'Manejo nutricional';

  @override
  String get dentalCare => 'Cuidados dentários';

  @override
  String get healthCheckup => 'Check-up de saúde';

  @override
  String get emergencySigns => 'Sinais de emergência';

  @override
  String get age => 'Idade';

  @override
  String ageAutoCalculated(String age) {
    return 'Calculado automaticamente · $age';
  }

  @override
  String petAgeMonths(int months) {
    return '$months meses';
  }

  @override
  String petAgeYears(int years) {
    return '$years anos';
  }

  @override
  String petAgeYearsMonths(int years, int months) {
    return '$years anos $months meses';
  }

  @override
  String get checkupCycle => 'Frequência de check-up';

  @override
  String get mainItems => 'Exames principais';

  @override
  String get exerciseLevel => 'Nível de exercício';

  @override
  String get breedExamples => 'Raças representativas';

  @override
  String get low => 'Baixo';

  @override
  String get high => 'Alto';

  @override
  String get menu => 'Menu';

  @override
  String get helloGreeting => 'Olá!';

  @override
  String get healthyTodayMsg => '\nComo está a saúde hoje?';

  @override
  String get noRecordsYet => 'Nenhum registro ainda';

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
  String get weightChange => '⚖️ Mudança de peso';

  @override
  String get noWeightData => 'Sem dados de peso';

  @override
  String get measuredWeight => 'Peso medido';

  @override
  String get noTodayRecords => 'Nenhum registro hoje';

  @override
  String get homeNoRecordHint =>
      'Registre a condição, necessidades e peso\npara acompanhar a saúde.';

  @override
  String noRecordsForDate(String date) {
    return 'Nenhum registro para $date';
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
    return 'Erro ao salvar: $error';
  }

  @override
  String get alarmUpdated => 'Alarme atualizado';

  @override
  String get alarmAdded => 'Alarme adicionado';

  @override
  String get editAlarm => 'Editar alarme';

  @override
  String get deleteAlarmConfirm =>
      'Tem certeza de que deseja excluir este alarme?';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name será excluído.\nAs notificações push programadas também serão canceladas.';
  }

  @override
  String get doneMsg => '✅ Concluído';

  @override
  String get laterMsg => '🕐 Mais tarde';

  @override
  String get saveCompletion => '✅ Salvar como concluído';

  @override
  String completedQuestion(String type) {
    return 'Você concluiu $type?';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'Salvaremos $name automaticamente\nnos registros de hoje.';
  }

  @override
  String completionSaved(String name) {
    return 'Status de conclusão de $name salvo';
  }

  @override
  String get tapAlarmTypeHint => '👆 Toque no tipo de alarme que você precisa';

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
    return '⚠️ $date passou · Toque para reprogramar';
  }

  @override
  String get completedLabel => 'Concluído';

  @override
  String get edit => 'Editar';

  @override
  String recordDeleteCannotUndo(String category) {
    return 'O registro de $category será excluído.\nEsta ação não pode ser desfeita.';
  }

  @override
  String get hintMedicineNameAndDose =>
      '💡 Digite o nome do medicamento e a dose';

  @override
  String get hintMedicineName => '💡 Digite o nome do medicamento';

  @override
  String get hintDose => '💡 Digite a dose';

  @override
  String get hintWeightNumber => '💡 Digite o peso em números';

  @override
  String get hintWeight => '💡 Digite o peso';

  @override
  String get hintWeightIsNumber => '💡 O peso deve ser um número';

  @override
  String get hintWalkTime => '💡 Digite o tempo de passeio';

  @override
  String get hintWalkTimeIsNumber => '💡 O tempo de passeio deve ser um número';

  @override
  String get hintWalkTimeNumber => '💡 Digite o tempo de passeio em números';

  @override
  String get hintSelectBrushingArea =>
      '💡 Selecione pelo menos uma área de escovação';

  @override
  String get hintSelectVaccineType =>
      '💡 Selecione pelo menos um tipo de vacina';

  @override
  String get hintSelectGroomingType =>
      '💡 Selecione pelo menos um tipo de tosa/banho';

  @override
  String get hintSelectSymptomType =>
      '💡 Selecione pelo menos um tipo de sintoma';

  @override
  String get hintTitle => '💡 Digite um título';

  @override
  String get hintVaccineName => '💡 Digite o nome da vacina';

  @override
  String get hintSelectScheduledDate => '💡 Selecione uma data';

  @override
  String get hintSelectScheduledTime => '💡 Selecione um horário';

  @override
  String get hintVisitPurpose => '💡 Digite o motivo da visita';

  @override
  String get hintSelectAppointmentDate => '💡 Selecione a data da consulta';

  @override
  String get hintSelectAppointmentTime => '💡 Selecione a hora da consulta';

  @override
  String get hintMedicineNameInput => '💡 Digite o nome do medicamento';

  @override
  String get hintSelectMedicationDate => '💡 Selecione a data da medicação';

  @override
  String get hintSelectMedicationTime => '💡 Selecione a hora da medicação';

  @override
  String get hintAlarmName => '💡 Digite o nome do alarme';

  @override
  String get hintSelectMealTime => '💡 Selecione a hora da refeição';

  @override
  String get hintSelectAlarmTime => '💡 Selecione a hora do alarme';

  @override
  String get noPetRegisterFirst =>
      'Nenhum pet registrado. Por favor, adicione um no Perfil.';

  @override
  String get alarmRescheduled => 'Alarme reprogramado';

  @override
  String get examplePetName => 'Ex: Bob';

  @override
  String get exampleBreed => 'Ex: Poodle';

  @override
  String get exampleBreedMulti => 'Ex: Poodle, Persa';

  @override
  String get example30 => 'Ex: 30';

  @override
  String get example80 => 'Ex: 80';

  @override
  String get example200 => 'Ex: 200';

  @override
  String get example25 => 'Ex: 2.5';

  @override
  String get example42 => 'Ex: 4.2';

  @override
  String get example35000 => 'Ex: 35000';

  @override
  String get example50000 => 'Ex: 50000';

  @override
  String get enterNameHint => 'Digite o nome';

  @override
  String get addNewPetTitle => 'Adicionar novo pet';

  @override
  String get basicInfo => 'Informações básicas';

  @override
  String get idInfo => 'Informações de identificação';

  @override
  String get idInfoOptional => 'Identificação (Opcional)';

  @override
  String get name => 'Nome';

  @override
  String get petKind => 'Espécie';

  @override
  String get breed => 'Raça';

  @override
  String get weight => 'Peso';

  @override
  String get microchip => 'Número do microchip';

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
  String get done => 'Sim';

  @override
  String get notDone => 'Não';

  @override
  String get notEntered => 'Não informado';

  @override
  String get notRegistered => 'Não registrado';

  @override
  String get dogEmoji => 'Cachorro 🐶';

  @override
  String get catEmoji => 'Gato 🐱';

  @override
  String get otherEmoji => 'Outro 🐾';

  @override
  String get noPetsRegistered => 'Nenhum pet registrado';

  @override
  String get registerPetPrompt =>
      'Registre seu pet\ne vamos cuidar da saúde dele juntos!';

  @override
  String get registerPetBtn => 'Registrar pet';

  @override
  String get editPet => 'Editar informações';

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
    return 'Tem certeza de que deseja excluir $name?';
  }

  @override
  String deletePetWarning(String name) {
    return 'Todos os registros e alarmes de $name serão excluídos e não poderão ser recuperados.';
  }

  @override
  String petDeleted(String name) {
    return '$name foi excluído';
  }

  @override
  String petAdded(String name) {
    return '$name foi adicionado 🐾';
  }

  @override
  String get storeUnavailableMsg =>
      'Não é possível conectar à loja no momento. Por favor, tente novamente mais tarde.';

  @override
  String get checkingPaymentMsg =>
      'Verificando informações de pagamento. Por favor, aguarde um momento e tente novamente.';

  @override
  String get paymentCompleteMsg =>
      'Pagamento concluído. Por favor, insira as informações do novo membro da família.';

  @override
  String get addNewFamilyMember => 'Adicionar novo membro à família?';

  @override
  String get firstPetFreeDesc =>
      'O primeiro pet é registrado gratuitamente. Para adicionar mais pets, é necessário um pagamento único para cada pet adicional.';

  @override
  String petsRegisteredStoreUnavailable(int count) {
    return 'Você tem atualmente $count pets registrados.\nPor favor, tente novamente quando a loja estiver disponível.';
  }

  @override
  String petsRegisteredPayToAdd(int count, String price) {
    return 'Você tem atualmente $count pets registrados.\nVocê pode adicionar um novo membro por $price.';
  }

  @override
  String get maybeLater => 'Talvez mais tarde';

  @override
  String get unavailable => 'Indisponível';

  @override
  String payAndAdd(String price) {
    return 'Pagar $price e adicionar';
  }

  @override
  String get addNextAppointment => '＋ Adicionar próximo agendamento';

  @override
  String get pottyRecordSaved => '💩 Necessidades salvas';

  @override
  String get conditionRecordSaved => '💗 Condição salva';

  @override
  String get medicationRecordSaved => '💊 Medicamento salvo';

  @override
  String get weightRecordSaved => '⚖️ Peso salvo';

  @override
  String get mealRecordSaved => '🍽️ Refeição salva';

  @override
  String get waterRecordSaved => '💧 Água salva';

  @override
  String get vetVisitRecordSaved => '🏥 Visita ao veterinário salva';

  @override
  String get vaccinationRecordSaved => '💉 Vacina salva';

  @override
  String get groomingRecordSaved => '✂️ Tosa/banho salvo';

  @override
  String get brushingRecordSaved => '🪥 Escovação salva';

  @override
  String get walkRecordSaved => '🦮 Passeio salvo';

  @override
  String get memoSaved => '📝 Nota salva';

  @override
  String get abnormalSymptomRecordSaved => '🚨 Sintoma anormal salvo';

  @override
  String get moreQuestions => 'Tem mais dúvidas?';

  @override
  String get contactViaSendFeedback =>
      'Entre em contato conosco via Configurações > Enviar Feedback.\nResponderemos o mais rápido possível 🐾';

  @override
  String get contactViaSendFeedbackLong =>
      'Por favor, entre em contato conosco usando o botão [Enviar Feedback] nas Configurações.\nResponderemos o mais rápido possível.';

  @override
  String get privacyPolicyEffectiveDate =>
      'Esta política de privacidade entra em vigor a partir de 1º de janeiro de 2026.\nÚltima atualização: 8 de maio de 2026';

  @override
  String get privacyCollectedInfo =>
      'As informações coletadas são usadas apenas para os seguintes fins.';

  @override
  String get privacyDataFeatures =>
      'O Pet Note fornece recursos de exportação (backup) e importação (restauração) de dados.';

  @override
  String get privacyPolicyMayUpdate =>
      'Esta política de privacidade pode ser atualizada devido a mudanças na lei ou no serviço.';

  @override
  String get privacyPolicyContact =>
      'Se você tiver alguma dúvida sobre a política de privacidade, entre em contato conosco abaixo.';

  @override
  String get catMeal => 'Refeição';

  @override
  String get catWater => 'Água';

  @override
  String get catGrooming => 'Tosa/Banho';

  @override
  String get catBrushing => 'Escovação';

  @override
  String get catWalk => 'Passeio';

  @override
  String get catHospital => 'Veterinário';

  @override
  String get catAbnormalSymptom => 'Anormal';

  @override
  String get catCondition => 'Condição';

  @override
  String get catPotty => 'Necessidades';

  @override
  String get mealFormTitle => '🍽️ Diário de Refeição';

  @override
  String get walkFormTitle => '🦮 Diário de Passeio';

  @override
  String get weightFormTitle => '⚖️ Diário de Peso';

  @override
  String get waterFormTitle => '💧 Diário de Água';

  @override
  String get medicationFormTitle => '💊 Diário de Medicação';

  @override
  String get groomingFormTitle => '✂️ Diário de Tosa/Banho';

  @override
  String get brushingFormTitle => '🪥 Diário de Escovação';

  @override
  String get conditionFormTitle => '🌡️ Diário de Condição';

  @override
  String get poopFormTitle => '💩 Diário de Necessidades';

  @override
  String get vaccinationFormTitle => '💉 Diário de Vacinação';

  @override
  String get hospitalFormTitle => '🏥 Diário do Veterinário';

  @override
  String get abnormalSymptomFormTitle => '🚨 Diário de Sintomas';

  @override
  String get memoFormTitle => '📝 Nota';

  @override
  String get measureMethod => 'Método de medição';

  @override
  String get feedAmount => 'Quantidade';

  @override
  String get mlInputLabel => 'Inserir mL manualmente';

  @override
  String get alarmRescheduleNote =>
      'A data deste alarme já passou.\nPor favor, selecione uma nova data ou exclua-o.';

  @override
  String get nailTrim => 'Corte de unhas';

  @override
  String get shopNameExample => 'Ex: Pet Shop Feliz';

  @override
  String get poopRecordSaved => '💩 Necessidades salvas';

  @override
  String get memoRecordSaved => '📝 Nota salva';

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
  String get example10 => 'Ex: 10';

  @override
  String get minuteUnit => 'min';

  @override
  String get hospitalNameExample => 'Ex: Clínica Veterinária Feliz';

  @override
  String get diagnosisExample => 'Ex: Enterite, Dermatite';

  @override
  String get memoTitlePlaceholder => 'Digite o título da nota';

  @override
  String get hintMemoTitle => '💡 Digite um título';

  @override
  String get poopType => 'Tipo';

  @override
  String get poopStatus => 'Status';

  @override
  String get feces => 'Fezes';

  @override
  String get bloody => 'Com sangue';

  @override
  String get vaccineDhppl => 'V10/V8 (Cinomose, etc.)';

  @override
  String get vaccineCorona => 'Coronavírus';

  @override
  String get vaccineKennelCough => 'Tosse dos canis';

  @override
  String get vaccineRabies => 'Raiva';

  @override
  String get vaccineInfluenza => 'Gripe';

  @override
  String get vaccineFvrcp => 'V4/V5 (Rinotraqueíte, etc.)';

  @override
  String get vaccineFelv => 'Leucemia (FeLV)';

  @override
  String get vaccineChlamydia => 'Clamídia';

  @override
  String get mute => 'Mudo';

  @override
  String get photoVideo => 'Foto · Vídeo';

  @override
  String photoVideoCount(int count) {
    return 'Foto · Vídeo · $count';
  }

  @override
  String get selectMediaSource => 'Selecionar fonte de mídia';

  @override
  String get cameraCapture => 'Tirar com a câmera';

  @override
  String get cameraCaptureSubtitle => 'Tirar uma foto ou gravar um vídeo';

  @override
  String get selectFromGallery => 'Escolher da galeria';

  @override
  String get selectFromGallerySubtitle => 'Você pode selecionar vários';

  @override
  String get takePhotoSubtitle => 'Tirar uma foto com a câmera';

  @override
  String get recordVideoSubtitle => 'Gravar um vídeo com a câmera';

  @override
  String get permissionRequired =>
      'Por favor, permita o acesso nas Configurações';

  @override
  String get confirmDeletePhoto =>
      'Tem certeza de que deseja excluir esta foto?';

  @override
  String get confirmDeleteVideo =>
      'Tem certeza de que deseja excluir este vídeo?';

  @override
  String get hintMedicineAndDose => '💡 Digite o nome do medicamento e a dose';

  @override
  String deleteRecordBody(String category) {
    return 'O registro de $category será excluído.\nEsta ação não pode ser desfeita.';
  }

  @override
  String dayCountShort(int days) {
    return '$days dias';
  }

  @override
  String get helpIntroContent =>
      'O Pet Note é um aplicativo onde você pode registrar e gerenciar a saúde e a vida diária do seu pet em um só lugar.\nVocê pode registrar facilmente refeições, água, necessidades, peso, medicamentos, visitas ao veterinário e configurar alarmes para não esquecer eventos importantes.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'Veja todos os registros adicionados hoje em um relance. Toque em um registro para ver detalhes ou editá-lo.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'Verifique o número de necessidades, refeições e consumo de água desta semana em gráficos para entender os hábitos do seu pet.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'Mostra as medições de peso recentes em um gráfico para acompanhar facilmente a tendência de peso.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'Toque no botão para pesquisar clínicas veterinárias próximas no mapa.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'Toque no botão \'+\' na parte inferior para selecionar uma categoria e adicionar um novo registro.';

  @override
  String get helpRecordCategoriesIntro =>
      'Você pode registrar a vida diária do seu pet em 12 categorias diferentes.';

  @override
  String get helpCategoryPottyName => 'Necessidades';

  @override
  String get helpCategoryPottyDesc =>
      'Registre a condição e o tipo de fezes/urina. Você também pode anexar fotos.';

  @override
  String get helpCategoryConditionName => 'Condição';

  @override
  String get helpCategoryConditionDesc =>
      'Registre a condição geral de saúde do seu pet.';

  @override
  String get helpCategoryMedicationName => 'Medicamento';

  @override
  String get helpCategoryMedicationDesc =>
      'Registre o nome do medicamento, a dose e o horário.';

  @override
  String get helpCategoryWeightName => 'Peso';

  @override
  String get helpCategoryWeightDesc =>
      'Registre o peso (kg). Você pode verificar a tendência na tela inicial.';

  @override
  String get helpCategoryMealName => 'Refeição';

  @override
  String get helpCategoryMealDesc =>
      'Registre a quantidade e o tipo de refeição. Você pode anexar fotos/vídeos.';

  @override
  String get helpCategoryWaterName => 'Água';

  @override
  String get helpCategoryWaterDesc =>
      'Registre o consumo de água (ml). Você pode anexar fotos/vídeos.';

  @override
  String get helpCategoryHospitalName => 'Veterinário';

  @override
  String get helpCategoryHospitalDesc =>
      'Registre o nome da clínica e o diagnóstico. Você pode anexar fotos/vídeos.';

  @override
  String get helpCategoryVaccinationName => 'Vacina';

  @override
  String get helpCategoryVaccinationDesc =>
      'Registre o tipo de vacina e a data.';

  @override
  String get helpCategoryGroomingName => 'Tosa/Banho';

  @override
  String get helpCategoryGroomingDesc =>
      'Registre os detalhes da tosa/banho e anexe fotos/vídeos.';

  @override
  String get helpCategoryDentalName => 'Escovação';

  @override
  String get helpCategoryDentalDesc =>
      'Registre a condição da escovação e adicione notas.';

  @override
  String get helpCategoryWalkName => 'Passeio';

  @override
  String get helpCategoryWalkDesc =>
      'Registre a distância e a duração do passeio.';

  @override
  String get helpCategoryMemoName => 'Nota';

  @override
  String get helpCategoryMemoDesc => 'Você pode deixar notas em formato livre.';

  @override
  String get helpJournalViewRecordListDesc =>
      'Mostra todos os registros por data. Você pode distingui-los facilmente pelos ícones de categoria.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'Tocar em um registro abre a página de edição. Você pode alterar o conteúdo ou excluir o registro.';

  @override
  String get helpJournalAttachMediaDesc =>
      'Você pode anexar fotos ou vídeos a categorias como Refeição, Água, Veterinário, Tosa/Banho e Necessidades.';

  @override
  String get helpAlarmAddDesc =>
      'Configure alarmes para vacinas, medicamentos, veterinário, tosa/banho, etc. Escolha o tipo primeiro, depois defina a data e a hora.';

  @override
  String get helpAlarmRepeatDesc =>
      'Você pode definir regras de repetição como diária, semanal ou mensal. Ótimo para medicamentos regulares ou prevenção do verme do coração.';

  @override
  String get helpAlarmAdvanceDesc =>
      'Para eventos importantes como vacinas, você pode receber alarmes antecipados 7 dias, 3 dias ou 1 dia antes.';

  @override
  String get helpAlarmCompleteDesc =>
      'Toque em um alarme para marcá-lo como concluído. Alarmes concluídos são movidos para a lista de \'Alarmes Passados\'.';

  @override
  String get helpAlarmDeleteDesc =>
      'Deslize um alarme para a esquerda para excluí-lo.';

  @override
  String get helpPetRegisterDesc =>
      'Registre seu pet inserindo nome, espécie (cachorro/gato), raça, sexo, data de nascimento e status de castração.';

  @override
  String get helpPetEditProfileDesc =>
      'Você pode alterar o nome, raça, peso, número do microchip, número de registro e foto do perfil na tela de Perfil.';

  @override
  String get helpPetManageMultipleDesc =>
      'Você pode registrar vários pets. Toque na etiqueta do pet na parte superior para alternar entre eles.';

  @override
  String get helpDogHealthGuideDesc =>
      'Fornece informações de saúde baseadas em recomendações veterinárias: cronograma de vacinas essenciais/não essenciais, prevenção de parasitas, cuidados dentários, nutrição, etc.';

  @override
  String get helpCatHealthGuideDesc =>
      'Verifique o cronograma de vacinação específico para gatos, prevenção de parasitas, cuidados dentários e informações nutricionais.';

  @override
  String get helpSettingsNotificationDesc =>
      'Ative ou desative todas as notificações do aplicativo.';

  @override
  String get helpSettingsExportDesc =>
      'Exporte todos os dados salvos como um arquivo ZIP. Pode ser usado como backup ao trocar de dispositivo.';

  @override
  String get helpSettingsImportDesc =>
      'Importe um arquivo de backup ZIP salvo anteriormente para restaurar os dados.';

  @override
  String get helpSettingsFeedbackDesc =>
      'Se você tiver problemas ou sugestões, avise-nos por e-mail. Isso nos ajudará a melhorar o aplicativo.';

  @override
  String get helpFaqDeletePetQ =>
      'Se eu excluir um pet, todos os seus registros também serão excluídos?';

  @override
  String get helpFaqDeletePetA =>
      'Sim, se você excluir um pet, todos os seus registros e alarmes também serão excluídos. Por favor, exporte e faça backup dos seus dados antes de excluir.';

  @override
  String get helpFaqMultipleMediaQ =>
      'Posso anexar várias fotos a um único registro?';

  @override
  String get helpFaqMultipleMediaA =>
      'Sim, você pode anexar várias fotos ou vídeos. Você pode selecioná-los da sua galeria ou tirar fotos diretamente com a câmera.';

  @override
  String get helpFaqNoNotificationQ => 'Não estou recebendo alarmes.';

  @override
  String get helpFaqNoNotificationA =>
      'Por favor, verifique se as notificações para o aplicativo Pet Note estão permitidas nas configurações do seu dispositivo. Além disso, verifique se as \'Configurações de notificação\' no aplicativo (Configurações > Notificações) estão ativadas.';

  @override
  String get helpFaqMoveDataQ =>
      'Posso transferir meus dados para um novo dispositivo?';

  @override
  String get helpFaqMoveDataA =>
      'Salve um arquivo de backup via \'Configurações > Exportar Dados\' no seu dispositivo antigo e restaure-o via \'Configurações > Importar Dados\' no seu novo dispositivo.';

  @override
  String get helpFaqMultiplePetsQ => 'Posso registrar vários pets?';

  @override
  String get helpFaqMultiplePetsA =>
      'Você pode registrar um pet gratuitamente. Pets adicionais podem ser adicionados usando recursos premium.';

  @override
  String get privacyIntroBody =>
      'O Pet Note é um aplicativo que pode ser usado sem registro, e todos os dados são salvos apenas no seu dispositivo. Não enviamos suas informações pessoais para servidores externos, mantendo as informações valiosas do seu pet seguras.';

  @override
  String get privacySection1Title => 'Informações Pessoais Coletadas';

  @override
  String get privacySection1Body =>
      'O Pet Note pode ser usado sem registro e não coleta nenhuma informação de identificação pessoal. No entanto, para fornecer os recursos do aplicativo, as seguintes informações podem ser salvas no seu dispositivo.';

  @override
  String get privacyLocalStorageInfo =>
      'Informações salvas localmente no dispositivo';

  @override
  String get privacyPetInfo =>
      'Informações do pet: Nome, espécie, raça, data de nascimento, sexo, peso, status de castração, número do microchip, número de registro';

  @override
  String get privacyHealthRecords =>
      'Registros de saúde: Necessidades, refeição, água, peso, medicamento, vacina, veterinário, tosa/banho, escovação, passeio, condição, notas, etc., inseridos diretamente por você';

  @override
  String get privacyAttachedMedia =>
      'Arquivos de mídia anexados: Fotos e vídeos tirados ou selecionados diretamente por você';

  @override
  String get privacyNotificationSettings =>
      'Configurações de alarme: Tipo de alarme, data e hora programadas, regras de repetição';

  @override
  String get privacyInAppPurchaseTitle => 'Sobre Compras no Aplicativo';

  @override
  String get privacyPaymentProcessing =>
      'O processamento de pagamentos é feito através da Apple App Store ou Google Play Store, e o aplicativo não coleta ou salva diretamente suas informações de pagamento.';

  @override
  String get privacyReceiptVerification =>
      'De acordo com as políticas de cada plataforma, apenas as informações mínimas necessárias para verificação do recibo de compra são processadas.';

  @override
  String get privacySection2Title => 'Finalidade da Coleta e Uso';

  @override
  String get privacyPurposeRecords =>
      'Registrar e visualizar os registros de saúde do pet';

  @override
  String get privacyPurposeStats =>
      'Fornecer estatísticas na tela inicial (status semanal de necessidades, refeição, água, gráfico de mudança de peso, etc.)';

  @override
  String get privacyPurposeReminders =>
      'Enviar alarmes relacionados à saúde, como vacinas, medicamentos, veterinário, etc.';

  @override
  String get privacyPurposeBackupRestore =>
      'Fornecer recursos de backup e restauração de dados';

  @override
  String get privacyPurposePaidEligibility =>
      'Verificar a elegibilidade para usar recursos pagos';

  @override
  String get privacySection3Title => 'Retenção e Destruição de Informações';

  @override
  String get privacyRetentionBody =>
      'Todos os dados do Pet Note são salvos apenas no banco de dados local (SQLite) do seu dispositivo e não são enviados para servidores externos.';

  @override
  String get privacyDataDeletionMethod => 'Método de destruição de dados';

  @override
  String get privacyDeleteInApp =>
      'Você pode excluir diretamente as informações e registros do pet através de \'Configurações > Gerenciamento de Dados\' no aplicativo.';

  @override
  String get privacyDeleteUninstall =>
      'Excluir o aplicativo também excluirá todos os dados salvos no dispositivo.';

  @override
  String get privacyDeleteBackupWarning =>
      'Observe que se você não fizer backup (exportar) antes de excluir o aplicativo, os dados não poderão ser recuperados.';

  @override
  String get privacySection4Title => 'Fornecimento de Informações a Terceiros';

  @override
  String get privacyThirdPartyBody =>
      'O Pet Note não fornece suas informações pessoais a terceiros externos. No entanto, existem as seguintes exceções:';

  @override
  String get privacyThirdPartyUserExport =>
      'Quando você usa o recurso de exportação de dados (compartilhamento de arquivo de backup) por conta própria';

  @override
  String get privacyThirdPartyLegalRequest =>
      'Quando exigido por lei ou houver uma solicitação legal das autoridades competentes';

  @override
  String get privacySection5Title => 'Informações sobre Direitos de Acesso';

  @override
  String get privacyPermissionsBody =>
      'Para fornecer os recursos do aplicativo, podemos solicitar as seguintes permissões. Mesmo que você não conceda as permissões, poderá usar os outros recursos normalmente.';

  @override
  String get privacyPermissionCameraName => 'Câmera';

  @override
  String get privacyPermissionCameraDesc =>
      'Usado para tirar fotos ou gravar vídeos diretamente para anexar aos registros de saúde.';

  @override
  String get privacyPermissionMediaName => 'Acesso a fotos e mídias';

  @override
  String get privacyPermissionMediaDesc =>
      'Usado para selecionar fotos ou vídeos da galeria para anexar aos registros.';

  @override
  String get privacyPermissionNotificationName => 'Notificações';

  @override
  String get privacyPermissionNotificationDesc =>
      'Usado para enviar alarmes relacionados à saúde, como vacinas, medicamentos, veterinário, etc.';

  @override
  String get privacyPermissionFileName => 'Acesso a arquivos (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'Usado para salvar ou carregar arquivos de backup de dados.';

  @override
  String get privacySection6Title => 'Backup e Restauração de Dados';

  @override
  String get privacyBackupExport =>
      'Exportar: Você pode salvar ou compartilhar todos os dados do aplicativo como um arquivo (.zip).';

  @override
  String get privacyBackupImport =>
      'Importar: Você pode carregar um arquivo de backup exportado anteriormente para restaurar os dados.';

  @override
  String get privacyBackupWarning =>
      'O arquivo de backup é gerenciado por você, portanto, tenha cuidado para não compartilhar o arquivo com outras pessoas.';

  @override
  String get privacySection7Title => 'Proteção da Privacidade de Crianças';

  @override
  String get privacyChildrenBody =>
      'O Pet Note não coleta separadamente informações pessoais de crianças menores de 14 anos. Todos os dados do aplicativo são salvos apenas no dispositivo e não são enviados para servidores externos, para que as crianças possam usá-lo com segurança.';

  @override
  String get privacySection8Title => 'Mudanças na Política de Privacidade';

  @override
  String get privacyPolicyChangeNotice =>
      'Se houver alterações, notificaremos você através das notas de atualização do aplicativo ou avisos no aplicativo.';

  @override
  String get privacyPolicyChangeEffective =>
      'A política alterada entrará em vigor 7 dias após a notificação.';

  @override
  String get privacySection9Title => 'Contato';

  @override
  String get hgDogHeroTitle => 'Guia de Saúde para Cães';

  @override
  String get hgCatHeroTitle => 'Guia de Saúde para Gatos';

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
      '**V10/V8 (Múltipla)** — Cinomose, Hepatite, Parvovirose, Parainfluenza, Leptospirose.\n1ª dose às 6-8 semanas, depois a cada 3-4 semanas (total de 3 doses), reforço anual.';

  @override
  String get hgDogCoreRabies =>
      '**Raiva** — 1ª dose a partir dos 3 meses, depois reforço anual (obrigatório por lei em muitas regiões).';

  @override
  String get hgDogCoreCorona =>
      '**Coronavirose** — A partir das 6-8 semanas, 2 doses com intervalo de 3-4 semanas, reforço anual.';

  @override
  String get hgDogNonCoreKennel =>
      '**Tosse dos Canis** — Recomendado para cães que frequentam creches, pet shops ou parques. Intranasal ou injetável.';

  @override
  String get hgDogNonCoreFlu =>
      '**Gripe Canina** — Recomendado se houver muita atividade ao ar livre ou contato frequente com outros cães.';

  @override
  String get hgDogHeartworm1 =>
      'Recomenda-se fazer a prevenção **uma vez por mês** durante a temporada de mosquitos (ou o ano todo em regiões quentes).';

  @override
  String get hgDogHeartworm2 =>
      'Se infectado, o tratamento é difícil e pode ser fatal — **a prevenção é o melhor método**.';

  @override
  String get hgDogHeartworm3 =>
      'Um exame de sangue (resultado negativo) é necessário antes de iniciar a prevenção.';

  @override
  String get hgDogHeartworm4 =>
      'A prevenção durante todo o ano é mais segura (recomendada por veterinários).';

  @override
  String get hgDogExternalParasites1 =>
      'Aplique um tratamento preventivo tópico (spot-on) ou oral **todos os meses**.';

  @override
  String get hgDogExternalParasites2 =>
      'Após o passeio, sempre verifique o interior das orelhas, entre os dedos e as axilas em busca de carrapatos.';

  @override
  String get hgDogExternalParasites3 =>
      'Para remover um carrapato, use uma pinça e puxe-o cuidadosamente para cima (não torça).';

  @override
  String get hgDogInternalParasites1 =>
      'Lombrigas, ancilostomídeos, tricurídeos: Administre um vermífugo **a cada 3 a 6 meses**.';

  @override
  String get hgDogInternalParasites2 =>
      'Filhotes (a partir de 2 semanas): Vermifugar a cada 2 semanas (total de 4 vezes), depois manutenção regular.';

  @override
  String get hgDental1 =>
      'A escovação diária é o ideal — recomendada **pelo menos 3 vezes por semana**.';

  @override
  String get hgDental2 =>
      'Sempre use **pasta de dente específica para pets** (pasta de dente humana com xilitol é estritamente proibida).';

  @override
  String get hgDental3 =>
      'Se houver muito tártaro, é necessária a remoção no veterinário (sob anestesia geral).';

  @override
  String get hgDental4 =>
      'Petiscos dentais e brinquedos de mastigar podem ser usados como cuidados complementares.';

  @override
  String get hgDogForbiddenFoodAlert =>
      'Os seguintes alimentos são tóxicos para cães. Mesmo pequenas quantidades podem ser fatais, nunca os ofereça.';

  @override
  String get hgDogForbiddenGrape =>
      '**Uvas/Uvas-passas** — Causam insuficiência renal, fatais mesmo em pequenas quantidades.';

  @override
  String get hgDogForbiddenChocolate =>
      '**Chocolate/Cacau** — Intoxicação por teobromina, insuficiência cardíaca, convulsões.';

  @override
  String get hgDogForbiddenOnion =>
      '**Cebola/Alho-poró/Alho** — Destroem os glóbulos vermelhos, causando anemia hemolítica.';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xilitol (Adoçante)** — Liberação excessiva de insulina, hipoglicemia, insuficiência hepática.';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Nozes de Macadâmia** — Fraqueza muscular, febre alta, vômitos.';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Massa crua/Álcool** — Intoxicação por etanol, hipoglicemia.';

  @override
  String get hgDogForbiddenAvocado =>
      '**Abacate** — Contém persina, causa vômitos e diarreia.';

  @override
  String get hgEmergencyAlert =>
      'Se os seguintes sintomas ocorrerem, procure um veterinário imediatamente.';

  @override
  String get hgDogEmergency1 => 'Perda total de apetite por mais de 24 horas.';

  @override
  String get hgDogEmergency2 =>
      'Vômitos repetidos ou diarreia 3 vezes ou mais em um dia.';

  @override
  String get hgDogEmergency3 =>
      'Abdômen inchado / tentativas frustradas de vomitar (suspeita de torção gástrica).';

  @override
  String get hgDogEmergency4 =>
      'Dificuldade para respirar, gengivas pálidas, cianose (coloração azulada).';

  @override
  String get hgDogEmergency5 =>
      'Convulsões, ataques epilépticos, perda de consciência.';

  @override
  String get hgDogEmergency6 => 'Incapacidade de urinar por mais de 12 horas.';

  @override
  String get hgDogEmergency7 =>
      'Trauma visível, fraturas ósseas, sangramento intenso.';

  @override
  String get hgDogExerciseAlert =>
      'A falta de exercício em cães não é apenas um problema físico. É a principal causa de estresse, ansiedade e comportamento destrutivo.';

  @override
  String get hgDogWalk1 =>
      'Cães pequenos: recomendado pelo menos **20-30 minutos** por dia. Cães médios/grandes: mais de **1 hora**.';

  @override
  String get hgDogWalk2 =>
      'O passeio não é apenas para as necessidades, mas para **estimulação olfativa, socialização e alívio do estresse**.';

  @override
  String get hgDogWalk3 =>
      'Deixe-os cheirar à vontade — é muito eficaz para aliviar a fadiga mental.';

  @override
  String get hgDogWalk4 =>
      'Cuidado com queimaduras no asfalto no verão — passeios antes das 7h ou à noite são recomendados.';

  @override
  String get hgDogPlay1 =>
      '**Buscar / Cabo de guerra** — Queima energia e fortalece o vínculo com o dono.';

  @override
  String get hgDogPlay2 =>
      '**Trabalho de faro (Nosework)** — Estimula o cérebro, 15 minutos equivalem a 30 minutos de caminhada.';

  @override
  String get hgDogPlay3 =>
      '**Brinquedos interativos/dispensadores de comida** — Eficazes para aliviar a ansiedade de separação quando estão sozinhos.';

  @override
  String get hgDogPlay4 =>
      'Apenas **10-15 minutos** de brincadeira focada por dia podem reduzir significativamente os níveis de estresse.';

  @override
  String get hgDogStress1 =>
      'Destruição de móveis ou objetos, latidos excessivos — sinais de falta de exercício ou estimulação.';

  @override
  String get hgDogStress2 =>
      'Perseguir o próprio rabo, lamber excessivamente (patas ou corpo) — comportamento compulsivo para aliviar o estresse.';

  @override
  String get hgDogStress3 =>
      'Ansiedade excessiva ao se separar do dono, fazer necessidades fora do lugar — suspeita de ansiedade de separação.';

  @override
  String get hgDogStress4 =>
      'Se os sintomas persistirem, recomenda-se consultar um veterinário ou especialista em comportamento.';

  @override
  String get hgDogSocial1 =>
      'De **3 a 14 semanas** é o período de ouro da socialização — é importante expô-los a várias pessoas, sons e ambientes.';

  @override
  String get hgDogSocial2 =>
      'Interação com outros cães — use parques para cães ou aulas para filhotes.';

  @override
  String get hgDogSocial3 =>
      'Explorar novos lugares, cheiros e sons ajuda no enriquecimento mental.';

  @override
  String get hgDogSocial4 =>
      'O treinamento com reforço positivo (clicker, petiscos) estimula o cérebro e fortalece o vínculo.';

  @override
  String get hgCatCoreFvrcp =>
      '**V4/V5 (Múltipla)** — Herpesvírus, Calicivírus, Parvovírus (Panleucopenia).\n1ª dose às 6-8 semanas, depois a cada 3-4 semanas (total de 3 doses), reforço a cada 1 a 3 anos.';

  @override
  String get hgCatCoreRabies =>
      '**Raiva** — Obrigatória para gatos com acesso à rua, recomendada para gatos de interior (obrigatório por lei em muitas regiões).';

  @override
  String get hgCatNonCoreFelv =>
      '**Vírus da Leucemia Felina (FeLV)** — Fortemente recomendada para gatos com acesso à rua ou que vivem com outros gatos.';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Clamidiose Felina** — Em lares com vários gatos, previne conjuntivite.';

  @override
  String get hgCatNonCoreFiv =>
      '**FIV (AIDS Felina)** — Para machos com acesso à rua (transmitida por mordidas).';

  @override
  String get hgCatExternalParasites1 =>
      'Gatos com acesso à rua: Aplique um tratamento preventivo contra pulgas/carrapatos **uma vez por mês**.';

  @override
  String get hgCatExternalParasites2 =>
      'Gatos de interior também podem pegar pulgas através de roupas ou sapatos → prevenção recomendada **a cada 3 meses**.';

  @override
  String get hgCatExternalParasites3 =>
      'Ao usar spot-ons, aplique exatamente na nuca, onde não possam lamber.';

  @override
  String get hgCatInternalHeartworm => 'Parasitas Internos e Verme do Coração';

  @override
  String get hgCatInternalParasites1 =>
      'Lombrigas/Tênias: Administre um vermífugo **a cada 3 a 6 meses**.';

  @override
  String get hgCatInternalParasites2 =>
      'Se alimentados com carne ou peixe cru, exames mais frequentes são recomendados.';

  @override
  String get hgCatHeartworm1 =>
      'Verme do coração — **Não há tratamento para gatos, a prevenção é o único método**. Prevenção mensal fortemente recomendada para gatos com acesso à rua.';

  @override
  String get hgCatMajorDiseases =>
      'Principais doenças felinas a serem observadas';

  @override
  String get hgCatDiseaseAlert =>
      'Os gatos escondem muito bem a dor, os sintomas muitas vezes só aparecem quando a doença já está avançada. Check-ups regulares são essenciais.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Doença do Trato Urinário Inferior (DTUIF)** — Comum em machos. A incapacidade de urinar é uma emergência absoluta.';

  @override
  String get hgCatDiseaseCkd =>
      '**Doença Renal Crônica (DRC)** — Principal causa de morte em gatos idosos. Exames de sangue regulares são essenciais após os 7 anos.';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Diabetes Felina** — Maior risco em gatos obesos ou idosos. Observe o aumento da sede e da urina.';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Hipertireoidismo** — Comum em gatos com mais de 10 anos. Os sintomas incluem perda de peso, apetite voraz e inquietação.';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Estomatite (Inflamação da boca)** — Doença muito comum em gatos. Observe mau hálito, salivação ou perda de apetite.';

  @override
  String get hgCatDiseaseFhv =>
      '**Herpesvírus Felino (FHV-1)** — O vírus permanece latente por toda a vida após a infecção. Reaparece durante o estresse, causando espirros, secreção ocular e conjuntivite.';

  @override
  String get hgHydrationDiet => 'Hidratação e Manejo Nutricional';

  @override
  String get hgCatHydrationAlert =>
      'Os gatos bebem pouca água por natureza, o que os torna propensos a doenças do trato urinário. É muito importante incentivá-los a beber.';

  @override
  String get hgCatHydration1 =>
      'Recomenda-se combinar com ração úmida (sachê ou lata) para complementar a hidratação.';

  @override
  String get hgCatHydration2 =>
      'Eles preferem água corrente — instalar uma **fonte de água** é muito eficaz.';

  @override
  String get hgCatHydration3 =>
      'Coloque a tigela de água longe da tigela de comida; eles preferem tigelas largas e rasas.';

  @override
  String get hgCatHydration4 =>
      'Meta de hidratação: cerca de **40-60 ml** por kg de peso corporal por dia.';

  @override
  String get hgCatForbiddenFoodAlert =>
      'Os seguintes alimentos são tóxicos para gatos. Mesmo pequenas quantidades podem ser fatais, nunca os ofereça.';

  @override
  String get hgCatForbiddenOnion =>
      '**Cebola/Alho-poró/Alho** — Destroem os glóbulos vermelhos, causando anemia hemolítica (mais sensíveis que os cães).';

  @override
  String get hgCatForbiddenGrape =>
      '**Uvas/Uvas-passas** — Causam insuficiência renal.';

  @override
  String get hgCatForbiddenChocolate =>
      '**Chocolate/Cafeína** — Tóxicos para o coração e sistema nervoso.';

  @override
  String get hgCatForbiddenRawFish =>
      '**Peixe cru (alimentação contínua)** — Causa deficiência de tiamina (Vitamina B1).';

  @override
  String get hgCatForbiddenMilk =>
      '**Leite/Laticínios** — Gatos adultos são intolerantes à lactose, o que causa diarreia.';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xilitol/Álcool** — Tóxicos para o fígado e sistema nervoso.';

  @override
  String get hgCatForbiddenAvocado =>
      '**Abacate** — Contém persina, causa vômitos e diarreia.';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Clara de ovo crua** — A avidina bloqueia a absorção de biotina, causando problemas de pele e pelagem.';

  @override
  String get hgCatEmergency1 =>
      '**Incapacidade total de urinar ou sangue na urina** — Emergência devido a obstrução uretral (especialmente em machos).';

  @override
  String get hgCatEmergency2 =>
      'Perda total de apetite por mais de 24 horas (risco de lipidose hepática / gordura no fígado).';

  @override
  String get hgCatEmergency3 =>
      '**Respirar com a boca aberta** — Nunca é normal em gatos e requer atendimento de emergência imediato.';

  @override
  String get hgCatEmergency4 =>
      'Paralisia repentina ou frieza nas patas traseiras (suspeita de trombose).';

  @override
  String get hgCatEmergency5 =>
      'Convulsões, ataques epilépticos, perda de consciência.';

  @override
  String get hgCatEmergency6 =>
      'Gengivas ou língua pálidas ou amareladas (icterícia).';

  @override
  String get hgCatEmergency7 =>
      'Vômitos repetidos ou diarreia 3 vezes ou mais em um dia, ou sangue nas fezes/vômito.';

  @override
  String get hgCatEmergency8 =>
      'Trauma visível, fraturas ósseas, sangramento intenso.';

  @override
  String get hgEnvironmentMentalHealth => 'Ambiente e Saúde Mental';

  @override
  String get hgIndoorEnvironment => 'Manejo do Ambiente Interno';

  @override
  String get hgStressManagement => 'Gerenciamento de Estresse';

  @override
  String get hgCatEnvironment1 =>
      '**Caixas de areia**: Pelo menos o número de gatos + 1, mantenha-as limpas diariamente.';

  @override
  String get hgCatEnvironment2 =>
      '**Arranhadores**: Pelo menos 2 ou mais (combinação de tipos verticais e horizontais).';

  @override
  String get hgCatEnvironment3 =>
      '**Lugares altos**: Forneça espaços verticais como árvores para gatos ou prateleiras (satisfaz o instinto territorial).';

  @override
  String get hgCatEnvironment4 =>
      '**Esconderijos**: Forneça espaços seguros para se esconder, como caixas ou túneis.';

  @override
  String get hgCatStress1 =>
      'O estresse em gatos leva diretamente ao enfraquecimento do sistema imunológico, doenças do trato urinário, recorrência de herpes, etc.';

  @override
  String get hgCatStress2 =>
      'Durante mudanças repentinas (mudança de casa, novos membros da família, etc.), use difusores de feromônios (Feliway).';

  @override
  String get hgCatStress3 =>
      'Proporcione pelo menos **10-15 minutos** de brincadeira interativa com uma varinha todos os dias.';

  @override
  String get hgCatStress4 =>
      'Lares com vários gatos: Separe os recursos (tigelas, caixas de areia, camas) de acordo com o número de gatos.';

  @override
  String get hgAge => 'Idade';

  @override
  String get hgCheckupCycle => 'Frequência de check-up';

  @override
  String get hgMainItems => 'Exames principais';

  @override
  String get hgAge1to6 => '1 a 6 anos';

  @override
  String get hgAge7to10 => '7 a 10 anos';

  @override
  String get hgAge11Plus => '11 anos ou mais';

  @override
  String get hgYearlyOnce => '1 vez por ano';

  @override
  String get hgYearlyTwice => '2 vezes por ano';

  @override
  String get hgEvery3to4Months => 'A cada 3-4 meses';

  @override
  String get hgDogCheckupItems1 =>
      'Exame de sangue, auscultação cardíaca, peso, dentes';

  @override
  String get hgDogCheckupItems2 =>
      'Sangue, urina, raio-X, pressão arterial, articulações';

  @override
  String get hgDogCheckupItems3 =>
      'Hemograma completo, ultrassom, função renal/hepática';

  @override
  String get hgCatCheckupItems1 =>
      'Exame de sangue, exame de urina, peso, dentes';

  @override
  String get hgCatCheckupItems2 =>
      'Valores renais/hepáticos, pressão arterial, tireoide (T4)';

  @override
  String get hgCatCheckupItems3 =>
      'Hemograma completo, ultrassom abdominal, monitoramento renal intensivo';

  @override
  String get hgExerciseAmount => 'Nível de Atividade';

  @override
  String get hgBreedExamples => 'Raças típicas';

  @override
  String get hgLow => 'Baixo';

  @override
  String get hgNormal => 'Normal';

  @override
  String get hgHigh => 'Alto';

  @override
  String get hgBreedLowExamples => 'Buldogue, Basset Hound, Shih Tzu, Maltês';

  @override
  String get hgBreedNormalExamples =>
      'Poodle, Bichon Frisé, Cocker Spaniel, Beagle';

  @override
  String get hgBreedHighExamples =>
      'Labrador, Golden Retriever, Husky, Border Collie';

  @override
  String get hgDisclaimer =>
      'Este guia fornece informações gerais de saúde. Os cuidados necessários podem variar dependendo da condição específica do seu pet. Em caso de sintomas anormais ou necessidade de tratamento, sempre consulte um veterinário.';

  @override
  String get categoryFilter => 'Filtro de Categoria';

  @override
  String get selectAll => 'Selecionar tudo';

  @override
  String get deselectAll => 'Desmarcar tudo';

  @override
  String get apply => 'Aplicar';

  @override
  String get saving => 'Salvando...';

  @override
  String get treatmentContent => 'Tratamento';

  @override
  String get conditionScoreWord1 => 'Muito ruim';

  @override
  String get conditionScoreWord2 => 'Ruim';

  @override
  String get conditionScoreWord3 => 'Regular';

  @override
  String get conditionScoreWord4 => 'Bom';

  @override
  String get conditionScoreWord5 => 'Muito bom';

  @override
  String conditionScoreFormat(Object score, Object word) {
    return 'Pontuação $score - $word';
  }
}
