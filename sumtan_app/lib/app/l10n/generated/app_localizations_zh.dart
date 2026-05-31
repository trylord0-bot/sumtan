// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Pet Sumtan';

  @override
  String get appTagline => '宠物健康管理App';

  @override
  String get navHome => '首页';

  @override
  String get navJournal => '记录';

  @override
  String get navNotifications => '提醒';

  @override
  String get navProfile => '我的';

  @override
  String get navSettings => '设置';

  @override
  String get navAddAlarm => '添加提醒';

  @override
  String get drawerService => '服务';

  @override
  String get drawerNearbyHospitals => '附近医院';

  @override
  String get drawerNearbyHospitalsSub => '您周边的宠物医院';

  @override
  String get drawerHealthGuide => '健康指南';

  @override
  String get drawerHealthGuideSub => '宠物健康手册';

  @override
  String get drawerApp => '应用';

  @override
  String get drawerHelp => '帮助';

  @override
  String get dialogExternalTitle => '打开外部网页';

  @override
  String get dialogExternalHospitalBody => '寻找附近医院需要打开外部网页。\n\n现在打开吗？';

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
  String get toastBackToExit => '再按一次退出';

  @override
  String get toastNeedPet => '还没有宠物哦。请先在“我的”中添加宠物。';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsPushNotifications => '允许推送通知';

  @override
  String get settingsPushNotificationsSub => '设备通知权限';

  @override
  String get settingsLanguageSection => '语言';

  @override
  String get settingsLanguage => '应用语言';

  @override
  String get settingsLanguageSystem => '跟随系统';

  @override
  String get settingsLanguageChanged => '应用语言已更改';

  @override
  String get settingsData => '数据管理';

  @override
  String get settingsExport => '导出数据';

  @override
  String get settingsExportSub => '保存为ZIP文件';

  @override
  String get settingsImport => '导入数据';

  @override
  String get settingsImportSub => '从ZIP文件恢复';

  @override
  String get settingsAppInfo => '应用信息';

  @override
  String get settingsVersion => '应用版本';

  @override
  String get settingsPrivacy => '隐私政策';

  @override
  String get settingsFeedback => '发送反馈';

  @override
  String get settingsFeedbackSubject => 'Pet Sumtan 反馈';

  @override
  String get settingsEmailAppMissing => '未找到邮件应用';

  @override
  String get settingsImportConfirmBody => '现有数据将被全部删除，并替换为备份文件中的内容。\n\n是否继续？';

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
  String get settingsExportBenefitTitle => '安全保存您的珍贵记录';

  @override
  String get settingsExportBenefitPets => '所有宠物的档案和照片';

  @override
  String get settingsExportBenefitRecords => '所有健康记录、日记和体重数据';

  @override
  String get settingsExportBenefitMedia => '包含附加的图片和视频';

  @override
  String get settingsStoreUnavailable => '目前无法连接到商店。\n请稍后再试。';

  @override
  String settingsPayAndExport(String price) {
    return '支付 $price 并导出';
  }

  @override
  String get settingsUnlocked => '已解锁';

  @override
  String get settingsExportUnlockedBody =>
      '将所有宠物信息和记录保存为ZIP文件。\n您可以随时免费导入并恢复保存的文件。';

  @override
  String get settingsExporting => '正在导出...';

  @override
  String get settingsExportZip => '导出为ZIP';

  @override
  String get settingsExportConfirmBody => '将所有宠物信息、记录和附加媒体导出为ZIP文件。';

  @override
  String get settingsExportAction => '导出';

  @override
  String get settingsExportSuccess => '备份文件已准备好分享';

  @override
  String get settingsExportFailed => '导出失败';

  @override
  String get settingsPurchaseFailed => '支付失败';

  @override
  String get settingsPurchaseProductLoadFailed => '无法加载商品信息，请稍后再试。';

  @override
  String get settingsPurchaseStartFailed => '无法发起支付，请稍后再试。';

  @override
  String get errorDbInit => '准备应用数据时出现问题。\n请稍后再试。';

  @override
  String get help => '帮助';

  @override
  String get healthGuide => '健康指南';

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
  String get deleteAction => '确认删除';

  @override
  String get save => '保存';

  @override
  String get memo => '备注';

  @override
  String get memoPlaceholder => '请随意添加备注';

  @override
  String get addBtn => '＋ 添加';

  @override
  String get errorOccurred => '发生错误';

  @override
  String errorOccurredWithDetail(String error) {
    return '发生错误\n$error';
  }

  @override
  String get pet => '宠物';

  @override
  String get selectPet => '选择宠物';

  @override
  String get addNewPet => '添加新宠物';

  @override
  String get noAlarms => '暂无提醒';

  @override
  String alarmEmptyDesc(String petName) {
    return '今天也来守护 $petName 的健康吧。\n点击下方的“添加提醒”开始吧。';
  }

  @override
  String get scheduledAlarms => '计划中的提醒';

  @override
  String get swipeToDelete => '滑动即可删除';

  @override
  String get selectAlarmType => '选择提醒类型';

  @override
  String get vetAppointment => '预约就诊';

  @override
  String get medication => '吃药';

  @override
  String get mealTime => '喂食时间';

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
    return '$type 提醒';
  }

  @override
  String get alarmBodyVaccination => '请确认疫苗接种日期。';

  @override
  String get alarmBodyVetAppointment => '您的就诊预约时间快到了。';

  @override
  String get alarmBodyMedication => '该吃药啦。';

  @override
  String get alarmBodyMealTime => '别忘了喂食时间哦。';

  @override
  String get alarmBodyDailyReminder => '请添加今天的健康记录。';

  @override
  String get alarmBodyDefault => '宠物健康管理提醒。';

  @override
  String get alarmDeleted => '提醒已删除';

  @override
  String get hidePastAlarms => '隐藏历史提醒';

  @override
  String get showPastAlarms => '显示历史提醒';

  @override
  String get deleteAll => '全部删除';

  @override
  String get deletePastAlarms => '删除历史提醒';

  @override
  String deletePastAlarmsConfirm(int count) {
    return '确定要删除所有 $count 条历史提醒吗？';
  }

  @override
  String get pastAlarmsDeleted => '历史提醒已全部删除';

  @override
  String get pastLabel => '历史';

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
  String get snoozeCustom => '手动选择';

  @override
  String get snoozeAtThisTime => '在这个时间提醒我';

  @override
  String snoozeConfirm(String time) {
    return '我们将在 $time 再次提醒您';
  }

  @override
  String get selectFutureTime => '请选择一个未来的时间';

  @override
  String recordCheckHint(String typeLabel) {
    return '您可以在 记录 > $typeLabel 中查看。';
  }

  @override
  String get pushAlsoCancel => '计划中的推送通知也将被取消。';

  @override
  String get reschedule => '重新安排';

  @override
  String get deleteThisAlarm => '删除此提醒';

  @override
  String get vaccineNameRequired => '疫苗名称 *';

  @override
  String get vaccineNameExample => '例：狂犬疫苗、多联疫苗';

  @override
  String get scheduledDateRequired => '日期 *';

  @override
  String get reminderTiming => '提醒时间';

  @override
  String get sameDay => '当天';

  @override
  String get reminderTimeRequired => '提醒时间 *';

  @override
  String get memoInputHint => '请输入备注';

  @override
  String get visitPurposeRequired => '就诊目的 *';

  @override
  String get visitPurposeExample => '例：体检、皮肤治疗';

  @override
  String get appointmentDateTimeRequired => '预约日期和时间 *';

  @override
  String get hospitalName => '医院名称';

  @override
  String get hospitalNameHint => '请输入医院名称';

  @override
  String get medicineNameRequired => '药品名称 *';

  @override
  String get medicineNameExample => '例：驱虫药、心丝虫药';

  @override
  String get doseExample => '例：0.5ml，1粒';

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
  String get medicationTimeRequired => '用药时间 *';

  @override
  String get alarmNameRequired => '提醒名称 *';

  @override
  String get mealTimeExample => '例：早餐、晚餐';

  @override
  String get mealTimeRequired => '喂食时间 *';

  @override
  String get alarmMessage => '提醒信息';

  @override
  String get alarmMessageExample => '例：今天的记录添加了吗？';

  @override
  String get alarmPastDueMsg => '此提醒的日期已过。\n您可以选择新日期或将其删除。';

  @override
  String get reselectDate => '重新选择日期';

  @override
  String get selectDate => '选择日期';

  @override
  String get selectTime => '选择时间';

  @override
  String get todayStatus => '今日状态';

  @override
  String get addRecord => '＋ 添加记录';

  @override
  String get todayReminders => '今日提醒';

  @override
  String get todayRecords => '今日记录';

  @override
  String get viewAll => '查看全部';

  @override
  String get weekStats => '本周健康统计';

  @override
  String get pottyCount => '排泄次数';

  @override
  String get mealCount => '喂食次数';

  @override
  String get waterLevel => '饮水量';

  @override
  String get timesUnit => '次';

  @override
  String get mealsUnit => '餐';

  @override
  String get pointsUnit => '分';

  @override
  String get recordDeleted => '记录已删除';

  @override
  String get recordUpdated => '记录已更新';

  @override
  String get deleteRecordConfirm => '确定要删除这条记录吗？';

  @override
  String get deleteConfirmBody => '删除后将无法恢复！';

  @override
  String get deleteConfirmOk => '确认删除';

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
  String get dose => '剂量';

  @override
  String get medicationMethod => '用药方式';

  @override
  String get weightKg => '体重 (kg)';

  @override
  String get measurementMethod => '测量方式';

  @override
  String get mealAmount => '喂食量';

  @override
  String get servingAmount => '分量';

  @override
  String get waterAmount => '饮水量';

  @override
  String get visitType => '就诊类型';

  @override
  String get diagnosisName => '诊断结果';

  @override
  String get vaccineType => '疫苗种类';

  @override
  String get abnormalSymptomType => '异常症状类型';

  @override
  String get customSymptom => '其他症状';

  @override
  String get customSymptomPlaceholder => '请输入症状描述';

  @override
  String get sideEffects => '副作用';

  @override
  String get groomingType => '美容项目';

  @override
  String get shopName => '店铺名称';

  @override
  String get cost => '费用';

  @override
  String get nextAppointment => '下次预约';

  @override
  String get brushingArea => '刷牙部位';

  @override
  String get duration => '时长';

  @override
  String get walkTime => '散步时间';

  @override
  String get distance => '距离';

  @override
  String get title => '标题';

  @override
  String get priority => '优先级';

  @override
  String get stool => '便便';

  @override
  String get urine => '尿尿';

  @override
  String get vomiting => '呕吐';

  @override
  String get bleeding => '出血';

  @override
  String get dyspnea => '呼吸困难';

  @override
  String get seizure => '抽搐/癫痫';

  @override
  String get normal => '正常';

  @override
  String get loose => '软便';

  @override
  String get hard => '干硬';

  @override
  String get bloodInStool => '便血';

  @override
  String get cough => '咳嗽';

  @override
  String get lethargy => '精神不振';

  @override
  String get lossOfAppetite => '食欲不振';

  @override
  String get diarrhea => '腹泻';

  @override
  String get runnyNose => '流鼻涕';

  @override
  String get sneezing => '打喷嚏';

  @override
  String get trembling => '发抖';

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
  String get vetHospital => '宠物医院';

  @override
  String get homeScale => '家用体重秤';

  @override
  String get holdAndWeigh => '抱着称重';

  @override
  String get veryLittle => '非常少';

  @override
  String get little => '较少';

  @override
  String get much => '较多';

  @override
  String get veryMuch => '非常多';

  @override
  String get general => '普通';

  @override
  String get regularCheckup => '体检';

  @override
  String get emergency => '急诊';

  @override
  String get mild => '轻度';

  @override
  String get severe => '重度';

  @override
  String get bath => '洗澡';

  @override
  String get fullGrooming => '全身修剪';

  @override
  String get partialGrooming => '局部修剪';

  @override
  String get nails => '剪指甲';

  @override
  String get earCleaning => '清理耳朵';

  @override
  String get tartarRemoval => '去牙结石';

  @override
  String get analGlands => '挤肛门腺';

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
  String get selectMediaMethod => '选择添加方式';

  @override
  String get useCamera => '使用相机';

  @override
  String get takePhotoOrVideo => '拍摄照片或视频';

  @override
  String get chooseFromGallery => '从相册中选择';

  @override
  String get multiSelectHint => '可选择多张照片或视频';

  @override
  String get takePhoto => '拍照';

  @override
  String get takePhotoDesc => '使用相机拍摄照片';

  @override
  String get recordVideo => '录像';

  @override
  String get recordVideoDesc => '使用相机录制视频';

  @override
  String get deleteThisPhoto => '删除照片';

  @override
  String get deletePhotoConfirm => '确定要删除这张照片吗？';

  @override
  String get deleteThisVideo => '删除视频';

  @override
  String get deleteVideoConfirm => '确定要删除这段视频吗？';

  @override
  String get muted => '已静音';

  @override
  String get soundOn => '开启声音';

  @override
  String get allowPermissionInSettings => '请在设置中允许权限';

  @override
  String get openSettings => '打开设置';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get contactDeveloper => '联系开发者';

  @override
  String get contact => '联系我们';

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
  String get homeScreen => '首页';

  @override
  String get journalScreen => '记录页';

  @override
  String get alarmScreen => '提醒页';

  @override
  String get petManagement => '宠物管理';

  @override
  String get recordCategories => '记录分类';

  @override
  String get whatIsPetSumtan => '什么是 Pet Sumtan？';

  @override
  String get todayRecordSummary => '今日记录汇总';

  @override
  String get weeklyStats => '本周统计';

  @override
  String get weightChangeChart => '体重变化图表';

  @override
  String get findNearbyHospitals => '寻找附近医院';

  @override
  String get addNewRecord => '添加新记录 (＋)';

  @override
  String get viewRecordList => '查看记录';

  @override
  String get editDeleteRecord => '编辑和删除记录';

  @override
  String get attachMedia => '添加照片/视频';

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
  String get registerPet => '添加宠物';

  @override
  String get editProfile => '编辑资料';

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
  String get healthGuideSubtitle => '基于兽医建议的\n专业健康指南。';

  @override
  String get vaccination => '疫苗接种';

  @override
  String get coreVaccines => '核心疫苗';

  @override
  String get required => '必打';

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
  String get externalParasites => '体外寄生虫 (跳蚤/蜱虫)';

  @override
  String get internalParasites => '体内寄生虫';

  @override
  String get threeToSixMonths => '每3-6个月';

  @override
  String get nutritionManagement => '营养管理';

  @override
  String get dentalCare => '口腔护理';

  @override
  String get healthCheckup => '健康体检';

  @override
  String get emergencySigns => '紧急症状';

  @override
  String get age => '年龄';

  @override
  String ageAutoCalculated(String age) {
    return '自动计算 · $age';
  }

  @override
  String petAgeMonths(int months) {
    return '$months个月';
  }

  @override
  String petAgeYears(int years) {
    return '$years岁';
  }

  @override
  String petAgeYearsMonths(int years, int months) {
    return '$years岁 $months个月';
  }

  @override
  String get checkupCycle => '体检周期';

  @override
  String get mainItems => '主要项目';

  @override
  String get exerciseLevel => '运动量';

  @override
  String get breedExamples => '代表品种';

  @override
  String get low => '偏少';

  @override
  String get high => '偏多';

  @override
  String get menu => '菜单';

  @override
  String get helloGreeting => '你好！';

  @override
  String get healthyTodayMsg => '\n今天感觉健康吗？';

  @override
  String get noRecordsYet => '暂无记录';

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
  String get noWeightData => '暂无体重数据';

  @override
  String get measuredWeight => '测量的体重';

  @override
  String get noTodayRecords => '今天还没有记录哦';

  @override
  String get homeNoRecordHint => '记录状态、排泄和体重，\n一起守护宠物的健康吧。';

  @override
  String noRecordsForDate(String date) {
    return '$date 没有记录';
  }

  @override
  String recordsForDate(String date, String count) {
    return '$date 的记录 ($count条)';
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
  String get whatToRecord => '📝 您想记录什么？';

  @override
  String saveErrorMsg(String error) {
    return '保存时发生错误：$error';
  }

  @override
  String get alarmUpdated => '提醒已更新';

  @override
  String get alarmAdded => '提醒已添加';

  @override
  String get editAlarm => '编辑提醒';

  @override
  String get deleteAlarmConfirm => '确定要删除此提醒吗？';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name 将被删除，\n其计划中的推送通知也将被取消。';
  }

  @override
  String get doneMsg => '✅ 已完成';

  @override
  String get laterMsg => '🕐 稍后';

  @override
  String get saveCompletion => '✅ 保存完成状态';

  @override
  String completedQuestion(String type) {
    return '$type 完成了吗？';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return '我们会自动将 $name\n保存到今天的记录中。';
  }

  @override
  String completionSaved(String name) {
    return '$name 完成状态已保存';
  }

  @override
  String get tapAlarmTypeHint => '👆 请点击您需要的提醒类型';

  @override
  String countUnit(int count) {
    return '$count条';
  }

  @override
  String dateCompleted(String date) {
    return '$date · 已完成';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date 已过 · 点击重新安排';
  }

  @override
  String get completedLabel => '已完成';

  @override
  String get edit => '编辑';

  @override
  String recordDeleteCannotUndo(String category) {
    return '$category 记录将被删除，\n此操作无法恢复。';
  }

  @override
  String get hintMedicineNameAndDose => '💡 请输入药品名称和剂量';

  @override
  String get hintMedicineName => '💡 请输入药品名称';

  @override
  String get hintDose => '💡 请输入剂量';

  @override
  String get hintWeightNumber => '💡 请以数字形式输入体重';

  @override
  String get hintWeight => '💡 请输入体重';

  @override
  String get hintWeightIsNumber => '💡 体重必须是数字';

  @override
  String get hintWalkTime => '💡 请输入散步时间';

  @override
  String get hintWalkTimeIsNumber => '💡 散步时间必须是数字';

  @override
  String get hintWalkTimeNumber => '💡 请以数字形式输入散步时间';

  @override
  String get hintSelectBrushingArea => '💡 请至少选择一个刷牙部位';

  @override
  String get hintSelectVaccineType => '💡 请至少选择一种疫苗类型';

  @override
  String get hintSelectGroomingType => '💡 请至少选择一个美容项目';

  @override
  String get hintSelectSymptomType => '💡 请至少选择一种症状类型';

  @override
  String get hintTitle => '💡 请输入标题';

  @override
  String get hintVaccineName => '💡 请输入疫苗名称';

  @override
  String get hintSelectScheduledDate => '💡 请选择日期';

  @override
  String get hintSelectScheduledTime => '💡 请选择时间';

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
  String get hintSelectMealTime => '💡 请选择喂食时间';

  @override
  String get hintSelectAlarmTime => '💡 请选择提醒时间';

  @override
  String get noPetRegisterFirst => '还没有宠物哦。请先在“我的”中添加宠物。';

  @override
  String get alarmRescheduled => '提醒时间已重新安排';

  @override
  String get examplePetName => '例：可可';

  @override
  String get exampleBreed => '例：马尔济斯';

  @override
  String get exampleBreedMulti => '例：马尔济斯，波斯猫';

  @override
  String get example30 => '例：30';

  @override
  String get example80 => '例：80';

  @override
  String get example200 => '例：200';

  @override
  String get example25 => '例：2.5';

  @override
  String get example42 => '例：4.2';

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
  String get idInfo => '身份信息';

  @override
  String get idInfoOptional => '身份信息 (选填)';

  @override
  String get name => '名字';

  @override
  String get petKind => '种类';

  @override
  String get breed => '品种';

  @override
  String get weight => '体重';

  @override
  String get microchip => '芯片号码';

  @override
  String get registrationNumber => '登记号码';

  @override
  String get birthDate => '出生日期';

  @override
  String get gender => '性别';

  @override
  String get male => '弟弟';

  @override
  String get female => '妹妹';

  @override
  String get maleSym => '弟弟 ♂';

  @override
  String get femaleSym => '妹妹 ♀';

  @override
  String get neutered => '绝育状态';

  @override
  String get done => '已做';

  @override
  String get notDone => '未做';

  @override
  String get notEntered => '未填写';

  @override
  String get notRegistered => '未登记';

  @override
  String get dogEmoji => '狗狗 🐶';

  @override
  String get catEmoji => '猫咪 🐱';

  @override
  String get otherEmoji => '其他 🐾';

  @override
  String get noPetsRegistered => '暂无已登记的宠物';

  @override
  String get registerPetPrompt => '登记您的宠物，\n一起管理健康吧！';

  @override
  String get registerPetBtn => '登记宠物';

  @override
  String get editPet => '编辑宠物信息';

  @override
  String get neuteringStatus => '绝育状态';

  @override
  String get neuteredDone => '已绝育';

  @override
  String get notNeutered => '未绝育';

  @override
  String get selectDateHint => '请选择日期';

  @override
  String get saveChanges => '保存更改';

  @override
  String get registerBtn => '登记';

  @override
  String deletePetName(String name) {
    return '删除 $name';
  }

  @override
  String deletePetConfirm(String name) {
    return '确定要删除 $name 吗？';
  }

  @override
  String deletePetWarning(String name) {
    return '$name 的所有记录和提醒将被删除，且无法恢复。';
  }

  @override
  String petDeleted(String name) {
    return '$name 已被删除';
  }

  @override
  String petAdded(String name) {
    return '$name 已添加 🐾';
  }

  @override
  String get storeUnavailableMsg => '目前无法连接到商店。请稍后再试。';

  @override
  String get checkingPaymentMsg => '正在确认支付信息。请稍后再次点击。';

  @override
  String get paymentCompleteMsg => '支付完成。请输入新成员的信息。';

  @override
  String get addNewFamilyMember => '要添加新成员吗？';

  @override
  String get firstPetFreeDesc => '第一只宠物可免费登记。添加更多宠物需要为每只宠物支付一次性费用。';

  @override
  String petsRegisteredStoreUnavailable(int count) {
    return '目前已登记 $count 只宠物。\n请在商店可用时重试。';
  }

  @override
  String petsRegisteredPayToAdd(int count, String price) {
    return '目前已登记 $count 只宠物。\n支付 $price 后即可添加新成员。';
  }

  @override
  String get maybeLater => '以后再说';

  @override
  String get unavailable => '不可用';

  @override
  String payAndAdd(String price) {
    return '支付 $price 并添加';
  }

  @override
  String get addNextAppointment => '＋ 添加下次预约';

  @override
  String get pottyRecordSaved => '💩 排泄已记录';

  @override
  String get conditionRecordSaved => '💗 状态已记录';

  @override
  String get medicationRecordSaved => '💊 用药已记录';

  @override
  String get weightRecordSaved => '⚖️ 体重已记录';

  @override
  String get mealRecordSaved => '🍽️ 喂食已记录';

  @override
  String get waterRecordSaved => '💧 饮水已记录';

  @override
  String get vetVisitRecordSaved => '🏥 就诊已记录';

  @override
  String get vaccinationRecordSaved => '💉 疫苗已记录';

  @override
  String get groomingRecordSaved => '✂️ 美容已记录';

  @override
  String get brushingRecordSaved => '🪥 刷牙已记录';

  @override
  String get walkRecordSaved => '🦮 散步已记录';

  @override
  String get memoSaved => '📝 备注已记录';

  @override
  String get abnormalSymptomRecordSaved => '🚨 异常症状已记录';

  @override
  String get moreQuestions => '您还有其他问题吗？';

  @override
  String get contactViaSendFeedback => '请通过 设置 > 发送反馈 联系我们。\n我们会尽快回复您 🐾';

  @override
  String get contactViaSendFeedbackLong => '请通过设置中的 [发送反馈] 按钮联系我们，\n我们会尽快给您答复。';

  @override
  String get privacyPolicyEffectiveDate =>
      '本隐私政策自2026年1月1日起生效。\n最后更新：2026年5月8日';

  @override
  String get privacyCollectedInfo => '收集的信息仅用于以下目的。';

  @override
  String get privacyDataFeatures => 'Pet Sumtan 提供数据导出（备份）和导入（恢复）功能。';

  @override
  String get privacyPolicyMayUpdate => '本隐私政策可能会因法律或服务变更而更新。';

  @override
  String get privacyPolicyContact => '如有关于隐私政策的疑问，请通过以下方式联系我们。';

  @override
  String get catMeal => '喂食';

  @override
  String get catWater => '饮水';

  @override
  String get catGrooming => '美容';

  @override
  String get catBrushing => '刷牙';

  @override
  String get catWalk => '散步';

  @override
  String get catHospital => '医院';

  @override
  String get catAbnormalSymptom => '异常';

  @override
  String get catCondition => '状态';

  @override
  String get catPotty => '排泄';

  @override
  String get mealFormTitle => '🍽️ 喂食记录';

  @override
  String get walkFormTitle => '🦮 散步记录';

  @override
  String get weightFormTitle => '⚖️ 体重记录';

  @override
  String get waterFormTitle => '💧 饮水记录';

  @override
  String get medicationFormTitle => '💊 用药记录';

  @override
  String get groomingFormTitle => '✂️ 美容记录';

  @override
  String get brushingFormTitle => '🪥 刷牙记录';

  @override
  String get conditionFormTitle => '🌡️ 状态记录';

  @override
  String get poopFormTitle => '💩 排泄记录';

  @override
  String get vaccinationFormTitle => '💉 疫苗记录';

  @override
  String get hospitalFormTitle => '🏥 就诊记录';

  @override
  String get abnormalSymptomFormTitle => '🚨 异常记录';

  @override
  String get memoFormTitle => '📝 备注';

  @override
  String get measureMethod => '测量方式';

  @override
  String get feedAmount => '喂食量';

  @override
  String get mlInputLabel => '手动输入 mL';

  @override
  String get alarmRescheduleNote => '此提醒的日期已过。\n您可以选择新日期或将其删除。';

  @override
  String get nailTrim => '剪指甲';

  @override
  String get shopNameExample => '例：毛毛宠物店';

  @override
  String get poopRecordSaved => '💩 排泄已记录';

  @override
  String get memoRecordSaved => '📝 备注已记录';

  @override
  String get other => '其他';

  @override
  String get whole => '全身';

  @override
  String get paw => '爪子';

  @override
  String get importance => '重要程度';

  @override
  String get timeTaken => '耗时';

  @override
  String get example10 => '例：10';

  @override
  String get minuteUnit => '分钟';

  @override
  String get hospitalNameExample => '例：快乐动物医院';

  @override
  String get diagnosisExample => '例：肠炎、皮炎';

  @override
  String get memoTitlePlaceholder => '输入备注标题';

  @override
  String get hintMemoTitle => '💡 请输入标题';

  @override
  String get poopType => '类型';

  @override
  String get poopStatus => '状态';

  @override
  String get feces => '便便';

  @override
  String get bloody => '便血';

  @override
  String get vaccineDhppl => '多联疫苗 (DHPPL)';

  @override
  String get vaccineCorona => '冠状病毒';

  @override
  String get vaccineKennelCough => '犬窝咳';

  @override
  String get vaccineRabies => '狂犬病';

  @override
  String get vaccineInfluenza => '流感';

  @override
  String get vaccineFvrcp => '猫三联 (FVRCP)';

  @override
  String get vaccineFelv => '白血病 (FeLV)';

  @override
  String get vaccineChlamydia => '衣原体';

  @override
  String get mute => '静音';

  @override
  String get photoVideo => '照片 · 视频';

  @override
  String photoVideoCount(int count) {
    return '照片 · 视频 · $count';
  }

  @override
  String get selectMediaSource => '选择媒体来源';

  @override
  String get cameraCapture => '使用相机拍摄';

  @override
  String get cameraCaptureSubtitle => '拍摄照片或视频';

  @override
  String get selectFromGallery => '从相册中选择';

  @override
  String get selectFromGallerySubtitle => '支持多选';

  @override
  String get takePhotoSubtitle => '使用相机拍摄照片';

  @override
  String get recordVideoSubtitle => '使用相机录制视频';

  @override
  String get permissionRequired => '请在设置中允许权限';

  @override
  String get confirmDeletePhoto => '确定要删除这张照片吗？';

  @override
  String get confirmDeleteVideo => '确定要删除这段视频吗？';

  @override
  String get hintMedicineAndDose => '💡 请输入药品名称和剂量';

  @override
  String deleteRecordBody(String category) {
    return '$category 记录将被删除，\n此操作无法恢复。';
  }

  @override
  String dayCountShort(int days) {
    return '$days天';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan 是一款可以集中记录和管理宠物健康与日常生活的App。\n您可以轻松记录喂食、饮水、排泄、体重、用药、就诊等情况，并设置提醒以免忘记重要事项。';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      '一目了然地查看今天添加的所有记录。点击记录可以查看详情或进行编辑。';

  @override
  String get helpHomeWeeklyStatsDesc => '通过图表查看本周的排泄次数、喂食量和饮水量，了解宠物的生活规律。';

  @override
  String get helpHomeWeightChangeChartDesc => '以图表形式展示最近的体重记录，轻松追踪体重变化。';

  @override
  String get helpHomeFindNearbyHospitalsDesc => '点击按钮即可在地图上搜索附近的宠物医院。';

  @override
  String get helpHomeAddNewRecordDesc => '点击底部的“＋”按钮，选择类别并添加新记录。';

  @override
  String get helpRecordCategoriesIntro => '您可以通过12个类别记录宠物的日常生活。';

  @override
  String get helpCategoryPottyName => '排泄';

  @override
  String get helpCategoryPottyDesc => '记录排泄的状态和类型，还可以添加照片。';

  @override
  String get helpCategoryConditionName => '状态';

  @override
  String get helpCategoryConditionDesc => '记录宠物的整体健康状态。';

  @override
  String get helpCategoryMedicationName => '用药';

  @override
  String get helpCategoryMedicationDesc => '记录药品名称、剂量和时间。';

  @override
  String get helpCategoryWeightName => '体重';

  @override
  String get helpCategoryWeightDesc => '记录体重 (kg)。您可以在首页查看趋势图。';

  @override
  String get helpCategoryMealName => '喂食';

  @override
  String get helpCategoryMealDesc => '记录喂食量和种类，可添加照片/视频。';

  @override
  String get helpCategoryWaterName => '饮水';

  @override
  String get helpCategoryWaterDesc => '记录饮水量 (ml)，可添加照片/视频。';

  @override
  String get helpCategoryHospitalName => '医院';

  @override
  String get helpCategoryHospitalDesc => '记录医院名称和诊断结果，可添加照片/视频。';

  @override
  String get helpCategoryVaccinationName => '疫苗';

  @override
  String get helpCategoryVaccinationDesc => '记录疫苗种类和接种日期。';

  @override
  String get helpCategoryGroomingName => '美容';

  @override
  String get helpCategoryGroomingDesc => '记录美容详情，可添加照片/视频。';

  @override
  String get helpCategoryDentalName => '刷牙';

  @override
  String get helpCategoryDentalDesc => '记录刷牙情况和备注。';

  @override
  String get helpCategoryWalkName => '散步';

  @override
  String get helpCategoryWalkDesc => '记录散步的距离和时间。';

  @override
  String get helpCategoryMemoName => '备注';

  @override
  String get helpCategoryMemoDesc => '可以自由记录任何内容。';

  @override
  String get helpJournalViewRecordListDesc => '按日期显示所有记录。通过类别图标可以轻松区分。';

  @override
  String get helpJournalEditDeleteRecordDesc => '点击记录会打开编辑面板。您可以修改内容或删除记录。';

  @override
  String get helpJournalAttachMediaDesc => '在喂食、饮水、医院、美容、排泄等类别中可以添加照片或视频。';

  @override
  String get helpAlarmAddDesc => '设置疫苗、用药、医院、美容等提醒。先选择类型，然后设定日期和时间。';

  @override
  String get helpAlarmRepeatDesc => '可以设置每天、每周、每月等重复规则。非常适合定期用药或心丝虫预防。';

  @override
  String get helpAlarmAdvanceDesc => '对于疫苗等重要事项，您可以提前7天、3天、1天收到提醒。';

  @override
  String get helpAlarmCompleteDesc => '点击提醒将其标记为已完成。已完成的提醒将移至“历史提醒”列表。';

  @override
  String get helpAlarmDeleteDesc => '向左滑动提醒即可将其删除。';

  @override
  String get helpPetRegisterDesc => '输入名字、种类 (狗/猫)、品种、性别、出生日期和绝育状态来登记宠物。';

  @override
  String get helpPetEditProfileDesc => '在“我的”页面中，您可以编辑名字、品种、体重、芯片号码、登记号码和头像。';

  @override
  String get helpPetManageMultipleDesc => '您可以登记多只宠物。点击顶部的宠物标签即可切换。';

  @override
  String get helpDogHealthGuideDesc =>
      '提供基于兽医建议的健康信息：核心/非核心疫苗时间表、寄生虫预防、口腔护理、营养等。';

  @override
  String get helpCatHealthGuideDesc => '查看猫咪专属的疫苗时间表、寄生虫预防、口腔护理和营养信息。';

  @override
  String get helpSettingsNotificationDesc => '开启或关闭应用的所有通知。';

  @override
  String get helpSettingsExportDesc => '将所有记录的数据导出为ZIP文件。可作为更换设备时的备份。';

  @override
  String get helpSettingsImportDesc => '导入之前保存的ZIP备份文件以恢复数据。';

  @override
  String get helpSettingsFeedbackDesc => '如果您有任何问题或建议，请通过邮件告诉我们。这将帮助我们改进应用。';

  @override
  String get helpFaqDeletePetQ => '删除宠物后，所有记录也会被删除吗？';

  @override
  String get helpFaqDeletePetA => '是的，删除宠物后，其所有记录和提醒也会被删除。建议您在删除前先导出并备份数据。';

  @override
  String get helpFaqMultipleMediaQ => '一条记录可以添加多张照片吗？';

  @override
  String get helpFaqMultipleMediaA => '可以，您可以添加多张照片或视频。您可以从相册中选择，也可以直接使用相机拍摄。';

  @override
  String get helpFaqNoNotificationQ => '我收不到提醒。';

  @override
  String get helpFaqNoNotificationA =>
      '请在设备的设置中检查是否允许 Pet Sumtan 应用发送通知。另外，请确认应用内的“设置 > 通知设置”已开启。';

  @override
  String get helpFaqMoveDataQ => '我可以将数据转移到新设备吗？';

  @override
  String get helpFaqMoveDataA =>
      '请在旧设备上通过“设置 > 导出数据”保存备份文件，然后在您的新设备上通过“设置 > 导入数据”进行恢复。';

  @override
  String get helpFaqMultiplePetsQ => '我可以登记多只宠物吗？';

  @override
  String get helpFaqMultiplePetsA => '第一只宠物可免费登记。您可以通过使用高级功能来添加更多宠物。';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan 是一款无需注册即可使用的应用，所有数据仅保存在您的设备上。我们不会将您的个人信息发送到外部服务器，确保您宠物的珍贵信息安全。';

  @override
  String get privacySection1Title => '收集的个人信息';

  @override
  String get privacySection1Body =>
      'Pet Sumtan 无需注册即可使用，且不收集任何可识别个人身份的信息。但是，为了提供应用功能，以下信息可能会保存在您的设备上。';

  @override
  String get privacyLocalStorageInfo => '保存在设备本地的信息';

  @override
  String get privacyPetInfo => '宠物信息：名字、种类、品种、出生日期、性别、体重、绝育状态、芯片号码、登记号码';

  @override
  String get privacyHealthRecords =>
      '健康记录：您直接输入的排泄、喂食、饮水、体重、用药、疫苗、医院、美容、刷牙、散步、状态、备注等';

  @override
  String get privacyAttachedMedia => '附加媒体：您直接拍摄或选择的照片和视频';

  @override
  String get privacyNotificationSettings => '提醒设置：提醒类型、计划时间、重复规则';

  @override
  String get privacyInAppPurchaseTitle => '关于应用内购买';

  @override
  String get privacyPaymentProcessing =>
      '支付处理通过 Apple App Store 或 Google Play Store 进行，应用不会直接收集或保存您的支付信息。';

  @override
  String get privacyReceiptVerification => '根据各平台的政策，仅处理验证购买收据所需的最少信息。';

  @override
  String get privacySection2Title => '收集和使用的目的';

  @override
  String get privacyPurposeRecords => '保存和查看宠物的健康记录';

  @override
  String get privacyPurposeStats => '在首页提供统计数据（本周的排泄、喂食、饮水情况，体重变化图表等）';

  @override
  String get privacyPurposeReminders => '发送疫苗、用药、医院等健康相关的提醒';

  @override
  String get privacyPurposeBackupRestore => '提供数据备份和恢复功能';

  @override
  String get privacyPurposePaidEligibility => '验证付费功能的使用资格';

  @override
  String get privacySection3Title => '信息的保留和销毁';

  @override
  String get privacyRetentionBody =>
      'Pet Sumtan 的所有数据仅保存在您设备内的本地数据库 (SQLite) 中，不会发送到外部服务器。';

  @override
  String get privacyDataDeletionMethod => '数据销毁方法';

  @override
  String get privacyDeleteInApp => '您可以通过应用的“设置 > 数据管理”直接删除宠物信息和记录。';

  @override
  String get privacyDeleteUninstall => '删除应用时，保存在设备上的所有数据也会被删除。';

  @override
  String get privacyDeleteBackupWarning => '请注意，如果在删除应用前未进行备份（导出），数据将无法恢复。';

  @override
  String get privacySection4Title => '向第三方提供信息';

  @override
  String get privacyThirdPartyBody => 'Pet Sumtan 不会向外部第三方提供您的个人信息。但以下情况除外：';

  @override
  String get privacyThirdPartyUserExport => '您自行使用数据导出（分享备份文件）功能时';

  @override
  String get privacyThirdPartyLegalRequest => '法律要求或执法机构提出合法请求时';

  @override
  String get privacySection5Title => '访问权限说明';

  @override
  String get privacyPermissionsBody =>
      '为了提供应用功能，我们可能会请求以下权限。即使您不授予权限，其他功能仍可正常使用。';

  @override
  String get privacyPermissionCameraName => '相机';

  @override
  String get privacyPermissionCameraDesc => '用于直接拍摄要附加到健康记录中的照片或视频。';

  @override
  String get privacyPermissionMediaName => '照片和媒体访问';

  @override
  String get privacyPermissionMediaDesc => '用于从相册中选择要附加到记录中的照片或视频。';

  @override
  String get privacyPermissionNotificationName => '通知';

  @override
  String get privacyPermissionNotificationDesc => '用于发送疫苗、用药、医院等健康相关的提醒。';

  @override
  String get privacyPermissionFileName => '文件访问 (Android)';

  @override
  String get privacyPermissionFileDesc => '用于保存或读取数据备份文件。';

  @override
  String get privacySection6Title => '数据备份与恢复';

  @override
  String get privacyBackupExport => '导出：您可以将应用内的所有数据保存或分享为文件 (.zip)。';

  @override
  String get privacyBackupImport => '导入：您可以读取之前导出的备份文件以恢复数据。';

  @override
  String get privacyBackupWarning => '备份文件由您自行管理，请注意不要将文件分享给他人。';

  @override
  String get privacySection7Title => '儿童隐私保护';

  @override
  String get privacyChildrenBody =>
      'Pet Sumtan 不会单独收集14岁以下儿童的个人信息。所有应用数据仅保存在设备上，不会发送到外部服务器，因此儿童也可以安全使用。';

  @override
  String get privacySection8Title => '隐私政策的变更';

  @override
  String get privacyPolicyChangeNotice => '如有变更，我们将通过应用的更新说明或应用内通知告知您。';

  @override
  String get privacyPolicyChangeEffective => '变更后的政策将在通知发布7天后生效。';

  @override
  String get privacySection9Title => '联系我们';

  @override
  String get hgDogHeroTitle => '狗狗健康指南';

  @override
  String get hgCatHeroTitle => '猫咪健康指南';

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
      '**多联疫苗 (DHPPL)** — 犬瘟热、传染性肝炎、细小病毒、副流感、钩端螺旋体。\n出生6~8周首针，之后每3~4周接种一次，共3次，此后每年加强一针。';

  @override
  String get hgDogCoreRabies => '**狂犬病** — 出生3个月后首针，之后每年接种一次（许多地区法律强制要求）。';

  @override
  String get hgDogCoreCorona => '**冠状病毒** — 出生6~8周开始，每3~4周接种一次，共2次，此后每年加强一针。';

  @override
  String get hgDogNonCoreKennel => '**犬窝咳** — 推荐多犬家庭、经常去美容院或寄养的狗狗接种。滴鼻或注射。';

  @override
  String get hgDogNonCoreFlu => '**流感** — 推荐户外活动多或经常接触其他狗狗的狗狗接种。';

  @override
  String get hgDogHeartworm1 => '建议在蚊子活跃期（约3月~11月）**每月1次**使用预防药。';

  @override
  String get hgDogHeartworm2 => '一旦感染治疗困难且致命 — **预防是最好的方法**。';

  @override
  String get hgDogHeartworm3 => '用药前必须检查是否已感染，确认阴性后方可使用。';

  @override
  String get hgDogHeartworm4 => '全年用药更安全（兽医推荐）。';

  @override
  String get hgDogExternalParasites1 => '滴剂或口服预防药，**每月**使用一次。';

  @override
  String get hgDogExternalParasites2 => '散步后请务必检查耳朵内、脚趾间和腋下是否有蜱虫。';

  @override
  String get hgDogExternalParasites3 => '拔除蜱虫时，请用镊子垂直缓慢拔出（不要旋转）。';

  @override
  String get hgDogInternalParasites1 => '蛔虫、钩虫、鞭虫：**每3~6个月**使用一次驱虫药。';

  @override
  String get hgDogInternalParasites2 => '幼犬期（出生2周起）：每2周驱虫一次，共4次，之后定期管理。';

  @override
  String get hgDental1 => '每天刷牙最理想 — 建议**至少每周3次**。';

  @override
  String get hgDental2 => '必须使用**宠物专用牙膏**（绝对禁止使用含木糖醇的人类牙膏）。';

  @override
  String get hgDental3 => '牙结石严重时需要到宠物医院洗牙（需全身麻醉）。';

  @override
  String get hgDental4 => '洁齿骨和漏食玩具可作为辅助护理。';

  @override
  String get hgDogForbiddenFoodAlert => '以下食物对狗狗有毒。即使少量也可能致命，绝对不能喂食。';

  @override
  String get hgDogForbiddenGrape => '**葡萄/葡萄干** — 引起肾衰竭，少量也致命。';

  @override
  String get hgDogForbiddenChocolate => '**巧克力/可可** — 可可碱中毒，心力衰竭，抽搐。';

  @override
  String get hgDogForbiddenOnion => '**洋葱/葱/大蒜** — 破坏红细胞，引起溶血性贫血。';

  @override
  String get hgDogForbiddenXylitol => '**木糖醇** — 胰岛素分泌过多，低血糖，肝衰竭。';

  @override
  String get hgDogForbiddenMacadamia => '**夏威夷果** — 肌肉无力，高热，呕吐。';

  @override
  String get hgDogForbiddenDoughAlcohol => '**生面团/酒精** — 乙醇中毒，低血糖。';

  @override
  String get hgDogForbiddenAvocado => '**牛油果** — 含有“潘生丁”，引起呕吐和腹泻。';

  @override
  String get hgEmergencyAlert => '如果出现以下症状，请立即前往宠物医院就诊。';

  @override
  String get hgDogEmergency1 => '超过24小时完全没有食欲。';

  @override
  String get hgDogEmergency2 => '一天内反复呕吐或腹泻3次以上。';

  @override
  String get hgDogEmergency3 => '腹部膨胀 / 想吐却吐不出来（疑似胃扩张/扭转）。';

  @override
  String get hgDogEmergency4 => '呼吸困难，牙龈发白，发绀。';

  @override
  String get hgDogEmergency5 => '抽搐，癫痫发作，失去意识。';

  @override
  String get hgDogEmergency6 => '超过12小时没有排尿。';

  @override
  String get hgDogEmergency7 => '可见外伤，骨折，大量出血。';

  @override
  String get hgDogExerciseAlert => '狗狗运动不足不仅是身体问题，更是压力、焦虑和破坏性行为的主要原因。';

  @override
  String get hgDogWalk1 => '小型犬：建议每天**20~30分钟**以上，中/大型犬：**1小时**以上。';

  @override
  String get hgDogWalk2 => '散步不仅是为了排泄，更是为了**嗅觉刺激、社会化和缓解压力**。';

  @override
  String get hgDogWalk3 => '让狗狗充分闻气味 — 这对缓解精神疲劳非常有效。';

  @override
  String get hgDogWalk4 => '夏天注意柏油路面烫伤 — 建议早上7点前或傍晚散步。';

  @override
  String get hgDogPlay1 => '**寻回 / 拔河游戏** — 消耗体力，增进与主人的感情。';

  @override
  String get hgDogPlay2 => '**嗅闻游戏** — 刺激大脑，15分钟相当于散步30分钟的效果。';

  @override
  String get hgDogPlay3 => '**益智玩具/漏食球** — 有效缓解独处时的分离焦虑。';

  @override
  String get hgDogPlay4 => '每天只需**10~15分钟**的专注玩耍，就能大幅降低压力水平。';

  @override
  String get hgDogStress1 => '破坏家具或物品，过度吠叫 — 运动或刺激不足的信号。';

  @override
  String get hgDogStress2 => '追尾巴，过度舔舐（脚或身体） — 强迫行为，试图缓解压力的表现。';

  @override
  String get hgDogStress3 => '主人离开时过度不安，随地大小便 — 疑似分离焦虑。';

  @override
  String get hgDogStress4 => '如果症状持续，建议咨询兽医或宠物行为专家。';

  @override
  String get hgDogSocial1 => '出生**3~14周**是社会化黄金期 — 接触各种人、声音和环境非常重要。';

  @override
  String get hgDogSocial2 => '与其他狗狗交流 — 充分利用狗狗公园或幼犬班。';

  @override
  String get hgDogSocial3 => '体验新地点、气味和声音有助于精神丰富。';

  @override
  String get hgDogSocial4 => '正向强化训练（响片、零食）可以同时刺激大脑和增强感情。';

  @override
  String get hgCatCoreFvrcp =>
      '**猫三联 (FVRCP)** — 疱疹病毒、杯状病毒、细小病毒（猫瘟）。\n出生6~8周首针，之后每3~4周接种一次，共3次，此后每1~3年加强。';

  @override
  String get hgCatCoreRabies => '**狂犬病** — 外出猫咪必打，室内猫咪也推荐（许多地区法律强制要求）。';

  @override
  String get hgCatNonCoreFelv => '**猫白血病 (FeLV)** — 强烈推荐外出猫咪或多猫家庭接种。';

  @override
  String get hgCatNonCoreChlamydia => '**猫衣原体** — 多猫家庭，预防结膜炎。';

  @override
  String get hgCatNonCoreFiv => '**猫艾滋病 (FIV)** — 外出的公猫（通过咬伤感染）。';

  @override
  String get hgCatExternalParasites1 => '外出猫咪：**每月1次**使用跳蚤/蜱虫预防药。';

  @override
  String get hgCatExternalParasites2 =>
      '即使是室内猫咪，也可能通过人的衣服或鞋子感染跳蚤 → 建议**每3个月**预防一次。';

  @override
  String get hgCatExternalParasites3 => '使用滴剂产品时，请准确滴在脖子后面。';

  @override
  String get hgCatInternalHeartworm => '体内寄生虫和心丝虫';

  @override
  String get hgCatInternalParasites1 => '蛔虫/绦虫：**每3~6个月**使用一次驱虫药。';

  @override
  String get hgCatInternalParasites2 => '如果喂食生肉或生鱼，建议更频繁地检查。';

  @override
  String get hgCatHeartworm1 => '心丝虫 — **猫咪没有治疗方法，预防是唯一途径**。强烈建议外出猫咪每月用药。';

  @override
  String get hgCatMajorDiseases => '需要注意的猫咪主要疾病';

  @override
  String get hgCatDiseaseAlert => '猫咪擅长隐藏疼痛，出现症状时通常疾病已经发展。定期体检尤为重要。';

  @override
  String get hgCatDiseaseFlutd => '**猫下泌尿道疾病 (FLUTD)** — 公猫多发。如果无法排尿，需要立即急诊。';

  @override
  String get hgCatDiseaseCkd =>
      '**慢性肾病 (CKD)** — 老年猫的第一大死因。7岁以上的猫咪必须定期进行肾脏血液检查。';

  @override
  String get hgCatDiseaseDiabetes => '**猫糖尿病** — 肥胖猫咪或老年猫风险增加。请注意饮水量和排尿量是否增加。';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**甲状腺功能亢进** — 常见于10岁以上的猫咪。症状包括体重减轻、食欲大增、烦躁不安等。';

  @override
  String get hgCatDiseaseStomatitis => '**口炎** — 猫咪非常常见的疾病。请检查是否有口臭、流口水、食欲不振。';

  @override
  String get hgCatDiseaseFhv =>
      '**猫疱疹 (FHV-1)** — 一旦感染终生潜伏。压力大时会复发，引起打喷嚏、眼屎、结膜炎。';

  @override
  String get hgHydrationDiet => '水分补充和饮食管理';

  @override
  String get hgCatHydrationAlert => '猫咪天生不爱喝水，因此容易患泌尿系统疾病。鼓励多喝水非常重要。';

  @override
  String get hgCatHydration1 => '建议搭配湿粮（罐头或餐包）来补充水分。';

  @override
  String get hgCatHydration2 => '喜欢流动的水 — 放置**流动饮水机**很有效。';

  @override
  String get hgCatHydration3 => '水碗要远离饭碗，猫咪喜欢宽而浅的碗。';

  @override
  String get hgCatHydration4 => '目标饮水量：每天每公斤体重约**40~60ml**。';

  @override
  String get hgCatForbiddenFoodAlert => '以下食物对猫咪有毒。即使少量也可能致命，绝对不能喂食。';

  @override
  String get hgCatForbiddenOnion => '**洋葱/葱/大蒜** — 破坏红细胞，引起溶血性贫血（比狗狗更敏感）。';

  @override
  String get hgCatForbiddenGrape => '**葡萄/葡萄干** — 引起肾衰竭。';

  @override
  String get hgCatForbiddenChocolate => '**巧克力/咖啡因** — 对心脏和神经系统有毒性。';

  @override
  String get hgCatForbiddenRawFish => '**生鱼（长期喂食）** — 导致硫胺素（维生素B1）缺乏症。';

  @override
  String get hgCatForbiddenMilk => '**牛奶/乳制品** — 成年猫有乳糖不耐症，会引起腹泻。';

  @override
  String get hgCatForbiddenXylitolAlcohol => '**木糖醇/酒精** — 对肝脏和神经系统有毒性。';

  @override
  String get hgCatForbiddenAvocado => '**牛油果** — 含有“潘生丁”，引起呕吐和腹泻。';

  @override
  String get hgCatForbiddenRawEggWhite => '**生蛋白** — 抗生物素蛋白会阻碍生物素吸收，引起皮肤和毛发问题。';

  @override
  String get hgCatEmergency1 => '**完全无法排尿或出现血尿** — 尿道阻塞的紧急情况（特别是公猫）。';

  @override
  String get hgCatEmergency2 => '超过24小时完全没有食欲（脂肪肝风险）。';

  @override
  String get hgCatEmergency3 => '**张嘴呼吸** — 对猫咪来说绝对不正常，需要立即急诊。';

  @override
  String get hgCatEmergency4 => '后腿突然瘫痪或发凉（疑似血栓）。';

  @override
  String get hgCatEmergency5 => '抽搐，癫痫发作，失去意识。';

  @override
  String get hgCatEmergency6 => '牙龈或舌头苍白，或发黄（黄疸）。';

  @override
  String get hgCatEmergency7 => '一天内反复呕吐或腹泻3次以上，或有便血/吐血。';

  @override
  String get hgCatEmergency8 => '可见外伤，骨折，大量出血。';

  @override
  String get hgEnvironmentMentalHealth => '环境与心理健康';

  @override
  String get hgIndoorEnvironment => '室内环境管理';

  @override
  String get hgStressManagement => '压力管理';

  @override
  String get hgCatEnvironment1 => '**猫砂盆**: 数量至少为猫咪数量+1，并每天保持清洁。';

  @override
  String get hgCatEnvironment2 => '**猫抓板**: 至少2个以上（结合垂直和水平型）。';

  @override
  String get hgCatEnvironment3 => '**高处空间**: 提供猫爬架或架子等垂直空间（满足领地本能）。';

  @override
  String get hgCatEnvironment4 => '**躲藏空间**: 提供纸箱或隧道等可以安全躲藏的空间。';

  @override
  String get hgCatStress1 => '猫咪的压力会直接导致免疫力下降、FLUTD、疱疹复发等。';

  @override
  String get hgCatStress2 => '环境发生剧变时（搬家、增加新成员等），请使用费洛蒙扩散器（如费利威）。';

  @override
  String get hgCatStress3 => '每天至少保证**10~15分钟**用逗猫棒互动玩耍的时间。';

  @override
  String get hgCatStress4 => '多猫家庭：根据猫咪数量分开提供资源（饭碗、猫砂盆、窝）。';

  @override
  String get hgAge => '年龄';

  @override
  String get hgCheckupCycle => '体检周期';

  @override
  String get hgMainItems => '主要项目';

  @override
  String get hgAge1to6 => '1~6岁';

  @override
  String get hgAge7to10 => '7~10岁';

  @override
  String get hgAge11Plus => '11岁以上';

  @override
  String get hgYearlyOnce => '每年1次';

  @override
  String get hgYearlyTwice => '每年2次';

  @override
  String get hgEvery3to4Months => '每3~4个月';

  @override
  String get hgDogCheckupItems1 => '血液检查、心脏听诊、体重、牙齿';

  @override
  String get hgDogCheckupItems2 => '血液、尿液、X光、血压、关节';

  @override
  String get hgDogCheckupItems3 => '全面血液检查、超声波、肾脏/肝脏功能';

  @override
  String get hgCatCheckupItems1 => '血液检查、尿液检查、体重、牙齿';

  @override
  String get hgCatCheckupItems2 => '肾脏/肝脏指标、血压、甲状腺 (T4)';

  @override
  String get hgCatCheckupItems3 => '全面血液检查、腹部超声波、肾脏重点监测';

  @override
  String get hgExerciseAmount => '运动量';

  @override
  String get hgBreedExamples => '代表品种';

  @override
  String get hgLow => '偏少';

  @override
  String get hgNormal => '普通';

  @override
  String get hgHigh => '偏多';

  @override
  String get hgBreedLowExamples => '斗牛犬、巴吉度猎犬、西施犬、马尔济斯';

  @override
  String get hgBreedNormalExamples => '贵宾犬、比熊犬、可卡犬、比格犬';

  @override
  String get hgBreedHighExamples => '拉布拉多、金毛寻回犬、哈士奇、边境牧羊犬';

  @override
  String get hgDisclaimer =>
      '本指南仅提供一般性的健康护理信息，所需的护理可能因宠物的具体状况而异。如有异常症状或需要治疗，请务必咨询兽医。';

  @override
  String get categoryFilter => '类别筛选';

  @override
  String get selectAll => '全选';

  @override
  String get deselectAll => '取消全选';

  @override
  String get apply => '应用';

  @override
  String get saving => '保存中...';

  @override
  String get treatmentContent => '治疗内容';

  @override
  String get conditionScoreWord1 => '非常差';

  @override
  String get conditionScoreWord2 => '较差';

  @override
  String get conditionScoreWord3 => '一般';

  @override
  String get conditionScoreWord4 => '良好';

  @override
  String get conditionScoreWord5 => '非常好';

  @override
  String conditionScoreFormat(Object score, Object word) {
    return '状态评分 $score分 - $word';
  }
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appName => 'Pet Sumtan';

  @override
  String get appTagline => '宠物健康管理App';

  @override
  String get navHome => '首页';

  @override
  String get navJournal => '记录';

  @override
  String get navNotifications => '提醒';

  @override
  String get navProfile => '我的';

  @override
  String get navSettings => '设置';

  @override
  String get navAddAlarm => '添加提醒';

  @override
  String get drawerService => '服务';

  @override
  String get drawerNearbyHospitals => '附近医院';

  @override
  String get drawerNearbyHospitalsSub => '您周边的宠物医院';

  @override
  String get drawerHealthGuide => '健康指南';

  @override
  String get drawerHealthGuideSub => '宠物健康手册';

  @override
  String get drawerApp => '应用';

  @override
  String get drawerHelp => '帮助';

  @override
  String get dialogExternalTitle => '打开外部网页';

  @override
  String get dialogExternalHospitalBody => '寻找附近医院需要打开外部网页。\n\n现在打开吗？';

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
  String get toastBackToExit => '再按一次退出';

  @override
  String get toastNeedPet => '还没有宠物哦。请先在“我的”中添加宠物。';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsPushNotifications => '允许推送通知';

  @override
  String get settingsPushNotificationsSub => '设备通知权限';

  @override
  String get settingsLanguageSection => '语言';

  @override
  String get settingsLanguage => '应用语言';

  @override
  String get settingsLanguageSystem => '跟随系统';

  @override
  String get settingsLanguageChanged => '应用语言已更改';

  @override
  String get settingsData => '数据管理';

  @override
  String get settingsExport => '导出数据';

  @override
  String get settingsExportSub => '保存为ZIP文件';

  @override
  String get settingsImport => '导入数据';

  @override
  String get settingsImportSub => '从ZIP文件恢复';

  @override
  String get settingsAppInfo => '应用信息';

  @override
  String get settingsVersion => '应用版本';

  @override
  String get settingsPrivacy => '隐私政策';

  @override
  String get settingsFeedback => '发送反馈';

  @override
  String get settingsFeedbackSubject => 'Pet Sumtan 反馈';

  @override
  String get settingsEmailAppMissing => '未找到邮件应用';

  @override
  String get settingsImportConfirmBody => '现有数据将被全部删除，并替换为备份文件中的内容。\n\n是否继续？';

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
  String get settingsExportBenefitTitle => '安全保存您的珍贵记录';

  @override
  String get settingsExportBenefitPets => '所有宠物的档案和照片';

  @override
  String get settingsExportBenefitRecords => '所有健康记录、日记和体重数据';

  @override
  String get settingsExportBenefitMedia => '包含附加的图片和视频';

  @override
  String get settingsStoreUnavailable => '目前无法连接到商店。\n请稍后再试。';

  @override
  String settingsPayAndExport(String price) {
    return '支付 $price 并导出';
  }

  @override
  String get settingsUnlocked => '已解锁';

  @override
  String get settingsExportUnlockedBody =>
      '将所有宠物信息和记录保存为ZIP文件。\n您可以随时免费导入并恢复保存的文件。';

  @override
  String get settingsExporting => '正在导出...';

  @override
  String get settingsExportZip => '导出为ZIP';

  @override
  String get settingsExportConfirmBody => '将所有宠物信息、记录和附加媒体导出为ZIP文件。';

  @override
  String get settingsExportAction => '导出';

  @override
  String get settingsExportSuccess => '备份文件已准备好分享';

  @override
  String get settingsExportFailed => '导出失败';

  @override
  String get settingsPurchaseFailed => '支付失败';

  @override
  String get settingsPurchaseProductLoadFailed => '无法加载商品信息，请稍后再试。';

  @override
  String get settingsPurchaseStartFailed => '无法发起支付，请稍后再试。';

  @override
  String get errorDbInit => '准备应用数据时出现问题。\n请稍后再试。';

  @override
  String get help => '帮助';

  @override
  String get healthGuide => '健康指南';

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
  String get deleteAction => '确认删除';

  @override
  String get save => '保存';

  @override
  String get memo => '备注';

  @override
  String get memoPlaceholder => '请随意添加备注';

  @override
  String get addBtn => '＋ 添加';

  @override
  String get errorOccurred => '发生错误';

  @override
  String errorOccurredWithDetail(String error) {
    return '发生错误\n$error';
  }

  @override
  String get pet => '宠物';

  @override
  String get selectPet => '选择宠物';

  @override
  String get addNewPet => '添加新宠物';

  @override
  String get noAlarms => '暂无提醒';

  @override
  String alarmEmptyDesc(String petName) {
    return '今天也来守护 $petName 的健康吧。\n点击下方的“添加提醒”开始吧。';
  }

  @override
  String get scheduledAlarms => '计划中的提醒';

  @override
  String get swipeToDelete => '滑动即可删除';

  @override
  String get selectAlarmType => '选择提醒类型';

  @override
  String get vetAppointment => '预约就诊';

  @override
  String get medication => '吃药';

  @override
  String get mealTime => '喂食时间';

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
    return '$type 提醒';
  }

  @override
  String get alarmBodyVaccination => '请确认疫苗接种日期。';

  @override
  String get alarmBodyVetAppointment => '您的就诊预约时间快到了。';

  @override
  String get alarmBodyMedication => '该吃药啦。';

  @override
  String get alarmBodyMealTime => '别忘了喂食时间哦。';

  @override
  String get alarmBodyDailyReminder => '请添加今天的健康记录。';

  @override
  String get alarmBodyDefault => '宠物健康管理提醒。';

  @override
  String get alarmDeleted => '提醒已删除';

  @override
  String get hidePastAlarms => '隐藏历史提醒';

  @override
  String get showPastAlarms => '显示历史提醒';

  @override
  String get deleteAll => '全部删除';

  @override
  String get deletePastAlarms => '删除历史提醒';

  @override
  String deletePastAlarmsConfirm(int count) {
    return '确定要删除所有 $count 条历史提醒吗？';
  }

  @override
  String get pastAlarmsDeleted => '历史提醒已全部删除';

  @override
  String get pastLabel => '历史';

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
  String get snoozeCustom => '手动选择';

  @override
  String get snoozeAtThisTime => '在这个时间提醒我';

  @override
  String snoozeConfirm(String time) {
    return '我们将在 $time 再次提醒您';
  }

  @override
  String get selectFutureTime => '请选择一个未来的时间';

  @override
  String recordCheckHint(String typeLabel) {
    return '您可以在 记录 > $typeLabel 中查看。';
  }

  @override
  String get pushAlsoCancel => '计划中的推送通知也将被取消。';

  @override
  String get reschedule => '重新安排';

  @override
  String get deleteThisAlarm => '删除此提醒';

  @override
  String get vaccineNameRequired => '疫苗名称 *';

  @override
  String get vaccineNameExample => '例：狂犬疫苗、多联疫苗';

  @override
  String get scheduledDateRequired => '日期 *';

  @override
  String get reminderTiming => '提醒时间';

  @override
  String get sameDay => '当天';

  @override
  String get reminderTimeRequired => '提醒时间 *';

  @override
  String get memoInputHint => '请输入备注';

  @override
  String get visitPurposeRequired => '就诊目的 *';

  @override
  String get visitPurposeExample => '例：体检、皮肤治疗';

  @override
  String get appointmentDateTimeRequired => '预约日期和时间 *';

  @override
  String get hospitalName => '医院名称';

  @override
  String get hospitalNameHint => '请输入医院名称';

  @override
  String get medicineNameRequired => '药品名称 *';

  @override
  String get medicineNameExample => '例：驱虫药、心丝虫药';

  @override
  String get doseExample => '例：0.5ml，1粒';

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
  String get medicationTimeRequired => '用药时间 *';

  @override
  String get alarmNameRequired => '提醒名称 *';

  @override
  String get mealTimeExample => '例：早餐、晚餐';

  @override
  String get mealTimeRequired => '喂食时间 *';

  @override
  String get alarmMessage => '提醒信息';

  @override
  String get alarmMessageExample => '例：今天的记录添加了吗？';

  @override
  String get alarmPastDueMsg => '此提醒的日期已过。\n您可以选择新日期或将其删除。';

  @override
  String get reselectDate => '重新选择日期';

  @override
  String get selectDate => '选择日期';

  @override
  String get selectTime => '选择时间';

  @override
  String get todayStatus => '今日状态';

  @override
  String get addRecord => '＋ 添加记录';

  @override
  String get todayReminders => '今日提醒';

  @override
  String get todayRecords => '今日记录';

  @override
  String get viewAll => '查看全部';

  @override
  String get weekStats => '本周健康统计';

  @override
  String get pottyCount => '排泄次数';

  @override
  String get mealCount => '喂食次数';

  @override
  String get waterLevel => '饮水量';

  @override
  String get timesUnit => '次';

  @override
  String get mealsUnit => '餐';

  @override
  String get pointsUnit => '分';

  @override
  String get recordDeleted => '记录已删除';

  @override
  String get recordUpdated => '记录已更新';

  @override
  String get deleteRecordConfirm => '确定要删除这条记录吗？';

  @override
  String get deleteConfirmBody => '删除后将无法恢复！';

  @override
  String get deleteConfirmOk => '确认删除';

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
  String get dose => '剂量';

  @override
  String get medicationMethod => '用药方式';

  @override
  String get weightKg => '体重 (kg)';

  @override
  String get measurementMethod => '测量方式';

  @override
  String get mealAmount => '喂食量';

  @override
  String get servingAmount => '分量';

  @override
  String get waterAmount => '饮水量';

  @override
  String get visitType => '就诊类型';

  @override
  String get diagnosisName => '诊断结果';

  @override
  String get vaccineType => '疫苗种类';

  @override
  String get abnormalSymptomType => '异常症状类型';

  @override
  String get customSymptom => '其他症状';

  @override
  String get customSymptomPlaceholder => '请输入症状描述';

  @override
  String get sideEffects => '副作用';

  @override
  String get groomingType => '美容项目';

  @override
  String get shopName => '店铺名称';

  @override
  String get cost => '费用';

  @override
  String get nextAppointment => '下次预约';

  @override
  String get brushingArea => '刷牙部位';

  @override
  String get duration => '时长';

  @override
  String get walkTime => '散步时间';

  @override
  String get distance => '距离';

  @override
  String get title => '标题';

  @override
  String get priority => '优先级';

  @override
  String get stool => '便便';

  @override
  String get urine => '尿尿';

  @override
  String get vomiting => '呕吐';

  @override
  String get bleeding => '出血';

  @override
  String get dyspnea => '呼吸困难';

  @override
  String get seizure => '抽搐/癫痫';

  @override
  String get normal => '正常';

  @override
  String get loose => '软便';

  @override
  String get hard => '干硬';

  @override
  String get bloodInStool => '便血';

  @override
  String get cough => '咳嗽';

  @override
  String get lethargy => '精神不振';

  @override
  String get lossOfAppetite => '食欲不振';

  @override
  String get diarrhea => '腹泻';

  @override
  String get runnyNose => '流鼻涕';

  @override
  String get sneezing => '打喷嚏';

  @override
  String get trembling => '发抖';

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
  String get vetHospital => '宠物医院';

  @override
  String get homeScale => '家用体重秤';

  @override
  String get holdAndWeigh => '抱着称重';

  @override
  String get veryLittle => '非常少';

  @override
  String get little => '较少';

  @override
  String get much => '较多';

  @override
  String get veryMuch => '非常多';

  @override
  String get general => '普通';

  @override
  String get regularCheckup => '体检';

  @override
  String get emergency => '急诊';

  @override
  String get mild => '轻度';

  @override
  String get severe => '重度';

  @override
  String get bath => '洗澡';

  @override
  String get fullGrooming => '全身修剪';

  @override
  String get partialGrooming => '局部修剪';

  @override
  String get nails => '剪指甲';

  @override
  String get earCleaning => '清理耳朵';

  @override
  String get tartarRemoval => '去牙结石';

  @override
  String get analGlands => '挤肛门腺';

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
  String get selectMediaMethod => '选择添加方式';

  @override
  String get useCamera => '使用相机';

  @override
  String get takePhotoOrVideo => '拍摄照片或视频';

  @override
  String get chooseFromGallery => '从相册中选择';

  @override
  String get multiSelectHint => '可选择多张照片或视频';

  @override
  String get takePhoto => '拍照';

  @override
  String get takePhotoDesc => '使用相机拍摄照片';

  @override
  String get recordVideo => '录像';

  @override
  String get recordVideoDesc => '使用相机录制视频';

  @override
  String get deleteThisPhoto => '删除照片';

  @override
  String get deletePhotoConfirm => '确定要删除这张照片吗？';

  @override
  String get deleteThisVideo => '删除视频';

  @override
  String get deleteVideoConfirm => '确定要删除这段视频吗？';

  @override
  String get muted => '已静音';

  @override
  String get soundOn => '开启声音';

  @override
  String get allowPermissionInSettings => '请在设置中允许权限';

  @override
  String get openSettings => '打开设置';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get contactDeveloper => '联系开发者';

  @override
  String get contact => '联系我们';

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
  String get homeScreen => '首页';

  @override
  String get journalScreen => '记录页';

  @override
  String get alarmScreen => '提醒页';

  @override
  String get petManagement => '宠物管理';

  @override
  String get recordCategories => '记录分类';

  @override
  String get whatIsPetSumtan => '什么是 Pet Sumtan？';

  @override
  String get todayRecordSummary => '今日记录汇总';

  @override
  String get weeklyStats => '本周统计';

  @override
  String get weightChangeChart => '体重变化图表';

  @override
  String get findNearbyHospitals => '寻找附近医院';

  @override
  String get addNewRecord => '添加新记录 (＋)';

  @override
  String get viewRecordList => '查看记录';

  @override
  String get editDeleteRecord => '编辑和删除记录';

  @override
  String get attachMedia => '添加照片/视频';

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
  String get registerPet => '添加宠物';

  @override
  String get editProfile => '编辑资料';

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
  String get healthGuideSubtitle => '基于兽医建议的\n专业健康指南。';

  @override
  String get vaccination => '疫苗接种';

  @override
  String get coreVaccines => '核心疫苗';

  @override
  String get required => '必打';

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
  String get externalParasites => '体外寄生虫 (跳蚤/蜱虫)';

  @override
  String get internalParasites => '体内寄生虫';

  @override
  String get threeToSixMonths => '每3-6个月';

  @override
  String get nutritionManagement => '营养管理';

  @override
  String get dentalCare => '口腔护理';

  @override
  String get healthCheckup => '健康体检';

  @override
  String get emergencySigns => '紧急症状';

  @override
  String get age => '年龄';

  @override
  String ageAutoCalculated(String age) {
    return '自动计算 · $age';
  }

  @override
  String petAgeMonths(int months) {
    return '$months个月';
  }

  @override
  String petAgeYears(int years) {
    return '$years岁';
  }

  @override
  String petAgeYearsMonths(int years, int months) {
    return '$years岁 $months个月';
  }

  @override
  String get checkupCycle => '体检周期';

  @override
  String get mainItems => '主要项目';

  @override
  String get exerciseLevel => '运动量';

  @override
  String get breedExamples => '代表品种';

  @override
  String get low => '偏少';

  @override
  String get high => '偏多';

  @override
  String get menu => '菜单';

  @override
  String get helloGreeting => '你好！';

  @override
  String get healthyTodayMsg => '\n今天感觉健康吗？';

  @override
  String get noRecordsYet => '暂无记录';

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
  String get noWeightData => '暂无体重数据';

  @override
  String get measuredWeight => '测量的体重';

  @override
  String get noTodayRecords => '今天还没有记录哦';

  @override
  String get homeNoRecordHint => '记录状态、排泄和体重，\n一起守护宠物的健康吧。';

  @override
  String noRecordsForDate(String date) {
    return '$date 没有记录';
  }

  @override
  String recordsForDate(String date, String count) {
    return '$date 的记录 ($count条)';
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
  String get whatToRecord => '📝 您想记录什么？';

  @override
  String saveErrorMsg(String error) {
    return '保存时发生错误：$error';
  }

  @override
  String get alarmUpdated => '提醒已更新';

  @override
  String get alarmAdded => '提醒已添加';

  @override
  String get editAlarm => '编辑提醒';

  @override
  String get deleteAlarmConfirm => '确定要删除此提醒吗？';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name 将被删除，\n其计划中的推送通知也将被取消。';
  }

  @override
  String get doneMsg => '✅ 已完成';

  @override
  String get laterMsg => '🕐 稍后';

  @override
  String get saveCompletion => '✅ 保存完成状态';

  @override
  String completedQuestion(String type) {
    return '$type 完成了吗？';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return '我们会自动将 $name\n保存到今天的记录中。';
  }

  @override
  String completionSaved(String name) {
    return '$name 完成状态已保存';
  }

  @override
  String get tapAlarmTypeHint => '👆 请点击您需要的提醒类型';

  @override
  String countUnit(int count) {
    return '$count条';
  }

  @override
  String dateCompleted(String date) {
    return '$date · 已完成';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date 已过 · 点击重新安排';
  }

  @override
  String get completedLabel => '已完成';

  @override
  String get edit => '编辑';

  @override
  String recordDeleteCannotUndo(String category) {
    return '$category 记录将被删除，\n此操作无法恢复。';
  }

  @override
  String get hintMedicineNameAndDose => '💡 请输入药品名称和剂量';

  @override
  String get hintMedicineName => '💡 请输入药品名称';

  @override
  String get hintDose => '💡 请输入剂量';

  @override
  String get hintWeightNumber => '💡 请以数字形式输入体重';

  @override
  String get hintWeight => '💡 请输入体重';

  @override
  String get hintWeightIsNumber => '💡 体重必须是数字';

  @override
  String get hintWalkTime => '💡 请输入散步时间';

  @override
  String get hintWalkTimeIsNumber => '💡 散步时间必须是数字';

  @override
  String get hintWalkTimeNumber => '💡 请以数字形式输入散步时间';

  @override
  String get hintSelectBrushingArea => '💡 请至少选择一个刷牙部位';

  @override
  String get hintSelectVaccineType => '💡 请至少选择一种疫苗类型';

  @override
  String get hintSelectGroomingType => '💡 请至少选择一个美容项目';

  @override
  String get hintSelectSymptomType => '💡 请至少选择一种症状类型';

  @override
  String get hintTitle => '💡 请输入标题';

  @override
  String get hintVaccineName => '💡 请输入疫苗名称';

  @override
  String get hintSelectScheduledDate => '💡 请选择日期';

  @override
  String get hintSelectScheduledTime => '💡 请选择时间';

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
  String get hintSelectMealTime => '💡 请选择喂食时间';

  @override
  String get hintSelectAlarmTime => '💡 请选择提醒时间';

  @override
  String get noPetRegisterFirst => '还没有宠物哦。请先在“我的”中添加宠物。';

  @override
  String get alarmRescheduled => '提醒时间已重新安排';

  @override
  String get examplePetName => '例：可可';

  @override
  String get exampleBreed => '例：马尔济斯';

  @override
  String get exampleBreedMulti => '例：马尔济斯，波斯猫';

  @override
  String get example30 => '例：30';

  @override
  String get example80 => '例：80';

  @override
  String get example200 => '例：200';

  @override
  String get example25 => '例：2.5';

  @override
  String get example42 => '例：4.2';

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
  String get idInfo => '身份信息';

  @override
  String get idInfoOptional => '身份信息 (选填)';

  @override
  String get name => '名字';

  @override
  String get petKind => '种类';

  @override
  String get breed => '品种';

  @override
  String get weight => '体重';

  @override
  String get microchip => '芯片号码';

  @override
  String get registrationNumber => '登记号码';

  @override
  String get birthDate => '出生日期';

  @override
  String get gender => '性别';

  @override
  String get male => '弟弟';

  @override
  String get female => '妹妹';

  @override
  String get maleSym => '弟弟 ♂';

  @override
  String get femaleSym => '妹妹 ♀';

  @override
  String get neutered => '绝育状态';

  @override
  String get done => '已做';

  @override
  String get notDone => '未做';

  @override
  String get notEntered => '未填写';

  @override
  String get notRegistered => '未登记';

  @override
  String get dogEmoji => '狗狗 🐶';

  @override
  String get catEmoji => '猫咪 🐱';

  @override
  String get otherEmoji => '其他 🐾';

  @override
  String get noPetsRegistered => '暂无已登记的宠物';

  @override
  String get registerPetPrompt => '登记您的宠物，\n一起管理健康吧！';

  @override
  String get registerPetBtn => '登记宠物';

  @override
  String get editPet => '编辑宠物信息';

  @override
  String get neuteringStatus => '绝育状态';

  @override
  String get neuteredDone => '已绝育';

  @override
  String get notNeutered => '未绝育';

  @override
  String get selectDateHint => '请选择日期';

  @override
  String get saveChanges => '保存更改';

  @override
  String get registerBtn => '登记';

  @override
  String deletePetName(String name) {
    return '删除 $name';
  }

  @override
  String deletePetConfirm(String name) {
    return '确定要删除 $name 吗？';
  }

  @override
  String deletePetWarning(String name) {
    return '$name 的所有记录和提醒将被删除，且无法恢复。';
  }

  @override
  String petDeleted(String name) {
    return '$name 已被删除';
  }

  @override
  String petAdded(String name) {
    return '$name 已添加 🐾';
  }

  @override
  String get storeUnavailableMsg => '目前无法连接到商店。请稍后再试。';

  @override
  String get checkingPaymentMsg => '正在确认支付信息。请稍后再次点击。';

  @override
  String get paymentCompleteMsg => '支付完成。请输入新成员的信息。';

  @override
  String get addNewFamilyMember => '要添加新成员吗？';

  @override
  String get firstPetFreeDesc => '第一只宠物可免费登记。添加更多宠物需要为每只宠物支付一次性费用。';

  @override
  String petsRegisteredStoreUnavailable(int count) {
    return '目前已登记 $count 只宠物。\n请在商店可用时重试。';
  }

  @override
  String petsRegisteredPayToAdd(int count, String price) {
    return '目前已登记 $count 只宠物。\n支付 $price 后即可添加新成员。';
  }

  @override
  String get maybeLater => '以后再说';

  @override
  String get unavailable => '不可用';

  @override
  String payAndAdd(String price) {
    return '支付 $price 并添加';
  }

  @override
  String get addNextAppointment => '＋ 添加下次预约';

  @override
  String get pottyRecordSaved => '💩 排泄已记录';

  @override
  String get conditionRecordSaved => '💗 状态已记录';

  @override
  String get medicationRecordSaved => '💊 用药已记录';

  @override
  String get weightRecordSaved => '⚖️ 体重已记录';

  @override
  String get mealRecordSaved => '🍽️ 喂食已记录';

  @override
  String get waterRecordSaved => '💧 饮水已记录';

  @override
  String get vetVisitRecordSaved => '🏥 就诊已记录';

  @override
  String get vaccinationRecordSaved => '💉 疫苗已记录';

  @override
  String get groomingRecordSaved => '✂️ 美容已记录';

  @override
  String get brushingRecordSaved => '🪥 刷牙已记录';

  @override
  String get walkRecordSaved => '🦮 散步已记录';

  @override
  String get memoSaved => '📝 备注已记录';

  @override
  String get abnormalSymptomRecordSaved => '🚨 异常症状已记录';

  @override
  String get moreQuestions => '您还有其他问题吗？';

  @override
  String get contactViaSendFeedback => '请通过 设置 > 发送反馈 联系我们。\n我们会尽快回复您 🐾';

  @override
  String get contactViaSendFeedbackLong => '请通过设置中的 [发送反馈] 按钮联系我们，\n我们会尽快给您答复。';

  @override
  String get privacyPolicyEffectiveDate =>
      '本隐私政策自2026年1月1日起生效。\n最后更新：2026年5月8日';

  @override
  String get privacyCollectedInfo => '收集的信息仅用于以下目的。';

  @override
  String get privacyDataFeatures => 'Pet Sumtan 提供数据导出（备份）和导入（恢复）功能。';

  @override
  String get privacyPolicyMayUpdate => '本隐私政策可能会因法律或服务变更而更新。';

  @override
  String get privacyPolicyContact => '如有关于隐私政策的疑问，请通过以下方式联系我们。';

  @override
  String get catMeal => '喂食';

  @override
  String get catWater => '饮水';

  @override
  String get catGrooming => '美容';

  @override
  String get catBrushing => '刷牙';

  @override
  String get catWalk => '散步';

  @override
  String get catHospital => '医院';

  @override
  String get catAbnormalSymptom => '异常';

  @override
  String get catCondition => '状态';

  @override
  String get catPotty => '排泄';

  @override
  String get mealFormTitle => '🍽️ 喂食记录';

  @override
  String get walkFormTitle => '🦮 散步记录';

  @override
  String get weightFormTitle => '⚖️ 体重记录';

  @override
  String get waterFormTitle => '💧 饮水记录';

  @override
  String get medicationFormTitle => '💊 用药记录';

  @override
  String get groomingFormTitle => '✂️ 美容记录';

  @override
  String get brushingFormTitle => '🪥 刷牙记录';

  @override
  String get conditionFormTitle => '🌡️ 状态记录';

  @override
  String get poopFormTitle => '💩 排泄记录';

  @override
  String get vaccinationFormTitle => '💉 疫苗记录';

  @override
  String get hospitalFormTitle => '🏥 就诊记录';

  @override
  String get abnormalSymptomFormTitle => '🚨 异常记录';

  @override
  String get memoFormTitle => '📝 备注';

  @override
  String get measureMethod => '测量方式';

  @override
  String get feedAmount => '喂食量';

  @override
  String get mlInputLabel => '手动输入 mL';

  @override
  String get alarmRescheduleNote => '此提醒的日期已过。\n您可以选择新日期或将其删除。';

  @override
  String get nailTrim => '剪指甲';

  @override
  String get shopNameExample => '例：毛毛宠物店';

  @override
  String get poopRecordSaved => '💩 排泄已记录';

  @override
  String get memoRecordSaved => '📝 备注已记录';

  @override
  String get other => '其他';

  @override
  String get whole => '全身';

  @override
  String get paw => '爪子';

  @override
  String get importance => '重要程度';

  @override
  String get timeTaken => '耗时';

  @override
  String get example10 => '例：10';

  @override
  String get minuteUnit => '分钟';

  @override
  String get hospitalNameExample => '例：快乐动物医院';

  @override
  String get diagnosisExample => '例：肠炎、皮炎';

  @override
  String get memoTitlePlaceholder => '输入备注标题';

  @override
  String get hintMemoTitle => '💡 请输入标题';

  @override
  String get poopType => '类型';

  @override
  String get poopStatus => '状态';

  @override
  String get feces => '便便';

  @override
  String get bloody => '便血';

  @override
  String get vaccineDhppl => '多联疫苗 (DHPPL)';

  @override
  String get vaccineCorona => '冠状病毒';

  @override
  String get vaccineKennelCough => '犬窝咳';

  @override
  String get vaccineRabies => '狂犬病';

  @override
  String get vaccineInfluenza => '流感';

  @override
  String get vaccineFvrcp => '猫三联 (FVRCP)';

  @override
  String get vaccineFelv => '白血病 (FeLV)';

  @override
  String get vaccineChlamydia => '衣原体';

  @override
  String get mute => '静音';

  @override
  String get photoVideo => '照片 · 视频';

  @override
  String photoVideoCount(int count) {
    return '照片 · 视频 · $count';
  }

  @override
  String get selectMediaSource => '选择媒体来源';

  @override
  String get cameraCapture => '使用相机拍摄';

  @override
  String get cameraCaptureSubtitle => '拍摄照片或视频';

  @override
  String get selectFromGallery => '从相册中选择';

  @override
  String get selectFromGallerySubtitle => '支持多选';

  @override
  String get takePhotoSubtitle => '使用相机拍摄照片';

  @override
  String get recordVideoSubtitle => '使用相机录制视频';

  @override
  String get permissionRequired => '请在设置中允许权限';

  @override
  String get confirmDeletePhoto => '确定要删除这张照片吗？';

  @override
  String get confirmDeleteVideo => '确定要删除这段视频吗？';

  @override
  String get hintMedicineAndDose => '💡 请输入药品名称和剂量';

  @override
  String deleteRecordBody(String category) {
    return '$category 记录将被删除，\n此操作无法恢复。';
  }

  @override
  String dayCountShort(int days) {
    return '$days天';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan 是一款可以集中记录和管理宠物健康与日常生活的App。\n您可以轻松记录喂食、饮水、排泄、体重、用药、就诊等情况，并设置提醒以免忘记重要事项。';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      '一目了然地查看今天添加的所有记录。点击记录可以查看详情或进行编辑。';

  @override
  String get helpHomeWeeklyStatsDesc => '通过图表查看本周的排泄次数、喂食量和饮水量，了解宠物的生活规律。';

  @override
  String get helpHomeWeightChangeChartDesc => '以图表形式展示最近的体重记录，轻松追踪体重变化。';

  @override
  String get helpHomeFindNearbyHospitalsDesc => '点击按钮即可在地图上搜索附近的宠物医院。';

  @override
  String get helpHomeAddNewRecordDesc => '点击底部的“＋”按钮，选择类别并添加新记录。';

  @override
  String get helpRecordCategoriesIntro => '您可以通过12个类别记录宠物的日常生活。';

  @override
  String get helpCategoryPottyName => '排泄';

  @override
  String get helpCategoryPottyDesc => '记录排泄的状态和类型，还可以添加照片。';

  @override
  String get helpCategoryConditionName => '状态';

  @override
  String get helpCategoryConditionDesc => '记录宠物的整体健康状态。';

  @override
  String get helpCategoryMedicationName => '用药';

  @override
  String get helpCategoryMedicationDesc => '记录药品名称、剂量和时间。';

  @override
  String get helpCategoryWeightName => '体重';

  @override
  String get helpCategoryWeightDesc => '记录体重 (kg)。您可以在首页查看趋势图。';

  @override
  String get helpCategoryMealName => '喂食';

  @override
  String get helpCategoryMealDesc => '记录喂食量和种类，可添加照片/视频。';

  @override
  String get helpCategoryWaterName => '饮水';

  @override
  String get helpCategoryWaterDesc => '记录饮水量 (ml)，可添加照片/视频。';

  @override
  String get helpCategoryHospitalName => '医院';

  @override
  String get helpCategoryHospitalDesc => '记录医院名称和诊断结果，可添加照片/视频。';

  @override
  String get helpCategoryVaccinationName => '疫苗';

  @override
  String get helpCategoryVaccinationDesc => '记录疫苗种类和接种日期。';

  @override
  String get helpCategoryGroomingName => '美容';

  @override
  String get helpCategoryGroomingDesc => '记录美容详情，可添加照片/视频。';

  @override
  String get helpCategoryDentalName => '刷牙';

  @override
  String get helpCategoryDentalDesc => '记录刷牙情况和备注。';

  @override
  String get helpCategoryWalkName => '散步';

  @override
  String get helpCategoryWalkDesc => '记录散步的距离和时间。';

  @override
  String get helpCategoryMemoName => '备注';

  @override
  String get helpCategoryMemoDesc => '可以自由记录任何内容。';

  @override
  String get helpJournalViewRecordListDesc => '按日期显示所有记录。通过类别图标可以轻松区分。';

  @override
  String get helpJournalEditDeleteRecordDesc => '点击记录会打开编辑面板。您可以修改内容或删除记录。';

  @override
  String get helpJournalAttachMediaDesc => '在喂食、饮水、医院、美容、排泄等类别中可以添加照片或视频。';

  @override
  String get helpAlarmAddDesc => '设置疫苗、用药、医院、美容等提醒。先选择类型，然后设定日期和时间。';

  @override
  String get helpAlarmRepeatDesc => '可以设置每天、每周、每月等重复规则。非常适合定期用药或心丝虫预防。';

  @override
  String get helpAlarmAdvanceDesc => '对于疫苗等重要事项，您可以提前7天、3天、1天收到提醒。';

  @override
  String get helpAlarmCompleteDesc => '点击提醒将其标记为已完成。已完成的提醒将移至“历史提醒”列表。';

  @override
  String get helpAlarmDeleteDesc => '向左滑动提醒即可将其删除。';

  @override
  String get helpPetRegisterDesc => '输入名字、种类 (狗/猫)、品种、性别、出生日期和绝育状态来登记宠物。';

  @override
  String get helpPetEditProfileDesc => '在“我的”页面中，您可以编辑名字、品种、体重、芯片号码、登记号码和头像。';

  @override
  String get helpPetManageMultipleDesc => '您可以登记多只宠物。点击顶部的宠物标签即可切换。';

  @override
  String get helpDogHealthGuideDesc =>
      '提供基于兽医建议的健康信息：核心/非核心疫苗时间表、寄生虫预防、口腔护理、营养等。';

  @override
  String get helpCatHealthGuideDesc => '查看猫咪专属的疫苗时间表、寄生虫预防、口腔护理和营养信息。';

  @override
  String get helpSettingsNotificationDesc => '开启或关闭应用的所有通知。';

  @override
  String get helpSettingsExportDesc => '将所有记录的数据导出为ZIP文件。可作为更换设备时的备份。';

  @override
  String get helpSettingsImportDesc => '导入之前保存的ZIP备份文件以恢复数据。';

  @override
  String get helpSettingsFeedbackDesc => '如果您有任何问题或建议，请通过邮件告诉我们。这将帮助我们改进应用。';

  @override
  String get helpFaqDeletePetQ => '删除宠物后，所有记录也会被删除吗？';

  @override
  String get helpFaqDeletePetA => '是的，删除宠物后，其所有记录和提醒也会被删除。建议您在删除前先导出并备份数据。';

  @override
  String get helpFaqMultipleMediaQ => '一条记录可以添加多张照片吗？';

  @override
  String get helpFaqMultipleMediaA => '可以，您可以添加多张照片或视频。您可以从相册中选择，也可以直接使用相机拍摄。';

  @override
  String get helpFaqNoNotificationQ => '我收不到提醒。';

  @override
  String get helpFaqNoNotificationA =>
      '请在设备的设置中检查是否允许 Pet Sumtan 应用发送通知。另外，请确认应用内的“设置 > 通知设置”已开启。';

  @override
  String get helpFaqMoveDataQ => '我可以将数据转移到新设备吗？';

  @override
  String get helpFaqMoveDataA =>
      '请在旧设备上通过“设置 > 导出数据”保存备份文件，然后在您的新设备上通过“设置 > 导入数据”进行恢复。';

  @override
  String get helpFaqMultiplePetsQ => '我可以登记多只宠物吗？';

  @override
  String get helpFaqMultiplePetsA => '第一只宠物可免费登记。您可以通过使用高级功能来添加更多宠物。';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan 是一款无需注册即可使用的应用，所有数据仅保存在您的设备上。我们不会将您的个人信息发送到外部服务器，确保您宠物的珍贵信息安全。';

  @override
  String get privacySection1Title => '收集的个人信息';

  @override
  String get privacySection1Body =>
      'Pet Sumtan 无需注册即可使用，且不收集任何可识别个人身份的信息。但是，为了提供应用功能，以下信息可能会保存在您的设备上。';

  @override
  String get privacyLocalStorageInfo => '保存在设备本地的信息';

  @override
  String get privacyPetInfo => '宠物信息：名字、种类、品种、出生日期、性别、体重、绝育状态、芯片号码、登记号码';

  @override
  String get privacyHealthRecords =>
      '健康记录：您直接输入的排泄、喂食、饮水、体重、用药、疫苗、医院、美容、刷牙、散步、状态、备注等';

  @override
  String get privacyAttachedMedia => '附加媒体：您直接拍摄或选择的照片和视频';

  @override
  String get privacyNotificationSettings => '提醒设置：提醒类型、计划时间、重复规则';

  @override
  String get privacyInAppPurchaseTitle => '关于应用内购买';

  @override
  String get privacyPaymentProcessing =>
      '支付处理通过 Apple App Store 或 Google Play Store 进行，应用不会直接收集或保存您的支付信息。';

  @override
  String get privacyReceiptVerification => '根据各平台的政策，仅处理验证购买收据所需的最少信息。';

  @override
  String get privacySection2Title => '收集和使用的目的';

  @override
  String get privacyPurposeRecords => '保存和查看宠物的健康记录';

  @override
  String get privacyPurposeStats => '在首页提供统计数据（本周的排泄、喂食、饮水情况，体重变化图表等）';

  @override
  String get privacyPurposeReminders => '发送疫苗、用药、医院等健康相关的提醒';

  @override
  String get privacyPurposeBackupRestore => '提供数据备份和恢复功能';

  @override
  String get privacyPurposePaidEligibility => '验证付费功能的使用资格';

  @override
  String get privacySection3Title => '信息的保留和销毁';

  @override
  String get privacyRetentionBody =>
      'Pet Sumtan 的所有数据仅保存在您设备内的本地数据库 (SQLite) 中，不会发送到外部服务器。';

  @override
  String get privacyDataDeletionMethod => '数据销毁方法';

  @override
  String get privacyDeleteInApp => '您可以通过应用的“设置 > 数据管理”直接删除宠物信息和记录。';

  @override
  String get privacyDeleteUninstall => '删除应用时，保存在设备上的所有数据也会被删除。';

  @override
  String get privacyDeleteBackupWarning => '请注意，如果在删除应用前未进行备份（导出），数据将无法恢复。';

  @override
  String get privacySection4Title => '向第三方提供信息';

  @override
  String get privacyThirdPartyBody => 'Pet Sumtan 不会向外部第三方提供您的个人信息。但以下情况除外：';

  @override
  String get privacyThirdPartyUserExport => '您自行使用数据导出（分享备份文件）功能时';

  @override
  String get privacyThirdPartyLegalRequest => '法律要求或执法机构提出合法请求时';

  @override
  String get privacySection5Title => '访问权限说明';

  @override
  String get privacyPermissionsBody =>
      '为了提供应用功能，我们可能会请求以下权限。即使您不授予权限，其他功能仍可正常使用。';

  @override
  String get privacyPermissionCameraName => '相机';

  @override
  String get privacyPermissionCameraDesc => '用于直接拍摄要附加到健康记录中的照片或视频。';

  @override
  String get privacyPermissionMediaName => '照片和媒体访问';

  @override
  String get privacyPermissionMediaDesc => '用于从相册中选择要附加到记录中的照片或视频。';

  @override
  String get privacyPermissionNotificationName => '通知';

  @override
  String get privacyPermissionNotificationDesc => '用于发送疫苗、用药、医院等健康相关的提醒。';

  @override
  String get privacyPermissionFileName => '文件访问 (Android)';

  @override
  String get privacyPermissionFileDesc => '用于保存或读取数据备份文件。';

  @override
  String get privacySection6Title => '数据备份与恢复';

  @override
  String get privacyBackupExport => '导出：您可以将应用内的所有数据保存或分享为文件 (.zip)。';

  @override
  String get privacyBackupImport => '导入：您可以读取之前导出的备份文件以恢复数据。';

  @override
  String get privacyBackupWarning => '备份文件由您自行管理，请注意不要将文件分享给他人。';

  @override
  String get privacySection7Title => '儿童隐私保护';

  @override
  String get privacyChildrenBody =>
      'Pet Sumtan 不会单独收集14岁以下儿童的个人信息。所有应用数据仅保存在设备上，不会发送到外部服务器，因此儿童也可以安全使用。';

  @override
  String get privacySection8Title => '隐私政策的变更';

  @override
  String get privacyPolicyChangeNotice => '如有变更，我们将通过应用的更新说明或应用内通知告知您。';

  @override
  String get privacyPolicyChangeEffective => '变更后的政策将在通知发布7天后生效。';

  @override
  String get privacySection9Title => '联系我们';

  @override
  String get hgDogHeroTitle => '狗狗健康指南';

  @override
  String get hgCatHeroTitle => '猫咪健康指南';

  @override
  String get hgDogCoreDhppl =>
      '**多联疫苗 (DHPPL)** — 犬瘟热、传染性肝炎、细小病毒、副流感、钩端螺旋体。\n出生6~8周首针，之后每3~4周接种一次，共3次，此后每年加强一针。';

  @override
  String get hgDogCoreRabies => '**狂犬病** — 出生3个月后首针，之后每年接种一次（许多地区法律强制要求）。';

  @override
  String get hgDogCoreCorona => '**冠状病毒** — 出生6~8周开始，每3~4周接种一次，共2次，此后每年加强一针。';

  @override
  String get hgDogNonCoreKennel => '**犬窝咳** — 推荐多犬家庭、经常去美容院或寄养的狗狗接种。滴鼻或注射。';

  @override
  String get hgDogNonCoreFlu => '**流感** — 推荐户外活动多或经常接触其他狗狗的狗狗接种。';

  @override
  String get hgDogHeartworm1 => '建议在蚊子活跃期（约3月~11月）**每月1次**使用预防药。';

  @override
  String get hgDogHeartworm2 => '一旦感染治疗困难且致命 — **预防是最好的方法**。';

  @override
  String get hgDogHeartworm3 => '用药前必须检查是否已感染，确认阴性后方可使用。';

  @override
  String get hgDogHeartworm4 => '全年用药更安全（兽医推荐）。';

  @override
  String get hgDogExternalParasites1 => '滴剂或口服预防药，**每月**使用一次。';

  @override
  String get hgDogExternalParasites2 => '散步后请务必检查耳朵内、脚趾间和腋下是否有蜱虫。';

  @override
  String get hgDogExternalParasites3 => '拔除蜱虫时，请用镊子垂直缓慢拔出（不要旋转）。';

  @override
  String get hgDogInternalParasites1 => '蛔虫、钩虫、鞭虫：**每3~6个月**使用一次驱虫药。';

  @override
  String get hgDogInternalParasites2 => '幼犬期（出生2周起）：每2周驱虫一次，共4次，之后定期管理。';

  @override
  String get hgDental1 => '每天刷牙最理想 — 建议**至少每周3次**。';

  @override
  String get hgDental2 => '必须使用**宠物专用牙膏**（绝对禁止使用含木糖醇的人类牙膏）。';

  @override
  String get hgDental3 => '牙结石严重时需要到宠物医院洗牙（需全身麻醉）。';

  @override
  String get hgDental4 => '洁齿骨和漏食玩具可作为辅助护理。';

  @override
  String get hgDogForbiddenFoodAlert => '以下食物对狗狗有毒。即使少量也可能致命，绝对不能喂食。';

  @override
  String get hgDogForbiddenGrape => '**葡萄/葡萄干** — 引起肾衰竭，少量也致命。';

  @override
  String get hgDogForbiddenChocolate => '**巧克力/可可** — 可可碱中毒，心力衰竭，抽搐。';

  @override
  String get hgDogForbiddenOnion => '**洋葱/葱/大蒜** — 破坏红细胞，引起溶血性贫血。';

  @override
  String get hgDogForbiddenXylitol => '**木糖醇** — 胰岛素分泌过多，低血糖，肝衰竭。';

  @override
  String get hgDogForbiddenMacadamia => '**夏威夷果** — 肌肉无力，高热，呕吐。';

  @override
  String get hgDogForbiddenDoughAlcohol => '**生面团/酒精** — 乙醇中毒，低血糖。';

  @override
  String get hgDogForbiddenAvocado => '**牛油果** — 含有“潘生丁”，引起呕吐和腹泻。';

  @override
  String get hgEmergencyAlert => '如果出现以下症状，请立即前往宠物医院就诊。';

  @override
  String get hgDogEmergency1 => '超过24小时完全没有食欲。';

  @override
  String get hgDogEmergency2 => '一天内反复呕吐或腹泻3次以上。';

  @override
  String get hgDogEmergency3 => '腹部膨胀 / 想吐却吐不出来（疑似胃扩张/扭转）。';

  @override
  String get hgDogEmergency4 => '呼吸困难，牙龈发白，发绀。';

  @override
  String get hgDogEmergency5 => '抽搐，癫痫发作，失去意识。';

  @override
  String get hgDogEmergency6 => '超过12小时没有排尿。';

  @override
  String get hgDogEmergency7 => '可见外伤，骨折，大量出血。';

  @override
  String get hgDogExerciseAlert => '狗狗运动不足不仅是身体问题，更是压力、焦虑和破坏性行为的主要原因。';

  @override
  String get hgDogWalk1 => '小型犬：建议每天**20~30分钟**以上，中/大型犬：**1小时**以上。';

  @override
  String get hgDogWalk2 => '散步不仅是为了排泄，更是为了**嗅觉刺激、社会化和缓解压力**。';

  @override
  String get hgDogWalk3 => '让狗狗充分闻气味 — 这对缓解精神疲劳非常有效。';

  @override
  String get hgDogWalk4 => '夏天注意柏油路面烫伤 — 建议早上7点前或傍晚散步。';

  @override
  String get hgDogPlay1 => '**寻回 / 拔河游戏** — 消耗体力，增进与主人的感情。';

  @override
  String get hgDogPlay2 => '**嗅闻游戏** — 刺激大脑，15分钟相当于散步30分钟的效果。';

  @override
  String get hgDogPlay3 => '**益智玩具/漏食球** — 有效缓解独处时的分离焦虑。';

  @override
  String get hgDogPlay4 => '每天只需**10~15分钟**的专注玩耍，就能大幅降低压力水平。';

  @override
  String get hgDogStress1 => '破坏家具或物品，过度吠叫 — 运动或刺激不足的信号。';

  @override
  String get hgDogStress2 => '追尾巴，过度舔舐（脚或身体） — 强迫行为，试图缓解压力的表现。';

  @override
  String get hgDogStress3 => '主人离开时过度不安，随地大小便 — 疑似分离焦虑。';

  @override
  String get hgDogStress4 => '如果症状持续，建议咨询兽医或宠物行为专家。';

  @override
  String get hgDogSocial1 => '出生**3~14周**是社会化黄金期 — 接触各种人、声音和环境非常重要。';

  @override
  String get hgDogSocial2 => '与其他狗狗交流 — 充分利用狗狗公园或幼犬班。';

  @override
  String get hgDogSocial3 => '体验新地点、气味和声音有助于精神丰富。';

  @override
  String get hgDogSocial4 => '正向强化训练（响片、零食）可以同时刺激大脑和增强感情。';

  @override
  String get hgCatCoreFvrcp =>
      '**猫三联 (FVRCP)** — 疱疹病毒、杯状病毒、细小病毒（猫瘟）。\n出生6~8周首针，之后每3~4周接种一次，共3次，此后每1~3年加强。';

  @override
  String get hgCatCoreRabies => '**狂犬病** — 外出猫咪必打，室内猫咪也推荐（许多地区法律强制要求）。';

  @override
  String get hgCatNonCoreFelv => '**猫白血病 (FeLV)** — 强烈推荐外出猫咪或多猫家庭接种。';

  @override
  String get hgCatNonCoreChlamydia => '**猫衣原体** — 多猫家庭，预防结膜炎。';

  @override
  String get hgCatNonCoreFiv => '**猫艾滋病 (FIV)** — 外出的公猫（通过咬伤感染）。';

  @override
  String get hgCatExternalParasites1 => '外出猫咪：**每月1次**使用跳蚤/蜱虫预防药。';

  @override
  String get hgCatExternalParasites2 =>
      '即使是室内猫咪，也可能通过人的衣服或鞋子感染跳蚤 → 建议**每3个月**预防一次。';

  @override
  String get hgCatExternalParasites3 => '使用滴剂产品时，请准确滴在脖子后面。';

  @override
  String get hgCatInternalHeartworm => '体内寄生虫和心丝虫';

  @override
  String get hgCatInternalParasites1 => '蛔虫/绦虫：**每3~6个月**使用一次驱虫药。';

  @override
  String get hgCatInternalParasites2 => '如果喂食生肉或生鱼，建议更频繁地检查。';

  @override
  String get hgCatHeartworm1 => '心丝虫 — **猫咪没有治疗方法，预防是唯一途径**。强烈建议外出猫咪每月用药。';

  @override
  String get hgCatMajorDiseases => '需要注意的猫咪主要疾病';

  @override
  String get hgCatDiseaseAlert => '猫咪擅长隐藏疼痛，出现症状时通常疾病已经发展。定期体检尤为重要。';

  @override
  String get hgCatDiseaseFlutd => '**猫下泌尿道疾病 (FLUTD)** — 公猫多发。如果无法排尿，需要立即急诊。';

  @override
  String get hgCatDiseaseCkd =>
      '**慢性肾病 (CKD)** — 老年猫的第一大死因。7岁以上的猫咪必须定期进行肾脏血液检查。';

  @override
  String get hgCatDiseaseDiabetes => '**猫糖尿病** — 肥胖猫咪或老年猫风险增加。请注意饮水量和排尿量是否增加。';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**甲状腺功能亢进** — 常见于10岁以上的猫咪。症状包括体重减轻、食欲大增、烦躁不安等。';

  @override
  String get hgCatDiseaseStomatitis => '**口炎** — 猫咪非常常见的疾病。请检查是否有口臭、流口水、食欲不振。';

  @override
  String get hgCatDiseaseFhv =>
      '**猫疱疹 (FHV-1)** — 一旦感染终生潜伏。压力大时会复发，引起打喷嚏、眼屎、结膜炎。';

  @override
  String get hgHydrationDiet => '水分补充和饮食管理';

  @override
  String get hgCatHydrationAlert => '猫咪天生不爱喝水，因此容易患泌尿系统疾病。鼓励多喝水非常重要。';

  @override
  String get hgCatHydration1 => '建议搭配湿粮（罐头或餐包）来补充水分。';

  @override
  String get hgCatHydration2 => '喜欢流动的水 — 放置**流动饮水机**很有效。';

  @override
  String get hgCatHydration3 => '水碗要远离饭碗，猫咪喜欢宽而浅的碗。';

  @override
  String get hgCatHydration4 => '目标饮水量：每天每公斤体重约**40~60ml**。';

  @override
  String get hgCatForbiddenFoodAlert => '以下食物对猫咪有毒。即使少量也可能致命，绝对不能喂食。';

  @override
  String get hgCatForbiddenOnion => '**洋葱/葱/大蒜** — 破坏红细胞，引起溶血性贫血（比狗狗更敏感）。';

  @override
  String get hgCatForbiddenGrape => '**葡萄/葡萄干** — 引起肾衰竭。';

  @override
  String get hgCatForbiddenChocolate => '**巧克力/咖啡因** — 对心脏和神经系统有毒性。';

  @override
  String get hgCatForbiddenRawFish => '**生鱼（长期喂食）** — 导致硫胺素（维生素B1）缺乏症。';

  @override
  String get hgCatForbiddenMilk => '**牛奶/乳制品** — 成年猫有乳糖不耐症，会引起腹泻。';

  @override
  String get hgCatForbiddenXylitolAlcohol => '**木糖醇/酒精** — 对肝脏和神经系统有毒性。';

  @override
  String get hgCatForbiddenAvocado => '**牛油果** — 含有“潘生丁”，引起呕吐和腹泻。';

  @override
  String get hgCatForbiddenRawEggWhite => '**生蛋白** — 抗生物素蛋白会阻碍生物素吸收，引起皮肤和毛发问题。';

  @override
  String get hgCatEmergency1 => '**完全无法排尿或出现血尿** — 尿道阻塞的紧急情况（特别是公猫）。';

  @override
  String get hgCatEmergency2 => '超过24小时完全没有食欲（脂肪肝风险）。';

  @override
  String get hgCatEmergency3 => '**张嘴呼吸** — 对猫咪来说绝对不正常，需要立即急诊。';

  @override
  String get hgCatEmergency4 => '后腿突然瘫痪或发凉（疑似血栓）。';

  @override
  String get hgCatEmergency5 => '抽搐，癫痫发作，失去意识。';

  @override
  String get hgCatEmergency6 => '牙龈或舌头苍白，或发黄（黄疸）。';

  @override
  String get hgCatEmergency7 => '一天内反复呕吐或腹泻3次以上，或有便血/吐血。';

  @override
  String get hgCatEmergency8 => '可见外伤，骨折，大量出血。';

  @override
  String get hgEnvironmentMentalHealth => '环境与心理健康';

  @override
  String get hgIndoorEnvironment => '室内环境管理';

  @override
  String get hgStressManagement => '压力管理';

  @override
  String get hgCatEnvironment1 => '**猫砂盆**: 数量至少为猫咪数量+1，并每天保持清洁。';

  @override
  String get hgCatEnvironment2 => '**猫抓板**: 至少2个以上（结合垂直和水平型）。';

  @override
  String get hgCatEnvironment3 => '**高处空间**: 提供猫爬架或架子等垂直空间（满足领地本能）。';

  @override
  String get hgCatEnvironment4 => '**躲藏空间**: 提供纸箱或隧道等可以安全躲藏的空间。';

  @override
  String get hgCatStress1 => '猫咪的压力会直接导致免疫力下降、FLUTD、疱疹复发等。';

  @override
  String get hgCatStress2 => '环境发生剧变时（搬家、增加新成员等），请使用费洛蒙扩散器（如费利威）。';

  @override
  String get hgCatStress3 => '每天至少保证**10~15分钟**用逗猫棒互动玩耍的时间。';

  @override
  String get hgCatStress4 => '多猫家庭：根据猫咪数量分开提供资源（饭碗、猫砂盆、窝）。';

  @override
  String get hgAge => '年龄';

  @override
  String get hgCheckupCycle => '体检周期';

  @override
  String get hgMainItems => '主要项目';

  @override
  String get hgAge1to6 => '1~6岁';

  @override
  String get hgAge7to10 => '7~10岁';

  @override
  String get hgAge11Plus => '11岁以上';

  @override
  String get hgYearlyOnce => '每年1次';

  @override
  String get hgYearlyTwice => '每年2次';

  @override
  String get hgEvery3to4Months => '每3~4个月';

  @override
  String get hgDogCheckupItems1 => '血液检查、心脏听诊、体重、牙齿';

  @override
  String get hgDogCheckupItems2 => '血液、尿液、X光、血压、关节';

  @override
  String get hgDogCheckupItems3 => '全面血液检查、超声波、肾脏/肝脏功能';

  @override
  String get hgCatCheckupItems1 => '血液检查、尿液检查、体重、牙齿';

  @override
  String get hgCatCheckupItems2 => '肾脏/肝脏指标、血压、甲状腺 (T4)';

  @override
  String get hgCatCheckupItems3 => '全面血液检查、腹部超声波、肾脏重点监测';

  @override
  String get hgExerciseAmount => '运动量';

  @override
  String get hgBreedExamples => '代表品种';

  @override
  String get hgLow => '偏少';

  @override
  String get hgNormal => '普通';

  @override
  String get hgHigh => '偏多';

  @override
  String get hgBreedLowExamples => '斗牛犬、巴吉度猎犬、西施犬、马尔济斯';

  @override
  String get hgBreedNormalExamples => '贵宾犬、比熊犬、可卡犬、比格犬';

  @override
  String get hgBreedHighExamples => '拉布拉多、金毛寻回犬、哈士奇、边境牧羊犬';

  @override
  String get hgDisclaimer =>
      '本指南仅提供一般性的健康护理信息，所需的护理可能因宠物的具体状况而异。如有异常症状或需要治疗，请务必咨询兽医。';

  @override
  String get categoryFilter => '类别筛选';

  @override
  String get selectAll => '全选';

  @override
  String get deselectAll => '取消全选';

  @override
  String get apply => '应用';

  @override
  String get saving => '保存中...';

  @override
  String get treatmentContent => '治疗内容';

  @override
  String get conditionScoreWord1 => '非常差';

  @override
  String get conditionScoreWord2 => '较差';

  @override
  String get conditionScoreWord3 => '一般';

  @override
  String get conditionScoreWord4 => '良好';

  @override
  String get conditionScoreWord5 => '非常好';

  @override
  String conditionScoreFormat(Object score, Object word) {
    return '状态评分 $score分 - $word';
  }
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appName => 'Pet Sumtan';

  @override
  String get appTagline => '寵物健康管理 App';

  @override
  String get navHome => '首頁';

  @override
  String get navJournal => '日誌';

  @override
  String get navNotifications => '提醒';

  @override
  String get navProfile => '我的';

  @override
  String get navSettings => '設定';

  @override
  String get navAddAlarm => '新增提醒';

  @override
  String get drawerService => '服務';

  @override
  String get drawerNearbyHospitals => '附近動物醫院';

  @override
  String get drawerNearbyHospitalsSub => '尋找動物醫院';

  @override
  String get drawerHealthGuide => '健康指南';

  @override
  String get drawerHealthGuideSub => '寵物健康手冊';

  @override
  String get drawerApp => '應用程式';

  @override
  String get drawerHelp => '幫助';

  @override
  String get dialogExternalTitle => '開啟外部網頁';

  @override
  String get dialogExternalHospitalBody =>
      '為了尋找附近的動物醫院，我們需要開啟外部網頁。\n\n確定要現在開啟嗎？';

  @override
  String get commonCancel => '取消';

  @override
  String get commonGo => '前往';

  @override
  String get commonDelete => '刪除';

  @override
  String get commonSave => '儲存';

  @override
  String get commonLoading => '載入中...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => '再按一次退出';

  @override
  String get toastNeedPet => '尚未新增寵物。請先在「我的」新增寵物。';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsPushNotifications => '允許推播通知';

  @override
  String get settingsPushNotificationsSub => '裝置權限';

  @override
  String get settingsLanguageSection => '語言';

  @override
  String get settingsLanguage => 'App 語言';

  @override
  String get settingsLanguageSystem => '系統語言';

  @override
  String get settingsLanguageChanged => 'App 語言已更改';

  @override
  String get settingsData => '資料管理';

  @override
  String get settingsExport => '匯出資料';

  @override
  String get settingsExportSub => '儲存為 ZIP 檔案';

  @override
  String get settingsImport => '匯入資料';

  @override
  String get settingsImportSub => '從 ZIP 檔案還原';

  @override
  String get settingsAppInfo => 'App 資訊';

  @override
  String get settingsVersion => 'App 版本';

  @override
  String get settingsPrivacy => '隱私權政策';

  @override
  String get settingsFeedback => '意見回饋';

  @override
  String get settingsFeedbackSubject => 'Pet Sumtan 意見回饋';

  @override
  String get settingsEmailAppMissing => '找不到電子郵件應用程式';

  @override
  String get settingsImportConfirmBody => '目前的所有資料將被刪除，並替換為備份檔案的資料。\n\n確定要繼續嗎？';

  @override
  String get settingsImportAction => '匯入';

  @override
  String get settingsImporting => '正在匯入資料...';

  @override
  String get settingsImportSuccess => '備份資料還原成功';

  @override
  String get settingsImportFailed => '匯入失敗';

  @override
  String get settingsExportTitle => '匯出資料';

  @override
  String get settingsExportBenefitTitle => '安全保存您的紀錄';

  @override
  String get settingsExportBenefitPets => '所有寵物的個人檔案與照片';

  @override
  String get settingsExportBenefitRecords => '所有的醫療、日誌與體重紀錄';

  @override
  String get settingsExportBenefitMedia => '包含附加的圖片與影片';

  @override
  String get settingsStoreUnavailable => '目前無法連接到商店。\n請稍後再試。';

  @override
  String settingsPayAndExport(String price) {
    return '支付 $price 並匯出';
  }

  @override
  String get settingsUnlocked => '已解鎖';

  @override
  String get settingsExportUnlockedBody =>
      '將所有寵物資訊與紀錄儲存為 ZIP 檔案。\n您可以隨時免費匯入並還原此檔案。';

  @override
  String get settingsExporting => '正在匯出...';

  @override
  String get settingsExportZip => '匯出為 ZIP';

  @override
  String get settingsExportConfirmBody => '將所有資訊、紀錄與媒體匯出為 ZIP 檔案。';

  @override
  String get settingsExportAction => '匯出';

  @override
  String get settingsExportSuccess => '備份檔案已準備好分享';

  @override
  String get settingsExportFailed => '匯出失敗';

  @override
  String get settingsPurchaseFailed => '付款失敗';

  @override
  String get settingsPurchaseProductLoadFailed => '無法載入商品資訊，請稍後再試。';

  @override
  String get settingsPurchaseStartFailed => '無法開始付款，請稍後再試。';

  @override
  String get errorDbInit => '準備 App 資料時發生問題。\n請稍後再試。';

  @override
  String get help => '幫助';

  @override
  String get healthGuide => '健康指南';

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
  String get memoPlaceholder => '在此新增備忘錄';

  @override
  String get addBtn => '＋ 新增';

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
  String get noAlarms => '尚未設定提醒';

  @override
  String alarmEmptyDesc(String petName) {
    return '讓我們今天也好好照顧 $petName 的健康吧。\n點擊下方的「新增提醒」開始設定。';
  }

  @override
  String get scheduledAlarms => '已排程的提醒';

  @override
  String get swipeToDelete => '滑動以刪除';

  @override
  String get selectAlarmType => '選擇提醒類型';

  @override
  String get vetAppointment => '動物醫院預約';

  @override
  String get medication => '餵藥';

  @override
  String get mealTime => '用餐時間';

  @override
  String get dailyReminder => '每日提醒';

  @override
  String get alarmLabel => '提醒';

  @override
  String get notificationChannelName => 'Pet Sumtan 提醒';

  @override
  String get notificationChannelDescription => '寵物照護提醒';

  @override
  String alarmNotificationTitle(String type) {
    return '提醒：$type';
  }

  @override
  String get alarmBodyVaccination => '請確認疫苗接種日期。';

  @override
  String get alarmBodyVetAppointment => '您的動物醫院預約時間快到了。';

  @override
  String get alarmBodyMedication => '餵藥時間到了。';

  @override
  String get alarmBodyMealTime => '別忘了用餐時間喔。';

  @override
  String get alarmBodyDailyReminder => '請填寫今天的健康日誌。';

  @override
  String get alarmBodyDefault => '您的寵物健康提醒。';

  @override
  String get alarmDeleted => '提醒已刪除';

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
    return '確定要刪除所有 $count 個過去的提醒嗎？';
  }

  @override
  String get pastAlarmsDeleted => '已刪除所有過去的提醒';

  @override
  String get pastLabel => '過去';

  @override
  String get today => '今天';

  @override
  String get tomorrowSameTime => '明天同一時間';

  @override
  String get snoozeQuestion => '請問要何時再提醒您？';

  @override
  String get snooze5min => '5 分鐘後';

  @override
  String get snooze10min => '10 分鐘後';

  @override
  String get snooze30min => '30 分鐘後';

  @override
  String get snooze1hour => '1 小時後';

  @override
  String get snooze3hour => '3 小時後';

  @override
  String get snoozeCustom => '自訂時間';

  @override
  String get snoozeAtThisTime => '在此時間提醒';

  @override
  String snoozeConfirm(String time) {
    return '我們將在 $time 提醒您';
  }

  @override
  String get selectFutureTime => '請選擇未來的時間';

  @override
  String recordCheckHint(String typeLabel) {
    return '您可以在「日誌 > $typeLabel」中查看。';
  }

  @override
  String get pushAlsoCancel => '已排程的推播通知也將被取消。';

  @override
  String get reschedule => '重新排程';

  @override
  String get deleteThisAlarm => '刪除此提醒';

  @override
  String get vaccineNameRequired => '疫苗名稱 *';

  @override
  String get vaccineNameExample => '例：狂犬病、十合一';

  @override
  String get scheduledDateRequired => '日期 *';

  @override
  String get reminderTiming => '提醒時間';

  @override
  String get sameDay => '當天';

  @override
  String get reminderTimeRequired => '提醒時間 *';

  @override
  String get memoInputHint => '請輸入備忘錄';

  @override
  String get visitPurposeRequired => '就診原因 *';

  @override
  String get visitPurposeExample => '例：例行檢查、皮膚問題';

  @override
  String get appointmentDateTimeRequired => '預約日期與時間 *';

  @override
  String get hospitalName => '醫院名稱';

  @override
  String get hospitalNameHint => '請輸入醫院名稱';

  @override
  String get medicineNameRequired => '藥物名稱 *';

  @override
  String get medicineNameExample => '例：驅蟲藥、除蚤藥';

  @override
  String get doseExample => '例：0.5ml、1 顆';

  @override
  String get repeatRequired => '重複 *';

  @override
  String get none => '不重複';

  @override
  String get daily => '每天';

  @override
  String get weekly => '每週';

  @override
  String get monthly => '每月';

  @override
  String get weekdays => '平日';

  @override
  String get weekdaysOnly => '僅平日';

  @override
  String get weekends => '週末';

  @override
  String get weekendsOnly => '僅週末';

  @override
  String get medicationDateTimeRequired => '餵藥日期與時間 *';

  @override
  String get medicationTimeRequired => '餵藥時間 *';

  @override
  String get alarmNameRequired => '提醒名稱 *';

  @override
  String get mealTimeExample => '例：早餐、晚餐';

  @override
  String get mealTimeRequired => '用餐時間 *';

  @override
  String get alarmMessage => '提醒訊息';

  @override
  String get alarmMessageExample => '例：今天的日誌填寫了嗎？';

  @override
  String get alarmPastDueMsg => '此提醒的日期已過。\n請選擇新日期或將其刪除。';

  @override
  String get reselectDate => '重新選擇日期';

  @override
  String get selectDate => '選擇日期';

  @override
  String get selectTime => '選擇時間';

  @override
  String get todayStatus => '今日狀態';

  @override
  String get addRecord => '＋ 新增紀錄';

  @override
  String get todayReminders => '今日提醒';

  @override
  String get todayRecords => '今日紀錄';

  @override
  String get viewAll => '查看全部';

  @override
  String get weekStats => '本週統計';

  @override
  String get pottyCount => '排泄';

  @override
  String get mealCount => '用餐';

  @override
  String get waterLevel => '飲水';

  @override
  String get timesUnit => '次';

  @override
  String get mealsUnit => '餐';

  @override
  String get pointsUnit => '分';

  @override
  String get recordDeleted => '紀錄已刪除';

  @override
  String get recordUpdated => '紀錄已更新';

  @override
  String get deleteRecordConfirm => '確定要刪除這筆紀錄嗎？';

  @override
  String get deleteConfirmBody => '刪除後將無法復原！';

  @override
  String get deleteConfirmOk => '刪除';

  @override
  String get deleteThisRecord => '刪除此紀錄';

  @override
  String get typeLabel => '類型';

  @override
  String get statusLabel => '狀態';

  @override
  String get conditionScore => '狀態評分';

  @override
  String get symptomTags => '症狀標籤';

  @override
  String get medicineName => '藥物名稱';

  @override
  String get dose => '劑量';

  @override
  String get medicationMethod => '給藥方式';

  @override
  String get weightKg => '體重 (kg)';

  @override
  String get measurementMethod => '測量方式';

  @override
  String get mealAmount => '餵食量';

  @override
  String get servingAmount => '份量';

  @override
  String get waterAmount => '飲水量';

  @override
  String get visitType => '就診類型';

  @override
  String get diagnosisName => '診斷名稱';

  @override
  String get vaccineType => '疫苗種類';

  @override
  String get abnormalSymptomType => '異常症狀類型';

  @override
  String get customSymptom => '其他症狀';

  @override
  String get customSymptomPlaceholder => '請描述症狀';

  @override
  String get sideEffects => '副作用';

  @override
  String get groomingType => '美容/洗澡類型';

  @override
  String get shopName => '店家名稱';

  @override
  String get cost => '花費';

  @override
  String get nextAppointment => '下次預約';

  @override
  String get brushingArea => '刷牙部位';

  @override
  String get duration => '花費時間';

  @override
  String get walkTime => '散步時間';

  @override
  String get distance => '距離';

  @override
  String get title => '標題';

  @override
  String get priority => '重要度';

  @override
  String get stool => '糞便';

  @override
  String get urine => '尿液';

  @override
  String get vomiting => '嘔吐';

  @override
  String get bleeding => '出血';

  @override
  String get dyspnea => '呼吸困難';

  @override
  String get seizure => '癲癇/抽搐';

  @override
  String get normal => '正常';

  @override
  String get loose => '軟便';

  @override
  String get hard => '硬便';

  @override
  String get bloodInStool => '血便';

  @override
  String get cough => '咳嗽';

  @override
  String get lethargy => '精神不濟';

  @override
  String get lossOfAppetite => '食慾不振';

  @override
  String get diarrhea => '腹瀉';

  @override
  String get runnyNose => '流鼻水';

  @override
  String get sneezing => '打噴嚏';

  @override
  String get trembling => '發抖';

  @override
  String get bloodInUrine => '血尿';

  @override
  String get oral => '口服';

  @override
  String get injection => '注射';

  @override
  String get topical => '外用';

  @override
  String get eyeDrops => '點眼藥';

  @override
  String get earDrops => '點耳藥';

  @override
  String get vetHospital => '動物醫院';

  @override
  String get homeScale => '家用體重計';

  @override
  String get holdAndWeigh => '抱著一起秤';

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
  String get regularCheckup => '健康檢查';

  @override
  String get emergency => '急診';

  @override
  String get mild => '輕微';

  @override
  String get severe => '嚴重';

  @override
  String get bath => '洗澡';

  @override
  String get fullGrooming => '大美容';

  @override
  String get partialGrooming => '小美容';

  @override
  String get nails => '剪指甲';

  @override
  String get earCleaning => '清耳朵';

  @override
  String get tartarRemoval => '洗牙';

  @override
  String get analGlands => '擠肛門腺';

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
  String get paws => '腳掌';

  @override
  String get important => '重要';

  @override
  String get photosAndVideos => '照片與影片';

  @override
  String get addMedia => '新增媒體';

  @override
  String get selectMediaMethod => '選擇方式';

  @override
  String get useCamera => '使用相機';

  @override
  String get takePhotoOrVideo => '拍照或錄影';

  @override
  String get chooseFromGallery => '從相簿選擇';

  @override
  String get multiSelectHint => '可選擇多個檔案';

  @override
  String get takePhoto => '拍照';

  @override
  String get takePhotoDesc => '使用相機拍照';

  @override
  String get recordVideo => '錄影';

  @override
  String get recordVideoDesc => '使用相機錄影';

  @override
  String get deleteThisPhoto => '刪除此照片';

  @override
  String get deletePhotoConfirm => '確定要刪除這張照片嗎？';

  @override
  String get deleteThisVideo => '刪除此影片';

  @override
  String get deleteVideoConfirm => '確定要刪除這段影片嗎？';

  @override
  String get muted => '靜音';

  @override
  String get soundOn => '開啟聲音';

  @override
  String get allowPermissionInSettings => '請在設定中允許權限';

  @override
  String get openSettings => '開啟設定';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get contactDeveloper => '聯絡開發者';

  @override
  String get contact => '聯絡我們';

  @override
  String get settingsLabel => '設定';

  @override
  String get exportData => '匯出資料';

  @override
  String get importData => '匯入資料';

  @override
  String get sendFeedback => '意見回饋';

  @override
  String get faq => '常見問題';

  @override
  String get homeScreen => '首頁';

  @override
  String get journalScreen => '日誌';

  @override
  String get alarmScreen => '提醒';

  @override
  String get petManagement => '寵物管理';

  @override
  String get recordCategories => '紀錄分類';

  @override
  String get whatIsPetSumtan => 'Pet Sumtan 是什麼？';

  @override
  String get todayRecordSummary => '今日紀錄摘要';

  @override
  String get weeklyStats => '每週統計';

  @override
  String get weightChangeChart => '體重變化圖表';

  @override
  String get findNearbyHospitals => '尋找附近動物醫院';

  @override
  String get addNewRecord => '新增紀錄 (+)';

  @override
  String get viewRecordList => '查看紀錄列表';

  @override
  String get editDeleteRecord => '編輯與刪除紀錄';

  @override
  String get attachMedia => '附加照片/影片';

  @override
  String get addAlarm => '新增提醒';

  @override
  String get repeatAlarm => '重複提醒';

  @override
  String get advanceAlarmHint => '提前提醒 (7天前、3天前、1天前)';

  @override
  String get completeAlarm => '完成提醒';

  @override
  String get deleteAlarm => '刪除提醒';

  @override
  String get registerPet => '登錄寵物';

  @override
  String get editProfile => '編輯個人檔案';

  @override
  String get manageMultiplePets => '管理多隻寵物';

  @override
  String get dogHealthGuide => '狗狗健康指南';

  @override
  String get catHealthGuide => '貓咪健康指南';

  @override
  String get notificationSettings => '通知設定';

  @override
  String get dogHealthCareGuide => '狗狗健康照護指南';

  @override
  String get catHealthCareGuide => '貓咪健康照護指南';

  @override
  String get healthGuideSubtitle => '專業的健康指南\n基於獸醫建議。';

  @override
  String get vaccination => '疫苗接種';

  @override
  String get coreVaccines => '核心疫苗';

  @override
  String get required => '必要';

  @override
  String get nonCoreVaccines => '非核心疫苗';

  @override
  String get recommended => '建議';

  @override
  String get parasitePrevention => '寄生蟲預防';

  @override
  String get heartworm => '心絲蟲';

  @override
  String get monthlyFreq => '每月一次';

  @override
  String get externalParasites => '體外寄生蟲 (跳蚤/壁蝨)';

  @override
  String get internalParasites => '體內寄生蟲';

  @override
  String get threeToSixMonths => '每 3-6 個月';

  @override
  String get nutritionManagement => '營養管理';

  @override
  String get dentalCare => '牙齒保健';

  @override
  String get healthCheckup => '健康檢查';

  @override
  String get emergencySigns => '緊急狀況';

  @override
  String get age => '年齡';

  @override
  String ageAutoCalculated(String age) {
    return '自動計算 · $age';
  }

  @override
  String petAgeMonths(int months) {
    return '$months個月';
  }

  @override
  String petAgeYears(int years) {
    return '$years歲';
  }

  @override
  String petAgeYearsMonths(int years, int months) {
    return '$years歲 $months個月';
  }

  @override
  String get checkupCycle => '檢查頻率';

  @override
  String get mainItems => '主要檢查項目';

  @override
  String get exerciseLevel => '活動量';

  @override
  String get breedExamples => '代表犬種';

  @override
  String get low => '低';

  @override
  String get high => '高';

  @override
  String get menu => '選單';

  @override
  String get helloGreeting => '哈囉！';

  @override
  String get healthyTodayMsg => '\n今天健康嗎？';

  @override
  String get noRecordsYet => '尚無紀錄';

  @override
  String lastRecord(String time) {
    return '最後紀錄 · $time';
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
  String get noWeightData => '無體重資料';

  @override
  String get measuredWeight => '測量體重';

  @override
  String get noTodayRecords => '今天還沒有紀錄';

  @override
  String get homeNoRecordHint => '記錄狀態、排泄和體重\n來追蹤健康狀況。';

  @override
  String noRecordsForDate(String date) {
    return '$date 沒有紀錄';
  }

  @override
  String recordsForDate(String date, String count) {
    return '$date 的紀錄 ($count)';
  }

  @override
  String get daySun => '週日';

  @override
  String get dayMon => '週一';

  @override
  String get dayTue => '週二';

  @override
  String get dayWed => '週三';

  @override
  String get dayThu => '週四';

  @override
  String get dayFri => '週五';

  @override
  String get daySat => '週六';

  @override
  String get whatToRecord => '📝 您想記錄什麼？';

  @override
  String saveErrorMsg(String error) {
    return '儲存失敗：$error';
  }

  @override
  String get alarmUpdated => '提醒已更新';

  @override
  String get alarmAdded => '提醒已新增';

  @override
  String get editAlarm => '編輯提醒';

  @override
  String get deleteAlarmConfirm => '確定要刪除這個提醒嗎？';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name 將被刪除。\n已排程的推播通知也會被取消。';
  }

  @override
  String get doneMsg => '✅ 已完成';

  @override
  String get laterMsg => '🕐 稍後';

  @override
  String get saveCompletion => '✅ 儲存為已完成';

  @override
  String completedQuestion(String type) {
    return '您完成 $type 了嗎？';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return '我們將自動把 $name\n儲存到今天的紀錄中。';
  }

  @override
  String completionSaved(String name) {
    return '$name 的完成狀態已儲存';
  }

  @override
  String get tapAlarmTypeHint => '👆 點擊您需要的提醒類型';

  @override
  String countUnit(int count) {
    return '$count';
  }

  @override
  String dateCompleted(String date) {
    return '$date · 已完成';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ 已超過 $date · 點擊重新排程';
  }

  @override
  String get completedLabel => '已完成';

  @override
  String get edit => '編輯';

  @override
  String recordDeleteCannotUndo(String category) {
    return '$category 紀錄將被刪除。\n此動作無法復原。';
  }

  @override
  String get hintMedicineNameAndDose => '💡 請輸入藥物名稱與劑量';

  @override
  String get hintMedicineName => '💡 請輸入藥物名稱';

  @override
  String get hintDose => '💡 請輸入劑量';

  @override
  String get hintWeightNumber => '💡 請輸入數字體重';

  @override
  String get hintWeight => '💡 請輸入體重';

  @override
  String get hintWeightIsNumber => '💡 體重必須是數字';

  @override
  String get hintWalkTime => '💡 請輸入散步時間';

  @override
  String get hintWalkTimeIsNumber => '💡 散步時間必須是數字';

  @override
  String get hintWalkTimeNumber => '💡 請輸入數字散步時間';

  @override
  String get hintSelectBrushingArea => '💡 請至少選擇一個刷牙部位';

  @override
  String get hintSelectVaccineType => '💡 請至少選擇一種疫苗';

  @override
  String get hintSelectGroomingType => '💡 請至少選擇一種美容/洗澡類型';

  @override
  String get hintSelectSymptomType => '💡 請至少選擇一種症狀';

  @override
  String get hintTitle => '💡 請輸入標題';

  @override
  String get hintVaccineName => '💡 請輸入疫苗名稱';

  @override
  String get hintSelectScheduledDate => '💡 請選擇日期';

  @override
  String get hintSelectScheduledTime => '💡 請選擇時間';

  @override
  String get hintVisitPurpose => '💡 請輸入就診原因';

  @override
  String get hintSelectAppointmentDate => '💡 請選擇預約日期';

  @override
  String get hintSelectAppointmentTime => '💡 請選擇預約時間';

  @override
  String get hintMedicineNameInput => '💡 請輸入藥物名稱';

  @override
  String get hintSelectMedicationDate => '💡 請選擇餵藥日期';

  @override
  String get hintSelectMedicationTime => '💡 請選擇餵藥時間';

  @override
  String get hintAlarmName => '💡 請輸入提醒名稱';

  @override
  String get hintSelectMealTime => '💡 請選擇用餐時間';

  @override
  String get hintSelectAlarmTime => '💡 請選擇提醒時間';

  @override
  String get noPetRegisterFirst => '尚未登錄寵物。請先在「我的」新增寵物。';

  @override
  String get alarmRescheduled => '提醒已重新排程';

  @override
  String get examplePetName => '例：波波';

  @override
  String get exampleBreed => '例：貴賓犬';

  @override
  String get exampleBreedMulti => '例：貴賓犬、波斯貓';

  @override
  String get example30 => '例：30';

  @override
  String get example80 => '例：80';

  @override
  String get example200 => '例：200';

  @override
  String get example25 => '例：2.5';

  @override
  String get example42 => '例：4.2';

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
  String get idInfo => '身分資訊';

  @override
  String get idInfoOptional => '身分資訊 (選填)';

  @override
  String get name => '名字';

  @override
  String get petKind => '種類';

  @override
  String get breed => '品種';

  @override
  String get weight => '體重';

  @override
  String get microchip => '晶片號碼';

  @override
  String get registrationNumber => '寵物登記證號碼';

  @override
  String get birthDate => '生日';

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
  String get neutered => '結紮';

  @override
  String get done => '已結紮';

  @override
  String get notDone => '未結紮';

  @override
  String get notEntered => '未輸入';

  @override
  String get notRegistered => '未登錄';

  @override
  String get dogEmoji => '狗狗 🐶';

  @override
  String get catEmoji => '貓咪 🐱';

  @override
  String get otherEmoji => '其他 🐾';

  @override
  String get noPetsRegistered => '尚未登錄寵物';

  @override
  String get registerPetPrompt => '登錄您的寵物\n讓我們一起照顧牠的健康！';

  @override
  String get registerPetBtn => '登錄寵物';

  @override
  String get editPet => '編輯資料';

  @override
  String get neuteringStatus => '結紮狀態';

  @override
  String get neuteredDone => '已結紮';

  @override
  String get notNeutered => '未結紮';

  @override
  String get selectDateHint => '選擇日期';

  @override
  String get saveChanges => '儲存變更';

  @override
  String get registerBtn => '登錄';

  @override
  String deletePetName(String name) {
    return '刪除 $name';
  }

  @override
  String deletePetConfirm(String name) {
    return '確定要刪除 $name 嗎？';
  }

  @override
  String deletePetWarning(String name) {
    return '$name 的所有紀錄與提醒都將被刪除，且無法復原。';
  }

  @override
  String petDeleted(String name) {
    return '$name 已刪除';
  }

  @override
  String petAdded(String name) {
    return '$name 已新增 🐾';
  }

  @override
  String get storeUnavailableMsg => '目前無法連接到商店。請稍後再試。';

  @override
  String get checkingPaymentMsg => '正在確認付款資訊。請稍候再試。';

  @override
  String get paymentCompleteMsg => '付款完成。請輸入新家庭成員的資訊。';

  @override
  String get addNewFamilyMember => '要新增家庭成員嗎？';

  @override
  String get firstPetFreeDesc => '第一隻寵物可免費登錄。若要新增更多寵物，每隻需支付一次性費用。';

  @override
  String petsRegisteredStoreUnavailable(int count) {
    return '您目前已登錄 $count 隻寵物。\n請在商店可用時再試一次。';
  }

  @override
  String petsRegisteredPayToAdd(int count, String price) {
    return '您目前已登錄 $count 隻寵物。\n您可以支付 $price 來新增一位新成員。';
  }

  @override
  String get maybeLater => '晚點再說';

  @override
  String get unavailable => '無法使用';

  @override
  String payAndAdd(String price) {
    return '支付 $price 並新增';
  }

  @override
  String get addNextAppointment => '＋ 新增下次預約';

  @override
  String get pottyRecordSaved => '💩 排泄紀錄已儲存';

  @override
  String get conditionRecordSaved => '💗 狀態紀錄已儲存';

  @override
  String get medicationRecordSaved => '💊 餵藥紀錄已儲存';

  @override
  String get weightRecordSaved => '⚖️ 體重紀錄已儲存';

  @override
  String get mealRecordSaved => '🍽️ 用餐紀錄已儲存';

  @override
  String get waterRecordSaved => '💧 飲水紀錄已儲存';

  @override
  String get vetVisitRecordSaved => '🏥 就診紀錄已儲存';

  @override
  String get vaccinationRecordSaved => '💉 疫苗紀錄已儲存';

  @override
  String get groomingRecordSaved => '✂️ 美容紀錄已儲存';

  @override
  String get brushingRecordSaved => '🪥 刷牙紀錄已儲存';

  @override
  String get walkRecordSaved => '🦮 散步紀錄已儲存';

  @override
  String get memoSaved => '📝 備忘錄已儲存';

  @override
  String get abnormalSymptomRecordSaved => '🚨 異常症狀紀錄已儲存';

  @override
  String get moreQuestions => '還有其他問題嗎？';

  @override
  String get contactViaSendFeedback => '請透過「設定 > 意見回饋」與我們聯絡。\n我們會盡快回覆您 🐾';

  @override
  String get contactViaSendFeedbackLong => '請使用設定中的 [意見回饋] 按鈕與我們聯絡。\n我們會盡快回覆您。';

  @override
  String get privacyPolicyEffectiveDate =>
      '本隱私權政策自 2026 年 1 月 1 日起生效。\n最後更新：2026 年 5 月 8 日';

  @override
  String get privacyCollectedInfo => '收集的資訊僅用於以下目的。';

  @override
  String get privacyDataFeatures => 'Pet Sumtan 提供資料匯出 (備份) 與匯入 (還原) 功能。';

  @override
  String get privacyPolicyMayUpdate => '本隱私權政策可能會因法律或服務變更而更新。';

  @override
  String get privacyPolicyContact => '如果您對隱私權政策有任何疑問，請透過下方聯絡我們。';

  @override
  String get catMeal => '用餐';

  @override
  String get catWater => '飲水';

  @override
  String get catGrooming => '美容/洗澡';

  @override
  String get catBrushing => '刷牙';

  @override
  String get catWalk => '散步';

  @override
  String get catHospital => '動物醫院';

  @override
  String get catAbnormalSymptom => '異常';

  @override
  String get catCondition => '狀態';

  @override
  String get catPotty => '排泄';

  @override
  String get mealFormTitle => '🍽️ 用餐日誌';

  @override
  String get walkFormTitle => '🦮 散步日誌';

  @override
  String get weightFormTitle => '⚖️ 體重日誌';

  @override
  String get waterFormTitle => '💧 飲水日誌';

  @override
  String get medicationFormTitle => '💊 餵藥日誌';

  @override
  String get groomingFormTitle => '✂️ 美容日誌';

  @override
  String get brushingFormTitle => '🪥 刷牙日誌';

  @override
  String get conditionFormTitle => '🌡️ 狀態日誌';

  @override
  String get poopFormTitle => '💩 排泄日誌';

  @override
  String get vaccinationFormTitle => '💉 疫苗日誌';

  @override
  String get hospitalFormTitle => '🏥 就診日誌';

  @override
  String get abnormalSymptomFormTitle => '🚨 症狀日誌';

  @override
  String get memoFormTitle => '📝 備忘錄';

  @override
  String get measureMethod => '測量方式';

  @override
  String get feedAmount => '餵食量';

  @override
  String get mlInputLabel => '手動輸入 ml';

  @override
  String get alarmRescheduleNote => '此提醒的日期已過。\n請選擇新日期或將其刪除。';

  @override
  String get nailTrim => '剪指甲';

  @override
  String get shopNameExample => '例：快樂寵物美容';

  @override
  String get poopRecordSaved => '💩 排泄紀錄已儲存';

  @override
  String get memoRecordSaved => '📝 備忘錄已儲存';

  @override
  String get other => '其他';

  @override
  String get whole => '全身';

  @override
  String get paw => '腳掌';

  @override
  String get importance => '重要度';

  @override
  String get timeTaken => '花費時間';

  @override
  String get example10 => '例：10';

  @override
  String get minuteUnit => '分鐘';

  @override
  String get hospitalNameExample => '例：安心動物醫院';

  @override
  String get diagnosisExample => '例：腸胃炎、皮膚炎';

  @override
  String get memoTitlePlaceholder => '請輸入備忘錄標題';

  @override
  String get hintMemoTitle => '💡 請輸入標題';

  @override
  String get poopType => '類型';

  @override
  String get poopStatus => '狀態';

  @override
  String get feces => '糞便';

  @override
  String get bloody => '血便';

  @override
  String get vaccineDhppl => '十合一/八合一';

  @override
  String get vaccineCorona => '冠狀病毒';

  @override
  String get vaccineKennelCough => '犬舍咳';

  @override
  String get vaccineRabies => '狂犬病';

  @override
  String get vaccineInfluenza => '流感';

  @override
  String get vaccineFvrcp => '三合一/四合一';

  @override
  String get vaccineFelv => '白血病 (FeLV)';

  @override
  String get vaccineChlamydia => '披衣菌';

  @override
  String get mute => '靜音';

  @override
  String get photoVideo => '照片 · 影片';

  @override
  String photoVideoCount(int count) {
    return '照片 · 影片 · $count';
  }

  @override
  String get selectMediaSource => '選擇媒體來源';

  @override
  String get cameraCapture => '相機拍攝';

  @override
  String get cameraCaptureSubtitle => '拍照或錄影';

  @override
  String get selectFromGallery => '從相簿選擇';

  @override
  String get selectFromGallerySubtitle => '可選擇多個檔案';

  @override
  String get takePhotoSubtitle => '使用相機拍照';

  @override
  String get recordVideoSubtitle => '使用相機錄影';

  @override
  String get permissionRequired => '請在設定中允許權限';

  @override
  String get confirmDeletePhoto => '確定要刪除這張照片嗎？';

  @override
  String get confirmDeleteVideo => '確定要刪除這段影片嗎？';

  @override
  String get hintMedicineAndDose => '💡 請輸入藥物名稱與劑量';

  @override
  String deleteRecordBody(String category) {
    return '$category 紀錄將被刪除。\n此動作無法復原。';
  }

  @override
  String dayCountShort(int days) {
    return '$days 天';
  }

  @override
  String get helpIntroContent =>
      'Pet Sumtan 是一個讓您在同一個地方記錄與管理寵物健康與日常生活的應用程式。\n您可以輕鬆記錄用餐、飲水、排泄、體重、餵藥、就診等資訊，並設定提醒以免忘記重要事項。';

  @override
  String get helpHomeTodayRecordSummaryDesc => '一眼查看今天新增的所有紀錄。點擊紀錄即可查看詳情或進行編輯。';

  @override
  String get helpHomeWeeklyStatsDesc => '透過圖表查看本週的排泄、用餐與飲水次數，了解寵物的習慣。';

  @override
  String get helpHomeWeightChangeChartDesc => '以圖表顯示最近的體重測量結果，輕鬆追蹤體重趨勢。';

  @override
  String get helpHomeFindNearbyHospitalsDesc => '點擊按鈕即可在地圖上尋找附近的動物醫院。';

  @override
  String get helpHomeAddNewRecordDesc => '點擊下方的 \'+\' 按鈕，選擇分類並新增紀錄。';

  @override
  String get helpRecordCategoriesIntro => '您可以透過 12 種不同的分類來記錄寵物的日常生活。';

  @override
  String get helpCategoryPottyName => '排泄';

  @override
  String get helpCategoryPottyDesc => '記錄糞便/尿液的狀態與類型。您也可以附加照片。';

  @override
  String get helpCategoryConditionName => '狀態';

  @override
  String get helpCategoryConditionDesc => '記錄寵物整體的健康狀態。';

  @override
  String get helpCategoryMedicationName => '餵藥';

  @override
  String get helpCategoryMedicationDesc => '記錄藥物名稱、劑量與時間。';

  @override
  String get helpCategoryWeightName => '體重';

  @override
  String get helpCategoryWeightDesc => '記錄體重 (kg)。您可以在首頁查看趨勢。';

  @override
  String get helpCategoryMealName => '用餐';

  @override
  String get helpCategoryMealDesc => '記錄餵食量與種類。您可以附加照片/影片。';

  @override
  String get helpCategoryWaterName => '飲水';

  @override
  String get helpCategoryWaterDesc => '記錄飲水量 (ml)。您可以附加照片/影片。';

  @override
  String get helpCategoryHospitalName => '動物醫院';

  @override
  String get helpCategoryHospitalDesc => '記錄醫院名稱與診斷結果。您可以附加照片/影片。';

  @override
  String get helpCategoryVaccinationName => '疫苗';

  @override
  String get helpCategoryVaccinationDesc => '記錄疫苗種類與日期。';

  @override
  String get helpCategoryGroomingName => '美容/洗澡';

  @override
  String get helpCategoryGroomingDesc => '記錄美容/洗澡的詳細資訊並附加照片/影片。';

  @override
  String get helpCategoryDentalName => '刷牙';

  @override
  String get helpCategoryDentalDesc => '記錄刷牙狀況並新增備註。';

  @override
  String get helpCategoryWalkName => '散步';

  @override
  String get helpCategoryWalkDesc => '記錄散步的距離與時間。';

  @override
  String get helpCategoryMemoName => '備忘錄';

  @override
  String get helpCategoryMemoDesc => '您可以自由留下筆記。';

  @override
  String get helpJournalViewRecordListDesc => '依日期顯示所有紀錄。您可以透過分類圖示輕鬆辨識。';

  @override
  String get helpJournalEditDeleteRecordDesc => '點擊紀錄即可開啟編輯頁面。您可以更改內容或刪除紀錄。';

  @override
  String get helpJournalAttachMediaDesc => '您可以在用餐、飲水、就診、美容與排泄等分類中附加照片或影片。';

  @override
  String get helpAlarmAddDesc => '為疫苗、餵藥、就診、美容等設定提醒。先選擇類型，然後設定日期與時間。';

  @override
  String get helpAlarmRepeatDesc => '您可以設定每天、每週或每月的重複規則。非常適合定期餵藥或預防心絲蟲。';

  @override
  String get helpAlarmAdvanceDesc => '對於疫苗等重要事件，您可以設定在 7 天前、3 天前或 1 天前收到提前提醒。';

  @override
  String get helpAlarmCompleteDesc => '點擊提醒將其標記為「已完成」。已完成的提醒會移至「過去的提醒」列表。';

  @override
  String get helpAlarmDeleteDesc => '向左滑動提醒即可將其刪除。';

  @override
  String get helpPetRegisterDesc => '輸入名字、種類 (狗/貓)、品種、性別、生日與結紮狀態來登錄您的寵物。';

  @override
  String get helpPetEditProfileDesc => '您可以在個人檔案畫面更改名字、品種、體重、晶片號碼、寵物登記證號碼與大頭貼。';

  @override
  String get helpPetManageMultipleDesc => '您可以登錄多隻寵物。點擊上方寵物標籤即可切換。';

  @override
  String get helpDogHealthGuideDesc =>
      '提供基於獸醫建議的健康資訊：核心/非核心疫苗時程、寄生蟲預防、牙齒保健、營養等。';

  @override
  String get helpCatHealthGuideDesc => '查看貓咪專屬的疫苗時程、寄生蟲預防、牙齒保健與營養資訊。';

  @override
  String get helpSettingsNotificationDesc => '開啟或關閉所有應用程式通知。';

  @override
  String get helpSettingsExportDesc => '將所有儲存的資料匯出為 ZIP 檔案。更換裝置時可作為備份使用。';

  @override
  String get helpSettingsImportDesc => '匯入先前儲存的 ZIP 備份檔案以還原資料。';

  @override
  String get helpSettingsFeedbackDesc =>
      '如果您有任何問題或建議，請透過電子郵件告訴我們。這將幫助我們改善應用程式。';

  @override
  String get helpFaqDeletePetQ => '如果我刪除了寵物，牠的所有紀錄也會被刪除嗎？';

  @override
  String get helpFaqDeletePetA =>
      '是的，如果您刪除了一隻寵物，牠的所有紀錄與提醒也會被刪除。請在刪除前匯出資料以保留備份。';

  @override
  String get helpFaqMultipleMediaQ => '我可以為一筆紀錄附加多張照片嗎？';

  @override
  String get helpFaqMultipleMediaA => '可以，您可以附加多張照片或影片。您可以從相簿選擇，或直接使用相機拍攝。';

  @override
  String get helpFaqNoNotificationQ => '我收不到提醒通知。';

  @override
  String get helpFaqNoNotificationA =>
      '請檢查您的裝置設定是否允許 Pet Sumtan 的通知。另外，請確認應用程式內的「通知設定」已開啟 (設定 > 通知)。';

  @override
  String get helpFaqMoveDataQ => '我可以將資料轉移到新裝置嗎？';

  @override
  String get helpFaqMoveDataA =>
      '在舊裝置上透過「設定 > 匯出資料」儲存備份檔案，然後在新裝置上透過「設定 > 匯入資料」還原。';

  @override
  String get helpFaqMultiplePetsQ => '我可以登錄多隻寵物嗎？';

  @override
  String get helpFaqMultiplePetsA => '您可以免費登錄一隻寵物。使用付費功能即可新增更多寵物。';

  @override
  String get privacyIntroBody =>
      'Pet Sumtan 是一個無需註冊即可使用的應用程式，所有資料僅儲存在您的裝置上。我們不會將您的個人資訊傳送到外部伺服器，確保您寶貴的寵物資訊安全。';

  @override
  String get privacySection1Title => '收集的個人資訊';

  @override
  String get privacySection1Body =>
      'Pet Sumtan 無需註冊即可使用，且不會收集任何個人識別資訊。然而，為了提供應用程式功能，以下資訊可能會儲存在您的裝置上。';

  @override
  String get privacyLocalStorageInfo => '儲存在裝置本機的資訊';

  @override
  String get privacyPetInfo => '寵物資訊：名字、種類、品種、生日、性別、體重、結紮狀態、晶片號碼、寵物登記證號碼';

  @override
  String get privacyHealthRecords =>
      '健康紀錄：您自行輸入的排泄、用餐、飲水、體重、餵藥、疫苗、就診、美容、刷牙、散步、狀態、備忘錄等';

  @override
  String get privacyAttachedMedia => '附加的媒體檔案：您自行拍攝或選擇的照片與影片';

  @override
  String get privacyNotificationSettings => '提醒設定：提醒類型、排程日期與時間、重複規則';

  @override
  String get privacyInAppPurchaseTitle => '關於應用程式內購買';

  @override
  String get privacyPaymentProcessing =>
      '付款透過 Apple App Store 或 Google Play Store 處理，應用程式不會直接收集或儲存您的付款資訊。';

  @override
  String get privacyReceiptVerification => '根據各平台的政策，僅處理驗證購買收據所需的最少資訊。';

  @override
  String get privacySection2Title => '收集與使用目的';

  @override
  String get privacyPurposeRecords => '記錄與查看寵物的健康紀錄';

  @override
  String get privacyPurposeStats => '在首頁提供統計資料 (每週排泄狀態、用餐、飲水、體重變化圖表等)';

  @override
  String get privacyPurposeReminders => '發送與健康相關的提醒，如疫苗、餵藥、就診等';

  @override
  String get privacyPurposeBackupRestore => '提供資料備份與還原功能';

  @override
  String get privacyPurposePaidEligibility => '驗證使用付費功能的資格';

  @override
  String get privacySection3Title => '資訊的保留與銷毀';

  @override
  String get privacyRetentionBody =>
      'Pet Sumtan 的所有資料僅儲存在您裝置的本機資料庫 (SQLite) 中，不會傳送到外部伺服器。';

  @override
  String get privacyDataDeletionMethod => '資料銷毀方式';

  @override
  String get privacyDeleteInApp => '您可以直接透過應用程式內的「設定 > 資料管理」刪除寵物資訊與紀錄。';

  @override
  String get privacyDeleteUninstall => '刪除應用程式也會一併刪除裝置上儲存的所有資料。';

  @override
  String get privacyDeleteBackupWarning => '請注意，如果您在刪除應用程式前沒有備份 (匯出)，資料將無法復原。';

  @override
  String get privacySection4Title => '提供資訊給第三方';

  @override
  String get privacyThirdPartyBody => 'Pet Sumtan 不會將您的個人資訊提供給外部第三方。然而，以下情況例外：';

  @override
  String get privacyThirdPartyUserExport => '當您自行使用資料匯出 (分享備份檔案) 功能時';

  @override
  String get privacyThirdPartyLegalRequest => '當法律要求或相關當局提出合法要求時';

  @override
  String get privacySection5Title => '關於存取權限';

  @override
  String get privacyPermissionsBody =>
      '為了提供應用程式功能，我們可能會要求以下權限。即使您不授予權限，仍可正常使用其他功能。';

  @override
  String get privacyPermissionCameraName => '相機';

  @override
  String get privacyPermissionCameraDesc => '用於直接拍攝照片或錄影以附加到健康紀錄中。';

  @override
  String get privacyPermissionMediaName => '照片與媒體存取';

  @override
  String get privacyPermissionMediaDesc => '用於從相簿選擇照片或影片以附加到紀錄中。';

  @override
  String get privacyPermissionNotificationName => '通知';

  @override
  String get privacyPermissionNotificationDesc => '用於發送與健康相關的提醒，如疫苗、餵藥、就診等。';

  @override
  String get privacyPermissionFileName => '檔案存取 (Android)';

  @override
  String get privacyPermissionFileDesc => '用於儲存或載入資料備份檔案。';

  @override
  String get privacySection6Title => '資料備份與還原';

  @override
  String get privacyBackupExport => '匯出：您可以將所有應用程式資料儲存或分享為 (.zip) 檔案。';

  @override
  String get privacyBackupImport => '匯入：您可以載入先前匯出的備份檔案來還原資料。';

  @override
  String get privacyBackupWarning => '備份檔案由您自行管理，請小心不要與他人分享檔案。';

  @override
  String get privacySection7Title => '保護兒童隱私';

  @override
  String get privacyChildrenBody =>
      'Pet Sumtan 不會另外收集 14 歲以下兒童的個人資訊。所有應用程式資料僅儲存在裝置上，不會傳送到外部伺服器，因此兒童也能安全使用。';

  @override
  String get privacySection8Title => '隱私權政策的變更';

  @override
  String get privacyPolicyChangeNotice => '如有任何變更，我們將透過應用程式更新說明或應用程式內通知來通知您。';

  @override
  String get privacyPolicyChangeEffective => '修訂後的政策將在通知後 7 天生效。';

  @override
  String get privacySection9Title => '聯絡我們';

  @override
  String get hgDogHeroTitle => '狗狗健康指南';

  @override
  String get hgCatHeroTitle => '貓咪健康指南';

  @override
  String get hgDogCoreDhppl =>
      '**十合一/八合一疫苗 (DHPPL)** — 犬瘟熱、傳染性肝炎、犬小病毒、副流感、鉤端螺旋體。\n6-8週齡接種第一劑，之後每3-4週接種一次（共3劑），之後每年補強一劑。';

  @override
  String get hgDogCoreRabies => '**狂犬病** — 3個月大起接種第一劑，之後每年補強一劑（許多地區為法定強制接種）。';

  @override
  String get hgDogCoreCorona => '**冠狀病毒** — 6-8週齡起，間隔3-4週接種兩劑，之後每年補強一劑。';

  @override
  String get hgDogNonCoreKennel => '**犬舍咳** — 建議常去寵物旅館、美容院或公園的狗狗接種。可透過點鼻或注射。';

  @override
  String get hgDogNonCoreFlu => '**犬流感** — 戶外活動量大或常接觸其他狗狗時建議接種。';

  @override
  String get hgDogHeartworm1 => '在蚊子出沒的季節（溫暖地區為全年），建議**每月一次**進行預防。';

  @override
  String get hgDogHeartworm2 => '一旦感染，治療困難且有致命風險 — **預防是最好的方法**。';

  @override
  String get hgDogHeartworm3 => '開始預防前，必須先進行血液檢查（確認為陰性）。';

  @override
  String get hgDogHeartworm4 => '全年預防更為安全（獸醫建議）。';

  @override
  String get hgDogExternalParasites1 => '**每個月**使用滴劑或口服藥進行預防。';

  @override
  String get hgDogExternalParasites2 => '散步後，務必檢查耳朵內側、腳趾間和腋下是否有壁蝨。';

  @override
  String get hgDogExternalParasites3 => '若要移除壁蝨，請使用鑷子小心向上拔出（請勿旋轉）。';

  @override
  String get hgDogInternalParasites1 => '蛔蟲、鉤蟲、鞭蟲：**每 3 到 6 個月**服用一次驅蟲藥。';

  @override
  String get hgDogInternalParasites2 => '幼犬（2週齡起）：每兩週驅蟲一次（共4次），之後定期保養。';

  @override
  String get hgDental1 => '每天刷牙是最好的選擇 — 建議**每週至少 3 次**。';

  @override
  String get hgDental2 => '務必使用**寵物專用牙膏**（絕對禁止使用含木糖醇的人類牙膏）。';

  @override
  String get hgDental3 => '如果牙結石過多，必須在動物醫院進行洗牙（需全身麻醉）。';

  @override
  String get hgDental4 => '潔牙骨和咀嚼玩具可作為輔助保養。';

  @override
  String get hgDogForbiddenFoodAlert => '以下食物對狗狗有毒。即使是少量也可能致命，請絕對不要餵食。';

  @override
  String get hgDogForbiddenGrape => '**葡萄/葡萄乾** — 導致腎衰竭，少量即致命。';

  @override
  String get hgDogForbiddenChocolate => '**巧克力/可可** — 可可鹼中毒，導致心臟衰竭、抽搐。';

  @override
  String get hgDogForbiddenOnion => '**洋蔥/青蔥/大蒜** — 破壞紅血球，導致溶血性貧血。';

  @override
  String get hgDogForbiddenXylitol => '**木糖醇 (代糖)** — 導致胰島素過度分泌、低血糖、肝衰竭。';

  @override
  String get hgDogForbiddenMacadamia => '**夏威夷豆** — 肌肉無力、高燒、嘔吐。';

  @override
  String get hgDogForbiddenDoughAlcohol => '**生麵糰/酒精** — 乙醇中毒、低血糖。';

  @override
  String get hgDogForbiddenAvocado => '**酪梨** — 含有酪梨素 (Persin)，會導致嘔吐和腹瀉。';

  @override
  String get hgEmergencyAlert => '如果出現以下症狀，請立即前往動物醫院就診。';

  @override
  String get hgDogEmergency1 => '完全沒有食慾超過 24 小時。';

  @override
  String get hgDogEmergency2 => '一天內頻繁嘔吐或腹瀉 3 次以上。';

  @override
  String get hgDogEmergency3 => '腹部腫脹 / 乾嘔（疑似胃扭轉）。';

  @override
  String get hgDogEmergency4 => '呼吸困難、牙齦蒼白、發紺（發紫）。';

  @override
  String get hgDogEmergency5 => '抽搐、癲癇發作、失去意識。';

  @override
  String get hgDogEmergency6 => '超過 12 小時未排尿。';

  @override
  String get hgDogEmergency7 => '明顯外傷、骨折、嚴重出血。';

  @override
  String get hgDogExerciseAlert => '狗狗缺乏運動不僅是生理問題，更是造成壓力、焦慮和破壞性行為的主要原因。';

  @override
  String get hgDogWalk1 => '小型犬：建議每天至少 **20-30 分鐘**。中大型犬：**1 小時**以上。';

  @override
  String get hgDogWalk2 => '散步不只是為了排泄，更是為了**嗅覺刺激、社會化和紓解壓力**。';

  @override
  String get hgDogWalk3 => '讓牠們自由地嗅聞 — 這對消除精神疲勞非常有效。';

  @override
  String get hgDogWalk4 => '夏天請注意柏油路面燙傷 — 建議在早上 7 點前或傍晚散步。';

  @override
  String get hgDogPlay1 => '**丟接球 / 拔河遊戲** — 消耗體力並增進與主人的感情。';

  @override
  String get hgDogPlay2 => '**嗅聞遊戲 (Nosework)** — 刺激大腦，15 分鐘的效果相當於散步 30 分鐘。';

  @override
  String get hgDogPlay3 => '**益智玩具/漏食球** — 有效緩解獨處時的分離焦慮。';

  @override
  String get hgDogPlay4 => '每天只需 **10-15 分鐘** 的專注玩耍，就能大幅降低壓力水平。';

  @override
  String get hgDogStress1 => '破壞家具或物品、過度吠叫 — 缺乏運動或刺激的跡象。';

  @override
  String get hgDogStress2 => '追著尾巴轉、過度舔舐（腳掌或身體） — 緩解壓力的強迫行為。';

  @override
  String get hgDogStress3 => '與主人分開時過度焦慮、隨地大小便 — 疑似分離焦慮。';

  @override
  String get hgDogStress4 => '如果症狀持續，建議諮詢獸醫或行為專家。';

  @override
  String get hgDogSocial1 => '**3 到 14 週齡**是社會化的黃金期 — 讓牠們接觸不同的人、聲音和環境非常重要。';

  @override
  String get hgDogSocial2 => '與其他狗狗互動 — 多利用寵物公園或幼犬訓練班。';

  @override
  String get hgDogSocial3 => '探索新的地方、氣味和聲音有助於豐富心智。';

  @override
  String get hgDogSocial4 => '正向強化訓練（響片、零食）能刺激大腦並增進感情。';

  @override
  String get hgCatCoreFvrcp =>
      '**三合一/四合一疫苗 (FVRCP)** — 貓皰疹病毒、卡里西病毒、貓瘟（泛白血球減少症）。\n6-8週齡接種第一劑，之後每3-4週接種一次（共3劑），之後每 1 到 3 年補強一劑。';

  @override
  String get hgCatCoreRabies => '**狂犬病** — 外出貓必打，室內貓也建議接種（許多地區為法定強制接種）。';

  @override
  String get hgCatNonCoreFelv => '**貓白血病病毒 (FeLV)** — 強烈建議外出貓或多貓家庭接種。';

  @override
  String get hgCatNonCoreChlamydia => '**貓披衣菌** — 多貓家庭中，可預防結膜炎。';

  @override
  String get hgCatNonCoreFiv => '**貓愛滋 (FIV)** — 針對會外出的公貓（透過咬傷傳染）。';

  @override
  String get hgCatExternalParasites1 => '外出貓：**每個月**使用一次跳蚤/壁蝨預防滴劑。';

  @override
  String get hgCatExternalParasites2 => '室內貓也可能透過衣物或鞋子感染跳蚤 → 建議**每 3 個月**預防一次。';

  @override
  String get hgCatExternalParasites3 => '使用滴劑時，請點在貓咪舔不到的後頸部。';

  @override
  String get hgCatInternalHeartworm => '體內寄生蟲與心絲蟲';

  @override
  String get hgCatInternalParasites1 => '蛔蟲/絛蟲：**每 3 到 6 個月**服用一次驅蟲藥。';

  @override
  String get hgCatInternalParasites2 => '如果餵食生肉或生魚，建議增加檢查頻率。';

  @override
  String get hgCatHeartworm1 => '心絲蟲 — **貓咪感染後無藥可醫，預防是唯一的方法**。強烈建議外出貓每月預防。';

  @override
  String get hgCatMajorDiseases => '需要注意的貓咪主要疾病';

  @override
  String get hgCatDiseaseAlert => '貓咪很會隱藏疼痛，通常要到疾病晚期才會出現症狀。定期健康檢查非常重要。';

  @override
  String get hgCatDiseaseFlutd => '**下泌尿道疾病 (FLUTD)** — 公貓常見。無法排尿是極度緊急的狀況。';

  @override
  String get hgCatDiseaseCkd => '**慢性腎臟病 (CKD)** — 高齡貓死亡的主要原因。7 歲以後必須定期進行血液檢查。';

  @override
  String get hgCatDiseaseDiabetes => '**貓糖尿病** — 肥胖或高齡貓風險較高。請注意是否有多飲多尿的現象。';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**甲狀腺機能亢進** — 常見於 10 歲以上的貓咪。症狀包括體重減輕、食慾大增和焦躁不安。';

  @override
  String get hgCatDiseaseStomatitis =>
      '**口炎 (Stomatitis)** — 貓咪非常常見的疾病。請注意是否有口臭、流口水或食慾不振。';

  @override
  String get hgCatDiseaseFhv =>
      '**貓皰疹病毒 (FHV-1)** — 感染後病毒會終身潛伏。在壓力大時會復發，導致打噴嚏、眼部流狀物和結膜炎。';

  @override
  String get hgHydrationDiet => '水分補充與營養管理';

  @override
  String get hgCatHydrationAlert => '貓咪天生不愛喝水，這使牠們容易罹患泌尿道疾病。鼓勵牠們喝水非常重要。';

  @override
  String get hgCatHydration1 => '建議搭配濕食（主食罐或餐包）來補充水分。';

  @override
  String get hgCatHydration2 => '牠們偏好流動的水 — 安裝**寵物飲水機**非常有效。';

  @override
  String get hgCatHydration3 => '將水碗放在遠離飯碗的地方；牠們偏好寬口且平淺的碗。';

  @override
  String get hgCatHydration4 => '飲水目標：每天每公斤體重約 **40-60 ml**。';

  @override
  String get hgCatForbiddenFoodAlert => '以下食物對貓咪有毒。即使是少量也可能致命，請絕對不要餵食。';

  @override
  String get hgCatForbiddenOnion => '**洋蔥/青蔥/大蒜** — 破壞紅血球，導致溶血性貧血（比狗狗更敏感）。';

  @override
  String get hgCatForbiddenGrape => '**葡萄/葡萄乾** — 導致腎衰竭。';

  @override
  String get hgCatForbiddenChocolate => '**巧克力/咖啡因** — 對心臟和神經系統有毒。';

  @override
  String get hgCatForbiddenRawFish => '**生魚（長期餵食）** — 導致維生素 B1（硫胺素）缺乏。';

  @override
  String get hgCatForbiddenMilk => '**牛奶/乳製品** — 成貓有乳糖不耐症，會導致腹瀉。';

  @override
  String get hgCatForbiddenXylitolAlcohol => '**木糖醇/酒精** — 對肝臟和神經系統有毒。';

  @override
  String get hgCatForbiddenAvocado => '**酪梨** — 含有酪梨素 (Persin)，會導致嘔吐和腹瀉。';

  @override
  String get hgCatForbiddenRawEggWhite => '**生蛋白** — 抗生物素蛋白會阻礙生物素吸收，導致皮膚和毛髮問題。';

  @override
  String get hgCatEmergency1 => '**完全無法排尿或血尿** — 尿道阻塞的緊急狀況（尤其是公貓）。';

  @override
  String get hgCatEmergency2 => '完全沒有食慾超過 24 小時（有脂肪肝的風險）。';

  @override
  String get hgCatEmergency3 => '**張口呼吸** — 在貓咪身上絕對不正常，需要立即急診。';

  @override
  String get hgCatEmergency4 => '後腿突然癱瘓或冰冷（疑似血栓）。';

  @override
  String get hgCatEmergency5 => '抽搐、癲癇發作、失去意識。';

  @override
  String get hgCatEmergency6 => '牙齦或舌頭蒼白或發黃（黃疸）。';

  @override
  String get hgCatEmergency7 => '一天內頻繁嘔吐或腹瀉 3 次以上，或嘔吐物/糞便帶血。';

  @override
  String get hgCatEmergency8 => '明顯外傷、骨折、嚴重出血。';

  @override
  String get hgEnvironmentMentalHealth => '環境與心理健康';

  @override
  String get hgIndoorEnvironment => '室內環境管理';

  @override
  String get hgStressManagement => '壓力管理';

  @override
  String get hgCatEnvironment1 => '**貓砂盆**：數量至少為貓咪數量 + 1，每天保持清潔。';

  @override
  String get hgCatEnvironment2 => '**貓抓板**：至少 2 個以上（結合垂直和水平類型）。';

  @override
  String get hgCatEnvironment3 => '**高處空間**：提供貓跳台或層板等垂直空間（滿足領域本能）。';

  @override
  String get hgCatEnvironment4 => '**躲藏空間**：提供紙箱或隧道等安全的躲藏空間。';

  @override
  String get hgCatStress1 => '貓咪的壓力會直接導致免疫力下降、泌尿道疾病、皰疹復發等。';

  @override
  String get hgCatStress2 => '遇到環境突變（搬家、新家庭成員等）時，可使用費洛蒙擴香（如 Feliway）。';

  @override
  String get hgCatStress3 => '每天至少提供 **10-15 分鐘** 使用逗貓棒的互動遊戲。';

  @override
  String get hgCatStress4 => '多貓家庭：請根據貓咪數量分開資源（飯碗、貓砂盆、床鋪）。';

  @override
  String get hgAge => '年齡';

  @override
  String get hgCheckupCycle => '檢查頻率';

  @override
  String get hgMainItems => '主要檢查項目';

  @override
  String get hgAge1to6 => '1 到 6 歲';

  @override
  String get hgAge7to10 => '7 到 10 歲';

  @override
  String get hgAge11Plus => '11 歲以上';

  @override
  String get hgYearlyOnce => '每年一次';

  @override
  String get hgYearlyTwice => '每年兩次';

  @override
  String get hgEvery3to4Months => '每 3-4 個月';

  @override
  String get hgDogCheckupItems1 => '血液檢查、心臟檢查、體重、牙齒';

  @override
  String get hgDogCheckupItems2 => '血液、尿液、X光、血壓、關節';

  @override
  String get hgDogCheckupItems3 => '全血細胞計數、超音波、腎臟/肝臟功能';

  @override
  String get hgCatCheckupItems1 => '血液檢查、尿液檢查、體重、牙齒';

  @override
  String get hgCatCheckupItems2 => '腎臟/肝臟功能、血壓、甲狀腺 (T4)';

  @override
  String get hgCatCheckupItems3 => '全血細胞計數、腹部超音波、密集腎臟監測';

  @override
  String get hgExerciseAmount => '活動量';

  @override
  String get hgBreedExamples => '代表犬種';

  @override
  String get hgLow => '低';

  @override
  String get hgNormal => '中等';

  @override
  String get hgHigh => '高';

  @override
  String get hgBreedLowExamples => '鬥牛犬、巴吉度獵犬、西施犬、瑪爾濟斯';

  @override
  String get hgBreedNormalExamples => '貴賓犬、比熊犬、可卡犬、米格魯';

  @override
  String get hgBreedHighExamples => '拉布拉多、黃金獵犬、哈士奇、邊境牧羊犬';

  @override
  String get hgDisclaimer =>
      '本指南提供一般性健康資訊。實際照護需求可能因寵物的具體狀況而異。若出現異常症狀或需要治療，請務必諮詢獸醫師。';

  @override
  String get categoryFilter => '分類篩選';

  @override
  String get selectAll => '全選';

  @override
  String get deselectAll => '取消全選';

  @override
  String get apply => '套用';

  @override
  String get saving => '儲存中...';

  @override
  String get treatmentContent => '治療內容';

  @override
  String get conditionScoreWord1 => '非常差';

  @override
  String get conditionScoreWord2 => '差';

  @override
  String get conditionScoreWord3 => '普通';

  @override
  String get conditionScoreWord4 => '好';

  @override
  String get conditionScoreWord5 => '非常好';

  @override
  String conditionScoreFormat(Object score, Object word) {
    return '評分 $score - $word';
  }
}
