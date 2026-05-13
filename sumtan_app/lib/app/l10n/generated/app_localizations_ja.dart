// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'ペットスムタン';

  @override
  String get appTagline => 'ペット健康管理アプリ';

  @override
  String get navHome => 'ホーム';

  @override
  String get navJournal => '日誌';

  @override
  String get navNotifications => '通知';

  @override
  String get navProfile => 'プロフィール';

  @override
  String get navSettings => '設定';

  @override
  String get navAddAlarm => '通知を追加';

  @override
  String get drawerService => 'サービス';

  @override
  String get drawerNearbyHospitals => '近くの病院を探す';

  @override
  String get drawerNearbyHospitalsSub => '現在地周辺の動物病院';

  @override
  String get drawerHealthGuide => '健康管理ガイド';

  @override
  String get drawerHealthGuideSub => 'ペット健康ガイド';

  @override
  String get drawerApp => 'アプリ';

  @override
  String get drawerHelp => 'ヘルプ';

  @override
  String get dialogExternalTitle => '外部ページを開く';

  @override
  String get dialogExternalHospitalBody =>
      '近くの動物病院を探すには\n外部ウェブページが必要です。\n\n今すぐ移動しますか？';

  @override
  String get commonCancel => 'キャンセル';

  @override
  String get commonGo => '移動する';

  @override
  String get commonDelete => '削除';

  @override
  String get commonSave => '保存する';

  @override
  String get commonLoading => '準備中...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'もう一度押すとアプリを終了します';

  @override
  String get toastNeedPet => 'ペットがいません。プロフィールからまず登録してください！';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsPushNotifications => 'プッシュ通知を許可';

  @override
  String get settingsPushNotificationsSub => '端末の通知権限設定';

  @override
  String get settingsLanguageSection => '言語';

  @override
  String get settingsLanguage => 'アプリの言語';

  @override
  String get settingsLanguageSystem => '端末の設定を使用';

  @override
  String get settingsLanguageChanged => 'アプリの言語を変更しました';

  @override
  String get settingsData => 'データ管理';

  @override
  String get settingsExport => 'データを書き出す';

  @override
  String get settingsExportSub => 'ZIPファイルで保存';

  @override
  String get settingsImport => 'データを読み込む';

  @override
  String get settingsImportSub => 'ZIPファイルから復元';

  @override
  String get settingsAppInfo => 'アプリ情報';

  @override
  String get settingsVersion => 'アプリバージョン';

  @override
  String get settingsPrivacy => 'プライバシーポリシー';

  @override
  String get settingsFeedback => 'フィードバックを送信';

  @override
  String get settingsFeedbackSubject => 'ペットスムタン フィードバック';

  @override
  String get settingsEmailAppMissing => 'メールアプリが見つかりません';

  @override
  String get settingsImportConfirmBody =>
      '既存のすべてのデータが削除され、バックアップファイルのデータに置き換えられます。\n\n続けますか？';

  @override
  String get settingsImportAction => '読み込む';

  @override
  String get settingsImporting => 'データを読み込み中';

  @override
  String get settingsImportSuccess => 'バックアップデータを復元しました';

  @override
  String get settingsImportFailed => '読み込みに失敗しました';

  @override
  String get settingsExportTitle => 'データを書き出す';

  @override
  String get settingsExportBenefitTitle => '大切な記録を安全に';

  @override
  String get settingsExportBenefitPets => 'すべてのペットプロフィールと写真';

  @override
  String get settingsExportBenefitRecords => '健康記録・日誌・体重すべて';

  @override
  String get settingsExportBenefitMedia => '添付画像・動画を含む';

  @override
  String get settingsStoreUnavailable => '現在ストアに接続できません。\nしばらくしてからもう一度お試しください。';

  @override
  String settingsPayAndExport(String price) {
    return '$priceを支払って書き出す';
  }

  @override
  String get settingsUnlocked => 'ロック解除済み';

  @override
  String get settingsExportUnlockedBody =>
      'すべてのペット情報と記録をZIPファイルで保存します。\n保存されたファイルはいつでも無料で読み込んで復元できます。';

  @override
  String get settingsExporting => '書き出し中...';

  @override
  String get settingsExportZip => 'ZIPファイルで書き出す';

  @override
  String get settingsExportConfirmBody => 'すべてのペット情報、記録、添付メディアをZIPファイルで書き出します。';

  @override
  String get settingsExportAction => '書き出す';

  @override
  String get settingsExportSuccess => 'バックアップファイルを共有できます';

  @override
  String get settingsExportFailed => '書き出しに失敗しました';

  @override
  String get settingsPurchaseFailed => '支払いに失敗しました';

  @override
  String get errorDbInit => 'アプリデータの準備中に問題が発生しました。\nしばらくしてからもう一度起動してください。';

  @override
  String get help => 'ヘルプ';

  @override
  String get healthGuide => '健康管理ガイド';

  @override
  String get dog => '犬';

  @override
  String get cat => '猫';

  @override
  String get tabDog => '🐶 犬';

  @override
  String get tabCat => '🐱 猫';

  @override
  String get savedMsg => '保存しました';

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get deleteAction => '削除する';

  @override
  String get save => '保存する';

  @override
  String get memo => 'メモ';

  @override
  String get memoPlaceholder => '自由にメモを残してください';

  @override
  String get addBtn => '+ 追加';

  @override
  String get errorOccurred => 'エラーが発生しました';

  @override
  String errorOccurredWithDetail(String error) {
    return 'エラーが発生しました\n$error';
  }

  @override
  String get pet => 'ペット';

  @override
  String get selectPet => 'ペットを選択';

  @override
  String get addNewPet => '新しいペットを追加';

  @override
  String get noAlarms => '通知がまだありません';

  @override
  String alarmEmptyDesc(String petName) {
    return '$petNameも今日も元気に過ごしましょう！\n下の通知追加ボタンをタップして始めましょう。';
  }

  @override
  String get scheduledAlarms => '予定された通知';

  @override
  String get swipeToDelete => 'スワイプで削除できます';

  @override
  String get selectAlarmType => '通知の種類を選択';

  @override
  String get vetAppointment => '病院予約';

  @override
  String get medication => '投薬';

  @override
  String get mealTime => '食事時間';

  @override
  String get dailyReminder => '毎日のリマインダー';

  @override
  String get alarmLabel => '通知';

  @override
  String get alarmBodyVaccination => '予防接種の予定日をご確認ください。';

  @override
  String get alarmBodyVetAppointment => '病院の予約時間が近づいています。';

  @override
  String get alarmBodyMedication => '投薬の時間です。';

  @override
  String get alarmBodyMealTime => '食事の時間をお忘れなく。';

  @override
  String get alarmBodyDailyReminder => '今日の健康記録を残してください。';

  @override
  String get alarmBodyDefault => 'ペット健康管理のお知らせです。';

  @override
  String get alarmDeleted => '通知が削除されました 🗑️';

  @override
  String get hidePastAlarms => '過去の通知を非表示';

  @override
  String get showPastAlarms => '過去の通知を表示';

  @override
  String get deleteAll => 'すべて削除';

  @override
  String get deletePastAlarms => '過去の通知を削除';

  @override
  String deletePastAlarmsConfirm(int count) {
    return '過去の通知$count件をすべて削除しますか？';
  }

  @override
  String get pastAlarmsDeleted => '過去の通知がすべて削除されました';

  @override
  String get pastLabel => '過去';

  @override
  String get today => '今日';

  @override
  String get tomorrowSameTime => '明日の同じ時間';

  @override
  String get snoozeQuestion => 'いつ再度お知らせしますか？';

  @override
  String get snooze5min => '5分後';

  @override
  String get snooze10min => '10分後';

  @override
  String get snooze30min => '30分後';

  @override
  String get snooze1hour => '1時間後';

  @override
  String get snooze3hour => '3時間後';

  @override
  String get snoozeCustom => '手動で指定';

  @override
  String get snoozeAtThisTime => 'この時間に再通知';

  @override
  String snoozeConfirm(String time) {
    return '🕐 $timeに再度お知らせします';
  }

  @override
  String get selectFutureTime => '現在以降の時間を選択してください';

  @override
  String recordCheckHint(String typeLabel) {
    return '記録 → $typeLabel 項目で確認できます';
  }

  @override
  String get pushAlsoCancel => '予定されたプッシュ通知もキャンセルされます。';

  @override
  String get reschedule => '再予約';

  @override
  String get deleteThisAlarm => 'この通知を削除';

  @override
  String get vaccineNameRequired => 'ワクチン名 *';

  @override
  String get vaccineNameExample => '例）狂犬病、混合ワクチンなど';

  @override
  String get scheduledDateRequired => '予定日 *';

  @override
  String get reminderTiming => '通知のタイミング';

  @override
  String get sameDay => '当日';

  @override
  String get reminderTimeRequired => '通知時刻 *';

  @override
  String get memoInputHint => 'メモを入力してください';

  @override
  String get visitPurposeRequired => '受診目的 *';

  @override
  String get visitPurposeExample => '例）定期健診、皮膚診察など';

  @override
  String get appointmentDateTimeRequired => '予約日時 *';

  @override
  String get hospitalName => '病院名';

  @override
  String get hospitalNameHint => '病院名を入力してください';

  @override
  String get medicineNameRequired => '薬品名 *';

  @override
  String get medicineNameExample => '例）フィラリア予防薬、駆虫薬など';

  @override
  String get repeatRequired => '繰り返し *';

  @override
  String get none => 'なし';

  @override
  String get daily => '毎日';

  @override
  String get weekly => '毎週';

  @override
  String get monthly => '毎月';

  @override
  String get weekdays => '平日';

  @override
  String get weekdaysOnly => '平日のみ';

  @override
  String get weekends => '週末';

  @override
  String get weekendsOnly => '週末のみ';

  @override
  String get medicationDateTimeRequired => '投薬日時 *';

  @override
  String get medicationTimeRequired => '投薬時刻 *';

  @override
  String get alarmNameRequired => '通知名 *';

  @override
  String get mealTimeExample => '例）朝食、夕食など';

  @override
  String get mealTimeRequired => '食事時刻 *';

  @override
  String get alarmMessage => '通知メッセージ';

  @override
  String get alarmMessageExample => '例）今日の記録を残しましたか？ 🐾';

  @override
  String get alarmPastDueMsg => 'この通知の予定日が過ぎました。\n新しい日付に変更するか削除できます。';

  @override
  String get reselectDate => '日付を再選択';

  @override
  String get selectDate => '日付を選択';

  @override
  String get selectTime => '時刻を選択';

  @override
  String get todayStatus => '今日の状態';

  @override
  String get addRecord => '+ 記録する';

  @override
  String get todayReminders => '今日のリマインダー';

  @override
  String get todayRecords => '今日の記録';

  @override
  String get viewAll => 'すべて表示';

  @override
  String get weekStats => '健康統計';

  @override
  String get pottyCount => '排泄回数';

  @override
  String get mealCount => '食事回数';

  @override
  String get waterLevel => '飲水レベル';

  @override
  String get timesUnit => '回';

  @override
  String get mealsUnit => '食';

  @override
  String get pointsUnit => '点';

  @override
  String get recordDeleted => '記録が削除されました 🗑️';

  @override
  String get recordUpdated => '記録が更新されました';

  @override
  String get deleteRecordConfirm => '記録を削除しますか？';

  @override
  String get deleteThisRecord => 'この記録を削除';

  @override
  String get typeLabel => '種類';

  @override
  String get statusLabel => '状態';

  @override
  String get conditionScore => '体調スコア';

  @override
  String get symptomTags => '症状タグ';

  @override
  String get medicineName => '薬品名';

  @override
  String get dose => '用量';

  @override
  String get medicationMethod => '投薬方法';

  @override
  String get weightKg => '体重 (kg)';

  @override
  String get measurementMethod => '測定方法';

  @override
  String get mealType => '食事の種類';

  @override
  String get mealAmount => '食事量';

  @override
  String get servingAmount => '給与量';

  @override
  String get waterAmount => '飲水量';

  @override
  String get visitType => '受診種別';

  @override
  String get diagnosisName => '診断名';

  @override
  String get vaccineType => 'ワクチンの種類';

  @override
  String get sideEffects => '副作用';

  @override
  String get groomingType => 'グルーミングの種類';

  @override
  String get shopName => 'サロン名';

  @override
  String get cost => '費用';

  @override
  String get nextAppointment => '次回予約日';

  @override
  String get brushingArea => 'ブラッシング部位';

  @override
  String get duration => '所要時間';

  @override
  String get walkTime => '散歩時間';

  @override
  String get distance => '距離';

  @override
  String get title => 'タイトル';

  @override
  String get priority => '重要度';

  @override
  String get stool => '大便';

  @override
  String get urine => '尿';

  @override
  String get vomiting => '嘔吐';

  @override
  String get normal => '正常';

  @override
  String get loose => '軟便';

  @override
  String get hard => '硬便';

  @override
  String get bloodInStool => '血便';

  @override
  String get cough => '咳';

  @override
  String get lethargy => '無気力';

  @override
  String get lossOfAppetite => '食欲不振';

  @override
  String get diarrhea => '下痢';

  @override
  String get runnyNose => '鼻水';

  @override
  String get sneezing => 'くしゃみ';

  @override
  String get trembling => '震え';

  @override
  String get bloodInUrine => '血尿';

  @override
  String get oral => '経口';

  @override
  String get injection => '注射';

  @override
  String get topical => '外用';

  @override
  String get eyeDrops => '点眼';

  @override
  String get earDrops => '点耳';

  @override
  String get vetHospital => '動物病院';

  @override
  String get homeScale => '家庭用体重計';

  @override
  String get holdAndWeigh => '抱っこ測定';

  @override
  String get breakfast => '朝食';

  @override
  String get lunch => '昼食';

  @override
  String get dinner => '夕食';

  @override
  String get snack => 'おやつ';

  @override
  String get veryLittle => 'ごく少量';

  @override
  String get little => '少量';

  @override
  String get much => '多め';

  @override
  String get veryMuch => 'とても多め';

  @override
  String get general => '一般';

  @override
  String get regularCheckup => '定期健診';

  @override
  String get emergency => '緊急';

  @override
  String get mild => '軽微';

  @override
  String get severe => '重篤';

  @override
  String get bath => '入浴';

  @override
  String get fullGrooming => 'フルグルーミング';

  @override
  String get partialGrooming => '部分グルーミング';

  @override
  String get nails => '爪切り';

  @override
  String get earCleaning => '耳掃除';

  @override
  String get tartarRemoval => '歯石除去';

  @override
  String get analGlands => '肛門嚢';

  @override
  String get all => 'すべて';

  @override
  String get back => '背中';

  @override
  String get belly => 'お腹';

  @override
  String get tail => 'しっぽ';

  @override
  String get face => '顔';

  @override
  String get paws => '足';

  @override
  String get important => '重要';

  @override
  String get photosAndVideos => '写真・動画';

  @override
  String get addMedia => 'メディアを追加';

  @override
  String get selectMediaMethod => 'メディア追加方法を選択';

  @override
  String get useCamera => 'カメラで撮影';

  @override
  String get takePhotoOrVideo => '写真または動画を撮影';

  @override
  String get chooseFromGallery => 'ギャラリーから選択';

  @override
  String get multiSelectHint => '写真・動画の複数選択が可能';

  @override
  String get takePhoto => '写真撮影';

  @override
  String get takePhotoDesc => 'カメラで写真を撮影';

  @override
  String get recordVideo => '動画撮影';

  @override
  String get recordVideoDesc => 'カメラで動画を撮影';

  @override
  String get deleteThisPhoto => 'この写真を削除';

  @override
  String get deletePhotoConfirm => '写真を削除しますか？';

  @override
  String get deleteThisVideo => 'この動画を削除';

  @override
  String get deleteVideoConfirm => '動画を削除しますか？';

  @override
  String get muted => 'ミュート';

  @override
  String get soundOn => 'サウンドオン';

  @override
  String get allowPermissionInSettings => '設定で権限を許可してください';

  @override
  String get openSettings => '設定を開く';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get contactDeveloper => '開発者に問い合わせる';

  @override
  String get contact => 'お問い合わせ';

  @override
  String get settingsLabel => '設定';

  @override
  String get exportData => 'データを書き出す';

  @override
  String get importData => 'データを読み込む';

  @override
  String get sendFeedback => 'フィードバックを送信';

  @override
  String get faq => 'よくある質問';

  @override
  String get homeScreen => 'ホーム画面';

  @override
  String get journalScreen => '日誌画面';

  @override
  String get alarmScreen => '通知画面';

  @override
  String get petManagement => 'ペット管理';

  @override
  String get recordCategories => '記録カテゴリ';

  @override
  String get whatIsPetSumtan => 'ペットスムタンとは？';

  @override
  String get todayRecordSummary => '今日の記録まとめ';

  @override
  String get weeklyStats => '週間統計';

  @override
  String get weightChangeChart => '体重変化グラフ';

  @override
  String get findNearbyHospitals => '近くの病院を探す';

  @override
  String get addNewRecord => '新しい記録を追加 (+)';

  @override
  String get viewRecordList => '記録一覧を見る';

  @override
  String get editDeleteRecord => '記録の編集と削除';

  @override
  String get attachMedia => '写真・動画を添付';

  @override
  String get addAlarm => '通知を追加';

  @override
  String get repeatAlarm => '繰り返し通知';

  @override
  String get advanceAlarmHint => '事前通知 (D-7, D-3, D-1)';

  @override
  String get completeAlarm => '通知を完了にする';

  @override
  String get deleteAlarm => '通知を削除';

  @override
  String get registerPet => 'ペットを登録';

  @override
  String get editProfile => 'プロフィールを編集';

  @override
  String get manageMultiplePets => '複数のペットを管理';

  @override
  String get dogHealthGuide => '犬の健康ガイド';

  @override
  String get catHealthGuide => '猫の健康ガイド';

  @override
  String get notificationSettings => '通知設定';

  @override
  String get dogHealthCareGuide => '犬の健康管理ガイド';

  @override
  String get catHealthCareGuide => '猫の健康管理ガイド';

  @override
  String get healthGuideSubtitle => '専門的な健康ガイド\n獣医師の推奨基準に基づいています。';

  @override
  String get vaccination => '予防接種';

  @override
  String get coreVaccines => 'コアワクチン';

  @override
  String get required => '必須';

  @override
  String get nonCoreVaccines => '任意ワクチン';

  @override
  String get recommended => '推奨';

  @override
  String get parasitePrevention => '寄生虫予防';

  @override
  String get heartworm => 'フィラリア';

  @override
  String get monthlyFreq => '毎月';

  @override
  String get externalParasites => '外部寄生虫（ノミ・マダニ）';

  @override
  String get internalParasites => '内部寄生虫';

  @override
  String get threeToSixMonths => '3〜6ヶ月';

  @override
  String get nutritionManagement => '栄養管理';

  @override
  String get dentalCare => '歯のケア';

  @override
  String get healthCheckup => '健康診断';

  @override
  String get emergencySigns => '緊急サイン';

  @override
  String get age => '年齢';

  @override
  String get checkupCycle => '健診周期';

  @override
  String get mainItems => '主な項目';

  @override
  String get exerciseLevel => '運動量';

  @override
  String get breedExamples => '犬種例';

  @override
  String get low => '低い';

  @override
  String get high => '高い';

  @override
  String get menu => 'メニュー';

  @override
  String get helloGreeting => 'こんにちは！ ';

  @override
  String get healthyTodayMsg => '\n今日も元気ですか？ 🐾';

  @override
  String get noRecordsYet => 'まだ記録がありません';

  @override
  String lastRecord(String time) {
    return '最後の記録 · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return '平均 $value$unit/日';
  }

  @override
  String get weightTrend => '⚖️ 体重推移';

  @override
  String get weightChange => '⚖️ 体重変化';

  @override
  String get noWeightData => '体重データがありません';

  @override
  String get measuredWeight => '実測体重';

  @override
  String get standardRange => '標準範囲';

  @override
  String get noTodayRecords => '今日の記録はまだありません';

  @override
  String get homeNoRecordHint => '体調・排泄・体重を記録して\nペットの健康を管理しましょう！';

  @override
  String noRecordsForDate(String date) {
    return '$dateの記録がありません';
  }

  @override
  String recordsForDate(String date, String count) {
    return '$date 記録 ($count件)';
  }

  @override
  String get daySun => '日';

  @override
  String get dayMon => '月';

  @override
  String get dayTue => '火';

  @override
  String get dayWed => '水';

  @override
  String get dayThu => '木';

  @override
  String get dayFri => '金';

  @override
  String get daySat => '土';

  @override
  String get whatToRecord => '📝 何を記録しますか？';

  @override
  String saveErrorMsg(String error) {
    return '保存中にエラーが発生しました: $error';
  }

  @override
  String get alarmUpdated => '✅ 通知が更新されました';

  @override
  String get alarmAdded => '🔔 通知が追加されました';

  @override
  String get editAlarm => '通知を編集';

  @override
  String get deleteAlarmConfirm => '通知を削除しますか？';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$nameが削除され、\n予定されたプッシュ通知もキャンセルされます。';
  }

  @override
  String get doneMsg => '✅ 完了しました';

  @override
  String get laterMsg => '🕐 あとで';

  @override
  String get saveCompletion => '✅ 完了を保存';

  @override
  String completedQuestion(String type) {
    return '$typeを完了しましたか？';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return '$name を\n今日の記録に自動保存します。';
  }

  @override
  String completionSaved(String name) {
    return '$name 完了が記録されました ✅';
  }

  @override
  String get tapAlarmTypeHint => '👆 通知の種類をタップしてください';

  @override
  String countUnit(int count) {
    return '$count件';
  }

  @override
  String dateCompleted(String date) {
    return '$date · 完了';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date 過ぎ · タップして再予約';
  }

  @override
  String get completedLabel => '完了';

  @override
  String get edit => '編集';

  @override
  String recordDeleteCannotUndo(String category) {
    return '$category 記録が削除され、\n元に戻すことはできません。';
  }

  @override
  String get hintMedicineNameAndDose => '💡 薬品名と用量を入力してください';

  @override
  String get hintMedicineName => '💡 薬品名を入力してください';

  @override
  String get hintDose => '💡 用量を入力してください';

  @override
  String get hintWeightNumber => '💡 体重を数字で入力してください';

  @override
  String get hintWeight => '💡 体重を入力してください';

  @override
  String get hintWeightIsNumber => '💡 体重は数字で入力してください';

  @override
  String get hintWalkTime => '💡 散歩時間を入力してください';

  @override
  String get hintWalkTimeIsNumber => '💡 散歩時間は数字で入力してください';

  @override
  String get hintWalkTimeNumber => '💡 散歩時間を数字で入力してください';

  @override
  String get hintSelectBrushingArea => '💡 ブラッシング部位を1つ以上選択してください';

  @override
  String get hintSelectVaccineType => '💡 ワクチンの種類を1つ以上選択してください';

  @override
  String get hintSelectGroomingType => '💡 グルーミングの種類を1つ以上選択してください';

  @override
  String get hintTitle => '💡 タイトルを入力してください';

  @override
  String get hintVaccineName => '💡 ワクチン名を入力してください';

  @override
  String get hintSelectScheduledDate => '💡 予定日を選択してください';

  @override
  String get hintSelectScheduledTime => '💡 予定時刻を選択してください';

  @override
  String get hintVisitPurpose => '💡 受診目的を入力してください';

  @override
  String get hintSelectAppointmentDate => '💡 予約日を選択してください';

  @override
  String get hintSelectAppointmentTime => '💡 予約時刻を選択してください';

  @override
  String get hintMedicineNameInput => '💡 薬品名を入力してください';

  @override
  String get hintSelectMedicationDate => '💡 投薬日を選択してください';

  @override
  String get hintSelectMedicationTime => '💡 投薬時刻を選択してください';

  @override
  String get hintAlarmName => '💡 通知名を入力してください';

  @override
  String get hintSelectMealTime => '💡 食事時刻を選択してください';

  @override
  String get hintSelectAlarmTime => '💡 通知時刻を選択してください';

  @override
  String get noPetRegisterFirst => 'まだペットがいません 🐾 プロフィールからまず登録してください！';

  @override
  String get alarmRescheduled => '🔄 通知が再予約されました';

  @override
  String get examplePetName => '例: ポチ';

  @override
  String get exampleBreed => '例: マルチーズ';

  @override
  String get exampleBreedMulti => '例: マルチーズ、ペルシャ';

  @override
  String get example30 => '例: 30';

  @override
  String get example80 => '例: 80';

  @override
  String get example200 => '例: 200';

  @override
  String get example25 => '例: 2.5';

  @override
  String get example35000 => '例: 35000';

  @override
  String get example50000 => '例: 50000';

  @override
  String get enterNameHint => '名前を入力してください';

  @override
  String get addNewPetTitle => '新しいペットを追加';

  @override
  String get basicInfo => '基本情報';

  @override
  String get idInfo => '識別情報';

  @override
  String get idInfoOptional => '識別情報（任意）';

  @override
  String get name => '名前';

  @override
  String get petKind => '種類';

  @override
  String get breed => '品種';

  @override
  String get weight => '体重';

  @override
  String get microchip => 'マイクロチップ';

  @override
  String get registrationNumber => '登録番号';

  @override
  String get birthDate => '生年月日';

  @override
  String get gender => '性別';

  @override
  String get male => 'オス';

  @override
  String get female => 'メス';

  @override
  String get maleSym => 'オス ♂';

  @override
  String get femaleSym => 'メス ♀';

  @override
  String get neutered => '避妊・去勢';

  @override
  String get done => '完了';

  @override
  String get notDone => '未完了';

  @override
  String get notEntered => '未入力';

  @override
  String get notRegistered => '未登録';

  @override
  String get dogEmoji => '犬 🐶';

  @override
  String get catEmoji => '猫 🐱';

  @override
  String get otherEmoji => 'その他 🐾';

  @override
  String get noPetsRegistered => '登録されたペットはいません';

  @override
  String get registerPetPrompt => 'ペットを登録して\n一緒に健康管理しましょう！';

  @override
  String get registerPetBtn => 'ペットを登録';

  @override
  String get editPet => 'ペットを編集';

  @override
  String get neuteringStatus => '避妊・去勢の有無';

  @override
  String get neuteredDone => '避妊・去勢済み';

  @override
  String get notNeutered => '未避妊・未去勢';

  @override
  String get selectDateHint => '日付を選択してください';

  @override
  String get saveChanges => '変更を保存';

  @override
  String get registerBtn => '登録する';

  @override
  String deletePetName(String name) {
    return '$nameを削除';
  }

  @override
  String deletePetConfirm(String name) {
    return '$nameを削除しますか？';
  }

  @override
  String deletePetWarning(String name) {
    return '$nameのすべての記録と通知が削除され、元に戻せません。';
  }

  @override
  String petDeleted(String name) {
    return '$nameが削除されました';
  }

  @override
  String petAdded(String name) {
    return '$nameが追加されました 🐾';
  }

  @override
  String get storeUnavailableMsg => '現在ストアに接続できません。しばらくしてから再試行してください。';

  @override
  String get checkingPaymentMsg => 'お支払い情報を確認中です。しばらくしてから再試行してください。';

  @override
  String get paymentCompleteMsg => 'お支払いが完了しました。新しいペットの情報を入力してください。';

  @override
  String get addNewFamilyMember => '新しい家族を追加しますか？';

  @override
  String get firstPetFreeDesc => '最初のペットは無料で登録できます。2頭目以降は1頭につき料金が必要です。';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '現在登録されているペット: $count頭\nストアに接続できるときに再試行してください。';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '現在登録されているペット: $count頭\n$priceを支払って新しい家族を追加できます。';
  }

  @override
  String get maybeLater => 'あとで';

  @override
  String get unavailable => '接続不可';

  @override
  String payAndAdd(String price) {
    return '$priceを支払って追加';
  }

  @override
  String get addNextAppointment => '+ 次回予約日を追加';

  @override
  String get pottyRecordSaved => '💩 排泄が記録されました';

  @override
  String get conditionRecordSaved => '💗 体調が記録されました';

  @override
  String get medicationRecordSaved => '💊 投薬が記録されました';

  @override
  String get weightRecordSaved => '⚖️ 体重が記録されました';

  @override
  String get mealRecordSaved => '🍽️ 食事が記録されました';

  @override
  String get waterRecordSaved => '💧 飲水が記録されました';

  @override
  String get vetVisitRecordSaved => '🏥 病院受診が記録されました';

  @override
  String get vaccinationRecordSaved => '💉 予防接種が記録されました';

  @override
  String get groomingRecordSaved => '✂️ グルーミングが記録されました';

  @override
  String get brushingRecordSaved => '🪥 ブラッシングが記録されました';

  @override
  String get walkRecordSaved => '🦮 散歩が記録されました';

  @override
  String get memoSaved => '📝 メモが記録されました';

  @override
  String get moreQuestions => '他にご質問はありますか？';

  @override
  String get contactViaSendFeedback =>
      '設定 > フィードバックを送信からお問い合わせください。\n早急にご返答します 🐾';

  @override
  String get contactViaSendFeedbackLong =>
      '設定画面の「フィードバックを送信」ボタンからお問い合わせいただければ\n迅速にご返答いたします。';

  @override
  String get privacyPolicyEffectiveDate =>
      'このプライバシーポリシーは2026年1月1日から有効です。\n最終更新日：2026年5月8日';

  @override
  String get privacyCollectedInfo => '収集された情報は以下の目的にのみ使用されます。';

  @override
  String get privacyDataFeatures =>
      'ペットスムタンはデータの書き出し（バックアップ）と読み込み（復元）機能を提供しています。';

  @override
  String get privacyPolicyMayUpdate =>
      'このプライバシーポリシーは法令またはサービスの変更により更新される場合があります。';

  @override
  String get privacyPolicyContact => 'このプライバシーポリシーに関するご質問は以下の方法でお問い合わせください。';

  @override
  String get catMeal => '食事';

  @override
  String get catWater => '飲水';

  @override
  String get catGrooming => 'グルーミング';

  @override
  String get catBrushing => 'ブラッシング';

  @override
  String get catWalk => '散歩';

  @override
  String get catHospital => '病院';

  @override
  String get catCondition => '体調';

  @override
  String get catPotty => '排泄';

  @override
  String get mealFormTitle => '🍽️ 食事記録';

  @override
  String get walkFormTitle => '🦮 散歩記録';

  @override
  String get weightFormTitle => '⚖️ 体重記録';

  @override
  String get waterFormTitle => '💧 飲水記録';

  @override
  String get medicationFormTitle => '💊 投薬記録';

  @override
  String get groomingFormTitle => '✂️ グルーミング記録';

  @override
  String get brushingFormTitle => '🪥 ブラッシング記録';

  @override
  String get conditionFormTitle => '🌡️ 体調記録';

  @override
  String get poopFormTitle => '💩 排泄記録';

  @override
  String get vaccinationFormTitle => '💉 接種記録';

  @override
  String get hospitalFormTitle => '🏥 病院記録';

  @override
  String get memoFormTitle => '📝 メモ';

  @override
  String get measureMethod => '測定方法';

  @override
  String get feedAmount => '給与量';

  @override
  String get mlInputLabel => 'mL直接入力';

  @override
  String get alarmRescheduleNote => 'このアラームの予定日が過ぎました。\n新しい日付に変更するか削除できます。';

  @override
  String get nailTrim => '爪切り';

  @override
  String get shopNameExample => '例: ふわふわペットサロン';

  @override
  String get poopRecordSaved => '💩 排泄が記録されました';

  @override
  String get memoRecordSaved => '📝 メモが記録されました';

  @override
  String get other => 'その他';

  @override
  String get whole => '全体';

  @override
  String get paw => '足';

  @override
  String get importance => '重要度';

  @override
  String get timeTaken => '所要時間';

  @override
  String get example10 => '例: 10';

  @override
  String get hospitalNameExample => '例: ハッピー動物病院';

  @override
  String get diagnosisExample => '例: 腸炎, 皮膚炎';

  @override
  String get memoTitlePlaceholder => 'メモのタイトルを入力';

  @override
  String get hintMemoTitle => '💡 タイトルを入力してください';

  @override
  String get poopType => '種類';

  @override
  String get poopStatus => '状態';

  @override
  String get feces => '大便';

  @override
  String get bloody => '血便';

  @override
  String get vaccineDhppl => '混合ワクチン (DHPPL)';

  @override
  String get vaccineCorona => 'コロナ腸炎';

  @override
  String get vaccineKennelCough => 'ケンネルコフ';

  @override
  String get vaccineRabies => '狂犬病';

  @override
  String get vaccineInfluenza => 'インフルエンザ';

  @override
  String get vaccineFvrcp => '混合ワクチン (FVRCP)';

  @override
  String get vaccineFelv => '白血病 (FeLV)';

  @override
  String get vaccineChlamydia => 'クラミジア';

  @override
  String get mute => 'ミュート';

  @override
  String get photoVideo => '写真・動画';

  @override
  String photoVideoCount(String count) {
    return '写真・動画 · $count件';
  }

  @override
  String get selectMediaSource => 'メディア追加方法を選択';

  @override
  String get cameraCapture => 'カメラで撮影';

  @override
  String get cameraCaptureSubtitle => '写真または動画を撮影';

  @override
  String get selectFromGallery => 'ギャラリーから選択';

  @override
  String get selectFromGallerySubtitle => '写真・動画を複数選択可能';

  @override
  String get takePhotoSubtitle => 'カメラで写真を撮影';

  @override
  String get recordVideoSubtitle => 'カメラで動画を撮影';

  @override
  String get permissionRequired => '設定で権限を許可してください';

  @override
  String get confirmDeletePhoto => 'この写真を削除しますか？';

  @override
  String get confirmDeleteVideo => 'この動画を削除しますか？';

  @override
  String get hintMedicineAndDose => '💡 薬品名と用量を入力してください';

  @override
  String deleteRecordBody(String category) {
    return '$categoryの記録が削除され\n元に戻せません。';
  }

  @override
  String dayCountShort(int days) {
    return '$days日';
  }

  @override
  String get helpIntroContent =>
      'ペットスムタンは、ペットの健康と日常をひとつの場所で記録・管理できるアプリです。\n食事、飲水、排泄、体重、投薬、病院受診など、さまざまな健康記録を手軽に残せます。通知機能で大切な予定を忘れずに管理できます。';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      '今日登録されたすべての記録をひと目で確認できます。記録項目をタップすると、詳細を確認したり編集したりできます。';

  @override
  String get helpHomeWeeklyStatsDesc =>
      '今週の排泄回数、食事量、飲水量をグラフで確認できます。ペットの生活パターンを把握するのに役立ちます。';

  @override
  String get helpHomeWeightChangeChartDesc =>
      '最近の体重記録をグラフで表示します。体重の変化を簡単に確認できます。';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      'ボタンをタップすると、Naverマップで近くの動物病院を検索できます。';

  @override
  String get helpHomeAddNewRecordDesc =>
      '画面下部の + ボタンをタップすると、記録カテゴリを選んで新しい記録を追加できます。';

  @override
  String get helpRecordCategoriesIntro => '12種類のカテゴリでペットの日常を記録できます。';

  @override
  String get helpCategoryPottyName => '排泄';

  @override
  String get helpCategoryPottyDesc => '排泄の有無や状態を記録します。写真も添付できます。';

  @override
  String get helpCategoryConditionName => '体調';

  @override
  String get helpCategoryConditionDesc => 'ペットの全体的な体調を記録します。';

  @override
  String get helpCategoryMedicationName => '投薬';

  @override
  String get helpCategoryMedicationDesc => '薬の名前、用量、投薬時間を記録します。';

  @override
  String get helpCategoryWeightName => '体重';

  @override
  String get helpCategoryWeightDesc => '体重（kg）を記録します。ホーム画面で変化の推移を確認できます。';

  @override
  String get helpCategoryMealName => '食事';

  @override
  String get helpCategoryMealDesc => '食事量やフードの種類を記録します。写真や動画も添付できます。';

  @override
  String get helpCategoryWaterName => '飲水';

  @override
  String get helpCategoryWaterDesc => '飲水量（ml）を記録します。写真や動画も添付できます。';

  @override
  String get helpCategoryHospitalName => '病院';

  @override
  String get helpCategoryHospitalDesc => '病院名や診療内容を記録します。写真や動画も添付できます。';

  @override
  String get helpCategoryVaccinationName => '予防接種';

  @override
  String get helpCategoryVaccinationDesc => '接種の種類と日付を記録します。';

  @override
  String get helpCategoryGroomingName => 'グルーミング';

  @override
  String get helpCategoryGroomingDesc => 'グルーミング内容を記録し、写真や動画を添付できます。';

  @override
  String get helpCategoryDentalName => '歯みがき';

  @override
  String get helpCategoryDentalDesc => '歯みがきの実施有無やメモを記録します。';

  @override
  String get helpCategoryWalkName => '散歩';

  @override
  String get helpCategoryWalkDesc => '散歩の距離と時間を記録します。';

  @override
  String get helpCategoryMemoName => 'メモ';

  @override
  String get helpCategoryMemoDesc => '自由にメモを残せます。';

  @override
  String get helpJournalViewRecordListDesc =>
      '日付ごとに登録されたすべての記録を確認できます。カテゴリバッジで種類をひと目で区別できます。';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      '記録項目をタップすると編集シートが開きます。内容を修正したり削除したりできます。';

  @override
  String get helpJournalAttachMediaDesc =>
      '食事、飲水、病院、グルーミング、排泄など一部のカテゴリでは、写真や動画を添付できます。';

  @override
  String get helpAlarmAddDesc =>
      '予防接種、投薬、病院受診、グルーミングなど、さまざまな種類の通知を登録できます。まず通知の種類を選択し、日付と時刻を設定します。';

  @override
  String get helpAlarmRepeatDesc =>
      '毎日、毎週、毎月などの繰り返しルールを設定できます。定期的な投薬やフィラリア予防などに便利です。';

  @override
  String get helpAlarmAdvanceDesc => '予防接種のような大切な予定は、7日前、3日前、1日前に事前通知を受け取れます。';

  @override
  String get helpAlarmCompleteDesc =>
      '通知項目をタップして完了としてマークできます。完了した通知は過去の通知一覧で確認できます。';

  @override
  String get helpAlarmDeleteDesc => '通知項目を左にスワイプすると削除できます。';

  @override
  String get helpPetRegisterDesc =>
      '名前、種類（犬／猫）、品種、性別、生年月日、避妊・去勢の有無を入力してペットを登録します。';

  @override
  String get helpPetEditProfileDesc =>
      'プロフィール画面で、名前、品種、体重、マイクロチップ番号、動物登録番号、プロフィール写真を編集できます。';

  @override
  String get helpPetManageMultipleDesc =>
      '複数のペットを登録できます。上部のペットチップをタップすると、管理するペットを切り替えられます。';

  @override
  String get helpDogHealthGuideDesc =>
      '必須・任意の予防接種スケジュール、フィラリア・外部寄生虫予防、歯のケア、栄養管理など、獣医学に基づいた健康情報を提供します。';

  @override
  String get helpCatHealthGuideDesc => '猫専用の予防接種スケジュール、寄生虫予防、歯のケア、栄養情報を確認できます。';

  @override
  String get helpSettingsNotificationDesc => 'アプリ全体の通知をオン／オフできます。';

  @override
  String get helpSettingsExportDesc =>
      '記録されたすべてのデータをZIPファイルで書き出せます。機種変更時のバックアップとしてご利用ください。';

  @override
  String get helpSettingsImportDesc =>
      '以前に書き出したZIPバックアップファイルを読み込んで、データを復元できます。';

  @override
  String get helpSettingsFeedbackDesc =>
      'アプリの利用中に不便な点や改善のご意見があれば、メールでお送りください。より良いアプリづくりの大きな助けになります。';

  @override
  String get helpFaqDeletePetQ => 'ペットを削除すると、記録もすべて削除されますか？';

  @override
  String get helpFaqDeletePetA =>
      'はい。ペットを削除すると、そのペットのすべての記録と通知も一緒に削除されます。削除前にデータを書き出してバックアップしておくことをおすすめします。';

  @override
  String get helpFaqMultipleMediaQ => '記録に写真を複数枚添付できますか？';

  @override
  String get helpFaqMultipleMediaA =>
      'はい。写真や動画を複数添付できます。ギャラリーから選択するか、カメラで直接撮影できます。';

  @override
  String get helpFaqNoNotificationQ => '通知が届きません。';

  @override
  String get helpFaqNoNotificationA =>
      '端末の通知設定でペットスムタンの通知が許可されているか確認してください。また、設定 > 通知設定 でアプリの通知がオンになっているかも確認してください。';

  @override
  String get helpFaqMoveDataQ => 'データを新しい端末に移せますか？';

  @override
  String get helpFaqMoveDataA =>
      'はい。旧端末で 設定 > データを書き出す からバックアップファイルを保存し、新しい端末で 設定 > データを読み込む から復元できます。';

  @override
  String get helpFaqMultiplePetsQ => '複数のペットを登録できますか？';

  @override
  String get helpFaqMultiplePetsA => '基本的に1頭は無料で登録できます。追加登録はプレミアム機能として利用できます。';

  @override
  String get privacyIntroBody =>
      'ペットスムタンは会員登録なしで使えるアプリで、すべてのデータはユーザーの端末内にのみ保存されます。個人情報を外部サーバーへ送信することはなく、大切なペットの情報を安全に保護します。';

  @override
  String get privacySection1Title => '収集する個人情報の項目';

  @override
  String get privacySection1Body =>
      'ペットスムタンは会員登録なしで利用でき、個人を識別するための情報を別途収集しません。ただし、アプリ機能を提供するため、以下のような情報が端末内に保存される場合があります。';

  @override
  String get privacyLocalStorageInfo => '端末内にローカル保存される情報';

  @override
  String get privacyPetInfo =>
      'ペット情報：名前、種類、品種、生年月日、性別、体重、避妊・去勢の有無、マイクロチップ番号、動物登録番号';

  @override
  String get privacyHealthRecords =>
      '健康記録：排泄、食事、飲水、体重、投薬、予防接種、病院、グルーミング、歯みがき、散歩、体調、メモなど、ユーザーが直接入力した記録';

  @override
  String get privacyAttachedMedia => '添付メディア：ユーザーが直接撮影または選択した写真および動画';

  @override
  String get privacyNotificationSettings => '通知設定：通知の種類、予定日時、繰り返しルール';

  @override
  String get privacyInAppPurchaseTitle => 'アプリ内課金について';

  @override
  String get privacyPaymentProcessing =>
      '支払い処理は Apple App Store または Google Play Store を通じて行われ、支払い情報をアプリが直接収集または保存することはありません。';

  @override
  String get privacyReceiptVerification =>
      '購入レシートの検証に必要な最小限の情報のみ、各プラットフォームのポリシーに従って処理されます。';

  @override
  String get privacySection2Title => '個人情報の収集および利用目的';

  @override
  String get privacyPurposeRecords => 'ペットの健康記録の保存および閲覧';

  @override
  String get privacyPurposeStats => 'ホーム画面の統計（週間の排泄・食事・飲水状況、体重変化グラフなど）の提供';

  @override
  String get privacyPurposeReminders => '予防接種、投薬、病院受診など健康関連通知の送信';

  @override
  String get privacyPurposeBackupRestore => 'データのバックアップおよび復元機能の提供';

  @override
  String get privacyPurposePaidEligibility => '有料機能の利用資格確認';

  @override
  String get privacySection3Title => '個人情報の保有および削除';

  @override
  String get privacyRetentionBody =>
      'ペットスムタンのすべてのデータは、ユーザー端末内のローカルデータベース（SQLite）にのみ保存され、外部サーバーへ送信されることはありません。';

  @override
  String get privacyDataDeletionMethod => 'データの削除方法';

  @override
  String get privacyDeleteInApp => 'アプリ内の 設定 > データ管理 から、ペット情報および記録を直接削除できます。';

  @override
  String get privacyDeleteUninstall => 'アプリを削除すると、端末に保存されたすべてのデータも一緒に削除されます。';

  @override
  String get privacyDeleteBackupWarning =>
      'ただし、アプリ削除前にバックアップ（書き出し）を行っていない場合、データを復元できませんのでご注意ください。';

  @override
  String get privacySection4Title => '個人情報の第三者提供';

  @override
  String get privacyThirdPartyBody =>
      'ペットスムタンは、ユーザーの個人情報を外部に提供しません。ただし、以下の場合は例外とします。';

  @override
  String get privacyThirdPartyUserExport =>
      'ユーザー自身がデータの書き出し（バックアップファイル共有）機能を利用する場合';

  @override
  String get privacyThirdPartyLegalRequest => '法令に基づく場合、または捜査機関から適法な要請がある場合';

  @override
  String get privacySection5Title => 'アクセス権限について';

  @override
  String get privacyPermissionsBody =>
      'アプリ機能を提供するため、以下の権限を求める場合があります。権限を許可しなくても、該当機能を除くその他の機能は通常どおり利用できます。';

  @override
  String get privacyPermissionCameraName => 'カメラ';

  @override
  String get privacyPermissionCameraDesc => '健康記録に写真・動画を直接撮影して添付する際に使用します。';

  @override
  String get privacyPermissionMediaName => '写真およびメディアへのアクセス';

  @override
  String get privacyPermissionMediaDesc => 'ギャラリーから写真・動画を選択して記録に添付する際に使用します。';

  @override
  String get privacyPermissionNotificationName => '通知';

  @override
  String get privacyPermissionNotificationDesc =>
      '予防接種、投薬、病院受診など健康関連の通知を送信する際に使用します。';

  @override
  String get privacyPermissionFileName => 'ファイルアクセス（Android）';

  @override
  String get privacyPermissionFileDesc => 'データのバックアップファイルを保存または読み込む際に使用します。';

  @override
  String get privacySection6Title => 'データのバックアップおよび復元';

  @override
  String get privacyBackupExport =>
      '書き出し：アプリ内のすべてのデータをファイル（.zip）として保存または共有できます。';

  @override
  String get privacyBackupImport => '読み込み：以前に書き出したバックアップファイルを読み込み、データを復元できます。';

  @override
  String get privacyBackupWarning =>
      'バックアップファイルはユーザー自身で管理してください。ファイルを他人と共有しないようご注意ください。';

  @override
  String get privacySection7Title => '子どもの個人情報保護';

  @override
  String get privacyChildrenBody =>
      'ペットスムタンは、14歳未満の子どもから個人情報を別途収集しません。アプリのすべてのデータは端末内にのみ保存され、外部サーバーへの送信がないため、子どもも安全に利用できます。';

  @override
  String get privacySection8Title => 'プライバシーポリシーの変更';

  @override
  String get privacyPolicyChangeNotice =>
      '変更がある場合は、アプリのアップデートノートまたはアプリ内のお知らせを通じてご案内します。';

  @override
  String get privacyPolicyChangeEffective =>
      '変更後のポリシーは、お知らせから7日が経過した日より効力を生じます。';

  @override
  String get privacySection9Title => 'お問い合わせ';

  @override
  String get hgDogHeroTitle => '犬の健康管理ガイド';

  @override
  String get hgCatHeroTitle => '猫の健康管理ガイド';

  @override
  String get hgHeroSubtitle => '獣医師の推奨基準に基づいて\n作成された専門的な健康ガイドです。';

  @override
  String get hgVaccination => '予防接種';

  @override
  String get hgCoreVaccines => 'コアワクチン（必須）';

  @override
  String get hgNonCoreVaccines => 'ノンコアワクチン（任意）';

  @override
  String get hgRequired => '必須';

  @override
  String get hgRecommended => '推奨';

  @override
  String get hgParasitePrevention => '寄生虫予防';

  @override
  String get hgHeartworm => 'フィラリア';

  @override
  String get hgMonthly => '毎月';

  @override
  String get hgExternalParasites => '外部寄生虫（ノミ・マダニ）';

  @override
  String get hgInternalParasites => '内部寄生虫';

  @override
  String get hgThreeToSixMonths => '3〜6か月';

  @override
  String get hgRegular => '定期';

  @override
  String get hgRegularCheckup => '定期健康診断';

  @override
  String get hgDentalCare => '歯と口腔ケア';

  @override
  String get hgForbiddenFoods => '絶対に与えてはいけない食べ物';

  @override
  String get hgEmergencySymptoms => 'すぐに動物病院を受診すべき症状';

  @override
  String get hgExerciseMentalHealth => '運動とメンタルヘルス';

  @override
  String get hgWalk => '散歩';

  @override
  String get hgDaily => '毎日';

  @override
  String get hgBreedExerciseAmount => '犬種別の推奨運動量';

  @override
  String get hgPlayBrainStimulation => '遊びと脳への刺激';

  @override
  String get hgStressSignals => 'ストレスサインに気づく';

  @override
  String get hgCaution => '注意';

  @override
  String get hgSocialization => '社会化と環境刺激';

  @override
  String get hgDogCoreDhppl =>
      '**DHPPL（混合ワクチン）** — ジステンパー、肝炎、パルボ、パラインフルエンザ、レプトスピラ。\n生後6〜8週で1回目、3〜4週間隔で3回接種、その後は毎年追加接種';

  @override
  String get hgDogCoreRabies => '**狂犬病** — 生後3か月以降に1回目、その後は毎年1回（法定必須接種）';

  @override
  String get hgDogCoreCorona =>
      '**コロナウイルス性腸炎** — 生後6〜8週から開始、3〜4週間隔で2回接種、その後は毎年追加接種';

  @override
  String get hgDogNonCoreKennel =>
      '**ケンネルコフ** — 多頭環境、トリミングサロン、ペットホテル利用時に推奨。点鼻型または注射型';

  @override
  String get hgDogNonCoreFlu => '**犬インフルエンザ** — 屋外活動が多い、または他の犬との接触が多い場合に推奨';

  @override
  String get hgDogHeartworm1 => '蚊の活動期（3〜11月）前後は、予防薬を**毎月1回**投与することが推奨されます';

  @override
  String get hgDogHeartworm2 => '感染すると治療が難しく命に関わることがあります — **予防が最善**です';

  @override
  String get hgDogHeartworm3 => '投与前には必ず感染検査を行い、陰性であることを確認してください';

  @override
  String get hgDogHeartworm4 => '年間を通した投与がより安全です（獣医師推奨）';

  @override
  String get hgDogExternalParasites1 => 'スポットオンまたは経口タイプの予防薬を**毎月投与**';

  @override
  String get hgDogExternalParasites2 => '散歩後は耳、足指の間、わきの下にマダニがいないか必ず確認してください';

  @override
  String get hgDogExternalParasites3 =>
      'マダニを除去する際は、ピンセットで垂直方向にゆっくり引き抜いてください（ねじらない）';

  @override
  String get hgDogInternalParasites1 => '回虫、鉤虫、鞭虫：**3〜6か月ごと**に駆虫薬を投与';

  @override
  String get hgDogInternalParasites2 => '子犬期（生後2週〜）：2週間隔で4回駆虫し、その後は定期管理';

  @override
  String get hgDental1 => '毎日の歯みがきが理想です — 少なくとも**週3回以上**を推奨';

  @override
  String get hgDental2 => '必ず**ペット用歯みがき粉**を使用してください（キシリトールを含む人用歯みがき粉は禁止）';

  @override
  String get hgDental3 => '歯石がひどい場合は動物病院でスケーリングが必要です（全身麻酔が必要）';

  @override
  String get hgDental4 => 'デンタルガムや歯みがき用おもちゃで補助的なケアができます';

  @override
  String get hgDogForbiddenFoodAlert =>
      '以下の食べ物は犬に毒性があります。少量でも危険な場合があるため、絶対に与えないでください。';

  @override
  String get hgDogForbiddenGrape =>
      '**ぶどう・レーズン** — 腎不全を引き起こすことがあり、少量でも致命的になる可能性があります';

  @override
  String get hgDogForbiddenChocolate => '**チョコレート・カカオ** — テオブロミン中毒、心不全、けいれん';

  @override
  String get hgDogForbiddenOnion => '**玉ねぎ・にんにく・ねぎ** — 赤血球を破壊し、溶血性貧血を引き起こします';

  @override
  String get hgDogForbiddenXylitol => '**キシリトール** — インスリン過剰分泌、低血糖、肝不全';

  @override
  String get hgDogForbiddenMacadamia => '**マカダミアナッツ** — 筋力低下、高熱、嘔吐';

  @override
  String get hgDogForbiddenDoughAlcohol => '**生のパン生地・アルコール** — エタノール中毒、低血糖';

  @override
  String get hgDogForbiddenAvocado => '**アボカド** — ペルシン成分により、嘔吐や下痢を起こすことがあります';

  @override
  String get hgEmergencyAlert => '以下の症状が見られる場合は、すぐに動物病院を受診してください。';

  @override
  String get hgDogEmergency1 => '24時間以上、完全に食欲がない';

  @override
  String get hgDogEmergency2 => '嘔吐や下痢が1日に3回以上繰り返される';

  @override
  String get hgDogEmergency3 => '腹部の膨満、吐こうとしても吐けない（胃拡張・胃捻転の疑い）';

  @override
  String get hgDogEmergency4 => '呼吸困難、歯ぐきが白い、チアノーゼ';

  @override
  String get hgDogEmergency5 => 'けいれん、発作、意識消失';

  @override
  String get hgDogEmergency6 => '12時間以上尿が出ない';

  @override
  String get hgDogEmergency7 => '明らかな外傷、骨折、大量出血';

  @override
  String get hgDogExerciseAlert =>
      '犬にとって運動不足は単なる体力の問題ではありません。ストレス、不安、破壊行動の主な原因になることがあります。';

  @override
  String get hgDogWalk1 => '小型犬：1日**20〜30分**以上、中・大型犬：**1時間**以上を推奨';

  @override
  String get hgDogWalk2 => '散歩は単なる排泄時間ではなく、**嗅覚刺激・社会化・ストレス解消**の時間です';

  @override
  String get hgDogWalk3 => 'においを嗅ぐ行動（スニッフィング）を十分に許しましょう — 精神的な疲労解消にとても効果的です';

  @override
  String get hgDogWalk4 => '夏場はアスファルトによるやけどに注意 — 朝7時前または夕方以降の散歩を推奨';

  @override
  String get hgDogPlay1 => '**ボール遊び・引っ張りっこ** — 身体エネルギーの発散、飼い主との絆を深める';

  @override
  String get hgDogPlay2 =>
      '**ノーズワーク（におい探し）** — 脳への刺激になり、15分で30分の散歩に近い効果が期待できます';

  @override
  String get hgDogPlay3 => '**知育玩具・コング** — 留守番中の分離不安の緩和に効果的';

  @override
  String get hgDogPlay4 => '1日**10〜15分**の集中した遊びだけでも、ストレスを大きく減らせます';

  @override
  String get hgDogStress1 => '家具や物の破壊、過度な吠え — 運動や刺激不足のサイン';

  @override
  String get hgDogStress2 => 'しっぽを噛む、足や体を過度になめる — 強迫行動やストレス発散のサイン';

  @override
  String get hgDogStress3 => '飼い主の外出時に強い不安、排泄の失敗 — 分離不安の可能性';

  @override
  String get hgDogStress4 => '続く場合は、獣医師または動物行動の専門家に相談しましょう';

  @override
  String get hgDogSocial1 => '生後**3〜14週**は社会化の黄金期 — さまざまな人、音、環境に慣れることが重要です';

  @override
  String get hgDogSocial2 => '他の犬との交流 — ドッグランやパピークラスを活用しましょう';

  @override
  String get hgDogSocial3 => '新しい場所、におい、音の経験は、心の豊かさにつながります';

  @override
  String get hgDogSocial4 => 'ポジティブ強化トレーニング（クリッカー・おやつ）は、脳への刺激と絆づくりを同時に高めます';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP（混合ワクチン）** — 猫ヘルペスウイルス、カリシウイルス、猫汎白血球減少症。\n生後6〜8週で1回目、3〜4週間隔で3回接種、その後は1〜3年ごと';

  @override
  String get hgCatCoreRabies => '**狂犬病** — 外に出る猫は必須、室内猫にも推奨（法定必須）';

  @override
  String get hgCatNonCoreFelv => '**猫白血病（FeLV）** — 外に出る猫、多頭飼育の家庭では強く推奨';

  @override
  String get hgCatNonCoreChlamydia => '**猫クラミジア** — 多頭環境での結膜炎予防';

  @override
  String get hgCatNonCoreFiv => '**猫免疫不全ウイルス（FIV）** — 外に出るオス猫で注意（けんかによる傷から感染）';

  @override
  String get hgCatExternalParasites1 => '外に出る猫：ノミ・マダニ予防薬を**毎月1回**投与';

  @override
  String get hgCatExternalParasites2 =>
      '室内猫でも人の衣服や靴からノミが持ち込まれることがあります → **3か月ごと**の予防を推奨';

  @override
  String get hgCatExternalParasites3 => 'スポットオン製品を使用する際は、首の後ろに正しく滴下してください';

  @override
  String get hgCatInternalHeartworm => '内部寄生虫とフィラリア';

  @override
  String get hgCatInternalParasites1 => '回虫・条虫：**3〜6か月ごと**に駆虫薬を投与';

  @override
  String get hgCatInternalParasites2 => '生肉や生魚を与える場合は、より頻繁な検査を推奨';

  @override
  String get hgCatHeartworm1 =>
      'フィラリア — 猫には**治療薬がなく、予防が唯一の方法**です。外に出る猫は毎月の予防を強く推奨';

  @override
  String get hgCatMajorDiseases => '猫の主な病気に注意';

  @override
  String get hgCatDiseaseAlert =>
      '猫は痛みや不調を隠す習性があるため、症状が出た時にはすでに進行していることが少なくありません。定期健診が特に重要です。';

  @override
  String get hgCatDiseaseFlutd =>
      '**猫下部尿路疾患（FLUTD）** — オス猫に多い病気です。尿が出ない場合は直ちに救急対応が必要です';

  @override
  String get hgCatDiseaseCkd =>
      '**慢性腎臓病（CKD）** — 高齢猫の主な死因の一つ。7歳以上は定期的な腎臓数値の検査が必須です';

  @override
  String get hgCatDiseaseDiabetes => '**猫の糖尿病** — 肥満・高齢猫でリスクが高まります。多飲・多尿に注意';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**甲状腺機能亢進症** — 10歳以上で多く見られます。体重減少、食欲増加、活動過多に注意';

  @override
  String get hgCatDiseaseStomatitis =>
      '**口内炎** — 猫に非常に多い病気です。口臭、よだれ、食欲不振がある場合は検査を';

  @override
  String get hgCatDiseaseFhv =>
      '**猫ヘルペス（FHV-1）** — 一度感染すると生涯潜伏します。ストレス時に再発し、くしゃみ、目やに、結膜炎が見られます';

  @override
  String get hgHydrationDiet => '水分摂取と食事管理';

  @override
  String get hgCatHydrationAlert =>
      '猫はもともと水をあまり飲まないため、泌尿器疾患にかかりやすい傾向があります。水分摂取を促すことがとても重要です。';

  @override
  String get hgCatHydration1 => 'ウェットフード（缶・パウチ）を併用して水分補給を促しましょう';

  @override
  String get hgCatHydration2 => '流れる水を好む猫が多いため、**給水器**の設置が効果的です';

  @override
  String get hgCatHydration3 => '水皿はフード皿と離して置き、広く浅い器を好む傾向があります';

  @override
  String get hgCatHydration4 => '目標飲水量：体重1kgあたり1日約**40〜60ml**';

  @override
  String get hgCatForbiddenFoodAlert =>
      '以下の食べ物は猫に毒性があります。少量でも危険な場合があるため、絶対に与えないでください。';

  @override
  String get hgCatForbiddenOnion =>
      '**玉ねぎ・にんにく・ねぎ** — 赤血球を破壊し、溶血性貧血を起こします（犬よりも敏感）';

  @override
  String get hgCatForbiddenGrape => '**ぶどう・レーズン** — 腎不全を引き起こすことがあります';

  @override
  String get hgCatForbiddenChocolate => '**チョコレート・カフェイン** — 心臓や神経系への毒性';

  @override
  String get hgCatForbiddenRawFish =>
      '**生魚（継続的な給与）** — チアミン（ビタミンB1）欠乏を引き起こすことがあります';

  @override
  String get hgCatForbiddenMilk => '**牛乳・乳製品** — 成猫は乳糖不耐症が多く、下痢の原因になります';

  @override
  String get hgCatForbiddenXylitolAlcohol => '**キシリトール・アルコール** — 肝臓や神経系への毒性';

  @override
  String get hgCatForbiddenAvocado => '**アボカド** — ペルシン成分により、嘔吐や下痢を起こすことがあります';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**生卵の白身** — アビジンがビオチン吸収を妨げ、皮膚や被毛のトラブルにつながることがあります';

  @override
  String get hgCatEmergency1 => '**まったく尿が出ない、または血尿** — 尿道閉塞の緊急事態（特にオス猫は注意）';

  @override
  String get hgCatEmergency2 => '24時間以上、完全に食欲がない（脂肪肝のリスク）';

  @override
  String get hgCatEmergency3 => '**口を開けて呼吸する** — 猫では決して正常ではなく、すぐに救急受診が必要です';

  @override
  String get hgCatEmergency4 => '後ろ足の突然の麻痺や冷たさ（血栓症の疑い）';

  @override
  String get hgCatEmergency5 => 'けいれん、発作、意識消失';

  @override
  String get hgCatEmergency6 => '歯ぐきや舌が白い、または黄疸（黄色っぽい）';

  @override
  String get hgCatEmergency7 => '嘔吐や下痢が1日に3回以上繰り返される、または血便・吐血がある';

  @override
  String get hgCatEmergency8 => '明らかな外傷、骨折、大量出血';

  @override
  String get hgEnvironmentMentalHealth => '環境とメンタルヘルス';

  @override
  String get hgIndoorEnvironment => '室内環境の管理';

  @override
  String get hgStressManagement => 'ストレス管理';

  @override
  String get hgCatEnvironment1 => '**トイレ**：猫の数 + 1個以上を設置し、毎日掃除';

  @override
  String get hgCatEnvironment2 => '**爪とぎ**：最低2個以上（縦型・横型を併用）';

  @override
  String get hgCatEnvironment3 => '**高い場所**：キャットタワーや棚などの垂直空間を用意（縄張り本能を満たす）';

  @override
  String get hgCatEnvironment4 => '**隠れ場所**：箱やトンネルなど、安全に隠れられる場所を用意';

  @override
  String get hgCatStress1 => '猫のストレスは免疫低下、FLUTD、猫ヘルペスの再発に直結します';

  @override
  String get hgCatStress2 =>
      '引っ越しや新しい家族など急な環境変化の際は、フェロモンディフューザー（Feliway）の活用も有効です';

  @override
  String get hgCatStress3 => '1日**10〜15分以上**、おもちゃを使った遊び時間を確保しましょう';

  @override
  String get hgCatStress4 => '多頭飼育：食器、トイレ、寝床などの資源は猫の数に合わせて分けて配置してください';

  @override
  String get hgAge => '年齢';

  @override
  String get hgCheckupCycle => '健診周期';

  @override
  String get hgMainItems => '主な項目';

  @override
  String get hgAge1to6 => '1〜6歳';

  @override
  String get hgAge7to10 => '7〜10歳';

  @override
  String get hgAge11Plus => '11歳以上';

  @override
  String get hgYearlyOnce => '年1回';

  @override
  String get hgYearlyTwice => '年2回';

  @override
  String get hgEvery3to4Months => '3〜4か月ごと';

  @override
  String get hgDogCheckupItems1 => '血液検査、心臓聴診、体重、歯';

  @override
  String get hgDogCheckupItems2 => '血液・尿・レントゲン、血圧、関節';

  @override
  String get hgDogCheckupItems3 => '総合血液検査、超音波、腎臓・肝機能';

  @override
  String get hgCatCheckupItems1 => '血液検査、尿検査、体重、歯';

  @override
  String get hgCatCheckupItems2 => '腎臓・肝臓の数値、血圧、甲状腺（T4）';

  @override
  String get hgCatCheckupItems3 => '総合血液検査、腹部超音波、腎臓の重点モニタリング';

  @override
  String get hgExerciseAmount => '運動量';

  @override
  String get hgBreedExamples => '犬種の例';

  @override
  String get hgLow => '低い';

  @override
  String get hgNormal => '普通';

  @override
  String get hgHigh => '高い';

  @override
  String get hgBreedLowExamples => 'ブルドッグ、バセットハウンド、シー・ズー、マルチーズ';

  @override
  String get hgBreedNormalExamples => 'プードル、ビション・フリーゼ、コッカー・スパニエル、ビーグル';

  @override
  String get hgBreedHighExamples => 'ラブラドール、ゴールデン・レトリバー、ハスキー、ボーダー・コリー';

  @override
  String get hgDisclaimer =>
      'このガイドは一般的な健康管理情報であり、必要なケアはペットの状態によって異なる場合があります。異常な症状がある場合や治療が必要な場合は、必ず獣医師に相談してください。';
}
