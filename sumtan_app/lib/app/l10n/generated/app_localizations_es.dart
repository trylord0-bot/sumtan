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
  String get weekStats => 'Estadísticas de esta semana';

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
}
