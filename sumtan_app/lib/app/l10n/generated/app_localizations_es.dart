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
  String get drawerNearbyHospitals => 'Buscar clínicas cercanas';

  @override
  String get drawerNearbyHospitalsSub => 'Veterinarias cerca de ti';

  @override
  String get drawerHealthGuide => 'Guía de salud';

  @override
  String get drawerHealthGuideSub => 'Guía de salud para mascotas';

  @override
  String get drawerApp => 'App';

  @override
  String get drawerHelp => 'Ayuda';

  @override
  String get dialogExternalTitle => 'Abrir página externa';

  @override
  String get dialogExternalHospitalBody =>
      'Para encontrar veterinarias cercanas\nnecesitas abrir una página externa.\n\n¿Ir ahora?';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonGo => 'Ir';

  @override
  String get commonDelete => 'Eliminar';

  @override
  String get commonSave => 'Guardar';

  @override
  String get commonLoading => 'Preparando...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'Pulsa de nuevo para salir';

  @override
  String get toastNeedPet =>
      'Aún no tienes mascota. ¡Regístrala primero en Perfil!';

  @override
  String get settingsNotifications => 'Notificaciones';

  @override
  String get settingsPushNotifications => 'Permitir notificaciones push';

  @override
  String get settingsPushNotificationsSub =>
      'Permiso de notificaciones del dispositivo';

  @override
  String get settingsLanguageSection => 'Idioma';

  @override
  String get settingsLanguage => 'Idioma de la app';

  @override
  String get settingsLanguageSystem => 'Usar ajustes del dispositivo';

  @override
  String get settingsLanguageChanged => 'Idioma cambiado';

  @override
  String get settingsData => 'Gestión de datos';

  @override
  String get settingsExport => 'Exportar datos';

  @override
  String get settingsExportSub => 'Guardar como ZIP';

  @override
  String get settingsImport => 'Importar datos';

  @override
  String get settingsImportSub => 'Restaurar desde ZIP';

  @override
  String get settingsAppInfo => 'Información de la app';

  @override
  String get settingsVersion => 'Versión de la app';

  @override
  String get settingsPrivacy => 'Política de privacidad';

  @override
  String get settingsFeedback => 'Enviar comentarios';

  @override
  String get settingsFeedbackSubject => 'Pet Sumtan – Comentarios';

  @override
  String get settingsEmailAppMissing => 'No se encontró ninguna app de correo';

  @override
  String get settingsImportConfirmBody =>
      'Todos los datos existentes se eliminarán y serán reemplazados por los del archivo de copia de seguridad.\n\n¿Continuar?';

  @override
  String get settingsImportAction => 'Importar';

  @override
  String get settingsImporting => 'Importando datos';

  @override
  String get settingsImportSuccess => 'Copia de seguridad restaurada';

  @override
  String get settingsImportFailed => 'Error al importar';

  @override
  String get settingsExportTitle => 'Exportar datos';

  @override
  String get settingsExportBenefitTitle =>
      'Guarda tus registros de forma segura';

  @override
  String get settingsExportBenefitPets =>
      'Todos los perfiles y fotos de mascotas';

  @override
  String get settingsExportBenefitRecords =>
      'Todos los registros de salud, diarios y pesos';

  @override
  String get settingsExportBenefitMedia => 'Incluye imágenes y videos adjuntos';

  @override
  String get settingsStoreUnavailable =>
      'No se puede conectar a la tienda.\nVuelve a intentarlo más tarde.';

  @override
  String settingsPayAndExport(String price) {
    return 'Pagar $price y exportar';
  }

  @override
  String get settingsUnlocked => 'Desbloqueado';

  @override
  String get settingsExportUnlockedBody =>
      'Guarda toda la información y registros de mascotas como archivo ZIP.\nPuedes importar y restaurar el archivo gratis en cualquier momento.';

  @override
  String get settingsExporting => 'Exportando...';

  @override
  String get settingsExportZip => 'Exportar como ZIP';

  @override
  String get settingsExportConfirmBody =>
      'Exporta toda la información, registros y archivos adjuntos en un ZIP.';

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
      'No se pudo cargar la información del producto. Inténtalo de nuevo en breve.';

  @override
  String get settingsPurchaseStartFailed =>
      'No se pudo iniciar el pago. Inténtalo de nuevo en breve.';

  @override
  String get errorDbInit =>
      'Hubo un problema al preparar los datos de la app.\nVuelve a intentarlo más tarde.';

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
  String get memoPlaceholder => 'Escribe una nota libremente';

  @override
  String get addBtn => '+ Añadir';

  @override
  String get errorOccurred => 'Se produjo un error';

  @override
  String errorOccurredWithDetail(String error) {
    return 'Se produjo un error\n$error';
  }

  @override
  String get pet => 'mascota';

  @override
  String get selectPet => 'Seleccionar mascota';

  @override
  String get addNewPet => 'Añadir nueva mascota';

  @override
  String get noAlarms => 'Aún no hay alertas';

  @override
  String alarmEmptyDesc(String petName) {
    return 'Mantén a $petName saludable hoy.\nPulsa Añadir alerta para comenzar.';
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
      'Recordatorios de cuidado de salud de mascotas';

  @override
  String alarmNotificationTitle(String type) {
    return 'Alerta de $type';
  }

  @override
  String get alarmBodyVaccination =>
      'Por favor, verifica la fecha de vacunación.';

  @override
  String get alarmBodyVetAppointment => 'Tu cita veterinaria se acerca.';

  @override
  String get alarmBodyMedication => 'Es la hora de la medicación.';

  @override
  String get alarmBodyMealTime => 'Recuerda la hora de la comida.';

  @override
  String get alarmBodyDailyReminder =>
      'Por favor, añade el registro de salud de hoy.';

  @override
  String get alarmBodyDefault => 'Alerta de cuidado de salud de mascota.';

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
    return '¿Eliminar las $count alertas pasadas?';
  }

  @override
  String get pastAlarmsDeleted => 'Todas las alertas pasadas eliminadas';

  @override
  String get pastLabel => 'Pasado';

  @override
  String get today => 'Hoy';

  @override
  String get tomorrowSameTime => 'Mañana, misma hora';

  @override
  String get snoozeQuestion => '¿Cuándo quieres que te avisemos de nuevo?';

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
  String get snoozeCustom => 'Elegir manualmente';

  @override
  String get snoozeAtThisTime => 'Recordarme a esta hora';

  @override
  String snoozeConfirm(String time) {
    return 'Te avisaremos a las $time';
  }

  @override
  String get selectFutureTime => 'Elige una hora futura';

  @override
  String recordCheckHint(String typeLabel) {
    return 'Puedes verlo en Registro > $typeLabel.';
  }

  @override
  String get pushAlsoCancel =>
      'La notificación push programada también se cancelará.';

  @override
  String get reschedule => 'Reprogramar';

  @override
  String get deleteThisAlarm => 'Eliminar esta alerta';

  @override
  String get vaccineNameRequired => 'Nombre de vacuna *';

  @override
  String get vaccineNameExample => 'Ej. Rabia, vacuna combinada';

  @override
  String get scheduledDateRequired => 'Fecha *';

  @override
  String get reminderTiming => 'Momento del recordatorio';

  @override
  String get sameDay => 'Mismo día';

  @override
  String get reminderTimeRequired => 'Hora del recordatorio *';

  @override
  String get memoInputHint => 'Escribe una nota';

  @override
  String get visitPurposeRequired => 'Propósito de la visita *';

  @override
  String get visitPurposeExample => 'Ej. Revisión, tratamiento de piel';

  @override
  String get appointmentDateTimeRequired => 'Fecha y hora de la cita *';

  @override
  String get hospitalName => 'Nombre del hospital';

  @override
  String get hospitalNameHint => 'Escribe el nombre del hospital';

  @override
  String get medicineNameRequired => 'Nombre del medicamento *';

  @override
  String get medicineNameExample => 'Ej. Antipulgas, desparasitante';

  @override
  String get repeatRequired => 'Repetir *';

  @override
  String get none => 'Ninguno';

  @override
  String get daily => 'Diario';

  @override
  String get weekly => 'Semanal';

  @override
  String get monthly => 'Mensual';

  @override
  String get weekdays => 'Días laborables';

  @override
  String get weekdaysOnly => 'Solo días laborables';

  @override
  String get weekends => 'Fines de semana';

  @override
  String get weekendsOnly => 'Solo fines de semana';

  @override
  String get medicationDateTimeRequired => 'Fecha y hora de la medicación *';

  @override
  String get medicationTimeRequired => 'Hora de la medicación *';

  @override
  String get alarmNameRequired => 'Nombre de la alerta *';

  @override
  String get mealTimeExample => 'Ej. Desayuno, cena';

  @override
  String get mealTimeRequired => 'Hora de la comida *';

  @override
  String get alarmMessage => 'Mensaje de alerta';

  @override
  String get alarmMessageExample => 'Ej. ¿Añadiste el registro de hoy?';

  @override
  String get alarmPastDueMsg =>
      'La fecha de esta alerta ya pasó.\nPuedes elegir una nueva fecha o eliminarla.';

  @override
  String get reselectDate => 'Volver a seleccionar fecha';

  @override
  String get selectDate => 'Seleccionar fecha';

  @override
  String get selectTime => 'Seleccionar hora';

  @override
  String get todayStatus => 'Estado de hoy';

  @override
  String get addRecord => '+ Añadir registro';

  @override
  String get todayReminders => 'Recordatorios de hoy';

  @override
  String get todayRecords => 'Registros de hoy';

  @override
  String get viewAll => 'Ver todo';

  @override
  String get weekStats => 'Estadísticas de salud';

  @override
  String get pottyCount => 'Cuenta de baño';

  @override
  String get mealCount => 'Cuenta de comidas';

  @override
  String get waterLevel => 'Nivel de agua';

  @override
  String get timesUnit => 'veces';

  @override
  String get mealsUnit => 'comidas';

  @override
  String get pointsUnit => 'pts';

  @override
  String get recordDeleted => 'Registro eliminado';

  @override
  String get recordUpdated => 'Registro actualizado';

  @override
  String get deleteRecordConfirm => '¿Eliminar este registro?';

  @override
  String get deleteThisRecord => 'Eliminar este registro';

  @override
  String get typeLabel => 'Tipo';

  @override
  String get statusLabel => 'Estado';

  @override
  String get conditionScore => 'Puntuación de condición';

  @override
  String get symptomTags => 'Etiquetas de síntomas';

  @override
  String get medicineName => 'Nombre del medicamento';

  @override
  String get dose => 'Dosis';

  @override
  String get medicationMethod => 'Método de medicación';

  @override
  String get weightKg => 'Peso (kg)';

  @override
  String get measurementMethod => 'Método de medición';

  @override
  String get mealType => 'Tipo de comida';

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
  String get sideEffects => 'Efectos secundarios';

  @override
  String get groomingType => 'Tipo de peluquería';

  @override
  String get shopName => 'Nombre de la tienda';

  @override
  String get cost => 'Costo';

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
  String get normal => 'Normal';

  @override
  String get loose => 'Blanda';

  @override
  String get hard => 'Dura';

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
  String get runnyNose => 'Moqueo';

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
  String get eyeDrops => 'Gotas oculares';

  @override
  String get earDrops => 'Gotas para oídos';

  @override
  String get vetHospital => 'Hospital veterinario';

  @override
  String get homeScale => 'Báscula doméstica';

  @override
  String get holdAndWeigh => 'Pesar en brazos';

  @override
  String get breakfast => 'Desayuno';

  @override
  String get lunch => 'Almuerzo';

  @override
  String get dinner => 'Cena';

  @override
  String get snack => 'Merienda';

  @override
  String get veryLittle => 'Muy poco';

  @override
  String get little => 'Poco';

  @override
  String get much => 'Mucho';

  @override
  String get veryMuch => 'Muchísimo';

  @override
  String get general => 'Normal';

  @override
  String get regularCheckup => 'Revisión';

  @override
  String get emergency => 'Emergencia';

  @override
  String get mild => 'Leve';

  @override
  String get severe => 'Grave';

  @override
  String get bath => 'Baño';

  @override
  String get fullGrooming => 'Peluquería completa';

  @override
  String get partialGrooming => 'Peluquería parcial';

  @override
  String get nails => 'Uñas';

  @override
  String get earCleaning => 'Limpieza de oídos';

  @override
  String get tartarRemoval => 'Eliminación de sarro';

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
  String get photosAndVideos => 'Fotos · Videos';

  @override
  String get addMedia => 'Añadir multimedia';

  @override
  String get selectMediaMethod => 'Elegir cómo añadir multimedia';

  @override
  String get useCamera => 'Usar cámara';

  @override
  String get takePhotoOrVideo => 'Tomar foto o video';

  @override
  String get chooseFromGallery => 'Elegir de galería';

  @override
  String get multiSelectHint => 'Seleccionar múltiples fotos y videos';

  @override
  String get takePhoto => 'Tomar foto';

  @override
  String get takePhotoDesc => 'Tomar una foto con la cámara';

  @override
  String get recordVideo => 'Grabar video';

  @override
  String get recordVideoDesc => 'Grabar un video con la cámara';

  @override
  String get deleteThisPhoto => 'Eliminar foto';

  @override
  String get deletePhotoConfirm => '¿Eliminar esta foto?';

  @override
  String get deleteThisVideo => 'Eliminar video';

  @override
  String get deleteVideoConfirm => '¿Eliminar este video?';

  @override
  String get muted => 'Silenciado';

  @override
  String get soundOn => 'Sonido activado';

  @override
  String get allowPermissionInSettings => 'Permite el permiso en Ajustes';

  @override
  String get openSettings => 'Abrir ajustes';

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
  String get findNearbyHospitals => 'Buscar hospitales cercanos';

  @override
  String get addNewRecord => 'Añadir nuevo registro (+)';

  @override
  String get viewRecordList => 'Ver registros';

  @override
  String get editDeleteRecord => 'Editar y eliminar registros';

  @override
  String get attachMedia => 'Adjuntar fotos/videos';

  @override
  String get addAlarm => 'Añadir alerta';

  @override
  String get repeatAlarm => 'Alertas repetidas';

  @override
  String get advanceAlarmHint => 'Alertas anticipadas (D-7, D-3, D-1)';

  @override
  String get completeAlarm => 'Completar alertas';

  @override
  String get deleteAlarm => 'Eliminar alertas';

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
  String get dogHealthCareGuide => 'Guía de salud para perros';

  @override
  String get catHealthCareGuide => 'Guía de salud para gatos';

  @override
  String get healthGuideSubtitle =>
      'Una guía profesional de salud\nbasada en recomendaciones veterinarias.';

  @override
  String get vaccination => 'Vacunación';

  @override
  String get coreVaccines => 'Vacunas esenciales';

  @override
  String get required => 'Obligatorio';

  @override
  String get nonCoreVaccines => 'Vacunas opcionales';

  @override
  String get recommended => 'Recomendado';

  @override
  String get parasitePrevention => 'Prevención de parásitos';

  @override
  String get heartworm => 'Gusano del corazón';

  @override
  String get monthlyFreq => 'Mensual';

  @override
  String get externalParasites => 'Parásitos externos (pulgas/garrapatas)';

  @override
  String get internalParasites => 'Parásitos internos';

  @override
  String get threeToSixMonths => '3-6 meses';

  @override
  String get nutritionManagement => 'Nutrición';

  @override
  String get dentalCare => 'Cuidado dental';

  @override
  String get healthCheckup => 'Revisiones de salud';

  @override
  String get emergencySigns => 'Señales de emergencia';

  @override
  String get age => 'Edad';

  @override
  String get checkupCycle => 'Frecuencia';

  @override
  String get mainItems => 'Elementos principales';

  @override
  String get exerciseLevel => 'Nivel de ejercicio';

  @override
  String get breedExamples => 'Ejemplos de razas';

  @override
  String get low => 'Bajo';

  @override
  String get high => 'Alto';

  @override
  String get menu => 'Menú';

  @override
  String get helloGreeting => '¡Hola! ';

  @override
  String get healthyTodayMsg => '\n¿Está sano hoy? 🐾';

  @override
  String get noRecordsYet => 'Aún no hay registros';

  @override
  String lastRecord(String time) {
    return 'Último registro · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return 'Promedio $value$unit/día';
  }

  @override
  String get weightTrend => '⚖️ Tendencia de peso';

  @override
  String get weightChange => '⚖️ Cambio de peso';

  @override
  String get noWeightData => 'Sin datos de peso aún';

  @override
  String get measuredWeight => 'Peso medido';

  @override
  String get standardRange => 'Rango estándar';

  @override
  String get noTodayRecords => 'Sin registros para hoy aún';

  @override
  String get homeNoRecordHint =>
      'Registra condición, baño y peso\npara cuidar la salud de tu mascota.';

  @override
  String noRecordsForDate(String date) {
    return 'Sin registros para $date';
  }

  @override
  String recordsForDate(String date, String count) {
    return 'Registros de $date ($count)';
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
    return 'Se produjo un error al guardar: $error';
  }

  @override
  String get alarmUpdated => 'Alerta actualizada';

  @override
  String get alarmAdded => 'Alerta añadida';

  @override
  String get editAlarm => 'Editar alerta';

  @override
  String get deleteAlarmConfirm => '¿Eliminar esta alerta?';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name será eliminada,\ny su notificación push programada también se cancelará.';
  }

  @override
  String get doneMsg => '✅ Hecho';

  @override
  String get laterMsg => '🕐 Después';

  @override
  String get saveCompletion => '✅ Guardar finalización';

  @override
  String completedQuestion(String type) {
    return '¿Completaste $type?';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return 'Guardaremos automáticamente\n$name en los registros de hoy.';
  }

  @override
  String completionSaved(String name) {
    return 'Finalización de $name guardada';
  }

  @override
  String get tapAlarmTypeHint => '👆 Toca el tipo de alerta que quieres';

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
    return '⚠️ $date pasado · Toca para reprogramar';
  }

  @override
  String get completedLabel => 'Completado';

  @override
  String get edit => 'Editar';

  @override
  String recordDeleteCannotUndo(String category) {
    return 'El registro de $category se eliminará\ny no se podrá restaurar.';
  }

  @override
  String get hintMedicineNameAndDose =>
      'Por favor, introduce el nombre y la dosis del medicamento';

  @override
  String get hintMedicineName =>
      'Por favor, introduce un nombre de medicamento';

  @override
  String get hintDose => 'Por favor, introduce una dosis';

  @override
  String get hintWeightNumber => 'Por favor, introduce el peso como número';

  @override
  String get hintWeight => 'Por favor, introduce el peso';

  @override
  String get hintWeightIsNumber => 'Por favor, introduce el peso como número';

  @override
  String get hintWalkTime => 'Por favor, introduce el tiempo de paseo';

  @override
  String get hintWalkTimeIsNumber =>
      'Por favor, introduce el tiempo de paseo como número';

  @override
  String get hintWalkTimeNumber =>
      'Por favor, introduce el tiempo de paseo como número';

  @override
  String get hintSelectBrushingArea =>
      'Por favor, selecciona al menos un área de cepillado';

  @override
  String get hintSelectVaccineType =>
      'Por favor, selecciona al menos un tipo de vacuna';

  @override
  String get hintSelectGroomingType =>
      'Por favor, selecciona al menos un tipo de peluquería';

  @override
  String get hintTitle => 'Por favor, introduce un título';

  @override
  String get hintVaccineName => 'Por favor, introduce un nombre de vacuna';

  @override
  String get hintSelectScheduledDate => 'Por favor, selecciona una fecha';

  @override
  String get hintSelectScheduledTime => 'Por favor, selecciona una hora';

  @override
  String get hintVisitPurpose =>
      'Por favor, introduce el propósito de la visita';

  @override
  String get hintSelectAppointmentDate =>
      'Por favor, selecciona una fecha de cita';

  @override
  String get hintSelectAppointmentTime =>
      'Por favor, selecciona una hora de cita';

  @override
  String get hintMedicineNameInput =>
      'Por favor, introduce un nombre de medicamento';

  @override
  String get hintSelectMedicationDate =>
      'Por favor, selecciona una fecha de medicación';

  @override
  String get hintSelectMedicationTime =>
      'Por favor, selecciona una hora de medicación';

  @override
  String get hintAlarmName => 'Por favor, introduce un nombre de alerta';

  @override
  String get hintSelectMealTime => 'Por favor, selecciona una hora de comida';

  @override
  String get hintSelectAlarmTime => 'Por favor, selecciona una hora de alerta';

  @override
  String get noPetRegisterFirst =>
      'Sin mascota aún. Por favor, añade una desde Perfil primero.';

  @override
  String get alarmRescheduled => 'Alerta reprogramada';

  @override
  String get examplePetName => 'Ej. Luna';

  @override
  String get exampleBreed => 'Ej. Maltés';

  @override
  String get exampleBreedMulti => 'Ej. Maltés, Persa';

  @override
  String get example30 => 'Ej. 30';

  @override
  String get example80 => 'Ej. 80';

  @override
  String get example200 => 'Ej. 200';

  @override
  String get example25 => 'Ej. 2.5';

  @override
  String get example35000 => 'Ej. 35000';

  @override
  String get example50000 => 'Ej. 50000';

  @override
  String get enterNameHint => 'Por favor, introduce un nombre';

  @override
  String get addNewPetTitle => 'Añadir nueva mascota';

  @override
  String get basicInfo => 'Información básica';

  @override
  String get idInfo => 'Identificación';

  @override
  String get idInfoOptional => 'Identificación (opcional)';

  @override
  String get name => 'Nombre';

  @override
  String get petKind => 'Tipo';

  @override
  String get breed => 'Raza';

  @override
  String get weight => 'Peso';

  @override
  String get microchip => 'Microchip';

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
  String get neutered => 'Esterilización';

  @override
  String get done => 'Completado';

  @override
  String get notDone => 'Pendiente';

  @override
  String get notEntered => 'Sin ingresar';

  @override
  String get notRegistered => 'Sin registrar';

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
      'Añade una mascota y\ngestiona su salud juntos.';

  @override
  String get registerPetBtn => 'Añadir mascota';

  @override
  String get editPet => 'Editar mascota';

  @override
  String get neuteringStatus => 'Estado de esterilización';

  @override
  String get neuteredDone => 'Esterilizado';

  @override
  String get notNeutered => 'No esterilizado';

  @override
  String get selectDateHint => 'Selecciona una fecha';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get registerBtn => 'Registrar';

  @override
  String deletePetName(String name) {
    return 'Eliminar $name';
  }

  @override
  String deletePetConfirm(String name) {
    return '¿Eliminar $name?';
  }

  @override
  String deletePetWarning(String name) {
    return 'Todos los registros y alertas de $name se eliminarán y no se podrán restaurar.';
  }

  @override
  String petDeleted(String name) {
    return '$name eliminado';
  }

  @override
  String petAdded(String name) {
    return '$name añadido';
  }

  @override
  String get storeUnavailableMsg =>
      'No se puede conectar a la tienda ahora mismo. Por favor, inténtalo más tarde.';

  @override
  String get checkingPaymentMsg =>
      'Verificando información de pago. Por favor, inténtalo de nuevo en breve.';

  @override
  String get paymentCompleteMsg =>
      'Pago completado. Por favor, introduce la información de tu nueva mascota.';

  @override
  String get addNewFamilyMember => '¿Añadir un nuevo miembro de la familia?';

  @override
  String get firstPetFreeDesc =>
      'La primera mascota es gratuita. A partir de la segunda, cada mascota adicional requiere pago.';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '$count mascotas registradas\nPor favor, inténtalo cuando la tienda esté disponible.';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '$count mascotas registradas\nPaga $price para añadir un nuevo miembro.';
  }

  @override
  String get maybeLater => 'Quizás después';

  @override
  String get unavailable => 'No disponible';

  @override
  String payAndAdd(String price) {
    return 'Pagar $price y añadir';
  }

  @override
  String get addNextAppointment => '+ Añadir próxima cita';

  @override
  String get pottyRecordSaved => 'Registro de baño guardado';

  @override
  String get conditionRecordSaved => 'Registro de condición guardado';

  @override
  String get medicationRecordSaved => 'Registro de medicación guardado';

  @override
  String get weightRecordSaved => 'Registro de peso guardado';

  @override
  String get mealRecordSaved => 'Registro de comida guardado';

  @override
  String get waterRecordSaved => 'Registro de agua guardado';

  @override
  String get vetVisitRecordSaved => 'Registro de visita veterinaria guardado';

  @override
  String get vaccinationRecordSaved => 'Registro de vacunación guardado';

  @override
  String get groomingRecordSaved => 'Registro de peluquería guardado';

  @override
  String get brushingRecordSaved => 'Registro de cepillado guardado';

  @override
  String get walkRecordSaved => 'Registro de paseo guardado';

  @override
  String get memoSaved => 'Nota guardada';

  @override
  String get moreQuestions => '¿Tienes más preguntas?';

  @override
  String get contactViaSendFeedback =>
      'Contáctanos desde Ajustes > Enviar comentarios.\nTe responderemos pronto.';

  @override
  String get contactViaSendFeedbackLong =>
      'Contáctanos a través de Enviar comentarios en Ajustes.\nResponderemos rápidamente.';

  @override
  String get privacyPolicyEffectiveDate =>
      'Esta política de privacidad es efectiva desde el 1 de enero de 2026.\nÚltima actualización: 8 de mayo de 2026';

  @override
  String get privacyCollectedInfo =>
      'La información recopilada se usa solo para los propósitos indicados.';

  @override
  String get privacyDataFeatures =>
      'Pet Sumtan ofrece funciones de exportación (copia de seguridad) e importación (restauración) de datos.';

  @override
  String get privacyPolicyMayUpdate =>
      'Esta política de privacidad puede actualizarse por cambios legales o de servicio.';

  @override
  String get privacyPolicyContact =>
      'Para preguntas sobre esta política de privacidad, contáctenos a continuación.';

  @override
  String get catMeal => 'Comida';

  @override
  String get catWater => 'Agua';

  @override
  String get catGrooming => 'Peluquería';

  @override
  String get catBrushing => 'Cepillado';

  @override
  String get catWalk => 'Paseo';

  @override
  String get catHospital => 'Veterinaria';

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
  String get groomingFormTitle => '✂️ Registro de peluquería';

  @override
  String get brushingFormTitle => '🪥 Registro de cepillado';

  @override
  String get conditionFormTitle => '🌡️ Registro de estado';

  @override
  String get poopFormTitle => '💩 Registro de baño';

  @override
  String get vaccinationFormTitle => '💉 Registro de vacunación';

  @override
  String get hospitalFormTitle => '🏥 Registro veterinario';

  @override
  String get memoFormTitle => '📝 Nota';

  @override
  String get measureMethod => 'Método de medición';

  @override
  String get feedAmount => 'Cantidad alimentada';

  @override
  String get mlInputLabel => 'Entrada directa en mL';

  @override
  String get alarmRescheduleNote =>
      'La fecha programada de esta alerta ha pasado.\nPuedes establecer una nueva fecha o eliminarla.';

  @override
  String get nailTrim => 'Corte de uñas';

  @override
  String get shopNameExample => 'p. ej. Salón de mascotas Fluffy';

  @override
  String get poopRecordSaved => '💩 Registro de deposición guardado';

  @override
  String get memoRecordSaved => '📝 Memo guardado';

  @override
  String get other => 'Otro';

  @override
  String get whole => 'Todo el cuerpo';

  @override
  String get paw => 'Pata';

  @override
  String get importance => 'Importancia';

  @override
  String get timeTaken => 'Tiempo empleado';

  @override
  String get example10 => 'ej. 10';

  @override
  String get hospitalNameExample => 'ej. Hospital Happy Pet';

  @override
  String get diagnosisExample => 'ej. Enteritis, Dermatitis';

  @override
  String get memoTitlePlaceholder => 'Ingresa el título del memo';

  @override
  String get hintMemoTitle => '💡 Por favor ingresa un título';

  @override
  String get poopType => 'Tipo';

  @override
  String get poopStatus => 'Estado';

  @override
  String get feces => 'Heces';

  @override
  String get bloody => 'Sangre en heces';

  @override
  String get vaccineDhppl => 'Combo DHPPL';

  @override
  String get vaccineCorona => 'Enteritis por coronavirus';

  @override
  String get vaccineKennelCough => 'Tos de las perreras';

  @override
  String get vaccineRabies => 'Rabia';

  @override
  String get vaccineInfluenza => 'Influenza';

  @override
  String get vaccineFvrcp => 'Combo FVRCP';

  @override
  String get vaccineFelv => 'Leucemia (FeLV)';

  @override
  String get vaccineChlamydia => 'Clamidia';

  @override
  String get mute => 'Silenciar';

  @override
  String get photoVideo => 'Foto · Video';

  @override
  String photoVideoCount(String count) {
    return 'Foto · Video · $count';
  }

  @override
  String get selectMediaSource => 'Seleccionar fuente de medios';

  @override
  String get cameraCapture => 'Cámara';

  @override
  String get cameraCaptureSubtitle => 'Tomar foto o video';

  @override
  String get selectFromGallery => 'Galería';

  @override
  String get selectFromGallerySubtitle => 'Seleccionar fotos · videos';

  @override
  String get takePhotoSubtitle => 'Tomar foto con la cámara';

  @override
  String get recordVideoSubtitle => 'Grabar video con la cámara';

  @override
  String get permissionRequired => 'Permite el acceso en Ajustes';

  @override
  String get confirmDeletePhoto => '¿Eliminar esta foto?';

  @override
  String get confirmDeleteVideo => '¿Eliminar este video?';

  @override
  String get hintMedicineAndDose => '💡 Ingresa nombre del medicamento y dosis';

  @override
  String deleteRecordBody(String category) {
    return 'El registro de $category se eliminará\ny no se podrá deshacer.';
  }

  @override
  String dayCountShort(int days) {
    return '$days d';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan es una app que te permite registrar y gestionar en un solo lugar la salud y la rutina diaria de tu mascota.\nPuedes guardar fácilmente distintos registros de salud, como comida, agua, baño, peso, medicación y visitas al veterinario, y usar las alertas para no olvidar citas importantes.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      'Consulta de un vistazo todos los registros añadidos hoy. Toca un registro para ver sus detalles o editarlo.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      'Consulta en gráficos el número de baños, las comidas y la cantidad de agua de esta semana. Te ayuda a entender la rutina de tu mascota.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      'Muestra los registros recientes de peso en un gráfico para que puedas seguir fácilmente su evolución.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'Al tocar el botón, puedes buscar hospitales veterinarios cercanos en Naver Maps.';

  @override
  String get helpHomeAddNewRecordDesc =>
      'Toca el botón + en la parte inferior de la pantalla para elegir una categoría y añadir un nuevo registro.';

  @override
  String get helpRecordCategoriesIntro =>
      'Puedes registrar la rutina diaria de tu mascota en 12 categorías.';

  @override
  String get helpCategoryPottyName => 'Baño';

  @override
  String get helpCategoryPottyDesc =>
      'Registra si hizo sus necesidades y su estado. También puedes adjuntar fotos.';

  @override
  String get helpCategoryConditionName => 'Estado';

  @override
  String get helpCategoryConditionDesc =>
      'Registra el estado general de tu mascota.';

  @override
  String get helpCategoryMedicationName => 'Medicación';

  @override
  String get helpCategoryMedicationDesc =>
      'Registra el nombre del medicamento, la dosis y la hora de administración.';

  @override
  String get helpCategoryWeightName => 'Peso';

  @override
  String get helpCategoryWeightDesc =>
      'Registra el peso en kg. Puedes consultar su evolución en la pantalla de inicio.';

  @override
  String get helpCategoryMealName => 'Comida';

  @override
  String get helpCategoryMealDesc =>
      'Registra la cantidad de comida y el tipo de alimento. También puedes adjuntar fotos y videos.';

  @override
  String get helpCategoryWaterName => 'Agua';

  @override
  String get helpCategoryWaterDesc =>
      'Registra la cantidad de agua en ml. También puedes adjuntar fotos y videos.';

  @override
  String get helpCategoryHospitalName => 'Hospital';

  @override
  String get helpCategoryHospitalDesc =>
      'Registra el nombre del hospital y los detalles de la consulta. También puedes adjuntar fotos y videos.';

  @override
  String get helpCategoryVaccinationName => 'Vacunación';

  @override
  String get helpCategoryVaccinationDesc =>
      'Registra el tipo de vacuna y la fecha de vacunación.';

  @override
  String get helpCategoryGroomingName => 'Peluquería';

  @override
  String get helpCategoryGroomingDesc =>
      'Registra los detalles de la peluquería y adjunta fotos o videos.';

  @override
  String get helpCategoryDentalName => 'Cepillado dental';

  @override
  String get helpCategoryDentalDesc =>
      'Registra si se realizó el cepillado dental y añade una nota.';

  @override
  String get helpCategoryWalkName => 'Paseo';

  @override
  String get helpCategoryWalkDesc =>
      'Registra la distancia y el tiempo del paseo.';

  @override
  String get helpCategoryMemoName => 'Nota';

  @override
  String get helpCategoryMemoDesc => 'Puedes dejar una nota libremente.';

  @override
  String get helpJournalViewRecordListDesc =>
      'Consulta todos los registros por fecha. Las etiquetas de categoría te ayudan a distinguir rápidamente cada tipo de registro.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      'Toca un registro para abrir la hoja de edición. Puedes modificar el contenido o eliminarlo.';

  @override
  String get helpJournalAttachMediaDesc =>
      'En algunas categorías, como comida, agua, hospital, peluquería y baño, puedes adjuntar fotos o videos.';

  @override
  String get helpAlarmAddDesc =>
      'Puedes crear alertas de varios tipos, como vacunación, medicación, visita al veterinario y peluquería. Primero elige el tipo de alerta y después configura la fecha y la hora.';

  @override
  String get helpAlarmRepeatDesc =>
      'Configura reglas de repetición, como diaria, semanal o mensual. Es útil para medicaciones regulares o prevención del gusano del corazón.';

  @override
  String get helpAlarmAdvanceDesc =>
      'Para citas importantes, como la vacunación, puedes recibir recordatorios con 7 días, 3 días y 1 día de anticipación.';

  @override
  String get helpAlarmCompleteDesc =>
      'Toca una alerta para marcarla como completada. Las alertas completadas se pueden consultar en la lista de alertas pasadas.';

  @override
  String get helpAlarmDeleteDesc =>
      'Desliza una alerta hacia la izquierda para eliminarla.';

  @override
  String get helpPetRegisterDesc =>
      'Registra tu mascota introduciendo nombre, tipo, raza, sexo, fecha de nacimiento y estado de esterilización.';

  @override
  String get helpPetEditProfileDesc =>
      'En la pantalla de perfil puedes editar el nombre, la raza, el peso, el número de microchip, el número de registro y la foto de perfil.';

  @override
  String get helpPetManageMultipleDesc =>
      'Puedes registrar varias mascotas. Toca la etiqueta de mascota en la parte superior para cambiar la mascota que quieres gestionar.';

  @override
  String get helpDogHealthGuideDesc =>
      'Ofrece información de salud basada en recomendaciones veterinarias, como calendarios de vacunas esenciales y opcionales, prevención del gusano del corazón y parásitos externos, cuidado dental y nutrición.';

  @override
  String get helpCatHealthGuideDesc =>
      'Consulta calendarios de vacunación específicos para gatos, prevención de parásitos, cuidado dental e información nutricional.';

  @override
  String get helpSettingsNotificationDesc =>
      'Activa o desactiva todas las notificaciones de la app.';

  @override
  String get helpSettingsExportDesc =>
      'Exporta todos los datos registrados como archivo ZIP. Úsalo como copia de seguridad al cambiar de dispositivo.';

  @override
  String get helpSettingsImportDesc =>
      'Importa un archivo ZIP de copia de seguridad exportado anteriormente para restaurar tus datos.';

  @override
  String get helpSettingsFeedbackDesc =>
      'Envíanos por correo cualquier problema, incomodidad o sugerencia de mejora. Nos ayuda mucho a mejorar la app.';

  @override
  String get helpFaqDeletePetQ =>
      'Si elimino una mascota, ¿también se eliminarán todos sus registros?';

  @override
  String get helpFaqDeletePetA =>
      'Sí. Al eliminar una mascota, también se eliminarán todos sus registros y alertas asociados. Antes de eliminarla, te recomendamos hacer una copia de seguridad con Exportar datos.';

  @override
  String get helpFaqMultipleMediaQ =>
      '¿Puedo adjuntar varias fotos a un registro?';

  @override
  String get helpFaqMultipleMediaA =>
      'Sí. Puedes adjuntar varias fotos y videos. Puedes elegirlos desde la galería o capturarlos directamente con la cámara.';

  @override
  String get helpFaqNoNotificationQ => 'No recibo notificaciones.';

  @override
  String get helpFaqNoNotificationA =>
      'Verifica que las notificaciones de Pet Sumtan estén permitidas en los ajustes de notificaciones del dispositivo. También revisa que las notificaciones de la app estén activadas en Ajustes > Ajustes de notificaciones.';

  @override
  String get helpFaqMoveDataQ =>
      '¿Puedo transferir mis datos a un dispositivo nuevo?';

  @override
  String get helpFaqMoveDataA =>
      'Sí. En el dispositivo anterior, guarda un archivo de copia de seguridad desde Ajustes > Exportar datos. Luego, en el dispositivo nuevo, restáuralo desde Ajustes > Importar datos.';

  @override
  String get helpFaqMultiplePetsQ => '¿Puedo registrar varias mascotas?';

  @override
  String get helpFaqMultiplePetsA =>
      'De forma predeterminada, puedes registrar 1 mascota gratis. El registro de mascotas adicionales está disponible como función premium.';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan es una app que puede usarse sin registrarse, y todos los datos se almacenan únicamente en el dispositivo del usuario. No transmitimos información personal a servidores externos y protegemos de forma segura la valiosa información de tus mascotas.';

  @override
  String get privacySection1Title => 'Información personal recopilada';

  @override
  String get privacySection1Body =>
      'Pet Sumtan puede usarse sin registrarse y no recopila información separada que permita identificar personalmente al usuario. Sin embargo, para ofrecer las funciones de la app, la siguiente información puede almacenarse en el dispositivo.';

  @override
  String get privacyLocalStorageInfo =>
      'Información almacenada localmente en el dispositivo';

  @override
  String get privacyPetInfo =>
      'Información de la mascota: nombre, especie, raza, fecha de nacimiento, sexo, peso, estado de esterilización, número de microchip y número de registro animal';

  @override
  String get privacyHealthRecords =>
      'Registros de salud: baño, comida, agua, peso, medicación, vacunación, hospital, peluquería, cepillado dental, paseo, estado, notas y otros registros introducidos directamente por el usuario';

  @override
  String get privacyAttachedMedia =>
      'Multimedia adjunta: fotos y videos capturados o seleccionados directamente por el usuario';

  @override
  String get privacyNotificationSettings =>
      'Ajustes de alerta: tipo de alerta, fecha y hora programadas, reglas de repetición';

  @override
  String get privacyInAppPurchaseTitle => 'Compras dentro de la app';

  @override
  String get privacyPaymentProcessing =>
      'Los pagos se procesan a través de Apple App Store o Google Play Store, y la app no recopila ni almacena directamente información de pago.';

  @override
  String get privacyReceiptVerification =>
      'Solo se procesa la información mínima necesaria para verificar los recibos de compra, de acuerdo con las políticas de cada plataforma.';

  @override
  String get privacySection2Title =>
      'Finalidad de la recopilación y uso de información personal';

  @override
  String get privacyPurposeRecords =>
      'Guardar y consultar los registros de salud de las mascotas';

  @override
  String get privacyPurposeStats =>
      'Proporcionar estadísticas en la pantalla de inicio, como baño, comidas y consumo de agua de la semana, además de gráficos de cambio de peso';

  @override
  String get privacyPurposeReminders =>
      'Enviar alertas relacionadas con la salud, como vacunación, medicación y visitas veterinarias';

  @override
  String get privacyPurposeBackupRestore =>
      'Proporcionar funciones de copia de seguridad y restauración de datos';

  @override
  String get privacyPurposePaidEligibility =>
      'Verificar la elegibilidad para usar funciones de pago';

  @override
  String get privacySection3Title =>
      'Conservación y eliminación de información personal';

  @override
  String get privacyRetentionBody =>
      'Todos los datos de Pet Sumtan se almacenan únicamente en la base de datos local del dispositivo del usuario (SQLite) y no se transmiten a servidores externos.';

  @override
  String get privacyDataDeletionMethod => 'Métodos de eliminación de datos';

  @override
  String get privacyDeleteInApp =>
      'Puedes eliminar directamente la información y los registros de tus mascotas desde Ajustes > Gestión de datos dentro de la app.';

  @override
  String get privacyDeleteUninstall =>
      'Al eliminar la app, también se eliminarán todos los datos almacenados en el dispositivo.';

  @override
  String get privacyDeleteBackupWarning =>
      'Ten en cuenta que, si no realizas una copia de seguridad (exportación) antes de eliminar la app, los datos no podrán recuperarse.';

  @override
  String get privacySection4Title =>
      'Cesión de información personal a terceros';

  @override
  String get privacyThirdPartyBody =>
      'Pet Sumtan no proporciona información personal del usuario a terceros. Sin embargo, se exceptúan los siguientes casos.';

  @override
  String get privacyThirdPartyUserExport =>
      'Cuando el propio usuario utiliza la función de exportación de datos, como compartir un archivo de copia de seguridad';

  @override
  String get privacyThirdPartyLegalRequest =>
      'Cuando lo exija la ley o exista una solicitud legal de las autoridades competentes';

  @override
  String get privacySection5Title => 'Permisos de acceso';

  @override
  String get privacyPermissionsBody =>
      'Para ofrecer las funciones de la app, pueden solicitarse los siguientes permisos. Aunque no concedas un permiso, podrás usar normalmente el resto de funciones, excepto la que dependa de dicho permiso.';

  @override
  String get privacyPermissionCameraName => 'Cámara';

  @override
  String get privacyPermissionCameraDesc =>
      'Se usa para tomar fotos o grabar videos directamente y adjuntarlos a los registros de salud.';

  @override
  String get privacyPermissionMediaName => 'Acceso a fotos y multimedia';

  @override
  String get privacyPermissionMediaDesc =>
      'Se usa para seleccionar fotos y videos de la galería y adjuntarlos a los registros.';

  @override
  String get privacyPermissionNotificationName => 'Notificaciones';

  @override
  String get privacyPermissionNotificationDesc =>
      'Se usan para enviar alertas relacionadas con la salud, como vacunación, medicación y visitas veterinarias.';

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
      'Exportar: permite guardar o compartir todos los datos de la app como un archivo (.zip).';

  @override
  String get privacyBackupImport =>
      'Importar: permite cargar un archivo de copia de seguridad exportado anteriormente y restaurar los datos.';

  @override
  String get privacyBackupWarning =>
      'Los archivos de copia de seguridad son gestionados directamente por el usuario. Ten cuidado de no compartirlos con otras personas.';

  @override
  String get privacySection7Title =>
      'Protección de la información personal de menores';

  @override
  String get privacyChildrenBody =>
      'Pet Sumtan no recopila por separado información personal de menores de 14 años. Todos los datos de la app se almacenan únicamente en el dispositivo y no se transmiten a servidores externos, por lo que también puede ser usada de forma segura por menores.';

  @override
  String get privacySection8Title => 'Cambios en esta política de privacidad';

  @override
  String get privacyPolicyChangeNotice =>
      'En caso de cambios, se informará mediante las notas de actualización de la app o avisos dentro de la app.';

  @override
  String get privacyPolicyChangeEffective =>
      'La política modificada entrará en vigor 7 días después del aviso.';

  @override
  String get privacySection9Title => 'Contacto';

  @override
  String get hgDogHeroTitle => 'Guía de salud para perros';

  @override
  String get hgCatHeroTitle => 'Guía de salud para gatos';

  @override
  String get hgHeroSubtitle =>
      'Una guía profesional de salud\nbasada en recomendaciones veterinarias.';

  @override
  String get hgVaccination => 'Vacunación';

  @override
  String get hgCoreVaccines => 'Vacunas esenciales (Core Vaccine)';

  @override
  String get hgNonCoreVaccines => 'Vacunas opcionales (Non-Core)';

  @override
  String get hgRequired => 'Obligatoria';

  @override
  String get hgRecommended => 'Recomendada';

  @override
  String get hgParasitePrevention => 'Prevención de parásitos';

  @override
  String get hgHeartworm => 'Dirofilariosis';

  @override
  String get hgMonthly => 'Mensual';

  @override
  String get hgExternalParasites => 'Parásitos externos (pulgas y garrapatas)';

  @override
  String get hgInternalParasites => 'Parásitos internos';

  @override
  String get hgThreeToSixMonths => '3 a 6 meses';

  @override
  String get hgRegular => 'Regular';

  @override
  String get hgRegularCheckup => 'Chequeo de salud regular';

  @override
  String get hgDentalCare => 'Cuidado dental y bucal';

  @override
  String get hgForbiddenFoods => 'Alimentos estrictamente prohibidos';

  @override
  String get hgEmergencySymptoms =>
      'Síntomas que requieren visita inmediata al veterinario';

  @override
  String get hgExerciseMentalHealth => 'Ejercicio y salud mental';

  @override
  String get hgWalk => 'Paseo';

  @override
  String get hgDaily => 'Diario';

  @override
  String get hgBreedExerciseAmount => 'Ejercicio recomendado por raza';

  @override
  String get hgPlayBrainStimulation => 'Juego y estimulación mental';

  @override
  String get hgStressSignals => 'Reconocer señales de estrés';

  @override
  String get hgCaution => 'Precaución';

  @override
  String get hgSocialization => 'Socialización y estímulos ambientales';

  @override
  String get hgDogCoreDhppl =>
      '**DHPPL (vacuna combinada)** — moquillo, hepatitis, parvovirus, parainfluenza y leptospirosis.\n1.ª dosis a las 6–8 semanas, 3 dosis con intervalos de 3–4 semanas y refuerzo anual';

  @override
  String get hgDogCoreRabies =>
      '**Rabia** — 1.ª dosis después de los 3 meses, luego 1 vez al año (vacuna obligatoria por ley)';

  @override
  String get hgDogCoreCorona =>
      '**Enteritis por coronavirus** — inicio a las 6–8 semanas, 2 dosis con intervalos de 3–4 semanas y refuerzo anual';

  @override
  String get hgDogNonCoreKennel =>
      '**Tos de las perreras** — recomendada en entornos con muchos perros, peluquerías o guarderías caninas. Puede ser intranasal o inyectable';

  @override
  String get hgDogNonCoreFlu =>
      '**Influenza canina** — recomendada para perros con mucha actividad al aire libre o contacto frecuente con otros perros';

  @override
  String get hgDogHeartworm1 =>
      'Durante y alrededor de la temporada de mosquitos (marzo a noviembre), se recomienda administrar prevención **1 vez al mes**';

  @override
  String get hgDogHeartworm2 =>
      'La infección es difícil de tratar y puede ser mortal — **la prevención es la mejor opción**';

  @override
  String get hgDogHeartworm3 =>
      'Antes de administrarla, debe realizarse una prueba y confirmar que no hay infección';

  @override
  String get hgDogHeartworm4 =>
      'La administración durante todo el año es aún más segura (recomendación veterinaria)';

  @override
  String get hgDogExternalParasites1 =>
      'Administrar preventivos spot-on o por vía oral **todos los meses**';

  @override
  String get hgDogExternalParasites2 =>
      'Después del paseo, revisa siempre orejas, entre los dedos y axilas para detectar garrapatas';

  @override
  String get hgDogExternalParasites3 =>
      'Para retirar una garrapata, usa pinzas y tira lentamente en dirección vertical (no la retuerzas)';

  @override
  String get hgDogInternalParasites1 =>
      'Lombrices, anquilostomas y tricocéfalos: administrar desparasitante **cada 3 a 6 meses**';

  @override
  String get hgDogInternalParasites2 =>
      'Cachorros, desde las 2 semanas de vida: desparasitar 4 veces con intervalos de 2 semanas y luego mantener control regular';

  @override
  String get hgDental1 =>
      'El cepillado diario es ideal — se recomienda al menos **3 veces por semana**';

  @override
  String get hgDental2 =>
      'Usa siempre **pasta dental específica para mascotas** (no uses pasta humana con xilitol)';

  @override
  String get hgDental3 =>
      'Si hay mucho sarro, se necesita limpieza dental en clínica veterinaria (requiere anestesia general)';

  @override
  String get hgDental4 =>
      'Los snacks dentales y juguetes dentales pueden ayudar como cuidado complementario';

  @override
  String get hgDogForbiddenFoodAlert =>
      'Los alimentos siguientes son tóxicos para los perros. Incluso pequeñas cantidades pueden ser peligrosas, así que nunca los ofrezcas.';

  @override
  String get hgDogForbiddenGrape =>
      '**Uvas y pasas** — pueden causar insuficiencia renal; incluso pequeñas cantidades pueden ser mortales';

  @override
  String get hgDogForbiddenChocolate =>
      '**Chocolate y cacao** — intoxicación por teobromina, insuficiencia cardíaca y convulsiones';

  @override
  String get hgDogForbiddenOnion =>
      '**Cebolla, ajo y cebollino** — destruyen glóbulos rojos y causan anemia hemolítica';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xilitol** — provoca secreción excesiva de insulina, hipoglucemia e insuficiencia hepática';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Nueces de macadamia** — debilidad muscular, fiebre alta y vómitos';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Masa cruda y alcohol** — intoxicación por etanol e hipoglucemia';

  @override
  String get hgDogForbiddenAvocado =>
      '**Aguacate** — contiene persina, puede causar vómitos y diarrea';

  @override
  String get hgEmergencyAlert =>
      'Si aparece cualquiera de los síntomas siguientes, acude inmediatamente a una clínica veterinaria.';

  @override
  String get hgDogEmergency1 =>
      'Pérdida total de apetito durante más de 24 horas';

  @override
  String get hgDogEmergency2 =>
      'Vómitos o diarrea repetidos 3 veces o más en un día';

  @override
  String get hgDogEmergency3 =>
      'Distensión abdominal y arcadas sin vomitar (sospecha de dilatación-torsión gástrica)';

  @override
  String get hgDogEmergency4 =>
      'Dificultad para respirar, encías pálidas o cianosis';

  @override
  String get hgDogEmergency5 => 'Convulsiones, crisis o pérdida de conciencia';

  @override
  String get hgDogEmergency6 => 'No orinar durante más de 12 horas';

  @override
  String get hgDogEmergency7 =>
      'Traumatismo visible, fractura o sangrado abundante';

  @override
  String get hgDogExerciseAlert =>
      'Para los perros, la falta de ejercicio no es solo un problema físico. Puede ser una causa principal de estrés, ansiedad y conductas destructivas.';

  @override
  String get hgDogWalk1 =>
      'Perros pequeños: al menos **20–30 minutos** al día; perros medianos y grandes: se recomienda **1 hora** o más';

  @override
  String get hgDogWalk2 =>
      'El paseo no es solo para hacer sus necesidades — es tiempo de **estimulación olfativa, socialización y alivio del estrés**';

  @override
  String get hgDogWalk3 =>
      'Permite suficiente tiempo para olfatear — es muy eficaz para aliviar el cansancio mental';

  @override
  String get hgDogWalk4 =>
      'En verano, cuidado con quemaduras por el asfalto — se recomienda pasear antes de las 7 a. m. o por la noche';

  @override
  String get hgDogPlay1 =>
      '**Lanzar la pelota y tira y afloja** — libera energía física y fortalece el vínculo con el tutor';

  @override
  String get hgDogPlay2 =>
      '**Juegos de olfato** — estimulan el cerebro y pueden lograr un efecto similar a 30 minutos de paseo en solo 15 minutos';

  @override
  String get hgDogPlay3 =>
      '**Juguetes interactivos y Kong** — ayudan a reducir la ansiedad por separación cuando está solo';

  @override
  String get hgDogPlay4 =>
      'Solo **10–15 minutos** de juego concentrado al día pueden reducir notablemente el estrés';

  @override
  String get hgDogStress1 =>
      'Destruir muebles u objetos, ladridos excesivos — señal de falta de ejercicio o estimulación';

  @override
  String get hgDogStress2 =>
      'Morderse la cola o lamerse excesivamente patas/cuerpo — conducta compulsiva o intento de aliviar estrés';

  @override
  String get hgDogStress3 =>
      'Ansiedad excesiva cuando el tutor sale y accidentes al hacer sus necesidades — posible ansiedad por separación';

  @override
  String get hgDogStress4 =>
      'Si persiste, consulta a un veterinario o especialista en comportamiento animal';

  @override
  String get hgDogSocial1 =>
      'Entre las **3 y 14 semanas** ocurre el periodo clave de socialización — es importante exponer al cachorro a distintas personas, sonidos y entornos';

  @override
  String get hgDogSocial2 =>
      'Interacción con otros perros — aprovecha parques caninos o clases para cachorros';

  @override
  String get hgDogSocial3 =>
      'Experimentar nuevos lugares, olores y sonidos contribuye al bienestar mental';

  @override
  String get hgDogSocial4 =>
      'El entrenamiento con refuerzo positivo (clicker, premios) estimula el cerebro y fortalece el vínculo al mismo tiempo';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP (vacuna combinada)** — herpesvirus felino, calicivirus y panleucopenia felina.\n1.ª dosis a las 6–8 semanas, 3 dosis con intervalos de 3–4 semanas y luego cada 1–3 años';

  @override
  String get hgCatCoreRabies =>
      '**Rabia** — esencial para gatos que salen al exterior; también recomendada para gatos de interior (obligatoria por ley)';

  @override
  String get hgCatNonCoreFelv =>
      '**Leucemia felina (FeLV)** — muy recomendada para gatos que salen al exterior o viven con varios gatos';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Clamidia felina** — prevención de conjuntivitis en entornos con varios gatos';

  @override
  String get hgCatNonCoreFiv =>
      '**Virus de inmunodeficiencia felina (FIV)** — especialmente en machos que salen al exterior; se transmite por heridas de peleas';

  @override
  String get hgCatExternalParasites1 =>
      'Gatos que salen al exterior: prevención contra pulgas y garrapatas **1 vez al mes**';

  @override
  String get hgCatExternalParasites2 =>
      'Incluso los gatos de interior pueden exponerse a pulgas traídas en ropa o zapatos → se recomienda prevención **cada 3 meses**';

  @override
  String get hgCatExternalParasites3 =>
      'Al usar productos spot-on, aplícalos correctamente en la nuca';

  @override
  String get hgCatInternalHeartworm => 'Parásitos internos y dirofilariosis';

  @override
  String get hgCatInternalParasites1 =>
      'Lombrices y tenias: administrar desparasitante **cada 3 a 6 meses**';

  @override
  String get hgCatInternalParasites2 =>
      'Si se alimenta con carne o pescado crudo, se recomiendan controles más frecuentes';

  @override
  String get hgCatHeartworm1 =>
      'Dirofilariosis — en gatos **no existe tratamiento específico, por lo que la prevención es el único método**. Para gatos que salen al exterior, se recomienda firmemente la prevención mensual';

  @override
  String get hgCatMajorDiseases => 'Principales enfermedades felinas a vigilar';

  @override
  String get hgCatDiseaseAlert =>
      'Los gatos tienden a ocultar el dolor o la enfermedad; cuando aparecen síntomas, a menudo la afección ya está avanzada. Los chequeos regulares son especialmente importantes.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Enfermedad del tracto urinario inferior felino (FLUTD)** — común en machos. Si no puede orinar, es una emergencia inmediata';

  @override
  String get hgCatDiseaseCkd =>
      '**Enfermedad renal crónica (ERC)** — una de las principales causas de muerte en gatos mayores. Desde los 7 años, son esenciales los controles renales regulares';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Diabetes felina** — mayor riesgo en gatos obesos o mayores. Observa aumento de sed y micción';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Hipertiroidismo** — común a partir de los 10 años. Vigila pérdida de peso, aumento del apetito e hiperactividad';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Estomatitis** — muy común en gatos. Mal aliento, salivación excesiva o pérdida de apetito requieren revisión';

  @override
  String get hgCatDiseaseFhv =>
      '**Herpesvirus felino (FHV-1)** — tras la infección permanece latente de por vida. El estrés puede causar recaídas: estornudos, secreción ocular y conjuntivitis';

  @override
  String get hgHydrationDiet => 'Hidratación y manejo alimentario';

  @override
  String get hgCatHydrationAlert =>
      'Los gatos beben poca agua de forma natural y son vulnerables a enfermedades urinarias. Estimular la ingesta de agua es muy importante.';

  @override
  String get hgCatHydration1 =>
      'Se recomienda combinar alimento húmedo, como latas o sobres, para aumentar la hidratación';

  @override
  String get hgCatHydration2 =>
      'Muchos gatos prefieren el agua corriente — una **fuente de agua** puede ser eficaz';

  @override
  String get hgCatHydration3 =>
      'Coloca el cuenco de agua separado del de comida; suelen preferir recipientes anchos y poco profundos';

  @override
  String get hgCatHydration4 =>
      'Objetivo de ingesta de agua: aproximadamente **40–60 ml** por kg de peso corporal al día';

  @override
  String get hgCatForbiddenFoodAlert =>
      'Los alimentos siguientes son tóxicos para los gatos. Incluso pequeñas cantidades pueden ser peligrosas, así que nunca los ofrezcas.';

  @override
  String get hgCatForbiddenOnion =>
      '**Cebolla, ajo y cebollino** — destruyen glóbulos rojos y causan anemia hemolítica (los gatos son aún más sensibles que los perros)';

  @override
  String get hgCatForbiddenGrape =>
      '**Uvas y pasas** — pueden causar insuficiencia renal';

  @override
  String get hgCatForbiddenChocolate =>
      '**Chocolate y cafeína** — toxicidad cardíaca y neurológica';

  @override
  String get hgCatForbiddenRawFish =>
      '**Pescado crudo de forma continua** — puede causar deficiencia de tiamina (vitamina B1)';

  @override
  String get hgCatForbiddenMilk =>
      '**Leche y lácteos** — muchos gatos adultos tienen intolerancia a la lactosa y pueden sufrir diarrea';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xilitol y alcohol** — toxicidad hepática y neurológica';

  @override
  String get hgCatForbiddenAvocado =>
      '**Aguacate** — contiene persina, puede causar vómitos y diarrea';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Clara de huevo cruda** — la avidina bloquea la biotina y puede causar problemas de piel y pelaje';

  @override
  String get hgCatEmergency1 =>
      '**No puede orinar o hay sangre en la orina** — obstrucción uretral urgente, especialmente en machos';

  @override
  String get hgCatEmergency2 =>
      'Pérdida total de apetito durante más de 24 horas (riesgo de lipidosis hepática)';

  @override
  String get hgCatEmergency3 =>
      '**Respirar con la boca abierta** — nunca es normal en gatos y requiere atención inmediata';

  @override
  String get hgCatEmergency4 =>
      'Parálisis súbita o frialdad en las patas traseras (sospecha de tromboembolismo)';

  @override
  String get hgCatEmergency5 => 'Convulsiones, crisis o pérdida de conciencia';

  @override
  String get hgCatEmergency6 =>
      'Encías o lengua pálidas, o ictericia/color amarillento';

  @override
  String get hgCatEmergency7 =>
      'Vómitos o diarrea 3 veces o más en un día, o sangre en heces/vómito';

  @override
  String get hgCatEmergency8 =>
      'Traumatismo visible, fractura o sangrado abundante';

  @override
  String get hgEnvironmentMentalHealth => 'Entorno y salud mental';

  @override
  String get hgIndoorEnvironment => 'Manejo del entorno interior';

  @override
  String get hgStressManagement => 'Manejo del estrés';

  @override
  String get hgCatEnvironment1 =>
      '**Areneros**: número de gatos + 1 como mínimo, con limpieza diaria';

  @override
  String get hgCatEnvironment2 =>
      '**Rascadores**: al menos 2, combinando modelos verticales y horizontales';

  @override
  String get hgCatEnvironment3 =>
      '**Espacios elevados**: árboles para gatos, estantes o áreas verticales para satisfacer el instinto territorial';

  @override
  String get hgCatEnvironment4 =>
      '**Escondites**: cajas, túneles o lugares seguros donde pueda esconderse';

  @override
  String get hgCatStress1 =>
      'El estrés en gatos está directamente relacionado con baja inmunidad, FLUTD y recaídas de herpesvirus';

  @override
  String get hgCatStress2 =>
      'Ante cambios bruscos del entorno, como mudanzas o nuevos miembros en la familia, puede ayudar un difusor de feromonas (Feliway)';

  @override
  String get hgCatStress3 =>
      'Asegura al menos **10–15 minutos al día** de juego con juguetes';

  @override
  String get hgCatStress4 =>
      'Hogares con varios gatos: separa recursos como comederos, areneros y zonas de descanso según el número de gatos';

  @override
  String get hgAge => 'Edad';

  @override
  String get hgCheckupCycle => 'Frecuencia del chequeo';

  @override
  String get hgMainItems => 'Elementos principales';

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
  String get hgEvery3to4Months => 'Cada 3 a 4 meses';

  @override
  String get hgDogCheckupItems1 =>
      'Análisis de sangre, auscultación cardíaca, peso y dientes';

  @override
  String get hgDogCheckupItems2 =>
      'Sangre, orina, radiografía, presión arterial y articulaciones';

  @override
  String get hgDogCheckupItems3 =>
      'Hemograma completo, ecografía, función renal y hepática';

  @override
  String get hgCatCheckupItems1 =>
      'Análisis de sangre, análisis de orina, peso y dientes';

  @override
  String get hgCatCheckupItems2 =>
      'Valores renales y hepáticos, presión arterial y tiroides (T4)';

  @override
  String get hgCatCheckupItems3 =>
      'Hemograma completo, ecografía abdominal y monitoreo intensivo de riñones';

  @override
  String get hgExerciseAmount => 'Nivel de ejercicio';

  @override
  String get hgBreedExamples => 'Ejemplos de razas';

  @override
  String get hgLow => 'Bajo';

  @override
  String get hgNormal => 'Moderado';

  @override
  String get hgHigh => 'Alto';

  @override
  String get hgBreedLowExamples => 'Bulldog, Basset Hound, Shih Tzu, Maltés';

  @override
  String get hgBreedNormalExamples =>
      'Poodle, Bichón Frisé, Cocker Spaniel, Beagle';

  @override
  String get hgBreedHighExamples =>
      'Labrador, Golden Retriever, Husky, Border Collie';

  @override
  String get hgDisclaimer =>
      'Esta guía ofrece información general de salud, y los cuidados necesarios pueden variar según el estado de cada mascota. Si hay síntomas anormales o se necesita tratamiento, consulta siempre a un veterinario.';
}
