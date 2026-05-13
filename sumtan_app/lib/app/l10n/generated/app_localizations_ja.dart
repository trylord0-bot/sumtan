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
  String get weekStats => '今週の統計';

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
}
