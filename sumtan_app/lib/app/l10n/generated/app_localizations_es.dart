// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Pet Sumtan';

  @override
  String get appTagline => 'App de salud para mascotas';

  @override
  String get navHome => 'Inicio';

  @override
  String get navJournal => 'Diario';

  @override
  String get navNotifications => 'Alertas';

  @override
  String get navProfile => 'Perfil';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get navAddAlarm => 'Añadir alerta';

  @override
  String get drawerService => 'Servicios';

  @override
  String get drawerNearbyHospitals => 'Veterinarios cercanos';

  @override
  String get drawerNearbyHospitalsSub => 'Clínicas veterinarias cerca de ti';

  @override
  String get drawerHealthGuide => 'Guía de salud';

  @override
  String get drawerHealthGuideSub => 'Manual de salud para mascotas';

  @override
  String get drawerApp => 'Aplicación';

  @override
  String get drawerHelp => 'Ayuda';

  @override
  String get dialogExternalTitle => 'Abrir página externa';

  @override
  String get dialogExternalHospitalBody =>
      'Para buscar hospitales cercanos, necesitamos abrir una página web externa.\n\n¿Quieres abrirla ahora?';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonGo => 'Ir';

  @override
  String get commonDelete => 'Eliminar';

  @override
  String get commonSave => 'Guardar';

  @override
  String get commonLoading => 'Cargando...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'Toca de nuevo para salir';

  @override
  String get toastNeedPet =>
      'Aún no tienes mascotas. Añade una en tu Perfil primero.';

  @override
  String get settingsNotifications => 'Notificaciones';

  @override
  String get settingsPushNotifications => 'Permitir notificaciones push';

  @override
  String get settingsPushNotificationsSub =>
      'Permisos de notificación del dispositivo';

  @override
  String get settingsLanguageSection => 'Idioma';

  @override
  String get settingsLanguage => 'Idioma de la app';

  @override
  String get settingsLanguageSystem => 'Idioma del sistema';

  @override
  String get settingsLanguageChanged => 'Idioma de la aplicación cambiado';

  @override
  String get settingsData => 'Gestión de datos';

  @override
  String get settingsExport => 'Exportar datos';

  @override
  String get settingsExportSub => 'Guardar como archivo ZIP';

  @override
  String get settingsImport => 'Importar datos';

  @override
  String get settingsImportSub => 'Restaurar desde archivo ZIP';

  @override
  String get settingsAppInfo => 'Información de la app';

  @override
  String get settingsVersion => 'Versión de la app';

  @override
  String get settingsPrivacy => 'Política de privacidad';

  @override
  String get settingsFeedback => 'Enviar comentarios';

  @override
  String get settingsFeedbackSubject => 'Comentarios sobre Pet Sumtan';

  @override
  String get settingsEmailAppMissing =>
      'No se encontró ninguna aplicación de correo';

  @override
  String get settingsImportConfirmBody =>
      'Todos los datos actuales se eliminarán y serán reemplazados por el contenido del archivo de copia de seguridad.\n\n¿Deseas continuar?';

  @override
  String get settingsImportAction => 'Importar';

  @override
  String get settingsImporting => 'Importando datos...';

  @override
  String get settingsImportSuccess => 'Datos de copia de seguridad restaurados';

  @override
  String get settingsImportFailed => 'Error al importar';

  @override
  String get settingsExportTitle => 'Exportar datos';

  @override
  String get settingsExportBenefitTitle =>
      'Guarda tus registros de forma segura';

  @override
  String get settingsExportBenefitPets =>
      'Perfiles y fotos de todas tus mascotas';

  @override
  String get settingsExportBenefitRecords =>
      'Todos los registros médicos, diarios y peso';

  @override
  String get settingsExportBenefitMedia => 'Incluye imágenes y vídeos adjuntos';

  @override
  String get settingsStoreUnavailable =>
      'No se puede conectar a la tienda en este momento.\nInténtalo de nuevo más tarde.';

  @override
  String settingsPayAndExport(String price) {
    return 'Pagar $price y exportar';
  }

  @override
  String get settingsUnlocked => 'Desbloqueado';

  @override
  String get settingsExportUnlockedBody =>
      'Guarda toda la información y registros de tus mascotas como un archivo ZIP.\nPuedes importar y restaurar este archivo gratis en cualquier momento.';

  @override
  String get settingsExporting => 'Exportando...';

  @override
  String get settingsExportZip => 'Exportar como ZIP';

  @override
  String get settingsExportConfirmBody =>
      'Exportar toda la información, registros y archivos multimedia como un archivo ZIP.';

  @override
  String get settingsExportAction => 'Exportar';

  @override
  String get settingsExportSuccess =>
      'Archivo de copia de seguridad listo para compartir';

  @override
  String get settingsExportFailed => 'Error al exportar';

  @override
  String get settingsPurchaseFailed => 'Error en el pago';

  @override
  String get settingsPurchaseProductLoadFailed =>
      'No se pudo cargar la información del producto. Inténtalo de nuevo más tarde.';

  @override
  String get settingsPurchaseStartFailed =>
      'No se pudo iniciar el pago. Inténtalo de nuevo más tarde.';

  @override
  String get errorDbInit =>
      'Hubo un problema al preparar los datos de la app.\nInténtalo de nuevo más tarde.';

  @override
  String get help => 'Ayuda';

  @override
  String get healthGuide => 'Guía de salud';

  @override
  String get dog => 'Perro';

  @override
  String get cat => 'Gato';

  @override
  String get tabDog => '🐶 Perro';

  @override
  String get tabCat => '🐱 Gato';

  @override
  String get savedMsg => 'Guardado';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get deleteAction => 'Eliminar';

  @override
  String get save => 'Guardar';

  @override
  String get memo => 'Nota';

  @override
  String get memoPlaceholder => 'Añade una nota aquí';

  @override
  String get addBtn => '＋ Añadir';

  @override
  String get errorOccurred => 'Ha ocurrido un error';

  @override
  String errorOccurredWithDetail(String error) {
    return 'Ha ocurrido un error\n$error';
  }

  @override
  String get pet => 'Mascota';

  @override
  String get selectPet => 'Seleccionar mascota';

  @override
  String get addNewPet => 'Añadir nueva mascota';

  @override
  String get noAlarms => 'No hay alertas';

  @override
  String alarmEmptyDesc(String petName) {
    return 'Cuidemos la salud de $petName hoy.\nToca \'Añadir alerta\' abajo para empezar.';
  }

  @override
  String get scheduledAlarms => 'Alertas programadas';

  @override
  String get swipeToDelete => 'Desliza para eliminar';

  @override
  String get selectAlarmType => 'Seleccionar tipo de alerta';

  @override
  String get vetAppointment => 'Cita veterinaria';

  @override
  String get medication => 'Medicación';

  @override
  String get mealTime => 'Hora de comer';

  @override
  String get dailyReminder => 'Recordatorio diario';

  @override
  String get alarmLabel => 'Alerta';

  @override
  String get notificationChannelName => 'Alertas de Pet Sumtan';

  @override
  String get notificationChannelDescription =>
      'Recordatorios de cuidado de mascotas';

  @override
  String alarmNotificationTitle(String type) {
    return 'Alerta de $type';
  }

  @override
  String get alarmBodyVaccination =>
      'Por favor, comprueba la fecha de vacunación.';

  @override
  String get alarmBodyVetAppointment => 'Tu cita veterinaria se acerca.';

  @override
  String get alarmBodyMedication => 'Es hora de la medicación.';

  @override
  String get alarmBodyMealTime => 'No olvides la hora de comer.';

  @override
  String get alarmBodyDailyReminder =>
      'Por favor, añade tu registro de salud de hoy.';

  @override
  String get alarmBodyDefault => 'Recordatorio de cuidado de tu mascota.';

  @override
  String get alarmDeleted => 'Alerta eliminada';

  @override
  String get hidePastAlarms => 'Ocultar alertas pasadas';

  @override
  String get showPastAlarms => 'Mostrar alertas pasadas';

  @override
  String get deleteAll => 'Eliminar todo';

  @override
  String get deletePastAlarms => 'Eliminar alertas pasadas';

  @override
  String deletePastAlarmsConfirm(int count) {
    return '¿Estás seguro de que quieres eliminar las $count alertas pasadas?';
  }

  @override
  String get pastAlarmsDeleted =>
      'Todas las alertas pasadas han sido eliminadas';

  @override
  String get pastLabel => 'Pasadas';

  @override
  String get today => 'Hoy';

  @override
  String get tomorrowSameTime => 'Mañana a la misma hora';

  @override
  String get snoozeQuestion => '¿Cuándo te lo recordamos de nuevo?';

  @override
  String get snooze5min => 'En 5 minutos';

  @override
  String get snooze10min => 'En 10 minutos';

  @override
  String get snooze30min => 'En 30 minutos';

  @override
  String get snooze1hour => 'En 1 hora';

  @override
  String get snooze3hour => 'En 3 horas';

  @override
  String get snoozeCustom => 'Elegir hora';

  @override
  String get snoozeAtThisTime => 'Recordar a esta hora';

  @override
  String snoozeConfirm(String time) {
    return 'Te lo recordaremos a las $time';
  }

  @override
  String get selectFutureTime => 'Por favor, selecciona una hora futura';

  @override
  String recordCheckHint(String typeLabel) {
    return 'Puedes comprobarlo en Diario > $typeLabel.';
  }

  @override
  String get pushAlsoCancel =>
      'Las notificaciones push programadas también se cancelarán.';

  @override
  String get reschedule => 'Reprogramar';

  @override
  String get deleteThisAlarm => 'Eliminar esta alerta';

  @override
  String get vaccineNameRequired => 'Nombre de la vacuna *';

  @override
  String get vaccineNameExample => 'Ej: Rabia, Polivalente';

  @override
  String get scheduledDateRequired => 'Fecha *';

  @override
  String get reminderTiming => 'Cuándo avisar';

  @override
  String get sameDay => 'El mismo día';

  @override
  String get reminderTimeRequired => 'Hora de la alerta *';

  @override
  String get memoInputHint => 'Introduce una nota';

  @override
  String get visitPurposeRequired => 'Motivo de la visita *';

  @override
  String get visitPurposeExample => 'Ej: Revisión general, Problema de piel';

  @override
  String get appointmentDateTimeRequired => 'Fecha y hora de la cita *';

  @override
  String get hospitalName => 'Nombre de la clínica';

  @override
  String get hospitalNameHint => 'Introduce el nombre de la clínica';

  @override
  String get medicineNameRequired => 'Nombre del medicamento *';

  @override
  String get medicineNameExample => 'Ej: Desparasitante, Gusano del corazón';

  @override
  String get doseExample => 'Ej: 0.5ml, 1 pastilla';

  @override
  String get repeatRequired => 'Repetir *';

  @override
  String get none => 'Ninguno';

  @override
  String get daily => 'Diariamente';

  @override
  String get weekly => 'Semanalmente';

  @override
  String get monthly => 'Mensualmente';

  @override
  String get weekdays => 'Días laborables';

  @override
  String get weekdaysOnly => 'Solo días laborables';

  @override
  String get weekends => 'Fines de semana';

  @override
  String get weekendsOnly => 'Solo fines de semana';

  @override
  String get medicationDateTimeRequired => 'Fecha y hora de medicación *';

  @override
  String get medicationTimeRequired => 'Hora de medicación *';

  @override
  String get alarmNameRequired => 'Nombre de la alerta *';

  @override
  String get mealTimeExample => 'Ej: Desayuno, Cena';

  @override
  String get mealTimeRequired => 'Hora de comer *';

  @override
  String get alarmMessage => 'Mensaje de la alerta';

  @override
  String get alarmMessageExample => 'Ej: ¿Ya has añadido el registro de hoy?';

  @override
  String get alarmPastDueMsg =>
      'La fecha de esta alerta ya ha pasado.\nPor favor, selecciona una nueva fecha o elimínala.';

  @override
  String get reselectDate => 'Volver a seleccionar fecha';

  @override
  String get selectDate => 'Seleccionar fecha';

  @override
  String get selectTime => 'Seleccionar hora';

  @override
  String get todayStatus => 'Estado de hoy';

  @override
  String get addRecord => '＋ Añadir registro';

  @override
  String get todayReminders => 'Recordatorios de hoy';

  @override
  String get todayRecords => 'Registros de hoy';

  @override
  String get viewAll => 'Ver todo';

  @override
  String get weekStats => 'Estadísticas semanales';

  @override
  String get pottyCount => 'Baño';

  @override
  String get mealCount => 'Comidas';

  @override
  String get waterLevel => 'Agua';

  @override
  String get timesUnit => 'veces';

  @override
  String get mealsUnit => 'veces';

  @override
  String get pointsUnit => 'pt';

  @override
  String get recordDeleted => 'Registro eliminado';

  @override
  String get recordUpdated => 'Registro actualizado';

  @override
  String get deleteRecordConfirm =>
      '¿Seguro que quieres eliminar este registro?';

  @override
  String get deleteConfirmBody => '¡Una vez eliminado, no se puede recuperar!';

  @override
  String get deleteConfirmOk => 'Eliminar';

  @override
  String get deleteThisRecord => 'Eliminar este registro';

  @override
  String get typeLabel => 'Tipo';

  @override
  String get statusLabel => 'Estado';

  @override
  String get conditionScore => 'Puntuación de estado';

  @override
  String get symptomTags => 'Etiquetas de síntomas';

  @override
  String get medicineName => 'Nombre del medicamento';

  @override
  String get dose => 'Dosis';

  @override
  String get medicationMethod => 'Método de administración';

  @override
  String get weightKg => 'Peso (kg)';

  @override
  String get measurementMethod => 'Método de medición';

  @override
  String get mealAmount => 'Cantidad de comida';

  @override
  String get servingAmount => 'Porción';

  @override
  String get waterAmount => 'Cantidad de agua';

  @override
  String get visitType => 'Tipo de visita';

  @override
  String get diagnosisName => 'Diagnóstico';

  @override
  String get vaccineType => 'Tipo de vacuna';

  @override
  String get abnormalSymptomType => 'Tipo de síntoma anormal';

  @override
  String get customSymptom => 'Otro síntoma';

  @override
  String get customSymptomPlaceholder => 'Describe el síntoma';

  @override
  String get sideEffects => 'Efectos secundarios';

  @override
  String get groomingType => 'Tipo de aseo';

  @override
  String get shopName => 'Nombre del local';

  @override
  String get cost => 'Coste';

  @override
  String get nextAppointment => 'Próxima cita';

  @override
  String get brushingArea => 'Área de cepillado';

  @override
  String get duration => 'Duración';

  @override
  String get walkTime => 'Tiempo de paseo';

  @override
  String get distance => 'Distancia';

  @override
  String get title => 'Título';

  @override
  String get priority => 'Prioridad';

  @override
  String get stool => 'Heces';

  @override
  String get urine => 'Orina';

  @override
  String get vomiting => 'Vómito';

  @override
  String get bleeding => 'Sangrado';

  @override
  String get dyspnea => 'Dificultad para respirar';

  @override
  String get seizure => 'Convulsión/Ataque';

  @override
  String get normal => 'Normal';

  @override
  String get loose => 'Blando';

  @override
  String get hard => 'Duro';

  @override
  String get bloodInStool => 'Sangre en heces';

  @override
  String get cough => 'Tos';

  @override
  String get lethargy => 'Letargo';

  @override
  String get lossOfAppetite => 'Pérdida de apetito';

  @override
  String get diarrhea => 'Diarrea';

  @override
  String get runnyNose => 'Secreción nasal';

  @override
  String get sneezing => 'Estornudos';

  @override
  String get trembling => 'Temblores';

  @override
  String get bloodInUrine => 'Sangre en orina';

  @override
  String get oral => 'Oral';

  @override
  String get injection => 'Inyección';

  @override
  String get topical => 'Tópico';

  @override
  String get eyeDrops => 'Gotas para los ojos';

  @override
  String get earDrops => 'Gotas para los oídos';

  @override
  String get vetHospital => 'Clínica veterinaria';

  @override
  String get homeScale => 'Báscula en casa';

  @override
  String get holdAndWeigh => 'Sostener y pesar';

  @override
  String get veryLittle => 'Muy poco';

  @override
  String get little => 'Poco';

  @override
  String get much => 'Mucho';

  @override
  String get veryMuch => 'Muchísimo';

  @override
  String get general => 'General';

  @override
  String get regularCheckup => 'Revisión regular';

  @override
  String get emergency => 'Emergencia';

  @override
  String get mild => 'Leve';

  @override
  String get severe => 'Grave';

  @override
  String get bath => 'Baño';

  @override
  String get fullGrooming => 'Corte completo';

  @override
  String get partialGrooming => 'Corte parcial';

  @override
  String get nails => 'Corte de uñas';

  @override
  String get earCleaning => 'Limpieza de oídos';

  @override
  String get tartarRemoval => 'Limpieza dental';

  @override
  String get analGlands => 'Glándulas anales';

  @override
  String get all => 'Todo';

  @override
  String get back => 'Espalda';

  @override
  String get belly => 'Barriga';

  @override
  String get tail => 'Cola';

  @override
  String get face => 'Cara';

  @override
  String get paws => 'Patas';

  @override
  String get important => 'Importante';

  @override
  String get photosAndVideos => 'Fotos y vídeos';

  @override
  String get addMedia => 'Añadir multimedia';

  @override
  String get selectMediaMethod => 'Seleccionar método';

  @override
  String get useCamera => 'Usar cámara';

  @override
  String get takePhotoOrVideo => 'Hacer foto o grabar vídeo';

  @override
  String get chooseFromGallery => 'Elegir de la galería';

  @override
  String get multiSelectHint => 'Puedes seleccionar varios';

  @override
  String get takePhoto => 'Hacer foto';

  @override
  String get takePhotoDesc => 'Hacer una foto con la cámara';

  @override
  String get recordVideo => 'Grabar vídeo';

  @override
  String get recordVideoDesc => 'Grabar un vídeo con la cámara';

  @override
  String get deleteThisPhoto => 'Eliminar foto';

  @override
  String get deletePhotoConfirm => '¿Seguro que quieres eliminar esta foto?';

  @override
  String get deleteThisVideo => 'Eliminar vídeo';

  @override
  String get deleteVideoConfirm => '¿Seguro que quieres eliminar este vídeo?';

  @override
  String get muted => 'Silenciado';

  @override
  String get soundOn => 'Sonido activado';

  @override
  String get allowPermissionInSettings =>
      'Por favor, permite el acceso en Ajustes';

  @override
  String get openSettings => 'Abrir Ajustes';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get contactDeveloper => 'Contactar al desarrollador';

  @override
  String get contact => 'Contacto';

  @override
  String get settingsLabel => 'Ajustes';

  @override
  String get exportData => 'Exportar datos';

  @override
  String get importData => 'Importar datos';

  @override
  String get sendFeedback => 'Enviar comentarios';

  @override
  String get faq => 'Preguntas frecuentes';

  @override
  String get homeScreen => 'Pantalla de inicio';

  @override
  String get journalScreen => 'Pantalla de diario';

  @override
  String get alarmScreen => 'Pantalla de alertas';

  @override
  String get petManagement => 'Gestión de mascotas';

  @override
  String get recordCategories => 'Categorías de registros';

  @override
  String get whatIsPetSumtan => '¿Qué es Pet Sumtan?';

  @override
  String get todayRecordSummary => 'Resumen de registros de hoy';

  @override
  String get weeklyStats => 'Estadísticas semanales';

  @override
  String get weightChangeChart => 'Gráfico de cambio de peso';

  @override
  String get findNearbyHospitals => 'Buscar veterinarios cercanos';

  @override
  String get addNewRecord => 'Añadir nuevo registro (+)';

  @override
  String get viewRecordList => 'Ver lista de registros';

  @override
  String get editDeleteRecord => 'Editar y eliminar registros';

  @override
  String get attachMedia => 'Adjuntar fotos/vídeos';

  @override
  String get addAlarm => 'Añadir alerta';

  @override
  String get repeatAlarm => 'Repetir alerta';

  @override
  String get advanceAlarmHint => 'Aviso anticipado (D-7, D-3, D-1)';

  @override
  String get completeAlarm => 'Completar alerta';

  @override
  String get deleteAlarm => 'Eliminar alerta';

  @override
  String get registerPet => 'Registrar mascota';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get manageMultiplePets => 'Gestionar varias mascotas';

  @override
  String get dogHealthGuide => 'Guía de salud para perros';

  @override
  String get catHealthGuide => 'Guía de salud para gatos';

  @override
  String get notificationSettings => 'Ajustes de notificaciones';

  @override
  String get dogHealthCareGuide => 'Guía de cuidado de salud para perros';

  @override
  String get catHealthCareGuide => 'Guía de cuidado de salud para gatos';

  @override
  String get healthGuideSubtitle =>
      'Guía de salud profesional\nbasada en recomendaciones veterinarias.';

  @override
  String get vaccination => 'Vacunación';

  @override
  String get coreVaccines => 'Vacunas esenciales';

  @override
  String get required => 'Obligatorio';

  @override
  String get nonCoreVaccines => 'Vacunas no esenciales';

  @override
  String get recommended => 'Recomendado';

  @override
  String get parasitePrevention => 'Prevención de parásitos';

  @override
  String get heartworm => 'Gusano del corazón';

  @override
  String get monthlyFreq => 'Mensual';

  @override
  String get externalParasites => 'Parásitos externos (Pulgas/Garrapatas)';

  @override
  String get internalParasites => 'Parásitos internos';

  @override
  String get threeToSixMonths => 'Cada 3-6 meses';

  @override
  String get nutritionManagement => 'Manejo nutricional';

  @override
  String get dentalCare => 'Cuidado dental';

  @override
  String get healthCheckup => 'Revisión de salud';

  @override
  String get emergencySigns => 'Señales de emergencia';

  @override
  String get age => 'Edad';

  @override
  String ageAutoCalculated(String age) {
    return 'Cálculo automático · $age';
  }

  @override
  String petAgeMonths(int months) {
    return '$months meses';
  }

  @override
  String petAgeYears(int years) {
    return '$years años';
  }

  @override
  String petAgeYearsMonths(int years, int months) {
    return '$years años $months meses';
  }

  @override
  String get checkupCycle => 'Frecuencia de revisión';

  @override
  String get mainItems => 'Pruebas principales';

  @override
  String get exerciseLevel => 'Nivel de ejercicio';

  @override
  String get breedExamples => 'Razas representativas';

  @override
  String get low => 'Bajo';

  @override
  String get high => 'Alto';

  @override
  String get menu => 'Menú';

  @override
  String get helloGreeting => '¡Hola!';

  @override
  String get healthyTodayMsg => '\n¿Cómo está la salud hoy?';

  @override
  String get noRecordsYet => 'Aún no hay registros';

  @override
  String lastRecord(String time) {
    return 'Último registro · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return 'Media $value$unit/día';
  }

  @override
  String get weightTrend => '⚖️ Tendencia de peso';

  @override
  String get weightChange => '⚖️ Cambio de peso';

  @override
  String get noWeightData => 'Aún no hay datos de peso';

  @override
  String get measuredWeight => 'Peso medido';

  @override
  String get noTodayRecords => 'Aún no hay registros de hoy';

  @override
  String get homeNoRecordHint =>
      'Registra su estado, baño y peso\npara cuidar su salud.';

  @override
  String noRecordsForDate(String date) {
    return 'No hay registros para el $date';
  }

  @override
  String recordsForDate(String date, String count) {
    return 'Registros del $date ($count)';
  }

  @override
  String get daySun => 'Dom';

  @override
  String get dayMon => 'Lun';

  @override
  String get dayTue => 'Mar';

  @override
  String get dayWed => 'Mié';

  @override
  String get dayThu => 'Jue';

  @override
  String get dayFri => 'Vie';

  @override
  String get daySat => 'Sáb';

  @override
  String get whatToRecord => '📝 ¿Qué quieres registrar?';

  @override
  String saveErrorMsg(String error) {
    return 'Error al guardar: $error';
  }

  @override
  String get alarmUpdated => 'Alerta actualizada';

  @override
  String get alarmAdded => 'Alerta añadida';

  @override
  String get editAlarm => 'Editar alerta';

  @override
  String get deleteAlarmConfirm => '¿Seguro que quieres eliminar esta alerta?';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name será eliminada.\nLas notificaciones push programadas también se cancelarán.';
  }

  @override
  String get doneMsg => '✅ Hecho';

  @override
  String get laterMsg => '🕐 Más tarde';

  @override
  String get saveCompletion => '✅ Guardar como completado';

  @override
  String completedQuestion(String type) {
    return '¿Has completado $type?';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'Guardaremos automáticamente $name\nen los registros de hoy.';
  }

  @override
  String completionSaved(String name) {
    return 'Estado completado de $name guardado';
  }

  @override
  String get tapAlarmTypeHint => '👆 Toca el tipo de alerta que necesites';

  @override
  String countUnit(int count) {
    return '$count';
  }

  @override
  String dateCompleted(String date) {
    return '$date · Completado';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date pasó · Toca para reprogramar';
  }

  @override
  String get completedLabel => 'Completado';

  @override
  String get edit => 'Editar';

  @override
  String recordDeleteCannotUndo(String category) {
    return 'El registro de $category será eliminado.\nEsta acción no se puede deshacer.';
  }

  @override
  String get hintMedicineNameAndDose =>
      '💡 Introduce el nombre del medicamento y la dosis';

  @override
  String get hintMedicineName => '💡 Introduce el nombre del medicamento';

  @override
  String get hintDose => '💡 Introduce la dosis';

  @override
  String get hintWeightNumber => '💡 Introduce el peso usando números';

  @override
  String get hintWeight => '💡 Introduce el peso';

  @override
  String get hintWeightIsNumber => '💡 El peso debe ser un número';

  @override
  String get hintWalkTime => '💡 Introduce el tiempo de paseo';

  @override
  String get hintWalkTimeIsNumber => '💡 El tiempo de paseo debe ser un número';

  @override
  String get hintWalkTimeNumber =>
      '💡 Introduce el tiempo de paseo usando números';

  @override
  String get hintSelectBrushingArea =>
      '💡 Selecciona al menos un área de cepillado';

  @override
  String get hintSelectVaccineType =>
      '💡 Selecciona al menos un tipo de vacuna';

  @override
  String get hintSelectGroomingType => '💡 Selecciona al menos un tipo de aseo';

  @override
  String get hintSelectSymptomType =>
      '💡 Selecciona al menos un tipo de síntoma';

  @override
  String get hintTitle => '💡 Introduce un título';

  @override
  String get hintVaccineName => '💡 Introduce el nombre de la vacuna';

  @override
  String get hintSelectScheduledDate => '💡 Selecciona una fecha';

  @override
  String get hintSelectScheduledTime => '💡 Selecciona una hora';

  @override
  String get hintVisitPurpose => '💡 Introduce el motivo de la visita';

  @override
  String get hintSelectAppointmentDate => '💡 Selecciona la fecha de la cita';

  @override
  String get hintSelectAppointmentTime => '💡 Selecciona la hora de la cita';

  @override
  String get hintMedicineNameInput => '💡 Introduce el nombre del medicamento';

  @override
  String get hintSelectMedicationDate => '💡 Selecciona la fecha de medicación';

  @override
  String get hintSelectMedicationTime => '💡 Selecciona la hora de medicación';

  @override
  String get hintAlarmName => '💡 Introduce el nombre de la alerta';

  @override
  String get hintSelectMealTime => '💡 Selecciona la hora de comer';

  @override
  String get hintSelectAlarmTime => '💡 Selecciona la hora de la alerta';

  @override
  String get noPetRegisterFirst =>
      'Aún no tienes mascotas. Añade una en tu Perfil primero.';

  @override
  String get alarmRescheduled => 'Alerta reprogramada';

  @override
  String get examplePetName => 'Ej: Coco';

  @override
  String get exampleBreed => 'Ej: Maltés';

  @override
  String get exampleBreedMulti => 'Ej: Maltés, Persa';

  @override
  String get example30 => 'Ej: 30';

  @override
  String get example80 => 'Ej: 80';

  @override
  String get example200 => 'Ej: 200';

  @override
  String get example25 => 'Ej: 2.5';

  @override
  String get example42 => 'Ej: 4.2';

  @override
  String get example35000 => 'Ej: 35000';

  @override
  String get example50000 => 'Ej: 50000';

  @override
  String get enterNameHint => 'Introduce el nombre';

  @override
  String get addNewPetTitle => 'Añadir nueva mascota';

  @override
  String get basicInfo => 'Información básica';

  @override
  String get idInfo => 'Información de identificación';

  @override
  String get idInfoOptional => 'Identificación (Opcional)';

  @override
  String get name => 'Nombre';

  @override
  String get petKind => 'Especie';

  @override
  String get breed => 'Raza';

  @override
  String get weight => 'Peso';

  @override
  String get microchip => 'Número de microchip';

  @override
  String get registrationNumber => 'Número de registro';

  @override
  String get birthDate => 'Fecha de nacimiento';

  @override
  String get gender => 'Sexo';

  @override
  String get male => 'Macho';

  @override
  String get female => 'Hembra';

  @override
  String get maleSym => 'Macho ♂';

  @override
  String get femaleSym => 'Hembra ♀';

  @override
  String get neutered => 'Esterilizado/Castrado';

  @override
  String get done => 'Sí';

  @override
  String get notDone => 'No';

  @override
  String get notEntered => 'No introducido';

  @override
  String get notRegistered => 'No registrado';

  @override
  String get dogEmoji => 'Perro 🐶';

  @override
  String get catEmoji => 'Gato 🐱';

  @override
  String get otherEmoji => 'Otro 🐾';

  @override
  String get noPetsRegistered => 'No hay mascotas registradas';

  @override
  String get registerPetPrompt =>
      '¡Registra a tu mascota\ny gestionemos su salud juntos!';

  @override
  String get registerPetBtn => 'Registrar mascota';

  @override
  String get editPet => 'Editar información';

  @override
  String get neuteringStatus => 'Estado de esterilización';

  @override
  String get neuteredDone => 'Esterilizado/Castrado';

  @override
  String get notNeutered => 'Intacto';

  @override
  String get selectDateHint => 'Selecciona una fecha';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get registerBtn => 'Registrar';

  @override
  String deletePetName(String name) {
    return 'Eliminar a $name';
  }

  @override
  String deletePetConfirm(String name) {
    return '¿Seguro que quieres eliminar a $name?';
  }

  @override
  String deletePetWarning(String name) {
    return 'Todos los registros y alertas de $name se eliminarán y no se podrán recuperar.';
  }

  @override
  String petDeleted(String name) {
    return '$name ha sido eliminado/a';
  }

  @override
  String petAdded(String name) {
    return '$name ha sido añadido/a 🐾';
  }

  @override
  String get storeUnavailableMsg =>
      'No se puede conectar a la tienda en este momento. Inténtalo de nuevo más tarde.';

  @override
  String get checkingPaymentMsg =>
      'Comprobando la información de pago. Por favor, espera un momento y vuelve a tocar.';

  @override
  String get paymentCompleteMsg =>
      'Pago completado. Por favor, introduce la información del nuevo miembro de la familia.';

  @override
  String get addNewFamilyMember => '¿Añadir un nuevo miembro a la familia?';

  @override
  String get firstPetFreeDesc =>
      'La primera mascota se registra gratis. Para añadir más mascotas, se requiere un pago único por cada mascota adicional.';

  @override
  String petsRegisteredStoreUnavailable(int count) {
    return 'Actualmente tienes $count mascotas registradas.\nPor favor, inténtalo de nuevo cuando la tienda esté disponible.';
  }

  @override
  String petsRegisteredPayToAdd(int count, String price) {
    return 'Actualmente tienes $count mascotas registradas.\nPuedes añadir un nuevo miembro por $price.';
  }

  @override
  String get maybeLater => 'Quizás más tarde';

  @override
  String get unavailable => 'No disponible';

  @override
  String payAndAdd(String price) {
    return 'Pagar $price y añadir';
  }

  @override
  String get addNextAppointment => '＋ Añadir próxima cita';

  @override
  String get pottyRecordSaved => '💩 Baño registrado';

  @override
  String get conditionRecordSaved => '💗 Estado registrado';

  @override
  String get medicationRecordSaved => '💊 Medicación registrada';

  @override
  String get weightRecordSaved => '⚖️ Peso registrado';

  @override
  String get mealRecordSaved => '🍽️ Comida registrada';

  @override
  String get waterRecordSaved => '💧 Agua registrada';

  @override
  String get vetVisitRecordSaved => '🏥 Visita al veterinario registrada';

  @override
  String get vaccinationRecordSaved => '💉 Vacuna registrada';

  @override
  String get groomingRecordSaved => '✂️ Aseo registrado';

  @override
  String get brushingRecordSaved => '🪥 Cepillado registrado';

  @override
  String get walkRecordSaved => '🦮 Paseo registrado';

  @override
  String get memoSaved => '📝 Nota registrada';

  @override
  String get abnormalSymptomRecordSaved => '🚨 Síntoma anormal registrado';

  @override
  String get moreQuestions => '¿Tienes más preguntas?';

  @override
  String get contactViaSendFeedback =>
      'Contáctanos a través de Ajustes > Enviar comentarios.\nTe responderemos lo antes posible 🐾';

  @override
  String get contactViaSendFeedbackLong =>
      'Por favor, contáctanos usando el botón [Enviar comentarios] en Ajustes.\nTe responderemos lo más rápido posible.';

  @override
  String get privacyPolicyEffectiveDate =>
      'Esta Política de Privacidad es efectiva a partir del 1 de enero de 2026.\nÚltima actualización: 8 de mayo de 2026';

  @override
  String get privacyCollectedInfo =>
      'La información recopilada se utiliza únicamente para los siguientes propósitos.';

  @override
  String get privacyDataFeatures =>
      'Pet Sumtan ofrece funciones de exportación (copia de seguridad) e importación (restauración) de datos.';

  @override
  String get privacyPolicyMayUpdate =>
      'Esta Política de Privacidad puede actualizarse debido a cambios en la ley o en el servicio.';

  @override
  String get privacyPolicyContact =>
      'Si tienes alguna pregunta sobre la Política de Privacidad, contáctanos a continuación.';

  @override
  String get catMeal => 'Comida';

  @override
  String get catWater => 'Agua';

  @override
  String get catGrooming => 'Aseo';

  @override
  String get catBrushing => 'Cepillado';

  @override
  String get catWalk => 'Paseo';

  @override
  String get catHospital => 'Veterinario';

  @override
  String get catAbnormalSymptom => 'Anormal';

  @override
  String get catCondition => 'Estado';

  @override
  String get catPotty => 'Baño';

  @override
  String get mealFormTitle => '🍽️ Registro de comida';

  @override
  String get walkFormTitle => '🦮 Registro de paseo';

  @override
  String get weightFormTitle => '⚖️ Registro de peso';

  @override
  String get waterFormTitle => '💧 Registro de agua';

  @override
  String get medicationFormTitle => '💊 Registro de medicación';

  @override
  String get groomingFormTitle => '✂️ Registro de aseo';

  @override
  String get brushingFormTitle => '🪥 Registro de cepillado';

  @override
  String get conditionFormTitle => '🌡️ Registro de estado';

  @override
  String get poopFormTitle => '💩 Registro de baño';

  @override
  String get vaccinationFormTitle => '💉 Registro de vacuna';

  @override
  String get hospitalFormTitle => '🏥 Registro veterinario';

  @override
  String get abnormalSymptomFormTitle => '🚨 Registro de síntoma anormal';

  @override
  String get memoFormTitle => '📝 Nota';

  @override
  String get measureMethod => 'Método de medición';

  @override
  String get feedAmount => 'Cantidad';

  @override
  String get mlInputLabel => 'Introducir mL manualmente';

  @override
  String get alarmRescheduleNote =>
      'La fecha de esta alerta ya ha pasado.\nPor favor, selecciona una nueva fecha o elimínala.';

  @override
  String get nailTrim => 'Corte de uñas';

  @override
  String get shopNameExample => 'Ej: Peluquería Canina Happy';

  @override
  String get poopRecordSaved => '💩 Baño registrado';

  @override
  String get memoRecordSaved => '📝 Nota registrada';

  @override
  String get other => 'Otro';

  @override
  String get whole => 'Cuerpo entero';

  @override
  String get paw => 'Pata';

  @override
  String get importance => 'Importancia';

  @override
  String get timeTaken => 'Tiempo empleado';

  @override
  String get example10 => 'Ej: 10';

  @override
  String get minuteUnit => 'min';

  @override
  String get hospitalNameExample => 'Ej: Clínica Veterinaria Happy';

  @override
  String get diagnosisExample => 'Ej: Enteritis, Dermatitis';

  @override
  String get memoTitlePlaceholder => 'Introduce el título de la nota';

  @override
  String get hintMemoTitle => '💡 Introduce un título';

  @override
  String get poopType => 'Tipo';

  @override
  String get poopStatus => 'Estado';

  @override
  String get feces => 'Heces';

  @override
  String get bloody => 'Con sangre';

  @override
  String get vaccineDhppl => 'Polivalente (DHPPL)';

  @override
  String get vaccineCorona => 'Coronavirus';

  @override
  String get vaccineKennelCough => 'Tos de las perreras';

  @override
  String get vaccineRabies => 'Rabia';

  @override
  String get vaccineInfluenza => 'Gripe';

  @override
  String get vaccineFvrcp => 'Trivalente Felina (FVRCP)';

  @override
  String get vaccineFelv => 'Leucemia (FeLV)';

  @override
  String get vaccineChlamydia => 'Clamidia';

  @override
  String get mute => 'Silenciar';

  @override
  String get photoVideo => 'Foto · Vídeo';

  @override
  String photoVideoCount(int count) {
    return 'Foto · Vídeo · $count';
  }

  @override
  String get selectMediaSource => 'Seleccionar origen multimedia';

  @override
  String get cameraCapture => 'Hacer foto con cámara';

  @override
  String get cameraCaptureSubtitle => 'Hacer una foto o grabar un vídeo';

  @override
  String get selectFromGallery => 'Elegir de la galería';

  @override
  String get selectFromGallerySubtitle => 'Puedes seleccionar varios';

  @override
  String get takePhotoSubtitle => 'Hacer una foto con la cámara';

  @override
  String get recordVideoSubtitle => 'Grabar un vídeo con la cámara';

  @override
  String get permissionRequired => 'Por favor, permite el acceso en Ajustes';

  @override
  String get confirmDeletePhoto => '¿Seguro que quieres eliminar esta foto?';

  @override
  String get confirmDeleteVideo => '¿Seguro que quieres eliminar este vídeo?';

  @override
  String get hintMedicineAndDose =>
      '💡 Introduce el nombre del medicamento y la dosis';

  @override
  String deleteRecordBody(String category) {
    return 'El registro de $category será eliminado.\nEsta acción no se puede deshacer.';
  }

  @override
  String dayCountShort(int days) {
    return '$days días';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan es una aplicación donde puedes registrar y gestionar la salud y la vida diaria de tu mascota en un solo lugar.\nPuedes registrar fácilmente comidas, agua, baño, peso, medicación, visitas al veterinario y configurar alertas para no olvidar eventos importantes.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'Mira todos los registros añadidos hoy de un vistazo. Toca un registro para ver detalles o editarlo.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'Comprueba el número de veces que ha ido al baño, la cantidad de comida y el consumo de agua de esta semana en gráficos para entender los patrones de vida de tu mascota.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'Muestra los registros de peso recientes en un gráfico para hacer un seguimiento fácil de los cambios de peso.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'Toca el botón para buscar clínicas veterinarias cercanas en el mapa.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'Toca el botón \'+\' en la parte inferior para seleccionar una categoría y añadir un nuevo registro.';

  @override
  String get helpRecordCategoriesIntro =>
      'Puedes registrar la vida diaria de tu mascota en 12 categorías diferentes.';

  @override
  String get helpCategoryPottyName => 'Baño';

  @override
  String get helpCategoryPottyDesc =>
      'Registra el estado y tipo de heces/orina. También puedes adjuntar fotos.';

  @override
  String get helpCategoryConditionName => 'Estado';

  @override
  String get helpCategoryConditionDesc =>
      'Registra el estado de salud general de tu mascota.';

  @override
  String get helpCategoryMedicationName => 'Medicación';

  @override
  String get helpCategoryMedicationDesc =>
      'Registra el nombre del medicamento, la dosis y la hora.';

  @override
  String get helpCategoryWeightName => 'Peso';

  @override
  String get helpCategoryWeightDesc =>
      'Registra el peso (kg). Puedes comprobar la tendencia en la pantalla de inicio.';

  @override
  String get helpCategoryMealName => 'Comida';

  @override
  String get helpCategoryMealDesc =>
      'Registra la cantidad y el tipo de comida. Puedes adjuntar fotos/vídeos.';

  @override
  String get helpCategoryWaterName => 'Agua';

  @override
  String get helpCategoryWaterDesc =>
      'Registra el consumo de agua (ml). Puedes adjuntar fotos/vídeos.';

  @override
  String get helpCategoryHospitalName => 'Veterinario';

  @override
  String get helpCategoryHospitalDesc =>
      'Registra el nombre de la clínica y el diagnóstico. Puedes adjuntar fotos/vídeos.';

  @override
  String get helpCategoryVaccinationName => 'Vacuna';

  @override
  String get helpCategoryVaccinationDesc =>
      'Registra el tipo de vacuna y la fecha.';

  @override
  String get helpCategoryGroomingName => 'Aseo';

  @override
  String get helpCategoryGroomingDesc =>
      'Registra los detalles del aseo y adjunta fotos/vídeos.';

  @override
  String get helpCategoryDentalName => 'Cepillado';

  @override
  String get helpCategoryDentalDesc =>
      'Registra el estado del cepillado dental y notas.';

  @override
  String get helpCategoryWalkName => 'Paseo';

  @override
  String get helpCategoryWalkDesc =>
      'Registra la distancia y duración del paseo.';

  @override
  String get helpCategoryMemoName => 'Nota';

  @override
  String get helpCategoryMemoDesc => 'Puedes dejar notas en formato libre.';

  @override
  String get helpJournalViewRecordListDesc =>
      'Muestra todos los registros por fecha. Puedes distinguirlos fácilmente por los iconos de categoría.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'Al tocar un registro se abre la hoja de edición. Puedes modificar el contenido o eliminar el registro.';

  @override
  String get helpJournalAttachMediaDesc =>
      'Puedes adjuntar fotos o vídeos a categorías como Comida, Agua, Veterinario, Aseo y Baño.';

  @override
  String get helpAlarmAddDesc =>
      'Configura alertas para vacunas, medicación, veterinario, aseo, etc. Primero elige el tipo, luego establece la fecha y la hora.';

  @override
  String get helpAlarmRepeatDesc =>
      'Puedes establecer reglas de repetición como diaria, semanal o mensual. Ideal para medicación regular o prevención del gusano del corazón.';

  @override
  String get helpAlarmAdvanceDesc =>
      'Para eventos importantes como vacunas, puedes recibir alertas anticipadas 7 días, 3 días o 1 día antes.';

  @override
  String get helpAlarmCompleteDesc =>
      'Toca una alerta para marcarla como completada. Las alertas completadas se mueven a la lista de \'Alertas pasadas\'.';

  @override
  String get helpAlarmDeleteDesc =>
      'Desliza una alerta hacia la izquierda para eliminarla.';

  @override
  String get helpPetRegisterDesc =>
      'Registra a tu mascota introduciendo su nombre, especie (perro/gato), raza, sexo, fecha de nacimiento y estado de esterilización.';

  @override
  String get helpPetEditProfileDesc =>
      'Puedes editar el nombre, raza, peso, número de microchip, número de registro y foto de perfil en la pantalla de Perfil.';

  @override
  String get helpPetManageMultipleDesc =>
      'Puedes registrar varias mascotas. Toca la etiqueta de la mascota en la parte superior para cambiar entre ellas.';

  @override
  String get helpDogHealthGuideDesc =>
      'Proporciona información de salud basada en recomendaciones veterinarias: calendario de vacunas esenciales/no esenciales, prevención de parásitos, cuidado dental, nutrición, etc.';

  @override
  String get helpCatHealthGuideDesc =>
      'Consulta el calendario de vacunas específico para gatos, prevención de parásitos, cuidado dental e información nutricional.';

  @override
  String get helpSettingsNotificationDesc =>
      'Activa o desactiva todas las notificaciones de la aplicación.';

  @override
  String get helpSettingsExportDesc =>
      'Exporta todos los datos registrados como un archivo ZIP. Se puede usar como copia de seguridad al cambiar de dispositivo.';

  @override
  String get helpSettingsImportDesc =>
      'Importa un archivo de copia de seguridad ZIP guardado previamente para restaurar los datos.';

  @override
  String get helpSettingsFeedbackDesc =>
      'Si tienes algún problema o sugerencia, háznoslo saber por correo electrónico. Nos ayudará a mejorar la aplicación.';

  @override
  String get helpFaqDeletePetQ =>
      'Si elimino a una mascota, ¿también se eliminan todos sus registros?';

  @override
  String get helpFaqDeletePetA =>
      'Sí, si eliminas a una mascota, todos sus registros y alertas también se eliminarán. Por favor, exporta y haz una copia de seguridad de tus datos antes de eliminar.';

  @override
  String get helpFaqMultipleMediaQ =>
      '¿Puedo adjuntar varias fotos a un solo registro?';

  @override
  String get helpFaqMultipleMediaA =>
      'Sí, puedes adjuntar varias fotos o vídeos. Puedes seleccionarlos de tu galería o hacer fotos directamente con la cámara.';

  @override
  String get helpFaqNoNotificationQ => 'No recibo alertas.';

  @override
  String get helpFaqNoNotificationA =>
      'Por favor, comprueba si las notificaciones de la aplicación Pet Sumtan están permitidas en los ajustes de tu dispositivo. Además, comprueba si \'Ajustes de notificaciones\' dentro de la aplicación (Ajustes > Notificaciones) está activado.';

  @override
  String get helpFaqMoveDataQ =>
      '¿Puedo transferir mis datos a un nuevo dispositivo?';

  @override
  String get helpFaqMoveDataA =>
      'Guarda un archivo de copia de seguridad a través de \'Ajustes > Exportar datos\' en tu dispositivo antiguo, y luego restáuralo a través de \'Ajustes > Importar datos\' en tu nuevo dispositivo.';

  @override
  String get helpFaqMultiplePetsQ => '¿Puedo registrar varias mascotas?';

  @override
  String get helpFaqMultiplePetsA =>
      'Puedes registrar una mascota gratis. Las mascotas adicionales se pueden añadir utilizando funciones premium.';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan es una aplicación que se puede usar sin registrarse, y todos los datos se guardan únicamente en tu dispositivo. No enviamos tu información personal a servidores externos, manteniendo segura la valiosa información de tu mascota.';

  @override
  String get privacySection1Title => 'Información personal recopilada';

  @override
  String get privacySection1Body =>
      'Pet Sumtan se puede usar sin registro y no recopila ninguna información de identificación personal. Sin embargo, para proporcionar las funciones de la aplicación, la siguiente información puede guardarse en tu dispositivo.';

  @override
  String get privacyLocalStorageInfo =>
      'Información guardada localmente en el dispositivo';

  @override
  String get privacyPetInfo =>
      'Información de la mascota: Nombre, especie, raza, fecha de nacimiento, sexo, peso, estado de esterilización, número de microchip, número de registro';

  @override
  String get privacyHealthRecords =>
      'Registros de salud: Baño, comida, agua, peso, medicación, vacuna, veterinario, aseo, cepillado, paseo, estado, notas, etc., introducidos directamente por ti';

  @override
  String get privacyAttachedMedia =>
      'Archivos multimedia adjuntos: Fotos y vídeos tomados o seleccionados directamente por ti';

  @override
  String get privacyNotificationSettings =>
      'Ajustes de alertas: Tipo de alerta, fecha y hora programadas, reglas de repetición';

  @override
  String get privacyInAppPurchaseTitle =>
      'Sobre las compras dentro de la aplicación';

  @override
  String get privacyPaymentProcessing =>
      'El procesamiento de pagos se realiza a través de la Apple App Store o Google Play Store, y la aplicación no recopila ni guarda directamente tu información de pago.';

  @override
  String get privacyReceiptVerification =>
      'De acuerdo con las políticas de cada plataforma, solo se procesa la información mínima necesaria para verificar el recibo de compra.';

  @override
  String get privacySection2Title => 'Propósito de recopilación y uso';

  @override
  String get privacyPurposeRecords =>
      'Guardar y ver los registros de salud de la mascota';

  @override
  String get privacyPurposeStats =>
      'Proporcionar estadísticas en la pantalla de inicio (estado semanal de baño, comida, agua, gráfico de cambio de peso, etc.)';

  @override
  String get privacyPurposeReminders =>
      'Enviar alertas relacionadas con la salud, como vacunas, medicación, veterinario, etc.';

  @override
  String get privacyPurposeBackupRestore =>
      'Proporcionar funciones de copia de seguridad y restauración de datos';

  @override
  String get privacyPurposePaidEligibility =>
      'Verificar la elegibilidad para usar funciones de pago';

  @override
  String get privacySection3Title => 'Retención y destrucción de información';

  @override
  String get privacyRetentionBody =>
      'Todos los datos de Pet Sumtan se guardan únicamente en la base de datos local (SQLite) dentro de tu dispositivo y no se envían a servidores externos.';

  @override
  String get privacyDataDeletionMethod => 'Método de destrucción de datos';

  @override
  String get privacyDeleteInApp =>
      'Puedes eliminar directamente la información y los registros de la mascota a través de \'Ajustes > Gestión de datos\' en la aplicación.';

  @override
  String get privacyDeleteUninstall =>
      'Al eliminar la aplicación, también se eliminarán todos los datos guardados en el dispositivo.';

  @override
  String get privacyDeleteBackupWarning =>
      'Ten en cuenta que si no realizas una copia de seguridad (exportar) antes de eliminar la aplicación, los datos no se podrán recuperar.';

  @override
  String get privacySection4Title => 'Suministro de información a terceros';

  @override
  String get privacyThirdPartyBody =>
      'Pet Sumtan no proporciona tu información personal a terceros externos. Sin embargo, existen las siguientes excepciones:';

  @override
  String get privacyThirdPartyUserExport =>
      'Cuando utilizas la función de exportación de datos (compartir archivo de copia de seguridad) tú mismo';

  @override
  String get privacyThirdPartyLegalRequest =>
      'Cuando lo exige la ley o hay una solicitud legal de las autoridades competentes';

  @override
  String get privacySection5Title => 'Información sobre permisos de acceso';

  @override
  String get privacyPermissionsBody =>
      'Para proporcionar las funciones de la aplicación, podemos solicitar los siguientes permisos. Incluso si no concedes los permisos, puedes usar otras funciones normalmente.';

  @override
  String get privacyPermissionCameraName => 'Cámara';

  @override
  String get privacyPermissionCameraDesc =>
      'Se usa para tomar fotos o grabar vídeos directamente para adjuntarlos a los registros de salud.';

  @override
  String get privacyPermissionMediaName => 'Acceso a fotos y multimedia';

  @override
  String get privacyPermissionMediaDesc =>
      'Se usa para seleccionar fotos o vídeos de la galería para adjuntarlos a los registros.';

  @override
  String get privacyPermissionNotificationName => 'Notificaciones';

  @override
  String get privacyPermissionNotificationDesc =>
      'Se usa para enviar alertas relacionadas con la salud, como vacunas, medicación, veterinario, etc.';

  @override
  String get privacyPermissionFileName => 'Acceso a archivos (Android)';

  @override
  String get privacyPermissionFileDesc =>
      'Se usa para guardar o cargar archivos de copia de seguridad de datos.';

  @override
  String get privacySection6Title =>
      'Copia de seguridad y restauración de datos';

  @override
  String get privacyBackupExport =>
      'Exportar: Puedes guardar o compartir todos los datos dentro de la aplicación como un archivo (.zip).';

  @override
  String get privacyBackupImport =>
      'Importar: Puedes cargar un archivo de copia de seguridad exportado previamente para restaurar los datos.';

  @override
  String get privacyBackupWarning =>
      'El archivo de copia de seguridad es gestionado por ti, así que ten cuidado de no compartir el archivo con otros.';

  @override
  String get privacySection7Title => 'Protección de la privacidad de los niños';

  @override
  String get privacyChildrenBody =>
      'Pet Sumtan no recopila información personal de niños menores de 14 años por separado. Todos los datos de la aplicación se guardan únicamente en el dispositivo y no se envían a servidores externos, por lo que los niños pueden usarla de forma segura.';

  @override
  String get privacySection8Title => 'Cambios en la Política de Privacidad';

  @override
  String get privacyPolicyChangeNotice =>
      'Si hay algún cambio, te lo notificaremos a través de las notas de actualización de la aplicación o avisos dentro de la aplicación.';

  @override
  String get privacyPolicyChangeEffective =>
      'La política modificada entrará en vigor 7 días después de la notificación.';

  @override
  String get privacySection9Title => 'Contacto';

  @override
  String get hgDogHeroTitle => 'Guía de salud para perros';

  @override
  String get hgCatHeroTitle => 'Guía de salud para gatos';

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
      '**Polivalente (DHPPL)** — Moquillo, Hepatitis, Parvovirus, Parainfluenza, Leptospirosis.\n1ª dosis a las 6-8 semanas, luego cada 3-4 semanas (total 3 dosis), refuerzo anual.';

  @override
  String get hgDogCoreRabies =>
      '**Rabia** — 1ª dosis a partir de los 3 meses, luego refuerzo anual (obligatorio por ley en muchas regiones).';

  @override
  String get hgDogCoreCorona =>
      '**Coronavirus** — A partir de las 6-8 semanas, 2 dosis con 3-4 semanas de intervalo, refuerzo anual.';

  @override
  String get hgDogNonCoreKennel =>
      '**Tos de las perreras** — Recomendada para perros que van a guarderías, peluquerías o parques. Intranasal o inyección.';

  @override
  String get hgDogNonCoreFlu =>
      '**Gripe canina** — Recomendada si hay mucha actividad al aire libre o contacto frecuente con otros perros.';

  @override
  String get hgDogHeartworm1 =>
      'Se recomienda administrar preventivo **una vez al mes** durante la temporada de mosquitos (aprox. marzo a noviembre).';

  @override
  String get hgDogHeartworm2 =>
      'Si se infectan, el tratamiento es difícil y puede ser fatal — **la prevención es el mejor método**.';

  @override
  String get hgDogHeartworm3 =>
      'Antes de administrar, es necesario hacer un test para confirmar que no están infectados (resultado negativo).';

  @override
  String get hgDogHeartworm4 =>
      'La administración durante todo el año es más segura (recomendado por veterinarios).';

  @override
  String get hgDogExternalParasites1 =>
      'Administrar preventivos tópicos (pipetas) u orales **cada mes**.';

  @override
  String get hgDogExternalParasites2 =>
      'Después de pasear, revisa siempre el interior de las orejas, entre los dedos y las axilas en busca de garrapatas.';

  @override
  String get hgDogExternalParasites3 =>
      'Al quitar una garrapata, usa pinzas y tira recta y lentamente (no la retuerzas).';

  @override
  String get hgDogInternalParasites1 =>
      'Lombrices, anquilostomas, tricocéfalos: Administrar desparasitante interno **cada 3-6 meses**.';

  @override
  String get hgDogInternalParasites2 =>
      'Cachorros (desde las 2 semanas): Desparasitar cada 2 semanas (4 veces en total), luego mantenimiento regular.';

  @override
  String get hgDental1 =>
      'El cepillado diario es ideal — se recomienda **al menos 3 veces por semana**.';

  @override
  String get hgDental2 =>
      'Usa siempre **pasta de dientes especial para mascotas** (la pasta humana con xilitol está estrictamente prohibida).';

  @override
  String get hgDental3 =>
      'Si el sarro es severo, se necesita una limpieza dental en el veterinario (requiere anestesia general).';

  @override
  String get hgDental4 =>
      'Los snacks dentales y juguetes para masticar pueden usarse como cuidado complementario.';

  @override
  String get hgDogForbiddenFoodAlert =>
      'Los siguientes alimentos son tóxicos para los perros. Incluso pequeñas cantidades pueden ser fatales, nunca se los des.';

  @override
  String get hgDogForbiddenGrape =>
      '**Uvas/Pasas** — Causan insuficiencia renal, fatales incluso en pequeñas cantidades.';

  @override
  String get hgDogForbiddenChocolate =>
      '**Chocolate/Cacao** — Intoxicación por teobromina, insuficiencia cardíaca, convulsiones.';

  @override
  String get hgDogForbiddenOnion =>
      '**Cebolla/Puerro/Ajo** — Destruyen los glóbulos rojos, causando anemia hemolítica.';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xilitol** — Secreción excesiva de insulina, hipoglucemia, insuficiencia hepática.';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Nueces de macadamia** — Debilidad muscular, fiebre alta, vómitos.';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Masa cruda/Alcohol** — Intoxicación por etanol, hipoglucemia.';

  @override
  String get hgDogForbiddenAvocado =>
      '**Aguacate** — Contiene persina, causa vómitos y diarrea.';

  @override
  String get hgEmergencyAlert =>
      'Si aparecen los siguientes síntomas, acude inmediatamente a una clínica veterinaria.';

  @override
  String get hgDogEmergency1 =>
      'Pérdida total del apetito por más de 24 horas.';

  @override
  String get hgDogEmergency2 =>
      'Vómitos o diarrea repetidos 3 o más veces en un día.';

  @override
  String get hgDogEmergency3 =>
      'Abdomen hinchado / intentos improductivos de vomitar (sospecha de dilatación/torsión gástrica).';

  @override
  String get hgDogEmergency4 =>
      'Dificultad para respirar, encías pálidas, cianosis.';

  @override
  String get hgDogEmergency5 =>
      'Convulsiones, ataques, pérdida de conocimiento.';

  @override
  String get hgDogEmergency6 => 'Ausencia de orina por más de 12 horas.';

  @override
  String get hgDogEmergency7 =>
      'Traumatismo visible, fracturas, sangrado abundante.';

  @override
  String get hgDogExerciseAlert =>
      'La falta de ejercicio en los perros no es solo un problema físico. Es la causa principal de estrés, ansiedad y comportamiento destructivo.';

  @override
  String get hgDogWalk1 =>
      'Perros pequeños: se recomienda al menos **20-30 minutos** diarios. Perros medianos/grandes: más de **1 hora**.';

  @override
  String get hgDogWalk2 =>
      'El paseo no es solo para ir al baño, sino para **estimulación olfativa, socialización y alivio del estrés**.';

  @override
  String get hgDogWalk3 =>
      'Déjales olfatear lo suficiente — es muy efectivo para aliviar la fatiga mental.';

  @override
  String get hgDogWalk4 =>
      'Cuidado con las quemaduras en el asfalto en verano — se recomiendan paseos antes de las 7 AM o por la tarde/noche.';

  @override
  String get hgDogPlay1 =>
      '**Buscar / Tirar de la cuerda** — Gasta energía y fortalece el vínculo con el dueño.';

  @override
  String get hgDogPlay2 =>
      '**Juegos de olfato (Nosework)** — Estimula el cerebro, 15 minutos equivalen a 30 minutos de paseo.';

  @override
  String get hgDogPlay3 =>
      '**Juguetes interactivos/Kong** — Efectivos para aliviar la ansiedad por separación cuando se quedan solos.';

  @override
  String get hgDogPlay4 =>
      'Solo **10-15 minutos** de juego concentrado al día pueden reducir significativamente los niveles de estrés.';

  @override
  String get hgDogStress1 =>
      'Destruir muebles u objetos, ladridos excesivos — señales de falta de ejercicio o estimulación.';

  @override
  String get hgDogStress2 =>
      'Perseguirse la cola, lamido excesivo (patas o cuerpo) — comportamiento compulsivo para aliviar el estrés.';

  @override
  String get hgDogStress3 =>
      'Ansiedad excesiva cuando el dueño se va, accidentes con el baño — sospecha de ansiedad por separación.';

  @override
  String get hgDogStress4 =>
      'Si los síntomas persisten, se recomienda consultar a un veterinario o especialista en comportamiento.';

  @override
  String get hgDogSocial1 =>
      'De las **3 a las 14 semanas** de edad es el período dorado de socialización — es crucial exponerlos a diversas personas, sonidos y entornos.';

  @override
  String get hgDogSocial2 =>
      'Interacción con otros perros — aprovecha los parques para perros o clases para cachorros.';

  @override
  String get hgDogSocial3 =>
      'Experimentar nuevos lugares, olores y sonidos contribuye al enriquecimiento mental.';

  @override
  String get hgDogSocial4 =>
      'El entrenamiento con refuerzo positivo (clicker, premios) estimula el cerebro y fortalece el vínculo simultáneamente.';

  @override
  String get hgCatCoreFvrcp =>
      '**Trivalente felina (FVRCP)** — Herpesvirus, Calicivirus, Parvovirus (Panleucopenia).\n1ª dosis a las 6-8 semanas, luego cada 3-4 semanas (total 3 dosis), refuerzo cada 1-3 años.';

  @override
  String get hgCatCoreRabies =>
      '**Rabia** — Obligatoria para gatos con acceso al exterior, recomendada para gatos de interior (obligatoria por ley en muchas regiones).';

  @override
  String get hgCatNonCoreFelv =>
      '**Leucemia felina (FeLV)** — Muy recomendada para gatos con acceso al exterior o en hogares con múltiples gatos.';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Clamidia felina** — En entornos con múltiples gatos, previene la conjuntivitis.';

  @override
  String get hgCatNonCoreFiv =>
      '**Inmunodeficiencia felina (FIV)** — Gatos machos con acceso al exterior (se transmite por mordeduras).';

  @override
  String get hgCatExternalParasites1 =>
      'Gatos con acceso al exterior: Administrar preventivos contra pulgas/garrapatas **una vez al mes**.';

  @override
  String get hgCatExternalParasites2 =>
      'Incluso los gatos de interior pueden contagiarse de pulgas a través de la ropa o zapatos de las personas → se recomienda prevención **cada 3 meses**.';

  @override
  String get hgCatExternalParasites3 =>
      'Al usar pipetas (spot-on), aplícalas con precisión en la parte posterior del cuello.';

  @override
  String get hgCatInternalHeartworm =>
      'Parásitos internos y Gusano del corazón';

  @override
  String get hgCatInternalParasites1 =>
      'Lombrices/Tenias: Administrar desparasitante **cada 3-6 meses**.';

  @override
  String get hgCatInternalParasites2 =>
      'Si se alimenta con carne o pescado crudo, se recomiendan revisiones más frecuentes.';

  @override
  String get hgCatHeartworm1 =>
      'Gusano del corazón — **No hay tratamiento para los gatos, la prevención es el único método**. Se recomienda encarecidamente la administración mensual para gatos con acceso al exterior.';

  @override
  String get hgCatMajorDiseases =>
      'Principales enfermedades felinas a tener en cuenta';

  @override
  String get hgCatDiseaseAlert =>
      'Los gatos son expertos en ocultar el dolor, por lo que a menudo la enfermedad ya está avanzada cuando aparecen los síntomas. Las revisiones de salud regulares son especialmente importantes.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Enfermedad del tracto urinario inferior felino (FLUTD)** — Común en machos. Si no pueden orinar, es una emergencia inmediata.';

  @override
  String get hgCatDiseaseCkd =>
      '**Enfermedad renal crónica (CKD)** — La principal causa de muerte en gatos mayores. Los análisis de sangre renales regulares son esenciales para gatos mayores de 7 años.';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Diabetes felina** — Mayor riesgo en gatos obesos o mayores. Presta atención si aumenta el consumo de agua o la cantidad de orina.';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Hipertiroidismo** — Común en gatos mayores de 10 años. Los síntomas incluyen pérdida de peso, aumento del apetito e inquietud.';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Estomatitis** — Una enfermedad muy común en los gatos. Comprueba si hay mal aliento, babeo o pérdida de apetito.';

  @override
  String get hgCatDiseaseFhv =>
      '**Herpesvirus felino (FHV-1)** — Una vez infectados, el virus permanece latente de por vida. Reaparece durante períodos de estrés, causando estornudos, secreción ocular y conjuntivitis.';

  @override
  String get hgHydrationDiet => 'Hidratación y manejo de la dieta';

  @override
  String get hgCatHydrationAlert =>
      'Los gatos por naturaleza no beben mucha agua, lo que los hace propensos a enfermedades del tracto urinario. Fomentar la ingesta de agua es muy importante.';

  @override
  String get hgCatHydration1 =>
      'Se recomienda combinar con comida húmeda (latas o sobres) para complementar la hidratación.';

  @override
  String get hgCatHydration2 =>
      'Prefieren el agua en movimiento — instalar una **fuente de agua** es muy efectivo.';

  @override
  String get hgCatHydration3 =>
      'Mantén el cuenco de agua lejos del cuenco de comida; prefieren cuencos anchos y poco profundos.';

  @override
  String get hgCatHydration4 =>
      'Consumo de agua objetivo: aprox. **40-60ml** por kg de peso corporal al día.';

  @override
  String get hgCatForbiddenFoodAlert =>
      'Los siguientes alimentos son tóxicos para los gatos. Incluso pequeñas cantidades pueden ser fatales, nunca se los des.';

  @override
  String get hgCatForbiddenOnion =>
      '**Cebolla/Puerro/Ajo** — Destruyen los glóbulos rojos, causando anemia hemolítica (más sensibles que los perros).';

  @override
  String get hgCatForbiddenGrape =>
      '**Uvas/Pasas** — Causan insuficiencia renal.';

  @override
  String get hgCatForbiddenChocolate =>
      '**Chocolate/Cafeína** — Tóxicos para el corazón y el sistema nervioso.';

  @override
  String get hgCatForbiddenRawFish =>
      '**Pescado crudo (alimentación continua)** — Causa deficiencia de tiamina (Vitamina B1).';

  @override
  String get hgCatForbiddenMilk =>
      '**Leche/Lácteos** — Los gatos adultos son intolerantes a la lactosa, causa diarrea.';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xilitol/Alcohol** — Tóxicos para el hígado y el sistema nervioso.';

  @override
  String get hgCatForbiddenAvocado =>
      '**Aguacate** — Contiene persina, causa vómitos y diarrea.';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Clara de huevo cruda** — La avidina bloquea la absorción de biotina, causando problemas de piel y pelaje.';

  @override
  String get hgCatEmergency1 =>
      '**Incapacidad total para orinar o sangre en la orina** — Emergencia por obstrucción uretral (especialmente en machos).';

  @override
  String get hgCatEmergency2 =>
      'Pérdida total del apetito por más de 24 horas (riesgo de lipidosis hepática).';

  @override
  String get hgCatEmergency3 =>
      '**Respirar con la boca abierta** — Nunca es normal en gatos, requiere atención de emergencia inmediata.';

  @override
  String get hgCatEmergency4 =>
      'Parálisis repentina o frialdad en las patas traseras (sospecha de trombosis).';

  @override
  String get hgCatEmergency5 =>
      'Convulsiones, ataques, pérdida de conocimiento.';

  @override
  String get hgCatEmergency6 =>
      'Encías o lengua pálidas, o amarillentas (ictericia).';

  @override
  String get hgCatEmergency7 =>
      'Vómitos o diarrea repetidos 3 o más veces en un día, o sangre en heces/vómito.';

  @override
  String get hgCatEmergency8 =>
      'Traumatismo visible, fracturas, sangrado abundante.';

  @override
  String get hgEnvironmentMentalHealth => 'Entorno y salud mental';

  @override
  String get hgIndoorEnvironment => 'Manejo del entorno interior';

  @override
  String get hgStressManagement => 'Manejo del estrés';

  @override
  String get hgCatEnvironment1 =>
      '**Areneros**: Al menos el número de gatos + 1, y mantenlos limpios a diario.';

  @override
  String get hgCatEnvironment2 =>
      '**Rascadores**: Al menos 2 o más (combina tipos verticales y horizontales).';

  @override
  String get hgCatEnvironment3 =>
      '**Espacios altos**: Proporciona espacios verticales como árboles para gatos o estantes (satisface el instinto territorial).';

  @override
  String get hgCatEnvironment4 =>
      '**Escondites**: Proporciona espacios seguros para esconderse, como cajas o túneles.';

  @override
  String get hgCatStress1 =>
      'El estrés en los gatos conduce directamente a una disminución de la inmunidad, FLUTD, recurrencia del herpes, etc.';

  @override
  String get hgCatStress2 =>
      'Para cambios ambientales repentinos (mudanzas, nuevos miembros en la familia, etc.), usa difusores de feromonas (Feliway).';

  @override
  String get hgCatStress3 =>
      'Asegura al menos **10-15 minutos** de tiempo de juego interactivo con juguetes cada día.';

  @override
  String get hgCatStress4 =>
      'En hogares con múltiples gatos: Separa los recursos (cuencos de comida, areneros, camas) según el número de gatos.';

  @override
  String get hgAge => 'Edad';

  @override
  String get hgCheckupCycle => 'Frecuencia de revisión';

  @override
  String get hgMainItems => 'Pruebas principales';

  @override
  String get hgAge1to6 => '1 a 6 años';

  @override
  String get hgAge7to10 => '7 a 10 años';

  @override
  String get hgAge11Plus => '11 años o más';

  @override
  String get hgYearlyOnce => '1 vez al año';

  @override
  String get hgYearlyTwice => '2 veces al año';

  @override
  String get hgEvery3to4Months => 'Cada 3-4 meses';

  @override
  String get hgDogCheckupItems1 =>
      'Análisis de sangre, auscultación cardíaca, peso, dientes';

  @override
  String get hgDogCheckupItems2 =>
      'Sangre, orina, rayos X, presión arterial, articulaciones';

  @override
  String get hgDogCheckupItems3 =>
      'Análisis de sangre completo, ecografía, función renal/hepática';

  @override
  String get hgCatCheckupItems1 =>
      'Análisis de sangre, análisis de orina, peso, dientes';

  @override
  String get hgCatCheckupItems2 =>
      'Panel renal/hepático, presión arterial, tiroides (T4)';

  @override
  String get hgCatCheckupItems3 =>
      'Análisis de sangre completo, ecografía abdominal, monitorización renal intensiva';

  @override
  String get hgExerciseAmount => 'Nivel de ejercicio';

  @override
  String get hgBreedExamples => 'Razas representativas';

  @override
  String get hgLow => 'Bajo';

  @override
  String get hgNormal => 'Normal';

  @override
  String get hgHigh => 'Alto';

  @override
  String get hgBreedLowExamples => 'Bulldog, Basset Hound, Shih Tzu, Maltés';

  @override
  String get hgBreedNormalExamples =>
      'Caniche, Bichón Frisé, Cocker Spaniel, Beagle';

  @override
  String get hgBreedHighExamples =>
      'Labrador, Golden Retriever, Husky, Border Collie';

  @override
  String get hgDisclaimer =>
      'Esta guía proporciona información general sobre el cuidado de la salud. Los cuidados necesarios pueden variar según el estado específico de su mascota. Si observa algún síntoma anormal o necesita tratamiento, consulte siempre a un veterinario.';

  @override
  String get categoryFilter => 'Filtro de categorías';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get apply => 'Aplicar';

  @override
  String get saving => 'Guardando...';

  @override
  String get treatmentContent => 'Tratamiento';

  @override
  String get conditionScoreWord1 => 'Muy mal';

  @override
  String get conditionScoreWord2 => 'Mal';

  @override
  String get conditionScoreWord3 => 'Regular';

  @override
  String get conditionScoreWord4 => 'Bien';

  @override
  String get conditionScoreWord5 => 'Muy bien';

  @override
  String conditionScoreFormat(Object score, Object word) {
    return 'Puntuación $score - $word';
  }
}
