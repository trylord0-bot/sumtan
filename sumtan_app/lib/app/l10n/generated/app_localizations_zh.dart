// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => '宠物 Sumtan';

  @override
  String get appTagline => '宠物健康管理应用';

  @override
  String get navHome => '首页';

  @override
  String get navJournal => '日记';

  @override
  String get navNotifications => '提醒';

  @override
  String get navProfile => '档案';

  @override
  String get navSettings => '设置';

  @override
  String get navAddAlarm => '添加提醒';

  @override
  String get drawerService => '服务';

  @override
  String get drawerNearbyHospitals => '查找附近医院';

  @override
  String get drawerNearbyHospitalsSub => '基于当前位置的动物医院';

  @override
  String get drawerHealthGuide => '健康管理指南';

  @override
  String get drawerHealthGuideSub => '宠物健康指南';

  @override
  String get drawerApp => '应用';

  @override
  String get drawerHelp => '帮助';

  @override
  String get dialogExternalTitle => '打开外部网页';

  @override
  String get dialogExternalHospitalBody => '查找附近动物医院\n需要打开外部网页。\n\n现在跳转吗？';

  @override
  String get commonCancel => '取消';

  @override
  String get commonGo => '前往';

  @override
  String get commonDelete => '删除';

  @override
  String get commonSave => '保存';

  @override
  String get commonLoading => '准备中...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => '再按一次退出应用';

  @override
  String get toastNeedPet => '还没有宠物。请先在档案中注册！';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsPushNotifications => '允许推送通知';

  @override
  String get settingsPushNotificationsSub => '设备通知权限设置';

  @override
  String get settingsLanguageSection => '语言';

  @override
  String get settingsLanguage => '应用语言';

  @override
  String get settingsLanguageSystem => '使用设备设置';

  @override
  String get settingsLanguageChanged => '应用语言已更改';

  @override
  String get settingsData => '数据管理';

  @override
  String get settingsExport => '导出数据';

  @override
  String get settingsExportSub => '保存为 ZIP 文件';

  @override
  String get settingsImport => '导入数据';

  @override
  String get settingsImportSub => '从 ZIP 文件恢复';

  @override
  String get settingsAppInfo => '应用信息';

  @override
  String get settingsVersion => '应用版本';

  @override
  String get settingsPrivacy => '隐私政策';

  @override
  String get settingsFeedback => '发送反馈';

  @override
  String get settingsFeedbackSubject => '宠物 Sumtan 反馈';

  @override
  String get settingsEmailAppMissing => '找不到邮件应用';

  @override
  String get settingsImportConfirmBody => '所有现有数据将被删除并替换为备份文件中的数据。\n\n继续吗？';

  @override
  String get settingsImportAction => '导入';

  @override
  String get settingsImporting => '正在导入数据';

  @override
  String get settingsImportSuccess => '备份数据已恢复';

  @override
  String get settingsImportFailed => '导入失败';

  @override
  String get settingsExportTitle => '导出数据';

  @override
  String get settingsExportBenefitTitle => '安全保存珍贵记录';

  @override
  String get settingsExportBenefitPets => '所有宠物档案和照片';

  @override
  String get settingsExportBenefitRecords => '所有健康记录、日记和体重';

  @override
  String get settingsExportBenefitMedia => '包含附件图片和视频';

  @override
  String get settingsStoreUnavailable => '当前无法连接到商店。\n请稍后再试。';

  @override
  String settingsPayAndExport(String price) {
    return '支付 $price 并导出';
  }

  @override
  String get settingsUnlocked => '已解锁';

  @override
  String get settingsExportUnlockedBody =>
      '将所有宠物信息和记录保存为 ZIP 文件。\n保存的文件随时可以免费导入恢复。';

  @override
  String get settingsExporting => '正在导出...';

  @override
  String get settingsExportZip => '导出为 ZIP';

  @override
  String get settingsExportConfirmBody => '将所有宠物信息、记录和附件媒体导出为 ZIP 文件。';

  @override
  String get settingsExportAction => '导出';

  @override
  String get settingsExportSuccess => '备份文件已可分享';

  @override
  String get settingsExportFailed => '导出失败';

  @override
  String get settingsPurchaseFailed => '支付失败';

  @override
  String get errorDbInit => '准备应用数据时出现问题。\n请稍后再启动。';

  @override
  String get help => '帮助';

  @override
  String get healthGuide => '健康管理指南';

  @override
  String get dog => '狗狗';

  @override
  String get cat => '猫咪';

  @override
  String get tabDog => '🐶 狗狗';

  @override
  String get tabCat => '🐱 猫咪';

  @override
  String get savedMsg => '已保存';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get deleteAction => '删除';

  @override
  String get save => '保存';

  @override
  String get memo => '备忘';

  @override
  String get memoPlaceholder => '请自由写下备忘';

  @override
  String get addBtn => '+ 添加';

  @override
  String get errorOccurred => '发生了错误';

  @override
  String errorOccurredWithDetail(String error) {
    return '发生了错误\n$error';
  }

  @override
  String get pet => '宠物';

  @override
  String get selectPet => '选择宠物';

  @override
  String get addNewPet => '添加新宠物';

  @override
  String get noAlarms => '还没有提醒';

  @override
  String alarmEmptyDesc(String petName) {
    return '让$petName今天也保持健康！\n点击下方添加提醒按钮开始。';
  }

  @override
  String get scheduledAlarms => '已计划提醒';

  @override
  String get swipeToDelete => '滑动即可删除';

  @override
  String get selectAlarmType => '选择提醒类型';

  @override
  String get vetAppointment => '医院预约';

  @override
  String get medication => '用药';

  @override
  String get mealTime => '进餐时间';

  @override
  String get dailyReminder => '每日提醒';

  @override
  String get alarmLabel => '提醒';

  @override
  String get alarmBodyVaccination => '请确认疫苗接种日期。';

  @override
  String get alarmBodyVetAppointment => '医院预约时间快到了。';

  @override
  String get alarmBodyMedication => '该用药了。';

  @override
  String get alarmBodyMealTime => '请记得喂食时间。';

  @override
  String get alarmBodyDailyReminder => '请记录今天的健康记录。';

  @override
  String get alarmBodyDefault => '宠物健康管理提醒。';

  @override
  String get alarmDeleted => '提醒已删除 🗑️';

  @override
  String get hidePastAlarms => '隐藏过去的提醒';

  @override
  String get showPastAlarms => '显示过去的提醒';

  @override
  String get deleteAll => '全部删除';

  @override
  String get deletePastAlarms => '删除过去的提醒';

  @override
  String deletePastAlarmsConfirm(int count) {
    return '删除全部 $count 个过去的提醒？';
  }

  @override
  String get pastAlarmsDeleted => '所有过去的提醒已删除';

  @override
  String get pastLabel => '已过';

  @override
  String get today => '今天';

  @override
  String get tomorrowSameTime => '明天同一时间';

  @override
  String get snoozeQuestion => '什么时候再提醒您？';

  @override
  String get snooze5min => '5分钟后';

  @override
  String get snooze10min => '10分钟后';

  @override
  String get snooze30min => '30分钟后';

  @override
  String get snooze1hour => '1小时后';

  @override
  String get snooze3hour => '3小时后';

  @override
  String get snoozeCustom => '手动指定';

  @override
  String get snoozeAtThisTime => '在此时间提醒';

  @override
  String snoozeConfirm(String time) {
    return '🕐 将在 $time 再次提醒您';
  }

  @override
  String get selectFutureTime => '请选择将来的时间';

  @override
  String recordCheckHint(String typeLabel) {
    return '可在记录 → $typeLabel 中查看';
  }

  @override
  String get pushAlsoCancel => '计划的推送通知也将一并取消。';

  @override
  String get reschedule => '重新安排';

  @override
  String get deleteThisAlarm => '删除此提醒';

  @override
  String get vaccineNameRequired => '疫苗名称 *';

  @override
  String get vaccineNameExample => '例：狂犬病、混合疫苗等';

  @override
  String get scheduledDateRequired => '预定日期 *';

  @override
  String get reminderTiming => '提醒时间点';

  @override
  String get sameDay => '当天';

  @override
  String get reminderTimeRequired => '提醒时刻 *';

  @override
  String get memoInputHint => '请输入备忘';

  @override
  String get visitPurposeRequired => '就诊目的 *';

  @override
  String get visitPurposeExample => '例：定期检查、皮肤诊治等';

  @override
  String get appointmentDateTimeRequired => '预约日期和时间 *';

  @override
  String get hospitalName => '医院名称';

  @override
  String get hospitalNameHint => '请输入医院名称';

  @override
  String get medicineNameRequired => '药品名称 *';

  @override
  String get medicineNameExample => '例：心丝虫预防药、驱虫药等';

  @override
  String get repeatRequired => '重复 *';

  @override
  String get none => '无';

  @override
  String get daily => '每天';

  @override
  String get weekly => '每周';

  @override
  String get monthly => '每月';

  @override
  String get weekdays => '工作日';

  @override
  String get weekdaysOnly => '仅工作日';

  @override
  String get weekends => '周末';

  @override
  String get weekendsOnly => '仅周末';

  @override
  String get medicationDateTimeRequired => '用药日期和时间 *';

  @override
  String get medicationTimeRequired => '用药时刻 *';

  @override
  String get alarmNameRequired => '提醒名称 *';

  @override
  String get mealTimeExample => '例：早餐、晚饭等';

  @override
  String get mealTimeRequired => '进餐时刻 *';

  @override
  String get alarmMessage => '提醒消息';

  @override
  String get alarmMessageExample => '例：今天记录了吗？🐾';

  @override
  String get alarmPastDueMsg => '此提醒的预定日期已过。\n您可以选择新日期或删除。';

  @override
  String get reselectDate => '重新选择日期';

  @override
  String get selectDate => '选择日期';

  @override
  String get selectTime => '选择时间';

  @override
  String get todayStatus => '今日状态';

  @override
  String get addRecord => '+ 记录';

  @override
  String get todayReminders => '今日提醒';

  @override
  String get todayRecords => '今日记录';

  @override
  String get viewAll => '查看全部';

  @override
  String get weekStats => '本周统计';

  @override
  String get pottyCount => '排泄次数';

  @override
  String get mealCount => '进餐次数';

  @override
  String get waterLevel => '饮水量级';

  @override
  String get timesUnit => '次';

  @override
  String get mealsUnit => '餐';

  @override
  String get pointsUnit => '分';

  @override
  String get recordDeleted => '记录已删除 🗑️';

  @override
  String get recordUpdated => '记录已更新';

  @override
  String get deleteRecordConfirm => '删除此记录？';

  @override
  String get deleteThisRecord => '删除此记录';

  @override
  String get typeLabel => '类型';

  @override
  String get statusLabel => '状态';

  @override
  String get conditionScore => '状态评分';

  @override
  String get symptomTags => '症状标签';

  @override
  String get medicineName => '药品名称';

  @override
  String get dose => '用量';

  @override
  String get medicationMethod => '用药方法';

  @override
  String get weightKg => '体重 (kg)';

  @override
  String get measurementMethod => '测量方法';

  @override
  String get mealType => '进餐类型';

  @override
  String get mealAmount => '进餐量';

  @override
  String get servingAmount => '喂食量';

  @override
  String get waterAmount => '饮水量';

  @override
  String get visitType => '就诊类型';

  @override
  String get diagnosisName => '诊断名称';

  @override
  String get vaccineType => '疫苗类型';

  @override
  String get sideEffects => '副作用';

  @override
  String get groomingType => '美容类型';

  @override
  String get shopName => '店铺名称';

  @override
  String get cost => '费用';

  @override
  String get nextAppointment => '下次预约日';

  @override
  String get brushingArea => '梳毛部位';

  @override
  String get duration => '所需时间';

  @override
  String get walkTime => '散步时间';

  @override
  String get distance => '距离';

  @override
  String get title => '标题';

  @override
  String get priority => '重要程度';

  @override
  String get stool => '大便';

  @override
  String get urine => '尿液';

  @override
  String get vomiting => '呕吐';

  @override
  String get normal => '正常';

  @override
  String get loose => '稀软';

  @override
  String get hard => '硬便';

  @override
  String get bloodInStool => '血便';

  @override
  String get cough => '咳嗽';

  @override
  String get lethargy => '无精打采';

  @override
  String get lossOfAppetite => '食欲不振';

  @override
  String get diarrhea => '腹泻';

  @override
  String get runnyNose => '流鼻涕';

  @override
  String get sneezing => '打喷嚏';

  @override
  String get trembling => '颤抖';

  @override
  String get bloodInUrine => '血尿';

  @override
  String get oral => '口服';

  @override
  String get injection => '注射';

  @override
  String get topical => '外用';

  @override
  String get eyeDrops => '滴眼液';

  @override
  String get earDrops => '滴耳液';

  @override
  String get vetHospital => '动物医院';

  @override
  String get homeScale => '家用体重秤';

  @override
  String get holdAndWeigh => '抱着称重';

  @override
  String get breakfast => '早餐';

  @override
  String get lunch => '午餐';

  @override
  String get dinner => '晚餐';

  @override
  String get snack => '零食';

  @override
  String get veryLittle => '非常少';

  @override
  String get little => '少';

  @override
  String get much => '多';

  @override
  String get veryMuch => '非常多';

  @override
  String get general => '普通';

  @override
  String get regularCheckup => '定期检查';

  @override
  String get emergency => '紧急';

  @override
  String get mild => '轻微';

  @override
  String get severe => '严重';

  @override
  String get bath => '洗澡';

  @override
  String get fullGrooming => '全身美容';

  @override
  String get partialGrooming => '局部美容';

  @override
  String get nails => '剪指甲';

  @override
  String get earCleaning => '清洁耳朵';

  @override
  String get tartarRemoval => '去除牙结石';

  @override
  String get analGlands => '肛门腺';

  @override
  String get all => '全部';

  @override
  String get back => '背部';

  @override
  String get belly => '腹部';

  @override
  String get tail => '尾巴';

  @override
  String get face => '脸部';

  @override
  String get paws => '爪子';

  @override
  String get important => '重要';

  @override
  String get photosAndVideos => '照片 · 视频';

  @override
  String get addMedia => '添加媒体';

  @override
  String get selectMediaMethod => '选择添加媒体方式';

  @override
  String get useCamera => '使用相机';

  @override
  String get takePhotoOrVideo => '拍摄照片或视频';

  @override
  String get chooseFromGallery => '从相册选择';

  @override
  String get multiSelectHint => '可多选照片和视频';

  @override
  String get takePhoto => '拍照';

  @override
  String get takePhotoDesc => '使用相机拍照';

  @override
  String get recordVideo => '录制视频';

  @override
  String get recordVideoDesc => '使用相机录制视频';

  @override
  String get deleteThisPhoto => '删除此照片';

  @override
  String get deletePhotoConfirm => '删除此照片？';

  @override
  String get deleteThisVideo => '删除此视频';

  @override
  String get deleteVideoConfirm => '删除此视频？';

  @override
  String get muted => '静音';

  @override
  String get soundOn => '声音开启';

  @override
  String get allowPermissionInSettings => '请在设置中允许权限';

  @override
  String get openSettings => '打开设置';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get contactDeveloper => '联系开发者';

  @override
  String get contact => '联系';

  @override
  String get settingsLabel => '设置';

  @override
  String get exportData => '导出数据';

  @override
  String get importData => '导入数据';

  @override
  String get sendFeedback => '发送反馈';

  @override
  String get faq => '常见问题';

  @override
  String get homeScreen => '首页画面';

  @override
  String get journalScreen => '日记画面';

  @override
  String get alarmScreen => '提醒画面';

  @override
  String get petManagement => '宠物管理';

  @override
  String get recordCategories => '记录类别';

  @override
  String get whatIsPetSumtan => '什么是宠物Sumtan？';

  @override
  String get todayRecordSummary => '今日记录摘要';

  @override
  String get weeklyStats => '每周统计';

  @override
  String get weightChangeChart => '体重变化图表';

  @override
  String get findNearbyHospitals => '查找附近医院';

  @override
  String get addNewRecord => '添加新记录 (+)';

  @override
  String get viewRecordList => '查看记录列表';

  @override
  String get editDeleteRecord => '编辑和删除记录';

  @override
  String get attachMedia => '附加照片/视频';

  @override
  String get addAlarm => '添加提醒';

  @override
  String get repeatAlarm => '重复提醒';

  @override
  String get advanceAlarmHint => '提前提醒 (D-7, D-3, D-1)';

  @override
  String get completeAlarm => '完成提醒';

  @override
  String get deleteAlarm => '删除提醒';

  @override
  String get registerPet => '注册宠物';

  @override
  String get editProfile => '编辑档案';

  @override
  String get manageMultiplePets => '管理多只宠物';

  @override
  String get dogHealthGuide => '狗狗健康指南';

  @override
  String get catHealthGuide => '猫咪健康指南';

  @override
  String get notificationSettings => '通知设置';

  @override
  String get dogHealthCareGuide => '狗狗健康管理指南';

  @override
  String get catHealthCareGuide => '猫咪健康管理指南';

  @override
  String get healthGuideSubtitle => '专业健康指南\n基于兽医建议。';

  @override
  String get vaccination => '疫苗接种';

  @override
  String get coreVaccines => '核心疫苗';

  @override
  String get required => '必需';

  @override
  String get nonCoreVaccines => '非核心疫苗';

  @override
  String get recommended => '推荐';

  @override
  String get parasitePrevention => '寄生虫预防';

  @override
  String get heartworm => '心丝虫';

  @override
  String get monthlyFreq => '每月';

  @override
  String get externalParasites => '外部寄生虫（跳蚤/蜱虫）';

  @override
  String get internalParasites => '内部寄生虫';

  @override
  String get threeToSixMonths => '3-6个月';

  @override
  String get nutritionManagement => '营养管理';

  @override
  String get dentalCare => '牙齿护理';

  @override
  String get healthCheckup => '健康检查';

  @override
  String get emergencySigns => '紧急症状';

  @override
  String get age => '年龄';

  @override
  String get checkupCycle => '检查周期';

  @override
  String get mainItems => '主要项目';

  @override
  String get exerciseLevel => '运动量';

  @override
  String get breedExamples => '品种示例';

  @override
  String get low => '低';

  @override
  String get high => '高';

  @override
  String get menu => '菜单';

  @override
  String get helloGreeting => '你好！ ';

  @override
  String get healthyTodayMsg => '\n今天也健康吗？🐾';

  @override
  String get noRecordsYet => '还没有记录';

  @override
  String lastRecord(String time) {
    return '最后记录 · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return '平均 $value$unit/天';
  }

  @override
  String get weightTrend => '⚖️ 体重趋势';

  @override
  String get weightChange => '⚖️ 体重变化';

  @override
  String get noWeightData => '还没有体重数据';

  @override
  String get measuredWeight => '实测体重';

  @override
  String get standardRange => '标准范围';

  @override
  String get noTodayRecords => '今天还没有记录';

  @override
  String get homeNoRecordHint => '记录状态、排泄和体重\n来管理宠物的健康！';

  @override
  String noRecordsForDate(String date) {
    return '$date没有记录';
  }

  @override
  String recordsForDate(String date, String count) {
    return '$date 记录（$count条）';
  }

  @override
  String get daySun => '日';

  @override
  String get dayMon => '一';

  @override
  String get dayTue => '二';

  @override
  String get dayWed => '三';

  @override
  String get dayThu => '四';

  @override
  String get dayFri => '五';

  @override
  String get daySat => '六';

  @override
  String get whatToRecord => '📝 要记录什么？';

  @override
  String saveErrorMsg(String error) {
    return '保存时发生错误：$error';
  }

  @override
  String get alarmUpdated => '✅ 提醒已更新';

  @override
  String get alarmAdded => '🔔 提醒已添加';

  @override
  String get editAlarm => '编辑提醒';

  @override
  String get deleteAlarmConfirm => '删除此提醒？';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name将被删除，\n计划的推送通知也将一并取消。';
  }

  @override
  String get doneMsg => '✅ 已完成';

  @override
  String get laterMsg => '🕐 稍后';

  @override
  String get saveCompletion => '✅ 保存完成';

  @override
  String completedQuestion(String type) {
    return '完成了$type吗？';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return '将自动把\n$name保存到今天的记录中。';
  }

  @override
  String completionSaved(String name) {
    return '$name完成已记录 ✅';
  }

  @override
  String get tapAlarmTypeHint => '👆 点击您想要的提醒类型';

  @override
  String countUnit(int count) {
    return '$count个';
  }

  @override
  String dateCompleted(String date) {
    return '$date · 已完成';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date已过 · 点击重新安排';
  }

  @override
  String get completedLabel => '已完成';

  @override
  String get edit => '编辑';

  @override
  String recordDeleteCannotUndo(String category) {
    return '$category记录将被删除，\n无法恢复。';
  }

  @override
  String get hintMedicineNameAndDose => '💡 请输入药品名称和用量';

  @override
  String get hintMedicineName => '💡 请输入药品名称';

  @override
  String get hintDose => '💡 请输入用量';

  @override
  String get hintWeightNumber => '💡 请以数字输入体重';

  @override
  String get hintWeight => '💡 请输入体重';

  @override
  String get hintWeightIsNumber => '💡 体重请以数字输入';

  @override
  String get hintWalkTime => '💡 请输入散步时间';

  @override
  String get hintWalkTimeIsNumber => '💡 散步时间请以数字输入';

  @override
  String get hintWalkTimeNumber => '💡 请以数字输入散步时间';

  @override
  String get hintSelectBrushingArea => '💡 请至少选择一个梳毛部位';

  @override
  String get hintSelectVaccineType => '💡 请至少选择一种疫苗类型';

  @override
  String get hintSelectGroomingType => '💡 请至少选择一种美容类型';

  @override
  String get hintTitle => '💡 请输入标题';

  @override
  String get hintVaccineName => '💡 请输入疫苗名称';

  @override
  String get hintSelectScheduledDate => '💡 请选择预定日期';

  @override
  String get hintSelectScheduledTime => '💡 请选择预定时间';

  @override
  String get hintVisitPurpose => '💡 请输入就诊目的';

  @override
  String get hintSelectAppointmentDate => '💡 请选择预约日期';

  @override
  String get hintSelectAppointmentTime => '💡 请选择预约时间';

  @override
  String get hintMedicineNameInput => '💡 请输入药品名称';

  @override
  String get hintSelectMedicationDate => '💡 请选择用药日期';

  @override
  String get hintSelectMedicationTime => '💡 请选择用药时间';

  @override
  String get hintAlarmName => '💡 请输入提醒名称';

  @override
  String get hintSelectMealTime => '💡 请选择进餐时间';

  @override
  String get hintSelectAlarmTime => '💡 请选择提醒时间';

  @override
  String get noPetRegisterFirst => '还没有宠物 🐾 请先在档案中注册！';

  @override
  String get alarmRescheduled => '🔄 提醒已重新安排';

  @override
  String get examplePetName => '例：小白';

  @override
  String get exampleBreed => '例：马耳他犬';

  @override
  String get exampleBreedMulti => '例：马耳他犬、波斯猫';

  @override
  String get example30 => '例：30';

  @override
  String get example80 => '例：80';

  @override
  String get example200 => '例：200';

  @override
  String get example25 => '例：2.5';

  @override
  String get example35000 => '例：35000';

  @override
  String get example50000 => '例：50000';

  @override
  String get enterNameHint => '请输入名字';

  @override
  String get addNewPetTitle => '添加新宠物';

  @override
  String get basicInfo => '基本信息';

  @override
  String get idInfo => '识别信息';

  @override
  String get idInfoOptional => '识别信息（可选）';

  @override
  String get name => '姓名';

  @override
  String get petKind => '类型';

  @override
  String get breed => '品种';

  @override
  String get weight => '体重';

  @override
  String get microchip => '微芯片';

  @override
  String get registrationNumber => '登记号';

  @override
  String get birthDate => '出生日期';

  @override
  String get gender => '性别';

  @override
  String get male => '公';

  @override
  String get female => '母';

  @override
  String get maleSym => '公 ♂';

  @override
  String get femaleSym => '母 ♀';

  @override
  String get neutered => '绝育';

  @override
  String get done => '完成';

  @override
  String get notDone => '未完成';

  @override
  String get notEntered => '未填写';

  @override
  String get notRegistered => '未注册';

  @override
  String get dogEmoji => '狗狗 🐶';

  @override
  String get catEmoji => '猫咪 🐱';

  @override
  String get otherEmoji => '其他 🐾';

  @override
  String get noPetsRegistered => '还没有注册宠物';

  @override
  String get registerPetPrompt => '注册宠物\n一起管理健康吧！';

  @override
  String get registerPetBtn => '注册宠物';

  @override
  String get editPet => '编辑宠物';

  @override
  String get neuteringStatus => '绝育情况';

  @override
  String get neuteredDone => '已绝育';

  @override
  String get notNeutered => '未绝育';

  @override
  String get selectDateHint => '请选择日期';

  @override
  String get saveChanges => '保存更改';

  @override
  String get registerBtn => '注册';

  @override
  String deletePetName(String name) {
    return '删除$name';
  }

  @override
  String deletePetConfirm(String name) {
    return '删除$name？';
  }

  @override
  String deletePetWarning(String name) {
    return '$name的所有记录和提醒将被删除，无法恢复。';
  }

  @override
  String petDeleted(String name) {
    return '$name已删除';
  }

  @override
  String petAdded(String name) {
    return '$name已添加 🐾';
  }

  @override
  String get storeUnavailableMsg => '目前无法连接到商店。请稍后再试。';

  @override
  String get checkingPaymentMsg => '正在确认支付信息。请稍后再试。';

  @override
  String get paymentCompleteMsg => '支付完成。请输入新宠物的信息。';

  @override
  String get addNewFamilyMember => '添加新家庭成员？';

  @override
  String get firstPetFreeDesc => '第一只宠物可以免费注册，第二只起每只需要付费。';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '当前注册的宠物：$count只\n请在商店可用时重试。';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '当前注册的宠物：$count只\n支付$price后可以添加新家庭成员。';
  }

  @override
  String get maybeLater => '以后再说';

  @override
  String get unavailable => '无法连接';

  @override
  String payAndAdd(String price) {
    return '支付$price并添加';
  }

  @override
  String get addNextAppointment => '+ 添加下次预约日';

  @override
  String get pottyRecordSaved => '💩 排泄已记录';

  @override
  String get conditionRecordSaved => '💗 状态已记录';

  @override
  String get medicationRecordSaved => '💊 用药已记录';

  @override
  String get weightRecordSaved => '⚖️ 体重已记录';

  @override
  String get mealRecordSaved => '🍽️ 进餐已记录';

  @override
  String get waterRecordSaved => '💧 饮水已记录';

  @override
  String get vetVisitRecordSaved => '🏥 就诊已记录';

  @override
  String get vaccinationRecordSaved => '💉 疫苗接种已记录';

  @override
  String get groomingRecordSaved => '✂️ 美容已记录';

  @override
  String get brushingRecordSaved => '🪥 梳毛已记录';

  @override
  String get walkRecordSaved => '🦮 散步已记录';

  @override
  String get memoSaved => '📝 备忘已记录';

  @override
  String get moreQuestions => '还有其他问题吗？';

  @override
  String get contactViaSendFeedback => '请通过设置 > 发送反馈与我们联系。\n我们会尽快回复 🐾';

  @override
  String get contactViaSendFeedbackLong => '请通过设置页面的【发送反馈】按钮与我们联系，\n我们将迅速回复。';

  @override
  String get privacyPolicyEffectiveDate =>
      '本隐私政策自2026年1月1日起生效。\n最后更新日期：2026年5月8日';

  @override
  String get privacyCollectedInfo => '收集的信息仅用于以下目的。';

  @override
  String get privacyDataFeatures => '宠物Sumtan提供数据导出（备份）和导入（恢复）功能。';

  @override
  String get privacyPolicyMayUpdate => '本隐私政策可能因法律或服务变更而更新。';

  @override
  String get privacyPolicyContact => '如对本隐私政策有疑问，请通过以下方式联系我们。';

  @override
  String get catMeal => '进餐';

  @override
  String get catWater => '饮水';

  @override
  String get catGrooming => '美容';

  @override
  String get catBrushing => '梳毛';

  @override
  String get catWalk => '散步';

  @override
  String get catHospital => '医院';

  @override
  String get catCondition => '状态';

  @override
  String get catPotty => '排泄';

  @override
  String get mealFormTitle => '🍽️ 进餐记录';

  @override
  String get walkFormTitle => '🦮 散步记录';

  @override
  String get weightFormTitle => '⚖️ 体重记录';

  @override
  String get waterFormTitle => '💧 饮水记录';

  @override
  String get medicationFormTitle => '💊 投药记录';

  @override
  String get groomingFormTitle => '✂️ 美容记录';

  @override
  String get brushingFormTitle => '🪥 梳毛记录';

  @override
  String get conditionFormTitle => '🌡️ 状态记录';

  @override
  String get poopFormTitle => '💩 排泄记录';

  @override
  String get vaccinationFormTitle => '💉 接种记录';

  @override
  String get hospitalFormTitle => '🏥 医院记录';

  @override
  String get memoFormTitle => '📝 备忘录';

  @override
  String get measureMethod => '测量方法';

  @override
  String get feedAmount => '喂食量';

  @override
  String get mlInputLabel => '直接输入毫升';

  @override
  String get alarmRescheduleNote => '此提醒的预定日期已过。\n您可以设置新日期或删除。';

  @override
  String get nailTrim => '修指甲';

  @override
  String get shopNameExample => '例: 蓬松宠物美容';

  @override
  String get poopRecordSaved => '💩 排泄已记录';

  @override
  String get memoRecordSaved => '📝 备忘录已记录';

  @override
  String get other => '其他';

  @override
  String get whole => '全身';

  @override
  String get paw => '爪子';

  @override
  String get importance => '重要性';

  @override
  String get timeTaken => '所需时间';

  @override
  String get example10 => '例: 10';

  @override
  String get hospitalNameExample => '例: 幸福动物医院';

  @override
  String get diagnosisExample => '例: 肠炎, 皮炎';

  @override
  String get memoTitlePlaceholder => '输入备忘录标题';

  @override
  String get hintMemoTitle => '💡 请输入标题';

  @override
  String get poopType => '类型';

  @override
  String get poopStatus => '状态';

  @override
  String get feces => '大便';

  @override
  String get bloody => '血便';

  @override
  String get vaccineDhppl => '综合疫苗 (DHPPL)';

  @override
  String get vaccineCorona => '冠状病毒肠炎';

  @override
  String get vaccineKennelCough => '犬窝咳';

  @override
  String get vaccineRabies => '狂犬病';

  @override
  String get vaccineInfluenza => '流感';

  @override
  String get vaccineFvrcp => '综合疫苗 (FVRCP)';

  @override
  String get vaccineFelv => '白血病 (FeLV)';

  @override
  String get vaccineChlamydia => '衣原体';

  @override
  String get mute => '静音';

  @override
  String get photoVideo => '照片・视频';

  @override
  String photoVideoCount(String count) {
    return '照片・视频 · $count个';
  }

  @override
  String get selectMediaSource => '选择媒体添加方式';

  @override
  String get cameraCapture => '相机拍摄';

  @override
  String get cameraCaptureSubtitle => '拍摄照片或视频';

  @override
  String get selectFromGallery => '从相册选择';

  @override
  String get selectFromGallerySubtitle => '可多选照片・视频';

  @override
  String get takePhotoSubtitle => '用相机拍摄照片';

  @override
  String get recordVideoSubtitle => '用相机录制视频';

  @override
  String get permissionRequired => '请在设置中允许权限';

  @override
  String get confirmDeletePhoto => '删除这张照片？';

  @override
  String get confirmDeleteVideo => '删除这个视频？';

  @override
  String get hintMedicineAndDose => '💡 请输入药品名称和剂量';

  @override
  String deleteRecordBody(String category) {
    return '$category记录将被删除\n且无法恢复。';
  }
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appName => '宠物 Sumtan';

  @override
  String get appTagline => '宠物健康管理应用';

  @override
  String get navHome => '首页';

  @override
  String get navJournal => '日记';

  @override
  String get navNotifications => '提醒';

  @override
  String get navProfile => '档案';

  @override
  String get navSettings => '设置';

  @override
  String get navAddAlarm => '添加提醒';

  @override
  String get drawerService => '服务';

  @override
  String get drawerNearbyHospitals => '查找附近医院';

  @override
  String get drawerNearbyHospitalsSub => '基于当前位置的动物医院';

  @override
  String get drawerHealthGuide => '健康管理指南';

  @override
  String get drawerHealthGuideSub => '宠物健康指南';

  @override
  String get drawerApp => '应用';

  @override
  String get drawerHelp => '帮助';

  @override
  String get dialogExternalTitle => '打开外部网页';

  @override
  String get dialogExternalHospitalBody => '查找附近动物医院\n需要打开外部网页。\n\n现在跳转吗？';

  @override
  String get commonCancel => '取消';

  @override
  String get commonGo => '前往';

  @override
  String get commonDelete => '删除';

  @override
  String get commonSave => '保存';

  @override
  String get commonLoading => '准备中...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => '再按一次退出应用';

  @override
  String get toastNeedPet => '还没有宠物。请先在档案中注册！';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsPushNotifications => '允许推送通知';

  @override
  String get settingsPushNotificationsSub => '设备通知权限设置';

  @override
  String get settingsLanguageSection => '语言';

  @override
  String get settingsLanguage => '应用语言';

  @override
  String get settingsLanguageSystem => '使用设备设置';

  @override
  String get settingsLanguageChanged => '应用语言已更改';

  @override
  String get settingsData => '数据管理';

  @override
  String get settingsExport => '导出数据';

  @override
  String get settingsExportSub => '保存为 ZIP 文件';

  @override
  String get settingsImport => '导入数据';

  @override
  String get settingsImportSub => '从 ZIP 文件恢复';

  @override
  String get settingsAppInfo => '应用信息';

  @override
  String get settingsVersion => '应用版本';

  @override
  String get settingsPrivacy => '隐私政策';

  @override
  String get settingsFeedback => '发送反馈';

  @override
  String get settingsFeedbackSubject => '宠物 Sumtan 反馈';

  @override
  String get settingsEmailAppMissing => '找不到邮件应用';

  @override
  String get settingsImportConfirmBody => '所有现有数据将被删除并替换为备份文件中的数据。\n\n继续吗？';

  @override
  String get settingsImportAction => '导入';

  @override
  String get settingsImporting => '正在导入数据';

  @override
  String get settingsImportSuccess => '备份数据已恢复';

  @override
  String get settingsImportFailed => '导入失败';

  @override
  String get settingsExportTitle => '导出数据';

  @override
  String get settingsExportBenefitTitle => '安全保存珍贵记录';

  @override
  String get settingsExportBenefitPets => '所有宠物档案和照片';

  @override
  String get settingsExportBenefitRecords => '所有健康记录、日记和体重';

  @override
  String get settingsExportBenefitMedia => '包含附件图片和视频';

  @override
  String get settingsStoreUnavailable => '当前无法连接到商店。\n请稍后再试。';

  @override
  String settingsPayAndExport(String price) {
    return '支付 $price 并导出';
  }

  @override
  String get settingsUnlocked => '已解锁';

  @override
  String get settingsExportUnlockedBody =>
      '将所有宠物信息和记录保存为 ZIP 文件。\n保存的文件随时可以免费导入恢复。';

  @override
  String get settingsExporting => '正在导出...';

  @override
  String get settingsExportZip => '导出为 ZIP';

  @override
  String get settingsExportConfirmBody => '将所有宠物信息、记录和附件媒体导出为 ZIP 文件。';

  @override
  String get settingsExportAction => '导出';

  @override
  String get settingsExportSuccess => '备份文件已可分享';

  @override
  String get settingsExportFailed => '导出失败';

  @override
  String get settingsPurchaseFailed => '支付失败';

  @override
  String get errorDbInit => '准备应用数据时出现问题。\n请稍后再启动。';

  @override
  String get help => '帮助';

  @override
  String get healthGuide => '健康管理指南';

  @override
  String get dog => '狗狗';

  @override
  String get cat => '猫咪';

  @override
  String get tabDog => '🐶 狗狗';

  @override
  String get tabCat => '🐱 猫咪';

  @override
  String get savedMsg => '已保存';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get deleteAction => '删除';

  @override
  String get save => '保存';

  @override
  String get memo => '备忘';

  @override
  String get memoPlaceholder => '请自由写下备忘';

  @override
  String get addBtn => '+ 添加';

  @override
  String get errorOccurred => '发生了错误';

  @override
  String errorOccurredWithDetail(String error) {
    return '发生了错误\n$error';
  }

  @override
  String get pet => '宠物';

  @override
  String get selectPet => '选择宠物';

  @override
  String get addNewPet => '添加新宠物';

  @override
  String get noAlarms => '还没有提醒';

  @override
  String alarmEmptyDesc(String petName) {
    return '让$petName今天也保持健康！\n点击下方添加提醒按钮开始。';
  }

  @override
  String get scheduledAlarms => '已计划提醒';

  @override
  String get swipeToDelete => '滑动即可删除';

  @override
  String get selectAlarmType => '选择提醒类型';

  @override
  String get vetAppointment => '医院预约';

  @override
  String get medication => '用药';

  @override
  String get mealTime => '进餐时间';

  @override
  String get dailyReminder => '每日提醒';

  @override
  String get alarmLabel => '提醒';

  @override
  String get alarmBodyVaccination => '请确认疫苗接种日期。';

  @override
  String get alarmBodyVetAppointment => '医院预约时间快到了。';

  @override
  String get alarmBodyMedication => '该用药了。';

  @override
  String get alarmBodyMealTime => '请记得喂食时间。';

  @override
  String get alarmBodyDailyReminder => '请记录今天的健康记录。';

  @override
  String get alarmBodyDefault => '宠物健康管理提醒。';

  @override
  String get alarmDeleted => '提醒已删除 🗑️';

  @override
  String get hidePastAlarms => '隐藏过去的提醒';

  @override
  String get showPastAlarms => '显示过去的提醒';

  @override
  String get deleteAll => '全部删除';

  @override
  String get deletePastAlarms => '删除过去的提醒';

  @override
  String deletePastAlarmsConfirm(int count) {
    return '删除全部 $count 个过去的提醒？';
  }

  @override
  String get pastAlarmsDeleted => '所有过去的提醒已删除';

  @override
  String get pastLabel => '已过';

  @override
  String get today => '今天';

  @override
  String get tomorrowSameTime => '明天同一时间';

  @override
  String get snoozeQuestion => '什么时候再提醒您？';

  @override
  String get snooze5min => '5分钟后';

  @override
  String get snooze10min => '10分钟后';

  @override
  String get snooze30min => '30分钟后';

  @override
  String get snooze1hour => '1小时后';

  @override
  String get snooze3hour => '3小时后';

  @override
  String get snoozeCustom => '手动指定';

  @override
  String get snoozeAtThisTime => '在此时间提醒';

  @override
  String snoozeConfirm(String time) {
    return '🕐 将在 $time 再次提醒您';
  }

  @override
  String get selectFutureTime => '请选择将来的时间';

  @override
  String recordCheckHint(String typeLabel) {
    return '可在记录 → $typeLabel 中查看';
  }

  @override
  String get pushAlsoCancel => '计划的推送通知也将一并取消。';

  @override
  String get reschedule => '重新安排';

  @override
  String get deleteThisAlarm => '删除此提醒';

  @override
  String get vaccineNameRequired => '疫苗名称 *';

  @override
  String get vaccineNameExample => '例：狂犬病、混合疫苗等';

  @override
  String get scheduledDateRequired => '预定日期 *';

  @override
  String get reminderTiming => '提醒时间点';

  @override
  String get sameDay => '当天';

  @override
  String get reminderTimeRequired => '提醒时刻 *';

  @override
  String get memoInputHint => '请输入备忘';

  @override
  String get visitPurposeRequired => '就诊目的 *';

  @override
  String get visitPurposeExample => '例：定期检查、皮肤诊治等';

  @override
  String get appointmentDateTimeRequired => '预约日期和时间 *';

  @override
  String get hospitalName => '医院名称';

  @override
  String get hospitalNameHint => '请输入医院名称';

  @override
  String get medicineNameRequired => '药品名称 *';

  @override
  String get medicineNameExample => '例：心丝虫预防药、驱虫药等';

  @override
  String get repeatRequired => '重复 *';

  @override
  String get none => '无';

  @override
  String get daily => '每天';

  @override
  String get weekly => '每周';

  @override
  String get monthly => '每月';

  @override
  String get weekdays => '工作日';

  @override
  String get weekdaysOnly => '仅工作日';

  @override
  String get weekends => '周末';

  @override
  String get weekendsOnly => '仅周末';

  @override
  String get medicationDateTimeRequired => '用药日期和时间 *';

  @override
  String get medicationTimeRequired => '用药时刻 *';

  @override
  String get alarmNameRequired => '提醒名称 *';

  @override
  String get mealTimeExample => '例：早餐、晚饭等';

  @override
  String get mealTimeRequired => '进餐时刻 *';

  @override
  String get alarmMessage => '提醒消息';

  @override
  String get alarmMessageExample => '例：今天记录了吗？🐾';

  @override
  String get alarmPastDueMsg => '此提醒的预定日期已过。\n您可以选择新日期或删除。';

  @override
  String get reselectDate => '重新选择日期';

  @override
  String get selectDate => '选择日期';

  @override
  String get selectTime => '选择时间';

  @override
  String get todayStatus => '今日状态';

  @override
  String get addRecord => '+ 记录';

  @override
  String get todayReminders => '今日提醒';

  @override
  String get todayRecords => '今日记录';

  @override
  String get viewAll => '查看全部';

  @override
  String get weekStats => '本周统计';

  @override
  String get pottyCount => '排泄次数';

  @override
  String get mealCount => '进餐次数';

  @override
  String get waterLevel => '饮水量级';

  @override
  String get timesUnit => '次';

  @override
  String get mealsUnit => '餐';

  @override
  String get pointsUnit => '分';

  @override
  String get recordDeleted => '记录已删除 🗑️';

  @override
  String get recordUpdated => '记录已更新';

  @override
  String get deleteRecordConfirm => '删除此记录？';

  @override
  String get deleteThisRecord => '删除此记录';

  @override
  String get typeLabel => '类型';

  @override
  String get statusLabel => '状态';

  @override
  String get conditionScore => '状态评分';

  @override
  String get symptomTags => '症状标签';

  @override
  String get medicineName => '药品名称';

  @override
  String get dose => '用量';

  @override
  String get medicationMethod => '用药方法';

  @override
  String get weightKg => '体重 (kg)';

  @override
  String get measurementMethod => '测量方法';

  @override
  String get mealType => '进餐类型';

  @override
  String get mealAmount => '进餐量';

  @override
  String get servingAmount => '喂食量';

  @override
  String get waterAmount => '饮水量';

  @override
  String get visitType => '就诊类型';

  @override
  String get diagnosisName => '诊断名称';

  @override
  String get vaccineType => '疫苗类型';

  @override
  String get sideEffects => '副作用';

  @override
  String get groomingType => '美容类型';

  @override
  String get shopName => '店铺名称';

  @override
  String get cost => '费用';

  @override
  String get nextAppointment => '下次预约日';

  @override
  String get brushingArea => '梳毛部位';

  @override
  String get duration => '所需时间';

  @override
  String get walkTime => '散步时间';

  @override
  String get distance => '距离';

  @override
  String get title => '标题';

  @override
  String get priority => '重要程度';

  @override
  String get stool => '大便';

  @override
  String get urine => '尿液';

  @override
  String get vomiting => '呕吐';

  @override
  String get normal => '正常';

  @override
  String get loose => '稀软';

  @override
  String get hard => '硬便';

  @override
  String get bloodInStool => '血便';

  @override
  String get cough => '咳嗽';

  @override
  String get lethargy => '无精打采';

  @override
  String get lossOfAppetite => '食欲不振';

  @override
  String get diarrhea => '腹泻';

  @override
  String get runnyNose => '流鼻涕';

  @override
  String get sneezing => '打喷嚏';

  @override
  String get trembling => '颤抖';

  @override
  String get bloodInUrine => '血尿';

  @override
  String get oral => '口服';

  @override
  String get injection => '注射';

  @override
  String get topical => '外用';

  @override
  String get eyeDrops => '滴眼液';

  @override
  String get earDrops => '滴耳液';

  @override
  String get vetHospital => '动物医院';

  @override
  String get homeScale => '家用体重秤';

  @override
  String get holdAndWeigh => '抱着称重';

  @override
  String get breakfast => '早餐';

  @override
  String get lunch => '午餐';

  @override
  String get dinner => '晚餐';

  @override
  String get snack => '零食';

  @override
  String get veryLittle => '非常少';

  @override
  String get little => '少';

  @override
  String get much => '多';

  @override
  String get veryMuch => '非常多';

  @override
  String get general => '普通';

  @override
  String get regularCheckup => '定期检查';

  @override
  String get emergency => '紧急';

  @override
  String get mild => '轻微';

  @override
  String get severe => '严重';

  @override
  String get bath => '洗澡';

  @override
  String get fullGrooming => '全身美容';

  @override
  String get partialGrooming => '局部美容';

  @override
  String get nails => '剪指甲';

  @override
  String get earCleaning => '清洁耳朵';

  @override
  String get tartarRemoval => '去除牙结石';

  @override
  String get analGlands => '肛门腺';

  @override
  String get all => '全部';

  @override
  String get back => '背部';

  @override
  String get belly => '腹部';

  @override
  String get tail => '尾巴';

  @override
  String get face => '脸部';

  @override
  String get paws => '爪子';

  @override
  String get important => '重要';

  @override
  String get photosAndVideos => '照片 · 视频';

  @override
  String get addMedia => '添加媒体';

  @override
  String get selectMediaMethod => '选择添加媒体方式';

  @override
  String get useCamera => '使用相机';

  @override
  String get takePhotoOrVideo => '拍摄照片或视频';

  @override
  String get chooseFromGallery => '从相册选择';

  @override
  String get multiSelectHint => '可多选照片和视频';

  @override
  String get takePhoto => '拍照';

  @override
  String get takePhotoDesc => '使用相机拍照';

  @override
  String get recordVideo => '录制视频';

  @override
  String get recordVideoDesc => '使用相机录制视频';

  @override
  String get deleteThisPhoto => '删除此照片';

  @override
  String get deletePhotoConfirm => '删除此照片？';

  @override
  String get deleteThisVideo => '删除此视频';

  @override
  String get deleteVideoConfirm => '删除此视频？';

  @override
  String get muted => '静音';

  @override
  String get soundOn => '声音开启';

  @override
  String get allowPermissionInSettings => '请在设置中允许权限';

  @override
  String get openSettings => '打开设置';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get contactDeveloper => '联系开发者';

  @override
  String get contact => '联系';

  @override
  String get settingsLabel => '设置';

  @override
  String get exportData => '导出数据';

  @override
  String get importData => '导入数据';

  @override
  String get sendFeedback => '发送反馈';

  @override
  String get faq => '常见问题';

  @override
  String get homeScreen => '首页画面';

  @override
  String get journalScreen => '日记画面';

  @override
  String get alarmScreen => '提醒画面';

  @override
  String get petManagement => '宠物管理';

  @override
  String get recordCategories => '记录类别';

  @override
  String get whatIsPetSumtan => '什么是宠物Sumtan？';

  @override
  String get todayRecordSummary => '今日记录摘要';

  @override
  String get weeklyStats => '每周统计';

  @override
  String get weightChangeChart => '体重变化图表';

  @override
  String get findNearbyHospitals => '查找附近医院';

  @override
  String get addNewRecord => '添加新记录 (+)';

  @override
  String get viewRecordList => '查看记录列表';

  @override
  String get editDeleteRecord => '编辑和删除记录';

  @override
  String get attachMedia => '附加照片/视频';

  @override
  String get addAlarm => '添加提醒';

  @override
  String get repeatAlarm => '重复提醒';

  @override
  String get advanceAlarmHint => '提前提醒 (D-7, D-3, D-1)';

  @override
  String get completeAlarm => '完成提醒';

  @override
  String get deleteAlarm => '删除提醒';

  @override
  String get registerPet => '注册宠物';

  @override
  String get editProfile => '编辑档案';

  @override
  String get manageMultiplePets => '管理多只宠物';

  @override
  String get dogHealthGuide => '狗狗健康指南';

  @override
  String get catHealthGuide => '猫咪健康指南';

  @override
  String get notificationSettings => '通知设置';

  @override
  String get dogHealthCareGuide => '狗狗健康管理指南';

  @override
  String get catHealthCareGuide => '猫咪健康管理指南';

  @override
  String get healthGuideSubtitle => '专业健康指南\n基于兽医建议。';

  @override
  String get vaccination => '疫苗接种';

  @override
  String get coreVaccines => '核心疫苗';

  @override
  String get required => '必需';

  @override
  String get nonCoreVaccines => '非核心疫苗';

  @override
  String get recommended => '推荐';

  @override
  String get parasitePrevention => '寄生虫预防';

  @override
  String get heartworm => '心丝虫';

  @override
  String get monthlyFreq => '每月';

  @override
  String get externalParasites => '外部寄生虫（跳蚤/蜱虫）';

  @override
  String get internalParasites => '内部寄生虫';

  @override
  String get threeToSixMonths => '3-6个月';

  @override
  String get nutritionManagement => '营养管理';

  @override
  String get dentalCare => '牙齿护理';

  @override
  String get healthCheckup => '健康检查';

  @override
  String get emergencySigns => '紧急症状';

  @override
  String get age => '年龄';

  @override
  String get checkupCycle => '检查周期';

  @override
  String get mainItems => '主要项目';

  @override
  String get exerciseLevel => '运动量';

  @override
  String get breedExamples => '品种示例';

  @override
  String get low => '低';

  @override
  String get high => '高';

  @override
  String get menu => '菜单';

  @override
  String get helloGreeting => '你好！ ';

  @override
  String get healthyTodayMsg => '\n今天也健康吗？🐾';

  @override
  String get noRecordsYet => '还没有记录';

  @override
  String lastRecord(String time) {
    return '最后记录 · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return '平均 $value$unit/天';
  }

  @override
  String get weightTrend => '⚖️ 体重趋势';

  @override
  String get weightChange => '⚖️ 体重变化';

  @override
  String get noWeightData => '还没有体重数据';

  @override
  String get measuredWeight => '实测体重';

  @override
  String get standardRange => '标准范围';

  @override
  String get noTodayRecords => '今天还没有记录';

  @override
  String get homeNoRecordHint => '记录状态、排泄和体重\n来管理宠物的健康！';

  @override
  String noRecordsForDate(String date) {
    return '$date没有记录';
  }

  @override
  String recordsForDate(String date, String count) {
    return '$date 记录（$count条）';
  }

  @override
  String get daySun => '日';

  @override
  String get dayMon => '一';

  @override
  String get dayTue => '二';

  @override
  String get dayWed => '三';

  @override
  String get dayThu => '四';

  @override
  String get dayFri => '五';

  @override
  String get daySat => '六';

  @override
  String get whatToRecord => '📝 要记录什么？';

  @override
  String saveErrorMsg(String error) {
    return '保存时发生错误：$error';
  }

  @override
  String get alarmUpdated => '✅ 提醒已更新';

  @override
  String get alarmAdded => '🔔 提醒已添加';

  @override
  String get editAlarm => '编辑提醒';

  @override
  String get deleteAlarmConfirm => '删除此提醒？';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name将被删除，\n计划的推送通知也将一并取消。';
  }

  @override
  String get doneMsg => '✅ 已完成';

  @override
  String get laterMsg => '🕐 稍后';

  @override
  String get saveCompletion => '✅ 保存完成';

  @override
  String completedQuestion(String type) {
    return '完成了$type吗？';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return '将自动把\n$name保存到今天的记录中。';
  }

  @override
  String completionSaved(String name) {
    return '$name完成已记录 ✅';
  }

  @override
  String get tapAlarmTypeHint => '👆 点击您想要的提醒类型';

  @override
  String countUnit(int count) {
    return '$count个';
  }

  @override
  String dateCompleted(String date) {
    return '$date · 已完成';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date已过 · 点击重新安排';
  }

  @override
  String get completedLabel => '已完成';

  @override
  String get edit => '编辑';

  @override
  String recordDeleteCannotUndo(String category) {
    return '$category记录将被删除，\n无法恢复。';
  }

  @override
  String get hintMedicineNameAndDose => '💡 请输入药品名称和用量';

  @override
  String get hintMedicineName => '💡 请输入药品名称';

  @override
  String get hintDose => '💡 请输入用量';

  @override
  String get hintWeightNumber => '💡 请以数字输入体重';

  @override
  String get hintWeight => '💡 请输入体重';

  @override
  String get hintWeightIsNumber => '💡 体重请以数字输入';

  @override
  String get hintWalkTime => '💡 请输入散步时间';

  @override
  String get hintWalkTimeIsNumber => '💡 散步时间请以数字输入';

  @override
  String get hintWalkTimeNumber => '💡 请以数字输入散步时间';

  @override
  String get hintSelectBrushingArea => '💡 请至少选择一个梳毛部位';

  @override
  String get hintSelectVaccineType => '💡 请至少选择一种疫苗类型';

  @override
  String get hintSelectGroomingType => '💡 请至少选择一种美容类型';

  @override
  String get hintTitle => '💡 请输入标题';

  @override
  String get hintVaccineName => '💡 请输入疫苗名称';

  @override
  String get hintSelectScheduledDate => '💡 请选择预定日期';

  @override
  String get hintSelectScheduledTime => '💡 请选择预定时间';

  @override
  String get hintVisitPurpose => '💡 请输入就诊目的';

  @override
  String get hintSelectAppointmentDate => '💡 请选择预约日期';

  @override
  String get hintSelectAppointmentTime => '💡 请选择预约时间';

  @override
  String get hintMedicineNameInput => '💡 请输入药品名称';

  @override
  String get hintSelectMedicationDate => '💡 请选择用药日期';

  @override
  String get hintSelectMedicationTime => '💡 请选择用药时间';

  @override
  String get hintAlarmName => '💡 请输入提醒名称';

  @override
  String get hintSelectMealTime => '💡 请选择进餐时间';

  @override
  String get hintSelectAlarmTime => '💡 请选择提醒时间';

  @override
  String get noPetRegisterFirst => '还没有宠物 🐾 请先在档案中注册！';

  @override
  String get alarmRescheduled => '🔄 提醒已重新安排';

  @override
  String get examplePetName => '例：小白';

  @override
  String get exampleBreed => '例：马耳他犬';

  @override
  String get exampleBreedMulti => '例：马耳他犬、波斯猫';

  @override
  String get example30 => '例：30';

  @override
  String get example80 => '例：80';

  @override
  String get example200 => '例：200';

  @override
  String get example25 => '例：2.5';

  @override
  String get example35000 => '例：35000';

  @override
  String get example50000 => '例：50000';

  @override
  String get enterNameHint => '请输入名字';

  @override
  String get addNewPetTitle => '添加新宠物';

  @override
  String get basicInfo => '基本信息';

  @override
  String get idInfo => '识别信息';

  @override
  String get idInfoOptional => '识别信息（可选）';

  @override
  String get name => '姓名';

  @override
  String get petKind => '类型';

  @override
  String get breed => '品种';

  @override
  String get weight => '体重';

  @override
  String get microchip => '微芯片';

  @override
  String get registrationNumber => '登记号';

  @override
  String get birthDate => '出生日期';

  @override
  String get gender => '性别';

  @override
  String get male => '公';

  @override
  String get female => '母';

  @override
  String get maleSym => '公 ♂';

  @override
  String get femaleSym => '母 ♀';

  @override
  String get neutered => '绝育';

  @override
  String get done => '完成';

  @override
  String get notDone => '未完成';

  @override
  String get notEntered => '未填写';

  @override
  String get notRegistered => '未注册';

  @override
  String get dogEmoji => '狗狗 🐶';

  @override
  String get catEmoji => '猫咪 🐱';

  @override
  String get otherEmoji => '其他 🐾';

  @override
  String get noPetsRegistered => '还没有注册宠物';

  @override
  String get registerPetPrompt => '注册宠物\n一起管理健康吧！';

  @override
  String get registerPetBtn => '注册宠物';

  @override
  String get editPet => '编辑宠物';

  @override
  String get neuteringStatus => '绝育情况';

  @override
  String get neuteredDone => '已绝育';

  @override
  String get notNeutered => '未绝育';

  @override
  String get selectDateHint => '请选择日期';

  @override
  String get saveChanges => '保存更改';

  @override
  String get registerBtn => '注册';

  @override
  String deletePetName(String name) {
    return '删除$name';
  }

  @override
  String deletePetConfirm(String name) {
    return '删除$name？';
  }

  @override
  String deletePetWarning(String name) {
    return '$name的所有记录和提醒将被删除，无法恢复。';
  }

  @override
  String petDeleted(String name) {
    return '$name已删除';
  }

  @override
  String petAdded(String name) {
    return '$name已添加 🐾';
  }

  @override
  String get storeUnavailableMsg => '目前无法连接到商店。请稍后再试。';

  @override
  String get checkingPaymentMsg => '正在确认支付信息。请稍后再试。';

  @override
  String get paymentCompleteMsg => '支付完成。请输入新宠物的信息。';

  @override
  String get addNewFamilyMember => '添加新家庭成员？';

  @override
  String get firstPetFreeDesc => '第一只宠物可以免费注册，第二只起每只需要付费。';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '当前注册的宠物：$count只\n请在商店可用时重试。';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '当前注册的宠物：$count只\n支付$price后可以添加新家庭成员。';
  }

  @override
  String get maybeLater => '以后再说';

  @override
  String get unavailable => '无法连接';

  @override
  String payAndAdd(String price) {
    return '支付$price并添加';
  }

  @override
  String get addNextAppointment => '+ 添加下次预约日';

  @override
  String get pottyRecordSaved => '💩 排泄已记录';

  @override
  String get conditionRecordSaved => '💗 状态已记录';

  @override
  String get medicationRecordSaved => '💊 用药已记录';

  @override
  String get weightRecordSaved => '⚖️ 体重已记录';

  @override
  String get mealRecordSaved => '🍽️ 进餐已记录';

  @override
  String get waterRecordSaved => '💧 饮水已记录';

  @override
  String get vetVisitRecordSaved => '🏥 就诊已记录';

  @override
  String get vaccinationRecordSaved => '💉 疫苗接种已记录';

  @override
  String get groomingRecordSaved => '✂️ 美容已记录';

  @override
  String get brushingRecordSaved => '🪥 梳毛已记录';

  @override
  String get walkRecordSaved => '🦮 散步已记录';

  @override
  String get memoSaved => '📝 备忘已记录';

  @override
  String get moreQuestions => '还有其他问题吗？';

  @override
  String get contactViaSendFeedback => '请通过设置 > 发送反馈与我们联系。\n我们会尽快回复 🐾';

  @override
  String get contactViaSendFeedbackLong => '请通过设置页面的【发送反馈】按钮与我们联系，\n我们将迅速回复。';

  @override
  String get privacyPolicyEffectiveDate =>
      '本隐私政策自2026年1月1日起生效。\n最后更新日期：2026年5月8日';

  @override
  String get privacyCollectedInfo => '收集的信息仅用于以下目的。';

  @override
  String get privacyDataFeatures => '宠物Sumtan提供数据导出（备份）和导入（恢复）功能。';

  @override
  String get privacyPolicyMayUpdate => '本隐私政策可能因法律或服务变更而更新。';

  @override
  String get privacyPolicyContact => '如对本隐私政策有疑问，请通过以下方式联系我们。';

  @override
  String get catMeal => '进餐';

  @override
  String get catWater => '饮水';

  @override
  String get catGrooming => '美容';

  @override
  String get catBrushing => '梳毛';

  @override
  String get catWalk => '散步';

  @override
  String get catHospital => '医院';

  @override
  String get catCondition => '状态';

  @override
  String get catPotty => '排泄';

  @override
  String get mealFormTitle => '🍽️ 进餐记录';

  @override
  String get walkFormTitle => '🦮 散步记录';

  @override
  String get weightFormTitle => '⚖️ 体重记录';

  @override
  String get waterFormTitle => '💧 饮水记录';

  @override
  String get medicationFormTitle => '💊 投药记录';

  @override
  String get groomingFormTitle => '✂️ 美容记录';

  @override
  String get brushingFormTitle => '🪥 梳毛记录';

  @override
  String get conditionFormTitle => '🌡️ 状态记录';

  @override
  String get poopFormTitle => '💩 排泄记录';

  @override
  String get vaccinationFormTitle => '💉 接种记录';

  @override
  String get hospitalFormTitle => '🏥 医院记录';

  @override
  String get memoFormTitle => '📝 备忘录';

  @override
  String get measureMethod => '测量方法';

  @override
  String get feedAmount => '喂食量';

  @override
  String get mlInputLabel => '直接输入毫升';

  @override
  String get alarmRescheduleNote => '此提醒的预定日期已过。\n您可以设置新日期或删除。';

  @override
  String get nailTrim => '修指甲';

  @override
  String get shopNameExample => '例: 蓬松宠物美容';

  @override
  String get poopRecordSaved => '💩 排泄已记录';

  @override
  String get memoRecordSaved => '📝 备忘录已记录';

  @override
  String get other => '其他';

  @override
  String get whole => '全身';

  @override
  String get paw => '爪子';

  @override
  String get importance => '重要性';

  @override
  String get timeTaken => '所需时间';

  @override
  String get example10 => '例: 10';

  @override
  String get hospitalNameExample => '例: 幸福动物医院';

  @override
  String get diagnosisExample => '例: 肠炎, 皮炎';

  @override
  String get memoTitlePlaceholder => '输入备忘录标题';

  @override
  String get hintMemoTitle => '💡 请输入标题';

  @override
  String get poopType => '类型';

  @override
  String get poopStatus => '状态';

  @override
  String get feces => '大便';

  @override
  String get bloody => '血便';

  @override
  String get vaccineDhppl => '综合疫苗 (DHPPL)';

  @override
  String get vaccineCorona => '冠状病毒肠炎';

  @override
  String get vaccineKennelCough => '犬窝咳';

  @override
  String get vaccineRabies => '狂犬病';

  @override
  String get vaccineInfluenza => '流感';

  @override
  String get vaccineFvrcp => '综合疫苗 (FVRCP)';

  @override
  String get vaccineFelv => '白血病 (FeLV)';

  @override
  String get vaccineChlamydia => '衣原体';

  @override
  String get mute => '静音';

  @override
  String get photoVideo => '照片・视频';

  @override
  String photoVideoCount(String count) {
    return '照片・视频 · $count个';
  }

  @override
  String get selectMediaSource => '选择媒体添加方式';

  @override
  String get cameraCapture => '相机拍摄';

  @override
  String get cameraCaptureSubtitle => '拍摄照片或视频';

  @override
  String get selectFromGallery => '从相册选择';

  @override
  String get selectFromGallerySubtitle => '可多选照片・视频';

  @override
  String get takePhotoSubtitle => '用相机拍摄照片';

  @override
  String get recordVideoSubtitle => '用相机录制视频';

  @override
  String get permissionRequired => '请在设置中允许权限';

  @override
  String get confirmDeletePhoto => '删除这张照片？';

  @override
  String get confirmDeleteVideo => '删除这个视频？';

  @override
  String get hintMedicineAndDose => '💡 请输入药品名称和剂量';

  @override
  String deleteRecordBody(String category) {
    return '$category记录将被删除\n且无法恢复。';
  }
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appName => '寵物 Sumtan';

  @override
  String get appTagline => '寵物健康管理 App';

  @override
  String get navHome => '首頁';

  @override
  String get navJournal => '日誌';

  @override
  String get navNotifications => '提醒';

  @override
  String get navProfile => '檔案';

  @override
  String get navSettings => '設定';

  @override
  String get navAddAlarm => '新增提醒';

  @override
  String get drawerService => '服務';

  @override
  String get drawerNearbyHospitals => '尋找附近醫院';

  @override
  String get drawerNearbyHospitalsSub => '依目前位置尋找動物醫院';

  @override
  String get drawerHealthGuide => '健康管理指南';

  @override
  String get drawerHealthGuideSub => '寵物健康指南';

  @override
  String get drawerApp => 'App';

  @override
  String get drawerHelp => '說明';

  @override
  String get dialogExternalTitle => '開啟外部網頁';

  @override
  String get dialogExternalHospitalBody => '尋找附近動物醫院\n需要開啟外部網頁。\n\n現在前往嗎？';

  @override
  String get commonCancel => '取消';

  @override
  String get commonGo => '前往';

  @override
  String get commonDelete => '刪除';

  @override
  String get commonSave => '儲存';

  @override
  String get commonLoading => '準備中...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => '再按一次即可關閉 App';

  @override
  String get toastNeedPet => '還沒有寵物。請先在檔案中登錄！';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsPushNotifications => '允許推播通知';

  @override
  String get settingsPushNotificationsSub => '裝置通知權限設定';

  @override
  String get settingsLanguageSection => '語言';

  @override
  String get settingsLanguage => 'App 語言';

  @override
  String get settingsLanguageSystem => '使用裝置設定';

  @override
  String get settingsLanguageChanged => 'App 語言已變更';

  @override
  String get settingsData => '資料管理';

  @override
  String get settingsExport => '匯出資料';

  @override
  String get settingsExportSub => '儲存為 ZIP 檔';

  @override
  String get settingsImport => '匯入資料';

  @override
  String get settingsImportSub => '從 ZIP 檔還原';

  @override
  String get settingsAppInfo => 'App 資訊';

  @override
  String get settingsVersion => 'App 版本';

  @override
  String get settingsPrivacy => '隱私權政策';

  @override
  String get settingsFeedback => '傳送意見回饋';

  @override
  String get settingsFeedbackSubject => '寵物 Sumtan 意見回饋';

  @override
  String get settingsEmailAppMissing => '找不到電子郵件 App';

  @override
  String get settingsImportConfirmBody => '所有現有資料將被刪除並替換為備份檔案的資料。\n\n確定繼續？';

  @override
  String get settingsImportAction => '匯入';

  @override
  String get settingsImporting => '正在匯入資料';

  @override
  String get settingsImportSuccess => '備份資料已還原';

  @override
  String get settingsImportFailed => '匯入失敗';

  @override
  String get settingsExportTitle => '匯出資料';

  @override
  String get settingsExportBenefitTitle => '安全保存珍貴記錄';

  @override
  String get settingsExportBenefitPets => '所有寵物檔案和照片';

  @override
  String get settingsExportBenefitRecords => '所有健康記錄、日誌和體重';

  @override
  String get settingsExportBenefitMedia => '包含附件圖片和影片';

  @override
  String get settingsStoreUnavailable => '目前無法連線至 App Store。\n請稍後再試。';

  @override
  String settingsPayAndExport(String price) {
    return '支付 $price 並匯出';
  }

  @override
  String get settingsUnlocked => '已解鎖';

  @override
  String get settingsExportUnlockedBody =>
      '將所有寵物資訊和記錄儲存為 ZIP 檔。\n儲存的檔案隨時可以免費匯入還原。';

  @override
  String get settingsExporting => '匯出中...';

  @override
  String get settingsExportZip => '匯出為 ZIP 檔';

  @override
  String get settingsExportConfirmBody => '將所有寵物資訊、記錄和附件媒體匯出為 ZIP 檔。';

  @override
  String get settingsExportAction => '匯出';

  @override
  String get settingsExportSuccess => '備份檔案已可分享';

  @override
  String get settingsExportFailed => '匯出失敗';

  @override
  String get settingsPurchaseFailed => '付款失敗';

  @override
  String get errorDbInit => '準備 App 資料時發生問題。\n請稍後再啟動。';

  @override
  String get help => '說明';

  @override
  String get healthGuide => '健康管理指南';

  @override
  String get dog => '狗狗';

  @override
  String get cat => '貓咪';

  @override
  String get tabDog => '🐶 狗狗';

  @override
  String get tabCat => '🐱 貓咪';

  @override
  String get savedMsg => '已儲存';

  @override
  String get cancel => '取消';

  @override
  String get delete => '刪除';

  @override
  String get deleteAction => '刪除';

  @override
  String get save => '儲存';

  @override
  String get memo => '備忘錄';

  @override
  String get memoPlaceholder => '請自由寫下備忘';

  @override
  String get addBtn => '+ 新增';

  @override
  String get errorOccurred => '發生錯誤';

  @override
  String errorOccurredWithDetail(String error) {
    return '發生錯誤\n$error';
  }

  @override
  String get pet => '寵物';

  @override
  String get selectPet => '選擇寵物';

  @override
  String get addNewPet => '新增寵物';

  @override
  String get noAlarms => '還沒有提醒';

  @override
  String alarmEmptyDesc(String petName) {
    return '讓$petName今天也保持健康！\n點選下方新增提醒按鈕開始。';
  }

  @override
  String get scheduledAlarms => '已排程提醒';

  @override
  String get swipeToDelete => '滑動即可刪除';

  @override
  String get selectAlarmType => '選擇提醒類型';

  @override
  String get vetAppointment => '醫院預約';

  @override
  String get medication => '用藥';

  @override
  String get mealTime => '用餐時間';

  @override
  String get dailyReminder => '每日提醒';

  @override
  String get alarmLabel => '提醒';

  @override
  String get alarmBodyVaccination => '請確認預防接種日期。';

  @override
  String get alarmBodyVetAppointment => '醫院預約時間快到了。';

  @override
  String get alarmBodyMedication => '該用藥了。';

  @override
  String get alarmBodyMealTime => '請記得餵食時間。';

  @override
  String get alarmBodyDailyReminder => '請記錄今天的健康記錄。';

  @override
  String get alarmBodyDefault => '寵物健康管理提醒。';

  @override
  String get alarmDeleted => '提醒已刪除 🗑️';

  @override
  String get hidePastAlarms => '隱藏過去的提醒';

  @override
  String get showPastAlarms => '顯示過去的提醒';

  @override
  String get deleteAll => '全部刪除';

  @override
  String get deletePastAlarms => '刪除過去的提醒';

  @override
  String deletePastAlarmsConfirm(int count) {
    return '刪除全部 $count 個過去的提醒？';
  }

  @override
  String get pastAlarmsDeleted => '所有過去的提醒已刪除';

  @override
  String get pastLabel => '已過';

  @override
  String get today => '今天';

  @override
  String get tomorrowSameTime => '明天同一時間';

  @override
  String get snoozeQuestion => '什麼時候再提醒您？';

  @override
  String get snooze5min => '5分鐘後';

  @override
  String get snooze10min => '10分鐘後';

  @override
  String get snooze30min => '30分鐘後';

  @override
  String get snooze1hour => '1小時後';

  @override
  String get snooze3hour => '3小時後';

  @override
  String get snoozeCustom => '手動指定';

  @override
  String get snoozeAtThisTime => '在此時間提醒';

  @override
  String snoozeConfirm(String time) {
    return '🕐 將在 $time 再次提醒您';
  }

  @override
  String get selectFutureTime => '請選擇將來的時間';

  @override
  String recordCheckHint(String typeLabel) {
    return '可在記錄 → $typeLabel 中查看';
  }

  @override
  String get pushAlsoCancel => '排程的推播通知也將一併取消。';

  @override
  String get reschedule => '重新安排';

  @override
  String get deleteThisAlarm => '刪除此提醒';

  @override
  String get vaccineNameRequired => '疫苗名稱 *';

  @override
  String get vaccineNameExample => '例：狂犬病、混合疫苗等';

  @override
  String get scheduledDateRequired => '預定日期 *';

  @override
  String get reminderTiming => '提醒時間點';

  @override
  String get sameDay => '當天';

  @override
  String get reminderTimeRequired => '提醒時刻 *';

  @override
  String get memoInputHint => '請輸入備忘';

  @override
  String get visitPurposeRequired => '就診目的 *';

  @override
  String get visitPurposeExample => '例：定期健檢、皮膚診治等';

  @override
  String get appointmentDateTimeRequired => '預約日期和時間 *';

  @override
  String get hospitalName => '醫院名稱';

  @override
  String get hospitalNameHint => '請輸入醫院名稱';

  @override
  String get medicineNameRequired => '藥品名稱 *';

  @override
  String get medicineNameExample => '例：心絲蟲預防藥、驅蟲藥等';

  @override
  String get repeatRequired => '重複 *';

  @override
  String get none => '無';

  @override
  String get daily => '每天';

  @override
  String get weekly => '每週';

  @override
  String get monthly => '每月';

  @override
  String get weekdays => '工作日';

  @override
  String get weekdaysOnly => '僅工作日';

  @override
  String get weekends => '週末';

  @override
  String get weekendsOnly => '僅週末';

  @override
  String get medicationDateTimeRequired => '用藥日期和時間 *';

  @override
  String get medicationTimeRequired => '用藥時刻 *';

  @override
  String get alarmNameRequired => '提醒名稱 *';

  @override
  String get mealTimeExample => '例：早餐、晚餐等';

  @override
  String get mealTimeRequired => '用餐時刻 *';

  @override
  String get alarmMessage => '提醒訊息';

  @override
  String get alarmMessageExample => '例：今天記錄了嗎？🐾';

  @override
  String get alarmPastDueMsg => '此提醒的預定日期已過。\n您可以選擇新日期或刪除。';

  @override
  String get reselectDate => '重新選擇日期';

  @override
  String get selectDate => '選擇日期';

  @override
  String get selectTime => '選擇時間';

  @override
  String get todayStatus => '今日狀態';

  @override
  String get addRecord => '+ 記錄';

  @override
  String get todayReminders => '今日提醒';

  @override
  String get todayRecords => '今日記錄';

  @override
  String get viewAll => '查看全部';

  @override
  String get weekStats => '本週統計';

  @override
  String get pottyCount => '排泄次數';

  @override
  String get mealCount => '用餐次數';

  @override
  String get waterLevel => '飲水量級';

  @override
  String get timesUnit => '次';

  @override
  String get mealsUnit => '餐';

  @override
  String get pointsUnit => '分';

  @override
  String get recordDeleted => '記錄已刪除 🗑️';

  @override
  String get recordUpdated => '記錄已更新';

  @override
  String get deleteRecordConfirm => '刪除此記錄？';

  @override
  String get deleteThisRecord => '刪除此記錄';

  @override
  String get typeLabel => '類型';

  @override
  String get statusLabel => '狀態';

  @override
  String get conditionScore => '狀態評分';

  @override
  String get symptomTags => '症狀標籤';

  @override
  String get medicineName => '藥品名稱';

  @override
  String get dose => '用量';

  @override
  String get medicationMethod => '用藥方法';

  @override
  String get weightKg => '體重 (kg)';

  @override
  String get measurementMethod => '測量方法';

  @override
  String get mealType => '用餐類型';

  @override
  String get mealAmount => '用餐量';

  @override
  String get servingAmount => '餵食量';

  @override
  String get waterAmount => '飲水量';

  @override
  String get visitType => '就診類型';

  @override
  String get diagnosisName => '診斷名稱';

  @override
  String get vaccineType => '疫苗類型';

  @override
  String get sideEffects => '副作用';

  @override
  String get groomingType => '美容類型';

  @override
  String get shopName => '店家名稱';

  @override
  String get cost => '費用';

  @override
  String get nextAppointment => '下次預約日';

  @override
  String get brushingArea => '梳毛部位';

  @override
  String get duration => '所需時間';

  @override
  String get walkTime => '散步時間';

  @override
  String get distance => '距離';

  @override
  String get title => '標題';

  @override
  String get priority => '重要程度';

  @override
  String get stool => '大便';

  @override
  String get urine => '尿液';

  @override
  String get vomiting => '嘔吐';

  @override
  String get normal => '正常';

  @override
  String get loose => '稀軟';

  @override
  String get hard => '硬便';

  @override
  String get bloodInStool => '血便';

  @override
  String get cough => '咳嗽';

  @override
  String get lethargy => '無精打采';

  @override
  String get lossOfAppetite => '食欲不振';

  @override
  String get diarrhea => '腹瀉';

  @override
  String get runnyNose => '流鼻水';

  @override
  String get sneezing => '打噴嚏';

  @override
  String get trembling => '顫抖';

  @override
  String get bloodInUrine => '血尿';

  @override
  String get oral => '口服';

  @override
  String get injection => '注射';

  @override
  String get topical => '外用';

  @override
  String get eyeDrops => '滴眼液';

  @override
  String get earDrops => '滴耳液';

  @override
  String get vetHospital => '動物醫院';

  @override
  String get homeScale => '家用體重秤';

  @override
  String get holdAndWeigh => '抱著稱重';

  @override
  String get breakfast => '早餐';

  @override
  String get lunch => '午餐';

  @override
  String get dinner => '晚餐';

  @override
  String get snack => '零食';

  @override
  String get veryLittle => '非常少';

  @override
  String get little => '少';

  @override
  String get much => '多';

  @override
  String get veryMuch => '非常多';

  @override
  String get general => '一般';

  @override
  String get regularCheckup => '定期健檢';

  @override
  String get emergency => '緊急';

  @override
  String get mild => '輕微';

  @override
  String get severe => '嚴重';

  @override
  String get bath => '洗澡';

  @override
  String get fullGrooming => '全身美容';

  @override
  String get partialGrooming => '局部美容';

  @override
  String get nails => '剪指甲';

  @override
  String get earCleaning => '清潔耳朵';

  @override
  String get tartarRemoval => '去除牙結石';

  @override
  String get analGlands => '肛門腺';

  @override
  String get all => '全部';

  @override
  String get back => '背部';

  @override
  String get belly => '腹部';

  @override
  String get tail => '尾巴';

  @override
  String get face => '臉部';

  @override
  String get paws => '爪子';

  @override
  String get important => '重要';

  @override
  String get photosAndVideos => '照片 · 影片';

  @override
  String get addMedia => '新增媒體';

  @override
  String get selectMediaMethod => '選擇新增媒體方式';

  @override
  String get useCamera => '使用相機';

  @override
  String get takePhotoOrVideo => '拍攝照片或影片';

  @override
  String get chooseFromGallery => '從相簿選擇';

  @override
  String get multiSelectHint => '可多選照片和影片';

  @override
  String get takePhoto => '拍照';

  @override
  String get takePhotoDesc => '使用相機拍照';

  @override
  String get recordVideo => '錄製影片';

  @override
  String get recordVideoDesc => '使用相機錄製影片';

  @override
  String get deleteThisPhoto => '刪除此照片';

  @override
  String get deletePhotoConfirm => '刪除此照片？';

  @override
  String get deleteThisVideo => '刪除此影片';

  @override
  String get deleteVideoConfirm => '刪除此影片？';

  @override
  String get muted => '靜音';

  @override
  String get soundOn => '聲音開啟';

  @override
  String get allowPermissionInSettings => '請在設定中允許權限';

  @override
  String get openSettings => '開啟設定';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get contactDeveloper => '聯絡開發者';

  @override
  String get contact => '聯絡';

  @override
  String get settingsLabel => '設定';

  @override
  String get exportData => '匯出資料';

  @override
  String get importData => '匯入資料';

  @override
  String get sendFeedback => '傳送意見回饋';

  @override
  String get faq => '常見問題';

  @override
  String get homeScreen => '首頁畫面';

  @override
  String get journalScreen => '日誌畫面';

  @override
  String get alarmScreen => '提醒畫面';

  @override
  String get petManagement => '寵物管理';

  @override
  String get recordCategories => '記錄類別';

  @override
  String get whatIsPetSumtan => '什麼是寵物Sumtan？';

  @override
  String get todayRecordSummary => '今日記錄摘要';

  @override
  String get weeklyStats => '每週統計';

  @override
  String get weightChangeChart => '體重變化圖表';

  @override
  String get findNearbyHospitals => '尋找附近醫院';

  @override
  String get addNewRecord => '新增記錄 (+)';

  @override
  String get viewRecordList => '查看記錄清單';

  @override
  String get editDeleteRecord => '編輯和刪除記錄';

  @override
  String get attachMedia => '附加照片/影片';

  @override
  String get addAlarm => '新增提醒';

  @override
  String get repeatAlarm => '重複提醒';

  @override
  String get advanceAlarmHint => '提前提醒 (D-7, D-3, D-1)';

  @override
  String get completeAlarm => '完成提醒';

  @override
  String get deleteAlarm => '刪除提醒';

  @override
  String get registerPet => '登錄寵物';

  @override
  String get editProfile => '編輯檔案';

  @override
  String get manageMultiplePets => '管理多隻寵物';

  @override
  String get dogHealthGuide => '狗狗健康指南';

  @override
  String get catHealthGuide => '貓咪健康指南';

  @override
  String get notificationSettings => '通知設定';

  @override
  String get dogHealthCareGuide => '狗狗健康管理指南';

  @override
  String get catHealthCareGuide => '貓咪健康管理指南';

  @override
  String get healthGuideSubtitle => '專業健康指南\n依據獸醫建議。';

  @override
  String get vaccination => '預防接種';

  @override
  String get coreVaccines => '核心疫苗';

  @override
  String get required => '必須';

  @override
  String get nonCoreVaccines => '非核心疫苗';

  @override
  String get recommended => '建議';

  @override
  String get parasitePrevention => '寄生蟲預防';

  @override
  String get heartworm => '心絲蟲';

  @override
  String get monthlyFreq => '每月';

  @override
  String get externalParasites => '外部寄生蟲（跳蚤/蜱蟲）';

  @override
  String get internalParasites => '內部寄生蟲';

  @override
  String get threeToSixMonths => '3-6個月';

  @override
  String get nutritionManagement => '營養管理';

  @override
  String get dentalCare => '牙齒護理';

  @override
  String get healthCheckup => '健康檢查';

  @override
  String get emergencySigns => '緊急症狀';

  @override
  String get age => '年齡';

  @override
  String get checkupCycle => '檢查週期';

  @override
  String get mainItems => '主要項目';

  @override
  String get exerciseLevel => '運動量';

  @override
  String get breedExamples => '品種範例';

  @override
  String get low => '低';

  @override
  String get high => '高';

  @override
  String get menu => '選單';

  @override
  String get helloGreeting => '你好！ ';

  @override
  String get healthyTodayMsg => '\n今天也健康嗎？🐾';

  @override
  String get noRecordsYet => '還沒有記錄';

  @override
  String lastRecord(String time) {
    return '最後記錄 · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return '平均 $value$unit/天';
  }

  @override
  String get weightTrend => '⚖️ 體重趨勢';

  @override
  String get weightChange => '⚖️ 體重變化';

  @override
  String get noWeightData => '還沒有體重資料';

  @override
  String get measuredWeight => '實測體重';

  @override
  String get standardRange => '標準範圍';

  @override
  String get noTodayRecords => '今天還沒有記錄';

  @override
  String get homeNoRecordHint => '記錄狀態、排泄和體重\n來管理寵物的健康！';

  @override
  String noRecordsForDate(String date) {
    return '$date沒有記錄';
  }

  @override
  String recordsForDate(String date, String count) {
    return '$date 記錄（$count筆）';
  }

  @override
  String get daySun => '日';

  @override
  String get dayMon => '一';

  @override
  String get dayTue => '二';

  @override
  String get dayWed => '三';

  @override
  String get dayThu => '四';

  @override
  String get dayFri => '五';

  @override
  String get daySat => '六';

  @override
  String get whatToRecord => '📝 要記錄什麼？';

  @override
  String saveErrorMsg(String error) {
    return '儲存時發生錯誤：$error';
  }

  @override
  String get alarmUpdated => '✅ 提醒已更新';

  @override
  String get alarmAdded => '🔔 提醒已新增';

  @override
  String get editAlarm => '編輯提醒';

  @override
  String get deleteAlarmConfirm => '刪除此提醒？';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name將被刪除，\n排程的推播通知也將一併取消。';
  }

  @override
  String get doneMsg => '✅ 已完成';

  @override
  String get laterMsg => '🕐 稍後';

  @override
  String get saveCompletion => '✅ 儲存完成';

  @override
  String completedQuestion(String type) {
    return '完成了$type嗎？';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return '將自動把\n$name儲存到今天的記錄中。';
  }

  @override
  String completionSaved(String name) {
    return '$name完成已記錄 ✅';
  }

  @override
  String get tapAlarmTypeHint => '👆 點選您想要的提醒類型';

  @override
  String countUnit(int count) {
    return '$count個';
  }

  @override
  String dateCompleted(String date) {
    return '$date · 已完成';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date已過 · 點選重新安排';
  }

  @override
  String get completedLabel => '已完成';

  @override
  String get edit => '編輯';

  @override
  String recordDeleteCannotUndo(String category) {
    return '$category記錄將被刪除，\n無法恢復。';
  }

  @override
  String get hintMedicineNameAndDose => '💡 請輸入藥品名稱和用量';

  @override
  String get hintMedicineName => '💡 請輸入藥品名稱';

  @override
  String get hintDose => '💡 請輸入用量';

  @override
  String get hintWeightNumber => '💡 請以數字輸入體重';

  @override
  String get hintWeight => '💡 請輸入體重';

  @override
  String get hintWeightIsNumber => '💡 體重請以數字輸入';

  @override
  String get hintWalkTime => '💡 請輸入散步時間';

  @override
  String get hintWalkTimeIsNumber => '💡 散步時間請以數字輸入';

  @override
  String get hintWalkTimeNumber => '💡 請以數字輸入散步時間';

  @override
  String get hintSelectBrushingArea => '💡 請至少選擇一個梳毛部位';

  @override
  String get hintSelectVaccineType => '💡 請至少選擇一種疫苗類型';

  @override
  String get hintSelectGroomingType => '💡 請至少選擇一種美容類型';

  @override
  String get hintTitle => '💡 請輸入標題';

  @override
  String get hintVaccineName => '💡 請輸入疫苗名稱';

  @override
  String get hintSelectScheduledDate => '💡 請選擇預定日期';

  @override
  String get hintSelectScheduledTime => '💡 請選擇預定時間';

  @override
  String get hintVisitPurpose => '💡 請輸入就診目的';

  @override
  String get hintSelectAppointmentDate => '💡 請選擇預約日期';

  @override
  String get hintSelectAppointmentTime => '💡 請選擇預約時間';

  @override
  String get hintMedicineNameInput => '💡 請輸入藥品名稱';

  @override
  String get hintSelectMedicationDate => '💡 請選擇用藥日期';

  @override
  String get hintSelectMedicationTime => '💡 請選擇用藥時間';

  @override
  String get hintAlarmName => '💡 請輸入提醒名稱';

  @override
  String get hintSelectMealTime => '💡 請選擇用餐時間';

  @override
  String get hintSelectAlarmTime => '💡 請選擇提醒時間';

  @override
  String get noPetRegisterFirst => '還沒有寵物 🐾 請先在檔案中登錄！';

  @override
  String get alarmRescheduled => '🔄 提醒已重新安排';

  @override
  String get examplePetName => '例：小白';

  @override
  String get exampleBreed => '例：馬爾濟斯';

  @override
  String get exampleBreedMulti => '例：馬爾濟斯、波斯貓';

  @override
  String get example30 => '例：30';

  @override
  String get example80 => '例：80';

  @override
  String get example200 => '例：200';

  @override
  String get example25 => '例：2.5';

  @override
  String get example35000 => '例：35000';

  @override
  String get example50000 => '例：50000';

  @override
  String get enterNameHint => '請輸入名字';

  @override
  String get addNewPetTitle => '新增寵物';

  @override
  String get basicInfo => '基本資訊';

  @override
  String get idInfo => '識別資訊';

  @override
  String get idInfoOptional => '識別資訊（選填）';

  @override
  String get name => '名字';

  @override
  String get petKind => '類型';

  @override
  String get breed => '品種';

  @override
  String get weight => '體重';

  @override
  String get microchip => '晶片';

  @override
  String get registrationNumber => '登記號碼';

  @override
  String get birthDate => '出生日期';

  @override
  String get gender => '性別';

  @override
  String get male => '公';

  @override
  String get female => '母';

  @override
  String get maleSym => '公 ♂';

  @override
  String get femaleSym => '母 ♀';

  @override
  String get neutered => '絕育';

  @override
  String get done => '完成';

  @override
  String get notDone => '未完成';

  @override
  String get notEntered => '未填寫';

  @override
  String get notRegistered => '未登錄';

  @override
  String get dogEmoji => '狗狗 🐶';

  @override
  String get catEmoji => '貓咪 🐱';

  @override
  String get otherEmoji => '其他 🐾';

  @override
  String get noPetsRegistered => '還沒有登錄寵物';

  @override
  String get registerPetPrompt => '登錄寵物\n一起管理健康吧！';

  @override
  String get registerPetBtn => '登錄寵物';

  @override
  String get editPet => '編輯寵物';

  @override
  String get neuteringStatus => '絕育情況';

  @override
  String get neuteredDone => '已絕育';

  @override
  String get notNeutered => '未絕育';

  @override
  String get selectDateHint => '請選擇日期';

  @override
  String get saveChanges => '儲存變更';

  @override
  String get registerBtn => '登錄';

  @override
  String deletePetName(String name) {
    return '刪除$name';
  }

  @override
  String deletePetConfirm(String name) {
    return '刪除$name？';
  }

  @override
  String deletePetWarning(String name) {
    return '$name的所有記錄和提醒將被刪除，無法恢復。';
  }

  @override
  String petDeleted(String name) {
    return '$name已刪除';
  }

  @override
  String petAdded(String name) {
    return '$name已新增 🐾';
  }

  @override
  String get storeUnavailableMsg => '目前無法連線至商店。請稍後再試。';

  @override
  String get checkingPaymentMsg => '正在確認付款資訊。請稍後再試。';

  @override
  String get paymentCompleteMsg => '付款完成。請輸入新寵物的資訊。';

  @override
  String get addNewFamilyMember => '新增新家庭成員？';

  @override
  String get firstPetFreeDesc => '第一隻寵物可以免費登錄，第二隻起每隻需要付費。';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '目前登錄的寵物：$count隻\n請在商店可用時重試。';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '目前登錄的寵物：$count隻\n支付$price後可以新增新家庭成員。';
  }

  @override
  String get maybeLater => '以後再說';

  @override
  String get unavailable => '無法連線';

  @override
  String payAndAdd(String price) {
    return '支付$price並新增';
  }

  @override
  String get addNextAppointment => '+ 新增下次預約日';

  @override
  String get pottyRecordSaved => '💩 排泄已記錄';

  @override
  String get conditionRecordSaved => '💗 狀態已記錄';

  @override
  String get medicationRecordSaved => '💊 用藥已記錄';

  @override
  String get weightRecordSaved => '⚖️ 體重已記錄';

  @override
  String get mealRecordSaved => '🍽️ 用餐已記錄';

  @override
  String get waterRecordSaved => '💧 飲水已記錄';

  @override
  String get vetVisitRecordSaved => '🏥 就診已記錄';

  @override
  String get vaccinationRecordSaved => '💉 預防接種已記錄';

  @override
  String get groomingRecordSaved => '✂️ 美容已記錄';

  @override
  String get brushingRecordSaved => '🪥 梳毛已記錄';

  @override
  String get walkRecordSaved => '🦮 散步已記錄';

  @override
  String get memoSaved => '📝 備忘已記錄';

  @override
  String get moreQuestions => '還有其他問題嗎？';

  @override
  String get contactViaSendFeedback => '請透過設定 > 傳送意見回饋與我們聯絡。\n我們會盡快回覆 🐾';

  @override
  String get contactViaSendFeedbackLong => '請透過設定畫面的【傳送意見回饋】按鈕與我們聯絡，\n我們將迅速回覆。';

  @override
  String get privacyPolicyEffectiveDate =>
      '本隱私權政策自2026年1月1日起生效。\n最後更新日期：2026年5月8日';

  @override
  String get privacyCollectedInfo => '收集的資訊僅用於以下目的。';

  @override
  String get privacyDataFeatures => '寵物Sumtan提供資料匯出（備份）和匯入（還原）功能。';

  @override
  String get privacyPolicyMayUpdate => '本隱私權政策可能因法律或服務變更而更新。';

  @override
  String get privacyPolicyContact => '如對本隱私權政策有疑問，請透過以下方式與我們聯絡。';

  @override
  String get catMeal => '用餐';

  @override
  String get catWater => '飲水';

  @override
  String get catGrooming => '美容';

  @override
  String get catBrushing => '梳毛';

  @override
  String get catWalk => '散步';

  @override
  String get catHospital => '醫院';

  @override
  String get catCondition => '狀態';

  @override
  String get catPotty => '排泄';

  @override
  String get mealFormTitle => '🍽️ 用餐記錄';

  @override
  String get walkFormTitle => '🦮 散步記錄';

  @override
  String get weightFormTitle => '⚖️ 體重記錄';

  @override
  String get waterFormTitle => '💧 飲水記錄';

  @override
  String get medicationFormTitle => '💊 投藥記錄';

  @override
  String get groomingFormTitle => '✂️ 美容記錄';

  @override
  String get brushingFormTitle => '🪥 梳毛記錄';

  @override
  String get conditionFormTitle => '🌡️ 狀態記錄';

  @override
  String get poopFormTitle => '💩 排泄記錄';

  @override
  String get vaccinationFormTitle => '💉 接種記錄';

  @override
  String get hospitalFormTitle => '🏥 醫院記錄';

  @override
  String get memoFormTitle => '📝 備忘錄';

  @override
  String get measureMethod => '測量方式';

  @override
  String get feedAmount => '餵食量';

  @override
  String get mlInputLabel => '直接輸入毫升';

  @override
  String get alarmRescheduleNote => '此提醒的預定日期已過。\n您可以設定新日期或刪除。';

  @override
  String get nailTrim => '修指甲';

  @override
  String get shopNameExample => '例: 蓬鬆寵物美容';

  @override
  String get poopRecordSaved => '💩 排泄已記錄';

  @override
  String get memoRecordSaved => '📝 備忘錄已記錄';

  @override
  String get other => '其他';

  @override
  String get whole => '全身';

  @override
  String get paw => '爪子';

  @override
  String get importance => '重要性';

  @override
  String get timeTaken => '所需時間';

  @override
  String get example10 => '例: 10';

  @override
  String get hospitalNameExample => '例: 幸福動物醫院';

  @override
  String get diagnosisExample => '例: 腸炎, 皮膚炎';

  @override
  String get memoTitlePlaceholder => '輸入備忘錄標題';

  @override
  String get hintMemoTitle => '💡 請輸入標題';

  @override
  String get poopType => '類型';

  @override
  String get poopStatus => '狀態';

  @override
  String get feces => '大便';

  @override
  String get bloody => '血便';

  @override
  String get vaccineDhppl => '綜合疫苗 (DHPPL)';

  @override
  String get vaccineCorona => '冠狀病毒腸炎';

  @override
  String get vaccineKennelCough => '犬窩咳';

  @override
  String get vaccineRabies => '狂犬病';

  @override
  String get vaccineInfluenza => '流感';

  @override
  String get vaccineFvrcp => '綜合疫苗 (FVRCP)';

  @override
  String get vaccineFelv => '白血病 (FeLV)';

  @override
  String get vaccineChlamydia => '披衣菌';

  @override
  String get mute => '靜音';

  @override
  String get photoVideo => '照片・影片';

  @override
  String photoVideoCount(String count) {
    return '照片・影片 · $count個';
  }

  @override
  String get selectMediaSource => '選擇媒體新增方式';

  @override
  String get cameraCapture => '相機拍攝';

  @override
  String get cameraCaptureSubtitle => '拍攝照片或影片';

  @override
  String get selectFromGallery => '從相簿選擇';

  @override
  String get selectFromGallerySubtitle => '可多選照片・影片';

  @override
  String get takePhotoSubtitle => '用相機拍攝照片';

  @override
  String get recordVideoSubtitle => '用相機錄製影片';

  @override
  String get permissionRequired => '請在設定中允許權限';

  @override
  String get confirmDeletePhoto => '刪除這張照片？';

  @override
  String get confirmDeleteVideo => '刪除這個影片？';

  @override
  String get hintMedicineAndDose => '💡 請輸入藥品名稱和劑量';

  @override
  String deleteRecordBody(String category) {
    return '$category記錄將被刪除\n且無法恢復。';
  }
}
