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
  String get settingsPurchaseProductLoadFailed => '无法加载商品信息。请稍后再试。';

  @override
  String get settingsPurchaseStartFailed => '无法开始支付。请稍后再试。';

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
  String get notificationChannelName => 'Pet Sumtan 提醒';

  @override
  String get notificationChannelDescription => '宠物健康管理提醒';

  @override
  String alarmNotificationTitle(String type) {
    return '$type提醒';
  }

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
  String get weekStats => '健康统计';

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
  String get deleteConfirmBody => '删除后无法恢复！😢';

  @override
  String get deleteConfirmOk => '删除';

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

  @override
  String dayCountShort(int days) {
    return '$days天';
  }

  @override
  String get helpIntroContent =>
      '宠物 Sumtan 是一款可以集中记录和管理宠物健康与日常生活的应用。\n你可以轻松记录进餐、饮水、排泄、体重、用药、就诊等健康信息，并通过提醒功能避免错过重要日程。';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      '可以一目了然地查看今天添加的所有记录。点击记录即可查看详情或进行编辑。';

  @override
  String get helpHomeWeeklyStatsDesc => '可以通过图表查看本周的排泄次数、进餐量和饮水量，帮助你了解宠物的生活规律。';

  @override
  String get helpHomeWeightChangeChartDesc => '以图表显示最近的体重记录，方便你轻松掌握体重变化趋势。';

  @override
  String get helpHomeFindNearbyHospitalsDesc => '点击按钮后，可在 Naver 地图中搜索附近的动物医院。';

  @override
  String get helpHomeAddNewRecordDesc => '点击屏幕底部的 + 按钮，选择记录类别后即可添加新记录。';

  @override
  String get helpRecordCategoriesIntro => '你可以通过 12 种类别记录宠物的日常生活。';

  @override
  String get helpCategoryPottyName => '排泄';

  @override
  String get helpCategoryPottyDesc => '记录排泄情况和状态，也可以附加照片。';

  @override
  String get helpCategoryConditionName => '状态';

  @override
  String get helpCategoryConditionDesc => '记录宠物的整体身体状态。';

  @override
  String get helpCategoryMedicationName => '用药';

  @override
  String get helpCategoryMedicationDesc => '记录药品名称、用量和用药时间。';

  @override
  String get helpCategoryWeightName => '体重';

  @override
  String get helpCategoryWeightDesc => '记录体重（kg）。可在首页查看体重变化趋势。';

  @override
  String get helpCategoryMealName => '进餐';

  @override
  String get helpCategoryMealDesc => '记录进餐量和食物类型，也可以附加照片和视频。';

  @override
  String get helpCategoryWaterName => '饮水';

  @override
  String get helpCategoryWaterDesc => '记录饮水量（ml），也可以附加照片和视频。';

  @override
  String get helpCategoryHospitalName => '医院';

  @override
  String get helpCategoryHospitalDesc => '记录医院名称和就诊内容，也可以附加照片和视频。';

  @override
  String get helpCategoryVaccinationName => '疫苗接种';

  @override
  String get helpCategoryVaccinationDesc => '记录疫苗类型和接种日期。';

  @override
  String get helpCategoryGroomingName => '美容';

  @override
  String get helpCategoryGroomingDesc => '记录美容内容，并可附加照片或视频。';

  @override
  String get helpCategoryDentalName => '刷牙';

  @override
  String get helpCategoryDentalDesc => '记录是否刷牙，并可添加备忘。';

  @override
  String get helpCategoryWalkName => '散步';

  @override
  String get helpCategoryWalkDesc => '记录散步距离和时间。';

  @override
  String get helpCategoryMemoName => '备忘';

  @override
  String get helpCategoryMemoDesc => '可以自由留下备忘内容。';

  @override
  String get helpJournalViewRecordListDesc => '可以按日期查看所有记录。通过类别标签，可快速区分记录类型。';

  @override
  String get helpJournalEditDeleteRecordDesc => '点击记录后会打开编辑页面，可修改内容或删除记录。';

  @override
  String get helpJournalAttachMediaDesc => '在进餐、饮水、医院、美容、排泄等部分类别中，可以附加照片或视频。';

  @override
  String get helpAlarmAddDesc => '可以添加疫苗接种、用药、医院就诊、美容等多种提醒。请先选择提醒类型，然后设置日期和时间。';

  @override
  String get helpAlarmRepeatDesc => '可以设置每天、每周、每月等重复规则。适合定期用药或心丝虫预防等日程。';

  @override
  String get helpAlarmAdvanceDesc => '对于疫苗接种等重要日程，可以提前 7 天、3 天和 1 天收到提醒。';

  @override
  String get helpAlarmCompleteDesc => '点击提醒即可标记为已完成。已完成的提醒可在过去提醒列表中查看。';

  @override
  String get helpAlarmDeleteDesc => '向左滑动提醒即可删除。';

  @override
  String get helpPetRegisterDesc => '输入姓名、类型、品种、性别、出生日期和绝育情况来注册宠物。';

  @override
  String get helpPetEditProfileDesc => '在档案页面中，可以编辑姓名、品种、体重、微芯片编号、登记号和档案照片。';

  @override
  String get helpPetManageMultipleDesc => '可以注册多只宠物。点击顶部的宠物标签，即可切换要管理的宠物。';

  @override
  String get helpDogHealthGuideDesc =>
      '提供基于兽医建议的健康信息，包括核心/非核心疫苗接种计划、心丝虫和外部寄生虫预防、牙齿护理、营养管理等。';

  @override
  String get helpCatHealthGuideDesc => '可以查看猫咪专用的疫苗接种计划、寄生虫预防、牙齿护理和营养信息。';

  @override
  String get helpSettingsNotificationDesc => '可以开启或关闭应用的所有通知。';

  @override
  String get helpSettingsExportDesc => '可以将所有记录数据导出为 ZIP 文件。更换设备时可作为备份使用。';

  @override
  String get helpSettingsImportDesc => '可以导入之前导出的 ZIP 备份文件来恢复数据。';

  @override
  String get helpSettingsFeedbackDesc =>
      '如果在使用应用时遇到不便或有改进建议，请通过邮件发送给我们。这将非常有助于我们改进应用。';

  @override
  String get helpFaqDeletePetQ => '删除宠物后，所有记录也会一起删除吗？';

  @override
  String get helpFaqDeletePetA =>
      '是的。删除宠物后，与该宠物相关的所有记录和提醒也会一起删除。删除前请务必通过“导出数据”进行备份。';

  @override
  String get helpFaqMultipleMediaQ => '可以在一条记录中附加多张照片吗？';

  @override
  String get helpFaqMultipleMediaA => '可以。你可以附加多张照片和视频。可以从相册选择，也可以直接使用相机拍摄。';

  @override
  String get helpFaqNoNotificationQ => '我收不到通知。';

  @override
  String get helpFaqNoNotificationA =>
      '请确认设备的通知设置中是否允许宠物 Sumtan 发送通知。同时也请检查 设置 > 通知设置 中应用通知是否已开启。';

  @override
  String get helpFaqMoveDataQ => '可以把数据转移到新设备吗？';

  @override
  String get helpFaqMoveDataA =>
      '可以。在旧设备中通过 设置 > 导出数据 保存备份文件，然后在新设备中通过 设置 > 导入数据 进行恢复。';

  @override
  String get helpFaqMultiplePetsQ => '可以注册多只宠物吗？';

  @override
  String get helpFaqMultiplePetsA => '默认情况下，可以免费注册 1 只宠物。追加注册宠物可通过高级功能使用。';

  @override
  String get privacyIntroBody =>
      '宠物 Sumtan 是一款无需注册即可使用的应用，所有数据仅保存在用户的设备中。我们不会将个人信息传输到外部服务器，并会安全保护您珍贵的宠物信息。';

  @override
  String get privacySection1Title => '收集的个人信息项目';

  @override
  String get privacySection1Body =>
      '宠物 Sumtan 无需注册即可使用，不会单独收集可识别用户个人身份的信息。不过，为了提供应用功能，以下信息可能会保存在设备中。';

  @override
  String get privacyLocalStorageInfo => '本地保存在设备中的信息';

  @override
  String get privacyPetInfo => '宠物信息：姓名、类型、品种、出生日期、性别、体重、绝育情况、微芯片编号、动物登记号';

  @override
  String get privacyHealthRecords =>
      '健康记录：排泄、进餐、饮水、体重、用药、疫苗接种、医院、美容、刷牙、散步、状态、备忘等用户直接输入的记录';

  @override
  String get privacyAttachedMedia => '附件媒体：用户直接拍摄或选择的照片和视频';

  @override
  String get privacyNotificationSettings => '提醒设置：提醒类型、预定日期和时间、重复规则';

  @override
  String get privacyInAppPurchaseTitle => '应用内购买';

  @override
  String get privacyPaymentProcessing =>
      '付款通过 Apple App Store 或 Google Play Store 处理，应用不会直接收集或保存支付信息。';

  @override
  String get privacyReceiptVerification => '仅会根据各平台政策处理用于验证购买凭证所需的最少信息。';

  @override
  String get privacySection2Title => '个人信息的收集和使用目的';

  @override
  String get privacyPurposeRecords => '保存和查看宠物健康记录';

  @override
  String get privacyPurposeStats => '提供首页统计信息，例如每周排泄、进餐、饮水情况以及体重变化图表';

  @override
  String get privacyPurposeReminders => '发送疫苗接种、用药、医院就诊等健康相关提醒';

  @override
  String get privacyPurposeBackupRestore => '提供数据备份和恢复功能';

  @override
  String get privacyPurposePaidEligibility => '确认付费功能的使用资格';

  @override
  String get privacySection3Title => '个人信息的保存和删除';

  @override
  String get privacyRetentionBody =>
      '宠物 Sumtan 的所有数据仅保存在用户设备的本地数据库（SQLite）中，不会传输到外部服务器。';

  @override
  String get privacyDataDeletionMethod => '数据删除方式';

  @override
  String get privacyDeleteInApp => '您可以在应用内的 设置 > 数据管理 中直接删除宠物信息和记录。';

  @override
  String get privacyDeleteUninstall => '删除应用后，设备中保存的所有数据也会一并删除。';

  @override
  String get privacyDeleteBackupWarning => '请注意，如果在删除应用前未进行备份（导出），数据将无法恢复。';

  @override
  String get privacySection4Title => '向第三方提供个人信息';

  @override
  String get privacyThirdPartyBody => '宠物 Sumtan 不会向外部提供用户的个人信息。但以下情况除外。';

  @override
  String get privacyThirdPartyUserExport => '用户自行使用数据导出功能，例如分享备份文件时';

  @override
  String get privacyThirdPartyLegalRequest => '根据法律规定，或收到调查机关的合法请求时';

  @override
  String get privacySection5Title => '访问权限说明';

  @override
  String get privacyPermissionsBody =>
      '为了提供应用功能，可能会请求以下权限。即使不允许某项权限，除需要该权限的功能外，其他功能仍可正常使用。';

  @override
  String get privacyPermissionCameraName => '相机';

  @override
  String get privacyPermissionCameraDesc => '用于直接拍摄照片或视频，并附加到健康记录中。';

  @override
  String get privacyPermissionMediaName => '照片和媒体访问权限';

  @override
  String get privacyPermissionMediaDesc => '用于从相册选择照片和视频，并附加到记录中。';

  @override
  String get privacyPermissionNotificationName => '通知';

  @override
  String get privacyPermissionNotificationDesc => '用于发送疫苗接种、用药、医院就诊等健康相关提醒。';

  @override
  String get privacyPermissionFileName => '文件访问权限（Android）';

  @override
  String get privacyPermissionFileDesc => '用于保存或读取数据备份文件。';

  @override
  String get privacySection6Title => '数据备份和恢复';

  @override
  String get privacyBackupExport => '导出：可以将应用内所有数据保存或分享为文件（.zip）。';

  @override
  String get privacyBackupImport => '导入：可以读取之前导出的备份文件并恢复数据。';

  @override
  String get privacyBackupWarning => '备份文件由用户自行管理。请注意不要将文件分享给他人。';

  @override
  String get privacySection7Title => '儿童个人信息保护';

  @override
  String get privacyChildrenBody =>
      '宠物 Sumtan 不会单独收集 14 岁以下儿童的个人信息。应用的所有数据仅保存在设备中，不会传输到外部服务器，因此儿童也可以安全使用。';

  @override
  String get privacySection8Title => '隐私政策的变更';

  @override
  String get privacyPolicyChangeNotice => '如有变更，将通过应用更新说明或应用内公告进行通知。';

  @override
  String get privacyPolicyChangeEffective => '变更后的政策将在公告发布 7 天后生效。';

  @override
  String get privacySection9Title => '咨询';

  @override
  String get hgDogHeroTitle => '狗狗健康护理指南';

  @override
  String get hgCatHeroTitle => '猫咪健康护理指南';

  @override
  String get hgHeroSubtitle => '基于兽医建议编写的\n专业健康指南。';

  @override
  String get hgVaccination => '疫苗接种';

  @override
  String get hgCoreVaccines => '核心疫苗（必需）';

  @override
  String get hgNonCoreVaccines => '非核心疫苗（可选）';

  @override
  String get hgRequired => '必需';

  @override
  String get hgRecommended => '推荐';

  @override
  String get hgParasitePrevention => '寄生虫预防';

  @override
  String get hgHeartworm => '心丝虫';

  @override
  String get hgMonthly => '每月';

  @override
  String get hgExternalParasites => '体外寄生虫（跳蚤和蜱虫）';

  @override
  String get hgInternalParasites => '体内寄生虫';

  @override
  String get hgThreeToSixMonths => '每 3–6 个月';

  @override
  String get hgRegular => '定期';

  @override
  String get hgRegularCheckup => '定期健康检查';

  @override
  String get hgDentalCare => '牙齿与口腔护理';

  @override
  String get hgForbiddenFoods => '绝对禁止喂食的食物';

  @override
  String get hgEmergencySymptoms => '需要立即就医的症状';

  @override
  String get hgExerciseMentalHealth => '运动与心理健康';

  @override
  String get hgWalk => '散步';

  @override
  String get hgDaily => '每天';

  @override
  String get hgBreedExerciseAmount => '按犬种推荐运动量';

  @override
  String get hgPlayBrainStimulation => '游戏与大脑刺激';

  @override
  String get hgStressSignals => '识别压力信号';

  @override
  String get hgCaution => '注意';

  @override
  String get hgSocialization => '社会化与环境刺激';

  @override
  String get hgDogCoreDhppl =>
      '**DHPPL（综合疫苗）** — 犬瘟热、肝炎、细小病毒、副流感和钩端螺旋体。\n6–8 周龄接种第 1 针，每隔 3–4 周接种，共 3 针，之后每年加强接种';

  @override
  String get hgDogCoreRabies => '**狂犬病** — 3 月龄后接种第 1 针，之后每年 1 次（法定必需疫苗）';

  @override
  String get hgDogCoreCorona =>
      '**冠状病毒肠炎** — 6–8 周龄开始接种，每隔 3–4 周接种 2 针，之后每年加强接种';

  @override
  String get hgDogNonCoreKennel =>
      '**犬窝咳** — 多犬环境、宠物美容店或寄养酒店使用频繁时推荐接种。可选择鼻喷型或注射型';

  @override
  String get hgDogNonCoreFlu => '**犬流感** — 对户外活动较多或经常接触其他狗狗的犬只推荐接种';

  @override
  String get hgDogHeartworm1 => '在蚊虫活跃季节前后（3 月至 11 月），建议**每月 1 次**使用预防药';

  @override
  String get hgDogHeartworm2 => '一旦感染，治疗困难且可能危及生命 — **预防是最好的保护**';

  @override
  String get hgDogHeartworm3 => '用药前必须进行检测，确认未感染后再开始预防';

  @override
  String get hgDogHeartworm4 => '全年预防更安全，也常由兽医推荐';

  @override
  String get hgDogExternalParasites1 => '每月使用一次滴剂或口服型体外寄生虫预防药';

  @override
  String get hgDogExternalParasites2 => '散步后务必检查耳朵、脚趾间和腋下是否有蜱虫';

  @override
  String get hgDogExternalParasites3 => '移除蜱虫时，请使用镊子垂直缓慢拔出，不要旋转';

  @override
  String get hgDogInternalParasites1 => '蛔虫、钩虫和鞭虫：建议**每 3–6 个月**驱虫一次';

  @override
  String get hgDogInternalParasites2 => '幼犬从 2 周龄开始：每隔 2 周驱虫一次，共 4 次，之后进行定期管理';

  @override
  String get hgDental1 => '每天刷牙最理想 — 建议至少**每周 3 次**';

  @override
  String get hgDental2 => '请务必使用**宠物专用牙膏**。不要使用含木糖醇的人用牙膏';

  @override
  String get hgDental3 => '牙结石严重时，需要在动物医院进行专业洁牙，通常需要全身麻醉';

  @override
  String get hgDental4 => '洁齿零食和牙齿玩具可作为辅助口腔护理工具';

  @override
  String get hgDogForbiddenFoodAlert => '以下食物对狗狗有毒。即使少量也可能很危险，请绝对不要喂食。';

  @override
  String get hgDogForbiddenGrape => '**葡萄和葡萄干** — 可能导致肾衰竭，即使少量也可能致命';

  @override
  String get hgDogForbiddenChocolate => '**巧克力和可可** — 可导致可可碱中毒、心力衰竭和抽搐';

  @override
  String get hgDogForbiddenOnion => '**洋葱、大蒜和大葱** — 会破坏红细胞，导致溶血性贫血';

  @override
  String get hgDogForbiddenXylitol => '**木糖醇** — 会导致胰岛素过度释放、低血糖和肝衰竭';

  @override
  String get hgDogForbiddenMacadamia => '**夏威夷果** — 可导致肌肉无力、高烧和呕吐';

  @override
  String get hgDogForbiddenDoughAlcohol => '**生面团和酒精** — 可导致乙醇中毒和低血糖';

  @override
  String get hgDogForbiddenAvocado => '**牛油果** — 含有 persin 成分，可能引起呕吐和腹泻';

  @override
  String get hgEmergencyAlert => '如果出现以下任一症状，请立即前往动物医院。';

  @override
  String get hgDogEmergency1 => '完全没有食欲超过 24 小时';

  @override
  String get hgDogEmergency2 => '一天内反复呕吐或腹泻 3 次以上';

  @override
  String get hgDogEmergency3 => '腹部膨胀且想吐却吐不出来，可能是胃扩张或胃扭转';

  @override
  String get hgDogEmergency4 => '呼吸困难、牙龈苍白或发绀';

  @override
  String get hgDogEmergency5 => '抽搐、癫痫发作或失去意识';

  @override
  String get hgDogEmergency6 => '超过 12 小时未排尿';

  @override
  String get hgDogEmergency7 => '明显外伤、骨折或大量出血';

  @override
  String get hgDogExerciseAlert => '对狗狗来说，运动不足不仅是体能问题，也可能是压力、焦虑和破坏性行为的主要原因。';

  @override
  String get hgDogWalk1 => '小型犬：每天至少 **20–30 分钟**；中大型犬：建议 **1 小时以上**';

  @override
  String get hgDogWalk2 => '散步不仅是排泄时间 — 也是**嗅闻刺激、社会化和缓解压力**的时间';

  @override
  String get hgDogWalk3 => '请给予充足的嗅闻时间 — 这对缓解精神疲劳非常有效';

  @override
  String get hgDogWalk4 => '夏季需注意沥青烫伤 — 建议早上 7 点前或傍晚以后散步';

  @override
  String get hgDogPlay1 => '**捡球和拔河游戏** — 有助于释放体力，并加强与主人的联系';

  @override
  String get hgDogPlay2 => '**嗅闻游戏** — 可刺激大脑，15 分钟的嗅闻训练可能接近 30 分钟散步的效果';

  @override
  String get hgDogPlay3 => '**益智玩具和 Kong 玩具** — 有助于缓解独处时的分离焦虑';

  @override
  String get hgDogPlay4 => '每天只需 **10–15 分钟**专注玩耍，也能显著减轻压力';

  @override
  String get hgDogStress1 => '破坏家具或物品、过度吠叫 — 可能是运动或刺激不足的信号';

  @override
  String get hgDogStress2 => '咬尾巴、过度舔脚或身体 — 可能是强迫行为或缓解压力的表现';

  @override
  String get hgDogStress3 => '主人离开时极度焦虑、排泄失误 — 可能与分离焦虑有关';

  @override
  String get hgDogStress4 => '如果症状持续，请咨询兽医或动物行为专家';

  @override
  String get hgDogSocial1 => '**3–14 周龄**是社会化黄金期 — 接触不同的人、声音和环境非常重要';

  @override
  String get hgDogSocial2 => '与其他狗狗互动 — 可利用狗狗公园或幼犬课程';

  @override
  String get hgDogSocial3 => '体验新的地点、气味和声音，有助于丰富心理环境';

  @override
  String get hgDogSocial4 => '正向强化训练，如响片和奖励零食，可同时刺激大脑并加强羁绊';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP（综合疫苗）** — 猫疱疹病毒、杯状病毒和猫泛白细胞减少症。\n6–8 周龄接种第 1 针，每隔 3–4 周接种，共 3 针，之后每 1–3 年加强接种';

  @override
  String get hgCatCoreRabies => '**狂犬病** — 外出猫必需接种，室内猫也建议接种（法定必需）';

  @override
  String get hgCatNonCoreFelv => '**猫白血病（FeLV）** — 强烈推荐外出猫和多猫家庭接种';

  @override
  String get hgCatNonCoreChlamydia => '**猫衣原体** — 有助于预防多猫环境中的结膜炎';

  @override
  String get hgCatNonCoreFiv => '**猫免疫缺陷病毒（FIV）** — 对外出的公猫尤其需要注意，常通过打架伤口传播';

  @override
  String get hgCatExternalParasites1 => '外出猫：建议**每月 1 次**预防跳蚤和蜱虫';

  @override
  String get hgCatExternalParasites2 =>
      '即使是室内猫，也可能通过人的衣物或鞋子接触跳蚤 → 建议**每 3 个月**预防一次';

  @override
  String get hgCatExternalParasites3 => '使用滴剂产品时，请准确滴在后颈部位';

  @override
  String get hgCatInternalHeartworm => '体内寄生虫与心丝虫';

  @override
  String get hgCatInternalParasites1 => '蛔虫和绦虫：建议**每 3–6 个月**驱虫一次';

  @override
  String get hgCatInternalParasites2 => '如果喂食生肉或生鱼，建议更频繁地进行检查';

  @override
  String get hgCatHeartworm1 => '心丝虫 — 猫咪**没有根治性治疗方法，因此预防是唯一选择**。外出猫强烈建议每月预防';

  @override
  String get hgCatMajorDiseases => '需要注意的猫咪主要疾病';

  @override
  String get hgCatDiseaseAlert => '猫咪倾向于隐藏疼痛和不适，因此症状出现时，疾病往往已经进展。定期检查尤其重要。';

  @override
  String get hgCatDiseaseFlutd => '**猫下泌尿道疾病（FLUTD）** — 公猫常见。若无法排尿，属于需要立即处理的急症';

  @override
  String get hgCatDiseaseCkd => '**慢性肾病（CKD）** — 是老年猫主要死因之一。7 岁以后必须定期检查肾脏指标';

  @override
  String get hgCatDiseaseDiabetes => '**猫糖尿病** — 肥胖猫和老年猫风险较高。需注意饮水和排尿增加';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**甲状腺功能亢进** — 10 岁以上猫咪常见。需注意体重下降、食欲增加和活动过度';

  @override
  String get hgCatDiseaseStomatitis => '**口炎** — 在猫咪中非常常见。若出现口臭、流口水或食欲不振，应及时检查';

  @override
  String get hgCatDiseaseFhv =>
      '**猫疱疹病毒（FHV-1）** — 感染后会终身潜伏。压力可能诱发复发，表现为打喷嚏、眼分泌物和结膜炎';

  @override
  String get hgHydrationDiet => '饮水与饮食管理';

  @override
  String get hgCatHydrationAlert => '猫咪天生饮水较少，容易发生泌尿系统疾病。促进饮水非常重要。';

  @override
  String get hgCatHydration1 => '建议搭配罐头或湿粮包等湿粮，帮助增加水分摄入';

  @override
  String get hgCatHydration2 => '许多猫咪喜欢流动的水 — **宠物饮水机**可能很有效';

  @override
  String get hgCatHydration3 => '水碗应与食碗分开放置；猫咪通常更喜欢宽而浅的容器';

  @override
  String get hgCatHydration4 => '目标饮水量：每天每 kg 体重约 **40–60 ml**';

  @override
  String get hgCatForbiddenFoodAlert => '以下食物对猫咪有毒。即使少量也可能很危险，请绝对不要喂食。';

  @override
  String get hgCatForbiddenOnion => '**洋葱、大蒜和大葱** — 会破坏红细胞并导致溶血性贫血；猫咪比狗狗更敏感';

  @override
  String get hgCatForbiddenGrape => '**葡萄和葡萄干** — 可能导致肾衰竭';

  @override
  String get hgCatForbiddenChocolate => '**巧克力和咖啡因** — 对心脏和神经系统有毒性';

  @override
  String get hgCatForbiddenRawFish => '**长期喂食生鱼** — 可能导致硫胺素（维生素 B1）缺乏';

  @override
  String get hgCatForbiddenMilk => '**牛奶和乳制品** — 许多成年猫乳糖不耐受，可能引起腹泻';

  @override
  String get hgCatForbiddenXylitolAlcohol => '**木糖醇和酒精** — 对肝脏和神经系统有毒性';

  @override
  String get hgCatForbiddenAvocado => '**牛油果** — 含有 persin 成分，可能引起呕吐和腹泻';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**生蛋清** — 抗生物素蛋白会阻碍生物素吸收，可能导致皮肤和被毛问题';

  @override
  String get hgCatEmergency1 => '**无法排尿或尿中带血** — 尿道阻塞属于紧急情况，尤其是公猫';

  @override
  String get hgCatEmergency2 => '完全没有食欲超过 24 小时，可能有脂肪肝风险';

  @override
  String get hgCatEmergency3 => '**张口呼吸** — 对猫咪来说绝不正常，需要立即急救';

  @override
  String get hgCatEmergency4 => '后肢突然瘫痪或发冷，可能为血栓栓塞';

  @override
  String get hgCatEmergency5 => '抽搐、癫痫发作或失去意识';

  @override
  String get hgCatEmergency6 => '牙龈或舌头苍白，或出现黄色/黄疸';

  @override
  String get hgCatEmergency7 => '一天内呕吐或腹泻 3 次以上，或粪便/呕吐物中带血';

  @override
  String get hgCatEmergency8 => '明显外伤、骨折或大量出血';

  @override
  String get hgEnvironmentMentalHealth => '环境与心理健康';

  @override
  String get hgIndoorEnvironment => '室内环境管理';

  @override
  String get hgStressManagement => '压力管理';

  @override
  String get hgCatEnvironment1 => '**猫砂盆**：至少为猫咪数量 + 1 个，并每天清理';

  @override
  String get hgCatEnvironment2 => '**猫抓板**：至少 2 个，建议同时提供竖式和横式';

  @override
  String get hgCatEnvironment3 => '**高处空间**：提供猫爬架、架子或垂直空间，以满足领地本能';

  @override
  String get hgCatEnvironment4 => '**躲藏处**：提供纸箱、隧道或可以安全躲藏的地方';

  @override
  String get hgCatStress1 => '猫咪压力与免疫力下降、FLUTD 以及猫疱疹病毒复发密切相关';

  @override
  String get hgCatStress2 => '搬家或新增家庭成员等重大环境变化时，费洛蒙扩散器（如 Feliway）可能有帮助';

  @override
  String get hgCatStress3 => '每天至少提供 **10–15 分钟**使用玩具的互动游戏时间';

  @override
  String get hgCatStress4 => '多猫家庭中，应根据猫咪数量分开配置食碗、猫砂盆和休息区等资源';

  @override
  String get hgAge => '年龄';

  @override
  String get hgCheckupCycle => '检查周期';

  @override
  String get hgMainItems => '主要项目';

  @override
  String get hgAge1to6 => '1–6 岁';

  @override
  String get hgAge7to10 => '7–10 岁';

  @override
  String get hgAge11Plus => '11 岁及以上';

  @override
  String get hgYearlyOnce => '每年 1 次';

  @override
  String get hgYearlyTwice => '每年 2 次';

  @override
  String get hgEvery3to4Months => '每 3–4 个月';

  @override
  String get hgDogCheckupItems1 => '血液检查、心脏听诊、体重、牙齿检查';

  @override
  String get hgDogCheckupItems2 => '血液、尿液、X 光、血压、关节';

  @override
  String get hgDogCheckupItems3 => '综合血液检查、超声波、肾脏和肝脏功能';

  @override
  String get hgCatCheckupItems1 => '血液检查、尿液检查、体重、牙齿检查';

  @override
  String get hgCatCheckupItems2 => '肾脏和肝脏指标、血压、甲状腺 T4';

  @override
  String get hgCatCheckupItems3 => '综合血液检查、腹部超声、重点监测肾脏';

  @override
  String get hgExerciseAmount => '运动量';

  @override
  String get hgBreedExamples => '犬种示例';

  @override
  String get hgLow => '低';

  @override
  String get hgNormal => '中等';

  @override
  String get hgHigh => '高';

  @override
  String get hgBreedLowExamples => '斗牛犬、巴吉度犬、西施犬、马尔济斯';

  @override
  String get hgBreedNormalExamples => '贵宾犬、比熊犬、可卡犬、比格犬';

  @override
  String get hgBreedHighExamples => '拉布拉多、金毛寻回犬、哈士奇、边境牧羊犬';

  @override
  String get hgDisclaimer =>
      '本指南提供一般性健康护理信息，所需护理可能会根据宠物状态而有所不同。如果出现异常症状或需要治疗，请务必咨询兽医。';
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
  String get settingsPurchaseProductLoadFailed => '无法加载商品信息。请稍后再试。';

  @override
  String get settingsPurchaseStartFailed => '无法开始支付。请稍后再试。';

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
  String get notificationChannelName => 'Pet Sumtan 提醒';

  @override
  String get notificationChannelDescription => '宠物健康管理提醒';

  @override
  String alarmNotificationTitle(String type) {
    return '$type提醒';
  }

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
  String get weekStats => '健康统计';

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
  String get deleteConfirmBody => '删除后无法恢复！😢';

  @override
  String get deleteConfirmOk => '删除';

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

  @override
  String dayCountShort(int days) {
    return '$days天';
  }

  @override
  String get helpIntroContent =>
      '宠物 Sumtan 是一款可以在一个地方记录并管理宠物健康与日常的应用。\n您可以轻松记录饮食、饮水、排泄、体重、用药、就诊等多种健康记录，并通过提醒功能避免错过重要日程。';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      '可以一目了然地查看今天添加的所有记录。点击记录项目即可查看详细内容或进行修改。';

  @override
  String get helpHomeWeeklyStatsDesc => '可以通过图表查看本周的排泄次数、进餐量和饮水量，有助于了解宠物的生活规律。';

  @override
  String get helpHomeWeightChangeChartDesc => '以图表显示最近的体重记录，便于掌握体重变化趋势。';

  @override
  String get helpHomeFindNearbyHospitalsDesc => '点击按钮后，可以在 Naver 地图中搜索附近的动物医院。';

  @override
  String get helpHomeAddNewRecordDesc => '点击屏幕底部的 + 按钮，选择记录类别后即可添加新记录。';

  @override
  String get helpRecordCategoriesIntro => '您可以通过 12 个类别记录宠物的日常。';

  @override
  String get helpCategoryPottyName => '排泄';

  @override
  String get helpCategoryPottyDesc => '记录排泄情况和状态，也可以附加照片。';

  @override
  String get helpCategoryConditionName => '状态';

  @override
  String get helpCategoryConditionDesc => '记录宠物的整体身体状况。';

  @override
  String get helpCategoryMedicationName => '用药';

  @override
  String get helpCategoryMedicationDesc => '记录药品名称、剂量和用药时间。';

  @override
  String get helpCategoryWeightName => '体重';

  @override
  String get helpCategoryWeightDesc => '记录体重（kg）。可在首页查看变化趋势。';

  @override
  String get helpCategoryMealName => '进餐';

  @override
  String get helpCategoryMealDesc => '记录进餐量和饲料种类，也可以附加照片和视频。';

  @override
  String get helpCategoryWaterName => '饮水';

  @override
  String get helpCategoryWaterDesc => '记录饮水量（ml），也可以附加照片和视频。';

  @override
  String get helpCategoryHospitalName => '医院';

  @override
  String get helpCategoryHospitalDesc => '记录医院名称和诊疗内容，也可以附加照片和视频。';

  @override
  String get helpCategoryVaccinationName => '疫苗接种';

  @override
  String get helpCategoryVaccinationDesc => '记录疫苗种类和接种日期。';

  @override
  String get helpCategoryGroomingName => '美容';

  @override
  String get helpCategoryGroomingDesc => '记录美容内容，并可附加照片或视频。';

  @override
  String get helpCategoryDentalName => '刷牙';

  @override
  String get helpCategoryDentalDesc => '记录是否刷牙以及相关备注。';

  @override
  String get helpCategoryWalkName => '散步';

  @override
  String get helpCategoryWalkDesc => '记录散步距离和时间。';

  @override
  String get helpCategoryMemoName => '备忘';

  @override
  String get helpCategoryMemoDesc => '可以自由留下备忘内容。';

  @override
  String get helpJournalViewRecordListDesc =>
      '可以按日期查看所有已添加的记录。通过类别标签可以一眼区分记录类型。';

  @override
  String get helpJournalEditDeleteRecordDesc => '点击记录项目会打开编辑面板，可修改或删除内容。';

  @override
  String get helpJournalAttachMediaDesc => '在进餐、饮水、医院、美容、排泄等部分类别中，可以附加照片或视频。';

  @override
  String get helpAlarmAddDesc =>
      '可以添加疫苗接种、用药、医院就诊、美容等多种类型的提醒。请先选择提醒类型，再设置日期和时间。';

  @override
  String get helpAlarmRepeatDesc => '可以设置每天、每周、每月等重复规则，适用于定期用药或心丝虫预防等场景。';

  @override
  String get helpAlarmAdvanceDesc => '像疫苗接种这样的重要日程，可以在 7 天前、3 天前和 1 天前提前收到提醒。';

  @override
  String get helpAlarmCompleteDesc => '点击提醒项目即可标记为已完成。已完成的提醒可在过去提醒列表中查看。';

  @override
  String get helpAlarmDeleteDesc => '将提醒项目向左滑动即可删除。';

  @override
  String get helpPetRegisterDesc => '输入姓名、种类（狗狗/猫咪）、品种、性别、出生日期和是否绝育，即可注册宠物。';

  @override
  String get helpPetEditProfileDesc => '可以在档案画面修改姓名、品种、体重、微芯片编号、动物登记号和档案照片。';

  @override
  String get helpPetManageMultipleDesc => '可以注册多只宠物。点击顶部的宠物标签，即可切换当前管理的宠物。';

  @override
  String get helpDogHealthGuideDesc =>
      '提供基于兽医学的健康信息，包括必需和可选疫苗接种时间表、心丝虫和外部寄生虫预防、牙齿护理、营养管理等。';

  @override
  String get helpCatHealthGuideDesc => '可以查看猫咪专用疫苗接种时间表、寄生虫预防、牙齿护理和营养信息。';

  @override
  String get helpSettingsNotificationDesc => '可以开启或关闭应用的全部通知。';

  @override
  String get helpSettingsExportDesc => '可以将所有记录数据导出为 ZIP 文件。更换设备时可作为备份使用。';

  @override
  String get helpSettingsImportDesc => '可以导入之前导出的 ZIP 备份文件来恢复数据。';

  @override
  String get helpSettingsFeedbackDesc =>
      '如果在使用应用时有不便之处或改进建议，请通过电子邮件发送给我们。这将对改进应用非常有帮助。';

  @override
  String get helpFaqDeletePetQ => '删除宠物后，记录也会全部删除吗？';

  @override
  String get helpFaqDeletePetA => '是的，删除宠物后，该宠物的所有记录和提醒也会一起删除。删除前请先通过导出数据进行备份。';

  @override
  String get helpFaqMultipleMediaQ => '一条记录可以附加多张照片吗？';

  @override
  String get helpFaqMultipleMediaA => '可以，您可以附加多张照片和视频。可以从相册中选择，也可以直接用相机拍摄。';

  @override
  String get helpFaqNoNotificationQ => '收不到提醒。';

  @override
  String get helpFaqNoNotificationA =>
      '请确认设备的通知设置中是否允许宠物 Sumtan 的通知。同时也请确认 设置 > 通知设置 中应用通知是否已开启。';

  @override
  String get helpFaqMoveDataQ => '可以把数据转移到新设备吗？';

  @override
  String get helpFaqMoveDataA =>
      '可以。在旧设备中通过 设置 > 导出数据 保存备份文件后，在新设备中通过 设置 > 导入数据 进行恢复。';

  @override
  String get helpFaqMultiplePetsQ => '可以注册多只宠物吗？';

  @override
  String get helpFaqMultiplePetsA => '默认可以免费注册 1 只宠物。追加注册可通过高级功能使用。';

  @override
  String get privacyIntroBody =>
      '宠物 Sumtan 是一款无需注册即可使用的应用，所有数据仅保存在用户的设备内。我们不会将个人信息传输到外部服务器，并会安全保护用户珍贵的宠物信息。';

  @override
  String get privacySection1Title => '收集的个人信息项目';

  @override
  String get privacySection1Body =>
      '宠物 Sumtan 无需注册即可使用，不会另行收集可识别个人身份的信息。但为了提供应用功能，以下信息可能会保存在设备内。';

  @override
  String get privacyLocalStorageInfo => '设备内本地保存的信息';

  @override
  String get privacyPetInfo => '宠物信息：姓名、种类、品种、出生日期、性别、体重、绝育情况、微芯片编号、动物登记号';

  @override
  String get privacyHealthRecords =>
      '健康记录：排泄、进餐、饮水、体重、用药、疫苗接种、医院、美容、刷牙、散步、状态、备忘等由用户直接输入的记录';

  @override
  String get privacyAttachedMedia => '附件媒体：用户直接拍摄或选择的照片和视频';

  @override
  String get privacyNotificationSettings => '提醒设置：提醒类型、预定日期时间、重复规则';

  @override
  String get privacyInAppPurchaseTitle => '应用内购买相关';

  @override
  String get privacyPaymentProcessing =>
      '支付处理通过 Apple App Store 或 Google Play Store 进行，应用不会直接收集或保存支付信息。';

  @override
  String get privacyReceiptVerification => '购买收据验证所需的最少信息将根据各平台政策进行处理。';

  @override
  String get privacySection2Title => '个人信息的收集及使用目的';

  @override
  String get privacyPurposeRecords => '保存和查看宠物健康记录';

  @override
  String get privacyPurposeStats => '提供首页统计信息（每周排泄、进餐、饮水情况、体重变化图表等）';

  @override
  String get privacyPurposeReminders => '发送疫苗接种、用药、医院就诊等健康相关提醒';

  @override
  String get privacyPurposeBackupRestore => '提供数据备份和恢复功能';

  @override
  String get privacyPurposePaidEligibility => '确认付费功能使用资格';

  @override
  String get privacySection3Title => '个人信息的保存及销毁';

  @override
  String get privacyRetentionBody =>
      '宠物 Sumtan 的所有数据仅保存在用户设备内的本地数据库（SQLite）中，不会传输到外部服务器。';

  @override
  String get privacyDataDeletionMethod => '数据销毁方法';

  @override
  String get privacyDeleteInApp => '您可以在应用内 设置 > 数据管理 中直接删除宠物信息和记录。';

  @override
  String get privacyDeleteUninstall => '删除应用后，设备中保存的所有数据也会一并删除。';

  @override
  String get privacyDeleteBackupWarning => '请注意，如果在删除应用前未进行备份（导出），数据将无法恢复。';

  @override
  String get privacySection4Title => '向第三方提供个人信息';

  @override
  String get privacyThirdPartyBody => '宠物 Sumtan 不会向外部提供用户的个人信息。但以下情况除外。';

  @override
  String get privacyThirdPartyUserExport => '用户自行使用数据导出（备份文件分享）功能时';

  @override
  String get privacyThirdPartyLegalRequest => '依据法律法规或收到侦查机关合法请求时';

  @override
  String get privacySection5Title => '访问权限说明';

  @override
  String get privacyPermissionsBody =>
      '为了提供应用功能，可能会请求以下权限。即使不允许权限，除相应功能外，其余功能仍可正常使用。';

  @override
  String get privacyPermissionCameraName => '相机';

  @override
  String get privacyPermissionCameraDesc => '用于在健康记录中直接拍摄照片或视频并添加为附件。';

  @override
  String get privacyPermissionMediaName => '照片和媒体访问';

  @override
  String get privacyPermissionMediaDesc => '用于从相册中选择照片或视频并添加到记录中。';

  @override
  String get privacyPermissionNotificationName => '通知';

  @override
  String get privacyPermissionNotificationDesc => '用于发送疫苗接种、用药、医院就诊等健康相关提醒。';

  @override
  String get privacyPermissionFileName => '文件访问（Android）';

  @override
  String get privacyPermissionFileDesc => '用于保存或加载数据备份文件。';

  @override
  String get privacySection6Title => '数据备份及恢复';

  @override
  String get privacyBackupExport => '导出：可将应用内所有数据保存或分享为文件（.zip）。';

  @override
  String get privacyBackupImport => '导入：可读取之前导出的备份文件并恢复数据。';

  @override
  String get privacyBackupWarning => '备份文件由用户自行管理，请注意不要与他人分享文件。';

  @override
  String get privacySection7Title => '儿童个人信息保护';

  @override
  String get privacyChildrenBody =>
      '宠物 Sumtan 不会另行收集未满 14 周岁儿童的个人信息。应用的所有数据仅保存在设备内，不会传输到外部服务器，因此儿童也可以安全使用。';

  @override
  String get privacySection8Title => '隐私政策变更';

  @override
  String get privacyPolicyChangeNotice => '如有变更，将通过应用更新说明或应用内公告进行通知。';

  @override
  String get privacyPolicyChangeEffective => '变更后的政策将在公告发布 7 天后生效。';

  @override
  String get privacySection9Title => '联系';

  @override
  String get hgDogHeroTitle => '狗狗健康管理指南';

  @override
  String get hgCatHeroTitle => '猫咪健康管理指南';

  @override
  String get hgHeroSubtitle => '基于兽医建议编写的\n专业健康指南。';

  @override
  String get hgVaccination => '疫苗接种';

  @override
  String get hgCoreVaccines => '核心必需疫苗（Core Vaccine）';

  @override
  String get hgNonCoreVaccines => '选择性疫苗（Non-Core）';

  @override
  String get hgRequired => '必需';

  @override
  String get hgRecommended => '推荐';

  @override
  String get hgParasitePrevention => '寄生虫预防';

  @override
  String get hgHeartworm => '心丝虫';

  @override
  String get hgMonthly => '每月';

  @override
  String get hgExternalParasites => '外部寄生虫（跳蚤·蜱虫）';

  @override
  String get hgInternalParasites => '内部寄生虫';

  @override
  String get hgThreeToSixMonths => '3～6个月';

  @override
  String get hgRegular => '定期';

  @override
  String get hgRegularCheckup => '定期健康检查';

  @override
  String get hgDentalCare => '牙齿与口腔护理';

  @override
  String get hgForbiddenFoods => '绝对禁止食物';

  @override
  String get hgEmergencySymptoms => '需要立即就医的症状';

  @override
  String get hgExerciseMentalHealth => '运动与心理健康';

  @override
  String get hgWalk => '散步';

  @override
  String get hgDaily => '每天';

  @override
  String get hgBreedExerciseAmount => '按品种推荐的运动量';

  @override
  String get hgPlayBrainStimulation => '玩耍与脑力刺激';

  @override
  String get hgStressSignals => '识别压力信号';

  @override
  String get hgCaution => '注意';

  @override
  String get hgSocialization => '社会化与环境刺激';

  @override
  String get hgDogCoreDhppl =>
      '**DHPPL（综合疫苗）** — 犬瘟热、肝炎、细小病毒、副流感、钩端螺旋体。\n出生后6～8周接种第1针，间隔3～4周共接种3次，之后每年加强接种';

  @override
  String get hgDogCoreRabies => '**狂犬病** — 出生后3个月以后接种第1针，之后每年1次（法定必需接种）';

  @override
  String get hgDogCoreCorona => '**冠状病毒肠炎** — 出生后6～8周开始，间隔3～4周接种2次，之后每年加强接种';

  @override
  String get hgDogNonCoreKennel => '**犬窝咳** — 多犬环境、美容店、宠物寄养等场景推荐接种。可选择鼻腔型或注射型';

  @override
  String get hgDogNonCoreFlu => '**犬流感** — 户外活动多或经常接触其他狗狗时推荐';

  @override
  String get hgDogHeartworm1 => '蚊虫活跃期（3～11月）前后，建议**每月1次**使用预防药';

  @override
  String get hgDogHeartworm2 => '一旦感染，治疗困难且可能致命 — **预防是最好的方法**';

  @override
  String get hgDogHeartworm3 => '使用预防药前，必须先检查是否感染并确认阴性';

  @override
  String get hgDogHeartworm4 => '全年持续预防会更安全（兽医推荐）';

  @override
  String get hgDogExternalParasites1 => '点涂型（spot-on）或口服型预防药建议**每月使用**';

  @override
  String get hgDogExternalParasites2 => '散步后务必检查耳朵、脚趾间、腋下是否有蜱虫';

  @override
  String get hgDogExternalParasites3 => '去除蜱虫时，用镊子沿垂直方向慢慢拔出（禁止扭转）';

  @override
  String get hgDogInternalParasites1 => '蛔虫、钩虫、鞭虫：**每3～6个月**使用驱虫药';

  @override
  String get hgDogInternalParasites2 => '幼犬时期（出生后2周起）：每2周驱虫1次，共4次，之后定期管理';

  @override
  String get hgDental1 => '每天刷牙最理想 — 至少建议**每周3次以上**';

  @override
  String get hgDental2 => '必须使用**宠物专用牙膏**（禁止使用含木糖醇的人用牙膏）';

  @override
  String get hgDental3 => '牙结石严重时，应在动物医院进行洁牙（需要全身麻醉）';

  @override
  String get hgDental4 => '洁齿零食和牙齿玩具可作为辅助护理';

  @override
  String get hgDogForbiddenFoodAlert => '以下食物对狗狗具有毒性。即使少量也可能危险，请绝对不要喂食。';

  @override
  String get hgDogForbiddenGrape => '**葡萄·葡萄干** — 可导致肾衰竭，少量也可能致命';

  @override
  String get hgDogForbiddenChocolate => '**巧克力·可可** — 可导致可可碱中毒、心力衰竭和抽搐';

  @override
  String get hgDogForbiddenOnion => '**洋葱·大蒜·葱** — 破坏红细胞，导致溶血性贫血';

  @override
  String get hgDogForbiddenXylitol => '**木糖醇** — 诱发胰岛素过度分泌，导致低血糖和肝衰竭';

  @override
  String get hgDogForbiddenMacadamia => '**夏威夷果** — 可引起肌肉无力、高热、呕吐';

  @override
  String get hgDogForbiddenDoughAlcohol => '**生面团·酒精** — 可导致乙醇中毒和低血糖';

  @override
  String get hgDogForbiddenAvocado => '**牛油果** — 含有persin成分，可能引起呕吐和腹泻';

  @override
  String get hgEmergencyAlert => '如果出现以下症状，请立即前往动物医院。';

  @override
  String get hgDogEmergency1 => '完全食欲不振超过24小时';

  @override
  String get hgDogEmergency2 => '一天内呕吐或腹泻反复3次以上';

  @override
  String get hgDogEmergency3 => '腹部膨胀、干呕（怀疑胃扩张/胃扭转）';

  @override
  String get hgDogEmergency4 => '呼吸困难、牙龈苍白、发绀';

  @override
  String get hgDogEmergency5 => '抽搐、癫痫发作、意识丧失';

  @override
  String get hgDogEmergency6 => '超过12小时无法排尿';

  @override
  String get hgDogEmergency7 => '明显外伤、骨折或大量出血';

  @override
  String get hgDogExerciseAlert => '对狗狗来说，运动不足不只是体力问题，也可能成为压力、焦虑和破坏性行为的主要原因。';

  @override
  String get hgDogWalk1 => '小型犬：每天至少**20～30分钟**；中大型犬：建议**1小时**以上';

  @override
  String get hgDogWalk2 => '散步不只是排便时间，而是**嗅觉刺激、社会化和压力释放**的时间';

  @override
  String get hgDogWalk3 => '充分允许狗狗闻味道（嗅闻）— 对缓解精神疲劳非常有效';

  @override
  String get hgDogWalk4 => '夏季注意沥青烫伤 — 建议早上7点以前或晚上散步';

  @override
  String get hgDogPlay1 => '**丢球·拔河游戏** — 消耗身体能量，增强与主人的亲密关系';

  @override
  String get hgDogPlay2 => '**嗅闻游戏（找气味）** — 刺激大脑，15分钟即可达到约30分钟散步的效果';

  @override
  String get hgDogPlay3 => '**益智玩具·Kong玩具** — 有助于缓解独自在家时的分离焦虑';

  @override
  String get hgDogPlay4 => '每天只需**10～15分钟**的专注玩耍，也能明显降低压力水平';

  @override
  String get hgDogStress1 => '破坏家具或物品、过度吠叫 — 可能是运动和刺激不足的信号';

  @override
  String get hgDogStress2 => '咬尾巴、过度舔舐脚或身体 — 强迫行为，可能是在试图缓解压力';

  @override
  String get hgDogStress3 => '主人外出时过度不安、排泄失误 — 怀疑分离焦虑';

  @override
  String get hgDogStress4 => '若症状持续，建议咨询兽医或宠物行为专家';

  @override
  String get hgDogSocial1 => '出生后**3～14周**是社会化黄金期 — 接触多种人、声音和环境非常重要';

  @override
  String get hgDogSocial2 => '与其他狗狗交流 — 可利用狗狗公园或幼犬课程';

  @override
  String get hgDogSocial3 => '体验新的地点、气味和声音，有助于丰富心理状态';

  @override
  String get hgDogSocial4 => '正向强化训练（响片、零食）能同时刺激大脑并增强亲密关系';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP（综合疫苗）** — 猫疱疹病毒、杯状病毒、猫泛白细胞减少症。\n出生后6～8周接种第1针，间隔3～4周共接种3次，之后每1～3年加强接种';

  @override
  String get hgCatCoreRabies => '**狂犬病** — 外出猫必需，室内猫也推荐接种（法定必需）';

  @override
  String get hgCatNonCoreFelv => '**猫白血病（FeLV）** — 外出猫、多猫家庭强烈推荐';

  @override
  String get hgCatNonCoreChlamydia => '**猫衣原体** — 多猫环境中用于预防结膜炎';

  @override
  String get hgCatNonCoreFiv => '**猫免疫缺陷病毒（FIV）** — 外出公猫需注意，可通过打斗伤口传播';

  @override
  String get hgCatExternalParasites1 => '外出猫：跳蚤和蜱虫预防药建议**每月1次**';

  @override
  String get hgCatExternalParasites2 => '室内猫也可能通过人的衣服或鞋子带入跳蚤 → 建议**每3个月**预防一次';

  @override
  String get hgCatExternalParasites3 => '使用点涂型产品时，请准确涂抹在后颈部';

  @override
  String get hgCatInternalHeartworm => '内部寄生虫与心丝虫';

  @override
  String get hgCatInternalParasites1 => '蛔虫、绦虫：**每3～6个月**使用驱虫药';

  @override
  String get hgCatInternalParasites2 => '若喂食生肉或生鱼，建议更频繁地进行检查';

  @override
  String get hgCatHeartworm1 => '心丝虫 — 猫咪**没有治疗药物，预防是唯一方法**。外出猫强烈建议每月预防';

  @override
  String get hgCatMajorDiseases => '猫咪主要疾病注意事项';

  @override
  String get hgCatDiseaseAlert => '猫咪有隐藏疼痛和不适的习性，因此症状出现时往往已经发展较深。定期检查尤其重要。';

  @override
  String get hgCatDiseaseFlutd => '**猫下泌尿道疾病（FLUTD）** — 公猫常见。若无法排尿，需立即急救';

  @override
  String get hgCatDiseaseCkd => '**慢性肾病（CKD）** — 老年猫主要死因之一。7岁以上必须定期检查肾脏指标';

  @override
  String get hgCatDiseaseDiabetes => '**猫糖尿病** — 肥胖和高龄猫风险较高。注意多饮、多尿症状';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**甲状腺功能亢进** — 10岁以上常见。注意体重下降、食欲增加和活动过度';

  @override
  String get hgCatDiseaseStomatitis => '**口炎** — 猫咪非常常见。口臭、流口水、食欲不振时应检查';

  @override
  String get hgCatDiseaseFhv =>
      '**猫疱疹病毒（FHV-1）** — 一旦感染会终身潜伏。压力时可能复发，表现为打喷嚏、眼屎、结膜炎';

  @override
  String get hgHydrationDiet => '水分摄入与饮食管理';

  @override
  String get hgCatHydrationAlert => '猫咪天生不太爱喝水，容易发生泌尿系统疾病。促进水分摄入非常重要。';

  @override
  String get hgCatHydration1 => '建议搭配湿粮（罐头、妙鲜包）补充水分';

  @override
  String get hgCatHydration2 => '猫咪偏好流动水 — 安装**宠物饮水机**很有效';

  @override
  String get hgCatHydration3 => '水碗应与食碗分开，猫咪更喜欢宽而浅的碗';

  @override
  String get hgCatHydration4 => '目标饮水量：每1kg体重每天约**40～60ml**';

  @override
  String get hgCatForbiddenFoodAlert => '以下食物对猫咪具有毒性。即使少量也可能危险，请绝对不要喂食。';

  @override
  String get hgCatForbiddenOnion => '**洋葱·大蒜·葱** — 破坏红细胞，导致溶血性贫血（猫比狗更敏感）';

  @override
  String get hgCatForbiddenGrape => '**葡萄·葡萄干** — 可导致肾衰竭';

  @override
  String get hgCatForbiddenChocolate => '**巧克力·咖啡因** — 对心脏和神经系统有毒性';

  @override
  String get hgCatForbiddenRawFish => '**生鱼（长期喂食）** — 可导致硫胺素（维生素B1）缺乏';

  @override
  String get hgCatForbiddenMilk => '**牛奶·乳制品** — 成年猫常见乳糖不耐，可能引起腹泻';

  @override
  String get hgCatForbiddenXylitolAlcohol => '**木糖醇·酒精** — 对肝脏和神经系统有毒性';

  @override
  String get hgCatForbiddenAvocado => '**牛油果** — 含有persin成分，可能引起呕吐和腹泻';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**生蛋清** — 抗生物素蛋白会阻碍生物素吸收，可能导致皮肤和毛发问题';

  @override
  String get hgCatEmergency1 => '**完全无法排尿或血尿** — 尿道堵塞属于急症（尤其注意公猫）';

  @override
  String get hgCatEmergency2 => '完全食欲不振超过24小时（脂肪肝风险）';

  @override
  String get hgCatEmergency3 => '**张口呼吸** — 对猫来说绝不是正常现象，需立即急救';

  @override
  String get hgCatEmergency4 => '后腿突然麻痹或变凉（怀疑血栓）';

  @override
  String get hgCatEmergency5 => '抽搐、癫痫发作、意识丧失';

  @override
  String get hgCatEmergency6 => '牙龈或舌头苍白，或出现黄疸（发黄）';

  @override
  String get hgCatEmergency7 => '一天内呕吐或腹泻反复3次以上，或出现血便、吐血';

  @override
  String get hgCatEmergency8 => '明显外伤、骨折或大量出血';

  @override
  String get hgEnvironmentMentalHealth => '环境与心理健康';

  @override
  String get hgIndoorEnvironment => '室内环境管理';

  @override
  String get hgStressManagement => '压力管理';

  @override
  String get hgCatEnvironment1 => '**猫砂盆**：猫咪数量 + 1个以上，每天清理';

  @override
  String get hgCatEnvironment2 => '**猫抓板**：至少2个以上（垂直型和水平型并用）';

  @override
  String get hgCatEnvironment3 => '**高处空间**：提供猫爬架、架子等垂直空间（满足领地本能）';

  @override
  String get hgCatEnvironment4 => '**隐蔽处**：提供纸箱、隧道等能安全躲藏的空间';

  @override
  String get hgCatStress1 => '猫咪压力会直接影响免疫力下降、FLUTD和猫疱疹复发';

  @override
  String get hgCatStress2 => '搬家、新家庭成员等环境剧烈变化时，可使用信息素扩散器（Feliway）';

  @override
  String get hgCatStress3 => '每天确保**10～15分钟以上**使用玩具互动玩耍';

  @override
  String get hgCatStress4 => '多猫家庭：饭碗、猫砂盆、睡觉位置等资源应按猫咪数量分开配置';

  @override
  String get hgAge => '年龄';

  @override
  String get hgCheckupCycle => '检查周期';

  @override
  String get hgMainItems => '主要项目';

  @override
  String get hgAge1to6 => '1～6岁';

  @override
  String get hgAge7to10 => '7～10岁';

  @override
  String get hgAge11Plus => '11岁以上';

  @override
  String get hgYearlyOnce => '每年1次';

  @override
  String get hgYearlyTwice => '每年2次';

  @override
  String get hgEvery3to4Months => '每3～4个月';

  @override
  String get hgDogCheckupItems1 => '血液检查、心脏听诊、体重、牙齿';

  @override
  String get hgDogCheckupItems2 => '血液、尿液、X光、血压、关节';

  @override
  String get hgDogCheckupItems3 => '综合血液、超声、肾脏与肝功能';

  @override
  String get hgCatCheckupItems1 => '血液检查、尿液检查、体重、牙齿';

  @override
  String get hgCatCheckupItems2 => '肾脏与肝脏指标、血压、甲状腺（T4）';

  @override
  String get hgCatCheckupItems3 => '综合血液、腹部超声、肾脏重点监测';

  @override
  String get hgExerciseAmount => '运动量';

  @override
  String get hgBreedExamples => '品种示例';

  @override
  String get hgLow => '低';

  @override
  String get hgNormal => '普通';

  @override
  String get hgHigh => '高';

  @override
  String get hgBreedLowExamples => '斗牛犬、巴吉度猎犬、西施犬、马尔济斯犬';

  @override
  String get hgBreedNormalExamples => '贵宾犬、比熊犬、可卡犬、比格犬';

  @override
  String get hgBreedHighExamples => '拉布拉多、金毛寻回犬、哈士奇、边境牧羊犬';

  @override
  String get hgDisclaimer => '本指南为一般健康管理信息，所需护理可能会因宠物状态而异。如有异常症状或需要治疗，请务必咨询兽医。';
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
  String get settingsPurchaseProductLoadFailed => '無法載入商品資訊。請稍後再試。';

  @override
  String get settingsPurchaseStartFailed => '無法開始付款。請稍後再試。';

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
  String get notificationChannelName => 'Pet Sumtan 提醒';

  @override
  String get notificationChannelDescription => '寵物健康管理提醒';

  @override
  String alarmNotificationTitle(String type) {
    return '$type提醒';
  }

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
  String get weekStats => '健康統計';

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
  String get deleteConfirmBody => '刪除後無法復原！😢';

  @override
  String get deleteConfirmOk => '刪除';

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

  @override
  String dayCountShort(int days) {
    return '$days天';
  }

  @override
  String get helpIntroContent =>
      '寵物 Sumtan 是一款可以在同一處記錄並管理寵物健康與日常的 App。\n您可以輕鬆記錄用餐、飲水、排泄、體重、用藥、就診等多種健康記錄，並透過提醒功能避免錯過重要行程。';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      '可以一目了然地查看今天新增的所有記錄。點選記錄項目即可查看詳細內容或進行修改。';

  @override
  String get helpHomeWeeklyStatsDesc => '可以透過圖表查看本週的排泄次數、用餐量和飲水量，有助於了解寵物的生活規律。';

  @override
  String get helpHomeWeightChangeChartDesc => '以圖表顯示最近的體重記錄，方便掌握體重變化趨勢。';

  @override
  String get helpHomeFindNearbyHospitalsDesc => '點選按鈕後，可以在 Naver 地圖中搜尋附近的動物醫院。';

  @override
  String get helpHomeAddNewRecordDesc => '點選畫面底部的 + 按鈕，選擇記錄類別後即可新增記錄。';

  @override
  String get helpRecordCategoriesIntro => '您可以透過 12 個類別記錄寵物的日常。';

  @override
  String get helpCategoryPottyName => '排泄';

  @override
  String get helpCategoryPottyDesc => '記錄排泄情況和狀態，也可以附加照片。';

  @override
  String get helpCategoryConditionName => '狀態';

  @override
  String get helpCategoryConditionDesc => '記錄寵物的整體身體狀況。';

  @override
  String get helpCategoryMedicationName => '用藥';

  @override
  String get helpCategoryMedicationDesc => '記錄藥品名稱、劑量和用藥時間。';

  @override
  String get helpCategoryWeightName => '體重';

  @override
  String get helpCategoryWeightDesc => '記錄體重（kg）。可在首頁查看變化趨勢。';

  @override
  String get helpCategoryMealName => '用餐';

  @override
  String get helpCategoryMealDesc => '記錄用餐量和飼料種類，也可以附加照片和影片。';

  @override
  String get helpCategoryWaterName => '飲水';

  @override
  String get helpCategoryWaterDesc => '記錄飲水量（ml），也可以附加照片和影片。';

  @override
  String get helpCategoryHospitalName => '醫院';

  @override
  String get helpCategoryHospitalDesc => '記錄醫院名稱和診療內容，也可以附加照片和影片。';

  @override
  String get helpCategoryVaccinationName => '預防接種';

  @override
  String get helpCategoryVaccinationDesc => '記錄疫苗種類和接種日期。';

  @override
  String get helpCategoryGroomingName => '美容';

  @override
  String get helpCategoryGroomingDesc => '記錄美容內容，並可附加照片或影片。';

  @override
  String get helpCategoryDentalName => '刷牙';

  @override
  String get helpCategoryDentalDesc => '記錄是否刷牙以及相關備註。';

  @override
  String get helpCategoryWalkName => '散步';

  @override
  String get helpCategoryWalkDesc => '記錄散步距離和時間。';

  @override
  String get helpCategoryMemoName => '備忘錄';

  @override
  String get helpCategoryMemoDesc => '可以自由留下備忘內容。';

  @override
  String get helpJournalViewRecordListDesc =>
      '可以依日期查看所有已新增的記錄。透過類別標籤可以一眼區分記錄類型。';

  @override
  String get helpJournalEditDeleteRecordDesc => '點選記錄項目會開啟編輯面板，可修改或刪除內容。';

  @override
  String get helpJournalAttachMediaDesc => '在用餐、飲水、醫院、美容、排泄等部分類別中，可以附加照片或影片。';

  @override
  String get helpAlarmAddDesc =>
      '可以新增預防接種、用藥、醫院就診、美容等多種類型的提醒。請先選擇提醒類型，再設定日期和時間。';

  @override
  String get helpAlarmRepeatDesc => '可以設定每天、每週、每月等重複規則，適用於定期用藥或心絲蟲預防等情境。';

  @override
  String get helpAlarmAdvanceDesc => '像預防接種這樣的重要行程，可以在 7 天前、3 天前和 1 天前提前收到提醒。';

  @override
  String get helpAlarmCompleteDesc => '點選提醒項目即可標記為已完成。已完成的提醒可在過去提醒清單中查看。';

  @override
  String get helpAlarmDeleteDesc => '將提醒項目向左滑動即可刪除。';

  @override
  String get helpPetRegisterDesc => '輸入名字、種類（狗狗/貓咪）、品種、性別、出生日期和是否絕育，即可登錄寵物。';

  @override
  String get helpPetEditProfileDesc => '可以在檔案畫面修改名字、品種、體重、晶片號碼、動物登記號碼和檔案照片。';

  @override
  String get helpPetManageMultipleDesc => '可以登錄多隻寵物。點選上方的寵物標籤，即可切換目前管理的寵物。';

  @override
  String get helpDogHealthGuideDesc =>
      '提供依據獸醫學的健康資訊，包含必要和選擇性預防接種時程、心絲蟲和外部寄生蟲預防、牙齒護理、營養管理等。';

  @override
  String get helpCatHealthGuideDesc => '可以查看貓咪專用預防接種時程、寄生蟲預防、牙齒護理和營養資訊。';

  @override
  String get helpSettingsNotificationDesc => '可以開啟或關閉 App 的全部通知。';

  @override
  String get helpSettingsExportDesc => '可以將所有記錄資料匯出為 ZIP 檔。更換裝置時可作為備份使用。';

  @override
  String get helpSettingsImportDesc => '可以匯入之前匯出的 ZIP 備份檔來還原資料。';

  @override
  String get helpSettingsFeedbackDesc =>
      '如果在使用 App 時有不便之處或改善建議，請透過電子郵件傳送給我們。這將對改善 App 非常有幫助。';

  @override
  String get helpFaqDeletePetQ => '刪除寵物後，記錄也會全部刪除嗎？';

  @override
  String get helpFaqDeletePetA => '是的，刪除寵物後，該寵物的所有記錄和提醒也會一起刪除。刪除前請先透過匯出資料進行備份。';

  @override
  String get helpFaqMultipleMediaQ => '一筆記錄可以附加多張照片嗎？';

  @override
  String get helpFaqMultipleMediaA => '可以，您可以附加多張照片和影片。可以從相簿中選擇，也可以直接用相機拍攝。';

  @override
  String get helpFaqNoNotificationQ => '收不到提醒。';

  @override
  String get helpFaqNoNotificationA =>
      '請確認裝置的通知設定中是否允許寵物 Sumtan 的通知。同時也請確認 設定 > 通知設定 中 App 通知是否已開啟。';

  @override
  String get helpFaqMoveDataQ => '可以把資料轉移到新裝置嗎？';

  @override
  String get helpFaqMoveDataA =>
      '可以。在舊裝置中透過 設定 > 匯出資料 儲存備份檔後，在新裝置中透過 設定 > 匯入資料 進行還原。';

  @override
  String get helpFaqMultiplePetsQ => '可以登錄多隻寵物嗎？';

  @override
  String get helpFaqMultiplePetsA => '預設可以免費登錄 1 隻寵物。追加登錄可透過進階功能使用。';

  @override
  String get privacyIntroBody =>
      '寵物 Sumtan 是一款無需註冊即可使用的 App，所有資料僅儲存在使用者的裝置內。我們不會將個人資訊傳送至外部伺服器，並會安全保護使用者珍貴的寵物資訊。';

  @override
  String get privacySection1Title => '蒐集的個人資訊項目';

  @override
  String get privacySection1Body =>
      '寵物 Sumtan 無需註冊即可使用，不會另行蒐集可識別個人身分的資訊。不過，為了提供 App 功能，以下資訊可能會儲存在裝置內。';

  @override
  String get privacyLocalStorageInfo => '裝置內本機儲存資訊';

  @override
  String get privacyPetInfo => '寵物資訊：名字、種類、品種、出生日期、性別、體重、絕育情況、晶片號碼、動物登記號碼';

  @override
  String get privacyHealthRecords =>
      '健康記錄：排泄、用餐、飲水、體重、用藥、預防接種、醫院、美容、刷牙、散步、狀態、備忘錄等由使用者直接輸入的記錄';

  @override
  String get privacyAttachedMedia => '附件媒體：使用者直接拍攝或選擇的照片與影片';

  @override
  String get privacyNotificationSettings => '提醒設定：提醒類型、預定日期時間、重複規則';

  @override
  String get privacyInAppPurchaseTitle => 'App 內購買相關';

  @override
  String get privacyPaymentProcessing =>
      '付款處理透過 Apple App Store 或 Google Play Store 進行，App 不會直接蒐集或儲存付款資訊。';

  @override
  String get privacyReceiptVerification => '購買收據驗證所需的最低限度資訊，會依各平台政策進行處理。';

  @override
  String get privacySection2Title => '個人資訊蒐集及使用目的';

  @override
  String get privacyPurposeRecords => '儲存與查看寵物健康記錄';

  @override
  String get privacyPurposeStats => '提供首頁統計資訊（每週排泄、用餐、飲水狀況、體重變化圖表等）';

  @override
  String get privacyPurposeReminders => '發送預防接種、用藥、醫院就診等健康相關提醒';

  @override
  String get privacyPurposeBackupRestore => '提供資料備份與還原功能';

  @override
  String get privacyPurposePaidEligibility => '確認付費功能使用資格';

  @override
  String get privacySection3Title => '個人資訊保存及刪除';

  @override
  String get privacyRetentionBody =>
      '寵物 Sumtan 的所有資料僅儲存在使用者裝置內的本機資料庫（SQLite）中，不會傳送至外部伺服器。';

  @override
  String get privacyDataDeletionMethod => '資料刪除方式';

  @override
  String get privacyDeleteInApp => '您可以在 App 內 設定 > 資料管理 中直接刪除寵物資訊與記錄。';

  @override
  String get privacyDeleteUninstall => '刪除 App 後，裝置中儲存的所有資料也會一併刪除。';

  @override
  String get privacyDeleteBackupWarning => '請注意，若在刪除 App 前未進行備份（匯出），資料將無法復原。';

  @override
  String get privacySection4Title => '向第三方提供個人資訊';

  @override
  String get privacyThirdPartyBody => '寵物 Sumtan 不會向外部提供使用者的個人資訊。但以下情況例外。';

  @override
  String get privacyThirdPartyUserExport => '使用者自行使用資料匯出（備份檔分享）功能時';

  @override
  String get privacyThirdPartyLegalRequest => '依法律規定或收到偵查機關合法請求時';

  @override
  String get privacySection5Title => '存取權限說明';

  @override
  String get privacyPermissionsBody =>
      '為了提供 App 功能，可能會要求以下權限。即使未允許權限，除該權限相關功能外，其餘功能仍可正常使用。';

  @override
  String get privacyPermissionCameraName => '相機';

  @override
  String get privacyPermissionCameraDesc => '用於在健康記錄中直接拍攝照片或影片並作為附件新增。';

  @override
  String get privacyPermissionMediaName => '照片與媒體存取';

  @override
  String get privacyPermissionMediaDesc => '用於從相簿選擇照片或影片並新增至記錄。';

  @override
  String get privacyPermissionNotificationName => '通知';

  @override
  String get privacyPermissionNotificationDesc => '用於發送預防接種、用藥、醫院就診等健康相關提醒。';

  @override
  String get privacyPermissionFileName => '檔案存取（Android）';

  @override
  String get privacyPermissionFileDesc => '用於儲存或載入資料備份檔案。';

  @override
  String get privacySection6Title => '資料備份與還原';

  @override
  String get privacyBackupExport => '匯出：可將 App 內所有資料儲存或分享為檔案（.zip）。';

  @override
  String get privacyBackupImport => '匯入：可載入先前匯出的備份檔案並還原資料。';

  @override
  String get privacyBackupWarning => '備份檔案由使用者自行管理，請注意不要與他人分享檔案。';

  @override
  String get privacySection7Title => '兒童個人資訊保護';

  @override
  String get privacyChildrenBody =>
      '寵物 Sumtan 不會另行蒐集未滿 14 歲兒童的個人資訊。App 的所有資料僅儲存在裝置內，不會傳送至外部伺服器，因此兒童也可以安全使用。';

  @override
  String get privacySection8Title => '隱私權政策變更';

  @override
  String get privacyPolicyChangeNotice => '如有變更，將透過 App 更新說明或 App 內公告進行通知。';

  @override
  String get privacyPolicyChangeEffective => '變更後的政策將於公告後 7 天起生效。';

  @override
  String get privacySection9Title => '聯絡';

  @override
  String get hgDogHeroTitle => '狗狗健康管理指南';

  @override
  String get hgCatHeroTitle => '貓咪健康管理指南';

  @override
  String get hgHeroSubtitle => '依據獸醫建議編寫的\n專業健康指南。';

  @override
  String get hgVaccination => '預防接種';

  @override
  String get hgCoreVaccines => '核心必須疫苗（Core Vaccine）';

  @override
  String get hgNonCoreVaccines => '選擇性疫苗（Non-Core）';

  @override
  String get hgRequired => '必須';

  @override
  String get hgRecommended => '建議';

  @override
  String get hgParasitePrevention => '寄生蟲預防';

  @override
  String get hgHeartworm => '心絲蟲';

  @override
  String get hgMonthly => '每月';

  @override
  String get hgExternalParasites => '外部寄生蟲（跳蚤·蜱蟲）';

  @override
  String get hgInternalParasites => '內部寄生蟲';

  @override
  String get hgThreeToSixMonths => '3～6個月';

  @override
  String get hgRegular => '定期';

  @override
  String get hgRegularCheckup => '定期健康檢查';

  @override
  String get hgDentalCare => '牙齒與口腔護理';

  @override
  String get hgForbiddenFoods => '絕對禁止食物';

  @override
  String get hgEmergencySymptoms => '需要立即就醫的症狀';

  @override
  String get hgExerciseMentalHealth => '運動與心理健康';

  @override
  String get hgWalk => '散步';

  @override
  String get hgDaily => '每天';

  @override
  String get hgBreedExerciseAmount => '依品種建議的運動量';

  @override
  String get hgPlayBrainStimulation => '玩耍與腦力刺激';

  @override
  String get hgStressSignals => '辨識壓力信號';

  @override
  String get hgCaution => '注意';

  @override
  String get hgSocialization => '社會化與環境刺激';

  @override
  String get hgDogCoreDhppl =>
      '**DHPPL（綜合疫苗）** — 犬瘟熱、肝炎、犬小病毒、副流感、鉤端螺旋體。\n出生後6～8週接種第1劑，間隔3～4週共接種3次，之後每年追加接種';

  @override
  String get hgDogCoreRabies => '**狂犬病** — 出生後3個月以後接種第1劑，之後每年1次（法定必須接種）';

  @override
  String get hgDogCoreCorona => '**冠狀病毒腸炎** — 出生後6～8週開始，間隔3～4週接種2次，之後每年追加接種';

  @override
  String get hgDogNonCoreKennel => '**犬窩咳** — 多犬環境、美容店、寵物旅館等情況建議接種。可選擇鼻腔型或注射型';

  @override
  String get hgDogNonCoreFlu => '**犬流感** — 戶外活動多或經常接觸其他狗狗時建議';

  @override
  String get hgDogHeartworm1 => '蚊子活躍期（3～11月）前後，建議**每月1次**使用預防藥';

  @override
  String get hgDogHeartworm2 => '一旦感染，治療困難且可能致命 — **預防是最好的方法**';

  @override
  String get hgDogHeartworm3 => '使用前必須先檢查是否感染，並確認為陰性';

  @override
  String get hgDogHeartworm4 => '全年持續預防會更安全（獸醫建議）';

  @override
  String get hgDogExternalParasites1 => '點滴型（spot-on）或口服型預防藥建議**每月使用**';

  @override
  String get hgDogExternalParasites2 => '散步後務必檢查耳朵、腳趾間、腋下是否有蜱蟲';

  @override
  String get hgDogExternalParasites3 => '移除蜱蟲時，請用鑷子垂直方向慢慢拔除（禁止扭轉）';

  @override
  String get hgDogInternalParasites1 => '蛔蟲、鉤蟲、鞭蟲：**每3～6個月**使用驅蟲藥';

  @override
  String get hgDogInternalParasites2 => '幼犬時期（出生後2週起）：每2週驅蟲1次，共4次，之後定期管理';

  @override
  String get hgDental1 => '每天刷牙最理想 — 至少建議**每週3次以上**';

  @override
  String get hgDental2 => '務必使用**寵物專用牙膏**（禁止使用含木糖醇的人用牙膏）';

  @override
  String get hgDental3 => '牙結石嚴重時，請至動物醫院洗牙（需要全身麻醉）';

  @override
  String get hgDental4 => '潔牙零食與牙齒玩具可作為輔助護理';

  @override
  String get hgDogForbiddenFoodAlert => '以下食物對狗狗具有毒性。即使少量也可能危險，請絕對不要餵食。';

  @override
  String get hgDogForbiddenGrape => '**葡萄·葡萄乾** — 可導致腎衰竭，少量也可能致命';

  @override
  String get hgDogForbiddenChocolate => '**巧克力·可可** — 可導致可可鹼中毒、心臟衰竭與抽搐';

  @override
  String get hgDogForbiddenOnion => '**洋蔥·大蒜·蔥** — 破壞紅血球，導致溶血性貧血';

  @override
  String get hgDogForbiddenXylitol => '**木糖醇** — 造成胰島素過度分泌，導致低血糖與肝衰竭';

  @override
  String get hgDogForbiddenMacadamia => '**夏威夷豆** — 可引起肌肉無力、高燒、嘔吐';

  @override
  String get hgDogForbiddenDoughAlcohol => '**生麵團·酒精** — 可導致乙醇中毒與低血糖';

  @override
  String get hgDogForbiddenAvocado => '**酪梨** — 含有 persin 成分，可能引起嘔吐與腹瀉';

  @override
  String get hgEmergencyAlert => '若出現以下症狀，請立即前往動物醫院。';

  @override
  String get hgDogEmergency1 => '完全食欲不振超過24小時';

  @override
  String get hgDogEmergency2 => '一天內嘔吐或腹瀉反覆3次以上';

  @override
  String get hgDogEmergency3 => '腹部膨脹、乾嘔（疑似胃擴張/胃扭轉）';

  @override
  String get hgDogEmergency4 => '呼吸困難、牙齦蒼白、發紺';

  @override
  String get hgDogEmergency5 => '抽搐、癲癇發作、意識喪失';

  @override
  String get hgDogEmergency6 => '超過12小時無法排尿';

  @override
  String get hgDogEmergency7 => '明顯外傷、骨折或大量出血';

  @override
  String get hgDogExerciseAlert => '對狗狗來說，運動不足不只是體力問題，也可能是壓力、焦慮和破壞性行為的主要原因。';

  @override
  String get hgDogWalk1 => '小型犬：每天至少**20～30分鐘**；中大型犬：建議**1小時**以上';

  @override
  String get hgDogWalk2 => '散步不只是排便時間，而是**嗅覺刺激、社會化與壓力釋放**的時間';

  @override
  String get hgDogWalk3 => '充分允許狗狗聞味道（嗅聞）— 對舒緩精神疲勞非常有效';

  @override
  String get hgDogWalk4 => '夏季注意柏油路燙傷 — 建議早上7點以前或晚上散步';

  @override
  String get hgDogPlay1 => '**丟球·拔河遊戲** — 消耗身體能量，增進與主人的親密關係';

  @override
  String get hgDogPlay2 => '**嗅聞遊戲（找氣味）** — 刺激大腦，15分鐘即可達到約30分鐘散步的效果';

  @override
  String get hgDogPlay3 => '**益智玩具·Kong玩具** — 有助於減輕獨自在家時的分離焦慮';

  @override
  String get hgDogPlay4 => '每天只需**10～15分鐘**的專注玩耍，也能明顯降低壓力程度';

  @override
  String get hgDogStress1 => '破壞家具或物品、過度吠叫 — 可能是運動和刺激不足的信號';

  @override
  String get hgDogStress2 => '咬尾巴、過度舔腳或身體 — 強迫行為，可能是在試圖舒緩壓力';

  @override
  String get hgDogStress3 => '主人外出時過度不安、排泄失誤 — 疑似分離焦慮';

  @override
  String get hgDogStress4 => '若持續發生，建議諮詢獸醫或寵物行為專家';

  @override
  String get hgDogSocial1 => '出生後**3～14週**是社會化黃金期 — 接觸各種人、聲音與環境非常重要';

  @override
  String get hgDogSocial2 => '與其他狗狗互動 — 可利用狗狗公園或幼犬課程';

  @override
  String get hgDogSocial3 => '體驗新的地點、氣味與聲音，有助於豐富心理狀態';

  @override
  String get hgDogSocial4 => '正向強化訓練（響片、零食）能同時刺激大腦並增進親密關係';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP（綜合疫苗）** — 貓疱疹病毒、卡里西病毒、貓泛白血球減少症。\n出生後6～8週接種第1劑，間隔3～4週共接種3次，之後每1～3年追加接種';

  @override
  String get hgCatCoreRabies => '**狂犬病** — 外出貓必須，室內貓也建議接種（法定必須）';

  @override
  String get hgCatNonCoreFelv => '**貓白血病（FeLV）** — 外出貓、多貓家庭強烈建議';

  @override
  String get hgCatNonCoreChlamydia => '**貓披衣菌** — 多貓環境中用於預防結膜炎';

  @override
  String get hgCatNonCoreFiv => '**貓免疫缺陷病毒（FIV）** — 外出公貓需注意，可透過打架傷口傳播';

  @override
  String get hgCatExternalParasites1 => '外出貓：跳蚤與蜱蟲預防藥建議**每月1次**';

  @override
  String get hgCatExternalParasites2 => '室內貓也可能透過人的衣服或鞋子帶入跳蚤 → 建議**每3個月**預防一次';

  @override
  String get hgCatExternalParasites3 => '使用點滴型產品時，請正確滴在後頸部';

  @override
  String get hgCatInternalHeartworm => '內部寄生蟲與心絲蟲';

  @override
  String get hgCatInternalParasites1 => '蛔蟲、絛蟲：**每3～6個月**使用驅蟲藥';

  @override
  String get hgCatInternalParasites2 => '若餵食生肉或生魚，建議更頻繁檢查';

  @override
  String get hgCatHeartworm1 => '心絲蟲 — 貓咪**沒有治療藥物，預防是唯一方法**。外出貓強烈建議每月預防';

  @override
  String get hgCatMajorDiseases => '貓咪主要疾病注意事項';

  @override
  String get hgCatDiseaseAlert => '貓咪有隱藏疼痛與不適的習性，因此症狀出現時往往已經進展較深。定期檢查尤其重要。';

  @override
  String get hgCatDiseaseFlutd => '**貓下泌尿道疾病（FLUTD）** — 公貓常見。若無法排尿，需立即急救';

  @override
  String get hgCatDiseaseCkd => '**慢性腎臟病（CKD）** — 老年貓主要死因之一。7歲以上必須定期檢查腎臟指數';

  @override
  String get hgCatDiseaseDiabetes => '**貓糖尿病** — 肥胖與高齡貓風險較高。注意多飲、多尿症狀';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**甲狀腺功能亢進** — 10歲以上常見。注意體重下降、食欲增加與過度活躍';

  @override
  String get hgCatDiseaseStomatitis => '**口炎** — 貓咪非常常見。口臭、流口水、食欲不振時應檢查';

  @override
  String get hgCatDiseaseFhv =>
      '**貓疱疹病毒（FHV-1）** — 一旦感染會終身潛伏。壓力時可能復發，表現為打噴嚏、眼屎、結膜炎';

  @override
  String get hgHydrationDiet => '水分攝取與飲食管理';

  @override
  String get hgCatHydrationAlert => '貓咪天生不太愛喝水，容易發生泌尿系統疾病。促進水分攝取非常重要。';

  @override
  String get hgCatHydration1 => '建議搭配濕食（罐頭、餐包）補充水分';

  @override
  String get hgCatHydration2 => '貓咪偏好流動水 — 安裝**寵物飲水機**很有效';

  @override
  String get hgCatHydration3 => '水碗應與食碗分開，貓咪通常更喜歡寬而淺的碗';

  @override
  String get hgCatHydration4 => '目標飲水量：每1kg體重每天約**40～60ml**';

  @override
  String get hgCatForbiddenFoodAlert => '以下食物對貓咪具有毒性。即使少量也可能危險，請絕對不要餵食。';

  @override
  String get hgCatForbiddenOnion => '**洋蔥·大蒜·蔥** — 破壞紅血球，導致溶血性貧血（貓比狗更敏感）';

  @override
  String get hgCatForbiddenGrape => '**葡萄·葡萄乾** — 可導致腎衰竭';

  @override
  String get hgCatForbiddenChocolate => '**巧克力·咖啡因** — 對心臟與神經系統有毒性';

  @override
  String get hgCatForbiddenRawFish => '**生魚（長期餵食）** — 可導致硫胺素（維生素B1）缺乏';

  @override
  String get hgCatForbiddenMilk => '**牛奶·乳製品** — 成貓常見乳糖不耐，可能引起腹瀉';

  @override
  String get hgCatForbiddenXylitolAlcohol => '**木糖醇·酒精** — 對肝臟與神經系統有毒性';

  @override
  String get hgCatForbiddenAvocado => '**酪梨** — 含有 persin 成分，可能引起嘔吐與腹瀉';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**生蛋白** — 抗生物素蛋白會阻礙生物素吸收，可能導致皮膚與毛髮問題';

  @override
  String get hgCatEmergency1 => '**完全無法排尿或血尿** — 尿道阻塞屬於急症（尤其注意公貓）';

  @override
  String get hgCatEmergency2 => '完全食欲不振超過24小時（脂肪肝風險）';

  @override
  String get hgCatEmergency3 => '**張口呼吸** — 對貓來說絕不是正常現象，需立即急救';

  @override
  String get hgCatEmergency4 => '後腿突然麻痺或變冷（疑似血栓）';

  @override
  String get hgCatEmergency5 => '抽搐、癲癇發作、意識喪失';

  @override
  String get hgCatEmergency6 => '牙齦或舌頭蒼白，或出現黃疸（發黃）';

  @override
  String get hgCatEmergency7 => '一天內嘔吐或腹瀉反覆3次以上，或出現血便、吐血';

  @override
  String get hgCatEmergency8 => '明顯外傷、骨折或大量出血';

  @override
  String get hgEnvironmentMentalHealth => '環境與心理健康';

  @override
  String get hgIndoorEnvironment => '室內環境管理';

  @override
  String get hgStressManagement => '壓力管理';

  @override
  String get hgCatEnvironment1 => '**貓砂盆**：貓咪數量 + 1個以上，每天清理';

  @override
  String get hgCatEnvironment2 => '**貓抓板**：至少2個以上（垂直型與水平型並用）';

  @override
  String get hgCatEnvironment3 => '**高處空間**：提供貓跳台、層架等垂直空間（滿足領地本能）';

  @override
  String get hgCatEnvironment4 => '**隱蔽處**：提供紙箱、隧道等能安全躲藏的空間';

  @override
  String get hgCatStress1 => '貓咪壓力會直接影響免疫力下降、FLUTD與貓疱疹復發';

  @override
  String get hgCatStress2 => '搬家、新家庭成員等環境劇烈變化時，可使用費洛蒙擴散器（Feliway）';

  @override
  String get hgCatStress3 => '每天確保**10～15分鐘以上**使用玩具互動玩耍';

  @override
  String get hgCatStress4 => '多貓家庭：飯碗、貓砂盆、睡覺位置等資源應依貓咪數量分開配置';

  @override
  String get hgAge => '年齡';

  @override
  String get hgCheckupCycle => '檢查週期';

  @override
  String get hgMainItems => '主要項目';

  @override
  String get hgAge1to6 => '1～6歲';

  @override
  String get hgAge7to10 => '7～10歲';

  @override
  String get hgAge11Plus => '11歲以上';

  @override
  String get hgYearlyOnce => '每年1次';

  @override
  String get hgYearlyTwice => '每年2次';

  @override
  String get hgEvery3to4Months => '每3～4個月';

  @override
  String get hgDogCheckupItems1 => '血液檢查、心臟聽診、體重、牙齒';

  @override
  String get hgDogCheckupItems2 => '血液、尿液、X光、血壓、關節';

  @override
  String get hgDogCheckupItems3 => '綜合血液、超音波、腎臟與肝功能';

  @override
  String get hgCatCheckupItems1 => '血液檢查、尿液檢查、體重、牙齒';

  @override
  String get hgCatCheckupItems2 => '腎臟與肝臟指數、血壓、甲狀腺（T4）';

  @override
  String get hgCatCheckupItems3 => '綜合血液、腹部超音波、腎臟重點監測';

  @override
  String get hgExerciseAmount => '運動量';

  @override
  String get hgBreedExamples => '品種範例';

  @override
  String get hgLow => '低';

  @override
  String get hgNormal => '普通';

  @override
  String get hgHigh => '高';

  @override
  String get hgBreedLowExamples => '鬥牛犬、巴吉度獵犬、西施犬、馬爾濟斯';

  @override
  String get hgBreedNormalExamples => '貴賓犬、比熊犬、可卡犬、米格魯';

  @override
  String get hgBreedHighExamples => '拉布拉多、黃金獵犬、哈士奇、邊境牧羊犬';

  @override
  String get hgDisclaimer => '本指南為一般健康管理資訊，所需照護可能會因寵物狀態而異。如有異常症狀或需要治療，請務必諮詢獸醫。';
}
