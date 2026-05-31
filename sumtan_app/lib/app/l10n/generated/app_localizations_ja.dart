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
  String get appTagline => 'ペットのヘルスケアアプリ';

  @override
  String get navHome => 'ホーム';

  @override
  String get navJournal => '記録';

  @override
  String get navNotifications => 'お知らせ';

  @override
  String get navProfile => 'プロフィール';

  @override
  String get navSettings => '設定';

  @override
  String get navAddAlarm => 'お知らせ追加';

  @override
  String get drawerService => 'サービス';

  @override
  String get drawerNearbyHospitals => '近くの動物病院を探す';

  @override
  String get drawerNearbyHospitalsSub => '現在地周辺の動物病院';

  @override
  String get drawerHealthGuide => 'ヘルスケアガイド';

  @override
  String get drawerHealthGuideSub => 'ペットの健康ハンドブック';

  @override
  String get drawerApp => 'アプリ';

  @override
  String get drawerHelp => 'ヘルプ';

  @override
  String get dialogExternalTitle => '外部ページを開く';

  @override
  String get dialogExternalHospitalBody =>
      '近くの動物病院を探すには外部のウェブページを開く必要があります。\n\n今すぐ開きますか？';

  @override
  String get commonCancel => 'キャンセル';

  @override
  String get commonGo => '移動';

  @override
  String get commonDelete => '削除';

  @override
  String get commonSave => '保存';

  @override
  String get commonLoading => '準備中...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => 'もう一度タップすると終了します';

  @override
  String get toastNeedPet => 'まだペットがいません。先にプロフィールから追加してください。';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsPushNotifications => 'プッシュ通知を許可';

  @override
  String get settingsPushNotificationsSub => '端末の通知権限';

  @override
  String get settingsLanguageSection => '言語';

  @override
  String get settingsLanguage => 'アプリの言語';

  @override
  String get settingsLanguageSystem => '端末の設定に従う';

  @override
  String get settingsLanguageChanged => 'アプリの言語を変更しました';

  @override
  String get settingsData => 'データ管理';

  @override
  String get settingsExport => 'データのエクスポート';

  @override
  String get settingsExportSub => 'ZIPファイルとして保存';

  @override
  String get settingsImport => 'データのインポート';

  @override
  String get settingsImportSub => 'ZIPファイルから復元';

  @override
  String get settingsAppInfo => 'アプリ情報';

  @override
  String get settingsVersion => 'アプリのバージョン';

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
      '既存のデータはすべて削除され、バックアップファイルの内容に置き換えられます。\n\n続行しますか？';

  @override
  String get settingsImportAction => 'インポート';

  @override
  String get settingsImporting => 'データをインポート中';

  @override
  String get settingsImportSuccess => 'バックアップデータを復元しました';

  @override
  String get settingsImportFailed => 'インポートに失敗しました';

  @override
  String get settingsExportTitle => 'データのエクスポート';

  @override
  String get settingsExportBenefitTitle => '大切な記録を安全に保管';

  @override
  String get settingsExportBenefitPets => 'すべてのペットのプロフィールと写真';

  @override
  String get settingsExportBenefitRecords => 'すべての健康記録、日誌、体重データ';

  @override
  String get settingsExportBenefitMedia => '添付された画像や動画を含む';

  @override
  String get settingsStoreUnavailable => '現在ストアに接続できません。\n後でもう一度お試しください。';

  @override
  String settingsPayAndExport(String price) {
    return '$priceを支払ってエクスポート';
  }

  @override
  String get settingsUnlocked => 'ロック解除済み';

  @override
  String get settingsExportUnlockedBody =>
      'すべてのペット情報と記録をZIPファイルとして保存します。\n保存したファイルはいつでも無料でインポートして復元できます。';

  @override
  String get settingsExporting => 'エクスポート中...';

  @override
  String get settingsExportZip => 'ZIPとしてエクスポート';

  @override
  String get settingsExportConfirmBody =>
      'すべてのペット情報、記録、添付メディアをZIPファイルとしてエクスポートします。';

  @override
  String get settingsExportAction => 'エクスポート';

  @override
  String get settingsExportSuccess => 'バックアップファイルの共有準備ができました';

  @override
  String get settingsExportFailed => 'エクスポートに失敗しました';

  @override
  String get settingsPurchaseFailed => '支払いに失敗しました';

  @override
  String get settingsPurchaseProductLoadFailed =>
      '商品情報を読み込めませんでした。しばらくしてからもう一度お試しください。';

  @override
  String get settingsPurchaseStartFailed =>
      '支払いを開始できませんでした。しばらくしてからもう一度お試しください。';

  @override
  String get errorDbInit => 'アプリデータの準備中に問題が発生しました。\nしばらくしてからもう一度お試しください。';

  @override
  String get help => 'ヘルプ';

  @override
  String get healthGuide => 'ヘルスケアガイド';

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
  String get save => '保存';

  @override
  String get memo => 'メモ';

  @override
  String get memoPlaceholder => '自由にメモを追加してください';

  @override
  String get addBtn => '＋ 追加';

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
  String get noAlarms => 'まだお知らせはありません';

  @override
  String alarmEmptyDesc(String petName) {
    return '今日も$petNameの健康を守りましょう。\n下の「お知らせ追加」をタップして始めてください。';
  }

  @override
  String get scheduledAlarms => '予定されているお知らせ';

  @override
  String get swipeToDelete => 'スワイプして削除できます';

  @override
  String get selectAlarmType => 'お知らせの種類を選択';

  @override
  String get vetAppointment => '病院の予約';

  @override
  String get medication => 'お薬';

  @override
  String get mealTime => 'ごはんの時間';

  @override
  String get dailyReminder => '毎日のリマインダー';

  @override
  String get alarmLabel => 'お知らせ';

  @override
  String get notificationChannelName => 'ペットスムタンのお知らせ';

  @override
  String get notificationChannelDescription => 'ペットのヘルスケアリマインダー';

  @override
  String alarmNotificationTitle(String type) {
    return '$typeのお知らせ';
  }

  @override
  String get alarmBodyVaccination => 'ワクチンの接種日を確認してください。';

  @override
  String get alarmBodyVetAppointment => '病院の予約が近づいています。';

  @override
  String get alarmBodyMedication => 'お薬の時間です。';

  @override
  String get alarmBodyMealTime => 'ごはんの時間を忘れないでくださいね。';

  @override
  String get alarmBodyDailyReminder => '今日の健康記録を追加してください。';

  @override
  String get alarmBodyDefault => 'ペットのヘルスケアに関するお知らせです。';

  @override
  String get alarmDeleted => 'お知らせを削除しました';

  @override
  String get hidePastAlarms => '過去のお知らせを隠す';

  @override
  String get showPastAlarms => '過去のお知らせを表示';

  @override
  String get deleteAll => 'すべて削除';

  @override
  String get deletePastAlarms => '過去のお知らせを削除';

  @override
  String deletePastAlarmsConfirm(int count) {
    return '$count件の過去のお知らせをすべて削除しますか？';
  }

  @override
  String get pastAlarmsDeleted => '過去のお知らせをすべて削除しました';

  @override
  String get pastLabel => '過去';

  @override
  String get today => '今日';

  @override
  String get tomorrowSameTime => '明日、同じ時間';

  @override
  String get snoozeQuestion => 'いつ再通知しましょうか？';

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
  String get snoozeCustom => '手動で選択';

  @override
  String get snoozeAtThisTime => 'この時間に通知する';

  @override
  String snoozeConfirm(String time) {
    return '$timeに再度お知らせします';
  }

  @override
  String get selectFutureTime => '未来の時間を選択してください';

  @override
  String recordCheckHint(String typeLabel) {
    return '記録 > $typeLabel から確認できます。';
  }

  @override
  String get pushAlsoCancel => '予定されていたプッシュ通知もキャンセルされます。';

  @override
  String get reschedule => '日時を変更';

  @override
  String get deleteThisAlarm => 'このお知らせを削除';

  @override
  String get vaccineNameRequired => 'ワクチン名 *';

  @override
  String get vaccineNameExample => '例：狂犬病、混合ワクチン';

  @override
  String get scheduledDateRequired => '日付 *';

  @override
  String get reminderTiming => '通知のタイミング';

  @override
  String get sameDay => '当日';

  @override
  String get reminderTimeRequired => '通知時間 *';

  @override
  String get memoInputHint => 'メモを入力してください';

  @override
  String get visitPurposeRequired => '訪問の目的 *';

  @override
  String get visitPurposeExample => '例：健康診断、皮膚の治療';

  @override
  String get appointmentDateTimeRequired => '予約日時 *';

  @override
  String get hospitalName => '病院名';

  @override
  String get hospitalNameHint => '病院名を入力してください';

  @override
  String get medicineNameRequired => 'お薬の名前 *';

  @override
  String get medicineNameExample => '例：フィラリア予防薬、駆虫薬';

  @override
  String get doseExample => '例：0.5ml、1錠';

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
  String get medicationTimeRequired => '投薬時間 *';

  @override
  String get alarmNameRequired => 'お知らせ名 *';

  @override
  String get mealTimeExample => '例：朝ごはん、夜ごはん';

  @override
  String get mealTimeRequired => 'ごはんの時間 *';

  @override
  String get alarmMessage => 'お知らせメッセージ';

  @override
  String get alarmMessageExample => '例：今日の記録は追加しましたか？';

  @override
  String get alarmPastDueMsg => 'このお知らせの日時は過ぎています。\n新しい日時を選択するか、削除してください。';

  @override
  String get reselectDate => '日付を再選択';

  @override
  String get selectDate => '日付を選択';

  @override
  String get selectTime => '時間を選択';

  @override
  String get todayStatus => '今日の様子';

  @override
  String get addRecord => '＋ 記録を追加';

  @override
  String get todayReminders => '今日のリマインダー';

  @override
  String get todayRecords => '今日の記録';

  @override
  String get viewAll => 'すべて見る';

  @override
  String get weekStats => '今週の健康統計';

  @override
  String get pottyCount => 'トイレの回数';

  @override
  String get mealCount => 'ごはんの回数';

  @override
  String get waterLevel => '飲水量';

  @override
  String get timesUnit => '回';

  @override
  String get mealsUnit => '食';

  @override
  String get pointsUnit => '点';

  @override
  String get recordDeleted => '記録を削除しました';

  @override
  String get recordUpdated => '記録を更新しました';

  @override
  String get deleteRecordConfirm => 'この記録を削除しますか？';

  @override
  String get deleteConfirmBody => '一度削除すると復元できません！';

  @override
  String get deleteConfirmOk => '削除する';

  @override
  String get deleteThisRecord => 'この記録を削除';

  @override
  String get typeLabel => '種類';

  @override
  String get statusLabel => '状態';

  @override
  String get conditionScore => 'コンディション点数';

  @override
  String get symptomTags => '症状タグ';

  @override
  String get medicineName => 'お薬の名前';

  @override
  String get dose => '服用量';

  @override
  String get medicationMethod => '投薬方法';

  @override
  String get weightKg => '体重 (kg)';

  @override
  String get measurementMethod => '測定方法';

  @override
  String get mealAmount => '食事量';

  @override
  String get servingAmount => '給与量';

  @override
  String get waterAmount => '飲水量';

  @override
  String get visitType => '訪問の種類';

  @override
  String get diagnosisName => '診断名';

  @override
  String get vaccineType => 'ワクチンの種類';

  @override
  String get abnormalSymptomType => '異常サインの種類';

  @override
  String get customSymptom => 'その他の症状';

  @override
  String get customSymptomPlaceholder => '症状の説明を入力してください';

  @override
  String get sideEffects => '副作用';

  @override
  String get groomingType => 'お手入れの種類';

  @override
  String get shopName => 'ショップ名';

  @override
  String get cost => '費用';

  @override
  String get nextAppointment => '次回の予約';

  @override
  String get brushingArea => '歯磨きした場所';

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
  String get stool => 'ウンチ';

  @override
  String get urine => 'おしっこ';

  @override
  String get vomiting => '嘔吐';

  @override
  String get bleeding => '出血';

  @override
  String get dyspnea => '呼吸困難';

  @override
  String get seizure => 'けいれん/発作';

  @override
  String get normal => '普通';

  @override
  String get loose => '軟便';

  @override
  String get hard => '硬い';

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
  String get oral => '飲み薬 (経口)';

  @override
  String get injection => '注射';

  @override
  String get topical => '塗り薬 (外用)';

  @override
  String get eyeDrops => '目薬 (点眼)';

  @override
  String get earDrops => '点耳薬';

  @override
  String get vetHospital => '動物病院';

  @override
  String get homeScale => '自宅の体重計';

  @override
  String get holdAndWeigh => '抱っこして測定';

  @override
  String get veryLittle => 'とても少ない';

  @override
  String get little => '少ない';

  @override
  String get much => '多い';

  @override
  String get veryMuch => 'とても多い';

  @override
  String get general => '一般';

  @override
  String get regularCheckup => '健康診断';

  @override
  String get emergency => '救急';

  @override
  String get mild => '軽度';

  @override
  String get severe => '重度';

  @override
  String get bath => 'お風呂';

  @override
  String get fullGrooming => '全身カット';

  @override
  String get partialGrooming => '部分カット';

  @override
  String get nails => '爪切り';

  @override
  String get earCleaning => '耳掃除';

  @override
  String get tartarRemoval => '歯石除去';

  @override
  String get analGlands => '肛門腺絞り';

  @override
  String get all => '全体';

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
  String get selectMediaMethod => '追加方法を選択';

  @override
  String get useCamera => 'カメラを使用';

  @override
  String get takePhotoOrVideo => '写真や動画を撮影する';

  @override
  String get chooseFromGallery => 'ギャラリーから選択';

  @override
  String get multiSelectHint => '複数の写真や動画を選択できます';

  @override
  String get takePhoto => '写真を撮る';

  @override
  String get takePhotoDesc => 'カメラで写真を撮影します';

  @override
  String get recordVideo => '動画を撮る';

  @override
  String get recordVideoDesc => 'カメラで動画を撮影します';

  @override
  String get deleteThisPhoto => '写真を削除';

  @override
  String get deletePhotoConfirm => 'この写真を削除しますか？';

  @override
  String get deleteThisVideo => '動画を削除';

  @override
  String get deleteVideoConfirm => 'この動画を削除しますか？';

  @override
  String get muted => 'ミュート';

  @override
  String get soundOn => 'サウンドオン';

  @override
  String get allowPermissionInSettings => '設定から権限を許可してください';

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
  String get exportData => 'データのエクスポート';

  @override
  String get importData => 'データのインポート';

  @override
  String get sendFeedback => 'フィードバックを送信';

  @override
  String get faq => 'よくある質問';

  @override
  String get homeScreen => 'ホーム画面';

  @override
  String get journalScreen => '記録画面';

  @override
  String get alarmScreen => 'お知らせ画面';

  @override
  String get petManagement => 'ペット管理';

  @override
  String get recordCategories => '記録カテゴリー';

  @override
  String get whatIsPetSumtan => 'ペットスムタンとは？';

  @override
  String get todayRecordSummary => '今日の記録のまとめ';

  @override
  String get weeklyStats => '今週の統計';

  @override
  String get weightChangeChart => '体重変化グラフ';

  @override
  String get findNearbyHospitals => '近くの動物病院を探す';

  @override
  String get addNewRecord => '新しい記録を追加 (＋)';

  @override
  String get viewRecordList => '記録を見る';

  @override
  String get editDeleteRecord => '記録の編集と削除';

  @override
  String get attachMedia => '写真/動画を添付';

  @override
  String get addAlarm => 'お知らせ追加';

  @override
  String get repeatAlarm => '繰り返しのお知らせ';

  @override
  String get advanceAlarmHint => '事前のお知らせ (D-7, D-3, D-1)';

  @override
  String get completeAlarm => 'お知らせの完了';

  @override
  String get deleteAlarm => 'お知らせの削除';

  @override
  String get registerPet => 'ペットの登録';

  @override
  String get editProfile => 'プロフィールの編集';

  @override
  String get manageMultiplePets => '複数のペットを管理';

  @override
  String get dogHealthGuide => '犬のヘルスケアガイド';

  @override
  String get catHealthGuide => '猫のヘルスケアガイド';

  @override
  String get notificationSettings => '通知設定';

  @override
  String get dogHealthCareGuide => '犬のヘルスケアガイド';

  @override
  String get catHealthCareGuide => '猫のヘルスケアガイド';

  @override
  String get healthGuideSubtitle => '獣医師の推奨に基づいた\n専門的なヘルスケアガイドです。';

  @override
  String get vaccination => '予防接種';

  @override
  String get coreVaccines => 'コアワクチン';

  @override
  String get required => '必須';

  @override
  String get nonCoreVaccines => 'ノンコアワクチン';

  @override
  String get recommended => '推奨';

  @override
  String get parasitePrevention => '寄生虫予防';

  @override
  String get heartworm => 'フィラリア';

  @override
  String get monthlyFreq => '毎月';

  @override
  String get externalParasites => '外部寄生虫 (ノミ/マダニ)';

  @override
  String get internalParasites => '内部寄生虫';

  @override
  String get threeToSixMonths => '3〜6ヶ月ごと';

  @override
  String get nutritionManagement => '栄養管理';

  @override
  String get dentalCare => 'デンタルケア';

  @override
  String get healthCheckup => '健康診断';

  @override
  String get emergencySigns => '緊急サイン';

  @override
  String get age => '年齢';

  @override
  String get checkupCycle => '受診の目安';

  @override
  String get mainItems => '主な検査項目';

  @override
  String get exerciseLevel => '運動量';

  @override
  String get breedExamples => '代表的な犬種';

  @override
  String get low => '少ない';

  @override
  String get high => '多い';

  @override
  String get menu => 'メニュー';

  @override
  String get helloGreeting => 'こんにちは！';

  @override
  String get healthyTodayMsg => '\n今日の体調はいかがですか？';

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
  String get weightTrend => '⚖️ 体重の推移';

  @override
  String get weightChange => '⚖️ 体重の変化';

  @override
  String get noWeightData => 'まだ体重データがありません';

  @override
  String get measuredWeight => '測定した体重';

  @override
  String get noTodayRecords => '今日の記録はまだありません';

  @override
  String get homeNoRecordHint => '体調、トイレ、体重を記録して\nペットの健康を管理しましょう。';

  @override
  String noRecordsForDate(String date) {
    return '$dateの記録はありません';
  }

  @override
  String recordsForDate(String date, String count) {
    return '$dateの記録 ($count件)';
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
  String get alarmUpdated => 'お知らせを更新しました';

  @override
  String get alarmAdded => 'お知らせを追加しました';

  @override
  String get editAlarm => 'お知らせを編集';

  @override
  String get deleteAlarmConfirm => 'このお知らせを削除しますか？';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$nameを削除します。\n予定されていたプッシュ通知もキャンセルされます。';
  }

  @override
  String get doneMsg => '✅ 完了';

  @override
  String get laterMsg => '🕐 後で';

  @override
  String get saveCompletion => '✅ 完了を保存';

  @override
  String completedQuestion(String type) {
    return '$typeは完了しましたか？';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return '$nameを今日の記録に\n自動で保存します。';
  }

  @override
  String completionSaved(String name) {
    return '$nameの完了を保存しました';
  }

  @override
  String get tapAlarmTypeHint => '👆 希望するお知らせの種類をタップしてください';

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
    return '⚠️ $date 経過 · タップして日時を変更';
  }

  @override
  String get completedLabel => '完了';

  @override
  String get edit => '編集';

  @override
  String recordDeleteCannotUndo(String category) {
    return '$categoryの記録が削除されます。\nこの操作は元に戻せません。';
  }

  @override
  String get hintMedicineNameAndDose => '💡 お薬の名前と服用量を入力してください';

  @override
  String get hintMedicineName => '💡 お薬の名前を入力してください';

  @override
  String get hintDose => '💡 服用量を入力してください';

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
  String get hintSelectBrushingArea => '💡 歯磨きした場所を1つ以上選択してください';

  @override
  String get hintSelectVaccineType => '💡 ワクチンの種類を1つ以上選択してください';

  @override
  String get hintSelectGroomingType => '💡 お手入れの種類を1つ以上選択してください';

  @override
  String get hintSelectSymptomType => '💡 症状の種類を1つ以上選択してください';

  @override
  String get hintTitle => '💡 タイトルを入力してください';

  @override
  String get hintVaccineName => '💡 ワクチン名を入力してください';

  @override
  String get hintSelectScheduledDate => '💡 日付を選択してください';

  @override
  String get hintSelectScheduledTime => '💡 時間を選択してください';

  @override
  String get hintVisitPurpose => '💡 訪問の目的を入力してください';

  @override
  String get hintSelectAppointmentDate => '💡 予約日を選択してください';

  @override
  String get hintSelectAppointmentTime => '💡 予約時間を選択してください';

  @override
  String get hintMedicineNameInput => '💡 お薬の名前を入力してください';

  @override
  String get hintSelectMedicationDate => '💡 投薬日を選択してください';

  @override
  String get hintSelectMedicationTime => '💡 投薬時間を選択してください';

  @override
  String get hintAlarmName => '💡 お知らせ名を入力してください';

  @override
  String get hintSelectMealTime => '💡 ごはんの時間を選択してください';

  @override
  String get hintSelectAlarmTime => '💡 お知らせ時間を選択してください';

  @override
  String get noPetRegisterFirst => 'まだペットがいません。先にプロフィールから追加してください。';

  @override
  String get alarmRescheduled => 'お知らせの日時を変更しました';

  @override
  String get examplePetName => '例：ココ';

  @override
  String get exampleBreed => '例：マルチーズ';

  @override
  String get exampleBreedMulti => '例：マルチーズ、ペルシャ';

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
  String get enterNameHint => '名前を入力してください';

  @override
  String get addNewPetTitle => '新しいペットを追加';

  @override
  String get basicInfo => '基本情報';

  @override
  String get idInfo => '識別情報';

  @override
  String get idInfoOptional => '識別情報 (任意)';

  @override
  String get name => '名前';

  @override
  String get petKind => '動物種';

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
  String get male => '男の子';

  @override
  String get female => '女の子';

  @override
  String get maleSym => '男の子 ♂';

  @override
  String get femaleSym => '女の子 ♀';

  @override
  String get neutered => '去勢・避妊';

  @override
  String get done => '済';

  @override
  String get notDone => '未';

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
  String get noPetsRegistered => '登録されているペットがいません';

  @override
  String get registerPetPrompt => 'ペットを登録して\n一緒に健康管理を始めましょう！';

  @override
  String get registerPetBtn => 'ペットを登録する';

  @override
  String get editPet => 'ペット情報を編集';

  @override
  String get neuteringStatus => '去勢・避妊の状況';

  @override
  String get neuteredDone => '去勢・避妊済み';

  @override
  String get notNeutered => '未去勢・未避妊';

  @override
  String get selectDateHint => '日付を選択してください';

  @override
  String get saveChanges => '変更を保存';

  @override
  String get registerBtn => '登録';

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
    return '$nameのすべての記録とお知らせが削除され、復元できなくなります。';
  }

  @override
  String petDeleted(String name) {
    return '$nameを削除しました';
  }

  @override
  String petAdded(String name) {
    return '$nameを追加しました 🐾';
  }

  @override
  String get storeUnavailableMsg => '現在ストアに接続できません。後でもう一度お試しください。';

  @override
  String get checkingPaymentMsg => '支払い情報を確認中です。少し待ってからもう一度タップしてください。';

  @override
  String get paymentCompleteMsg => '支払いが完了しました。新しい家族の情報を入力してください。';

  @override
  String get addNewFamilyMember => '新しい家族を追加しますか？';

  @override
  String get firstPetFreeDesc =>
      '1匹目の登録は無料です。追加のペットを登録するには、1匹ごとに1回限りの支払いが必要です。';

  @override
  String petsRegisteredStoreUnavailable(int count) {
    return '現在$count匹のペットが登録されています。\nストアが利用可能になったらもう一度お試しください。';
  }

  @override
  String petsRegisteredPayToAdd(int count, String price) {
    return '現在$count匹のペットが登録されています。\n$priceをお支払いいただくと、新しい家族を追加できます。';
  }

  @override
  String get maybeLater => '後でにする';

  @override
  String get unavailable => '利用不可';

  @override
  String payAndAdd(String price) {
    return '$priceを支払って追加';
  }

  @override
  String get addNextAppointment => '＋ 次回の予約を追加';

  @override
  String get pottyRecordSaved => '💩 トイレを記録しました';

  @override
  String get conditionRecordSaved => '💗 体調を記録しました';

  @override
  String get medicationRecordSaved => '💊 お薬を記録しました';

  @override
  String get weightRecordSaved => '⚖️ 体重を記録しました';

  @override
  String get mealRecordSaved => '🍽️ ごはんを記録しました';

  @override
  String get waterRecordSaved => '💧 飲水量を記録しました';

  @override
  String get vetVisitRecordSaved => '🏥 病院を記録しました';

  @override
  String get vaccinationRecordSaved => '💉 ワクチンを記録しました';

  @override
  String get groomingRecordSaved => '✂️ お手入れを記録しました';

  @override
  String get brushingRecordSaved => '🪥 歯磨きを記録しました';

  @override
  String get walkRecordSaved => '🦮 散歩を記録しました';

  @override
  String get memoSaved => '📝 メモを記録しました';

  @override
  String get abnormalSymptomRecordSaved => '🚨 異常サインを記録しました';

  @override
  String get moreQuestions => '他にご質問はありますか？';

  @override
  String get contactViaSendFeedback =>
      '設定 > フィードバックを送信 からご連絡ください。\nすぐにお返事いたします 🐾';

  @override
  String get contactViaSendFeedbackLong =>
      '設定の [フィードバックを送信] ボタンからお問い合わせください。\nできるだけ早くお返事いたします。';

  @override
  String get privacyPolicyEffectiveDate =>
      'このプライバシーポリシーは2026年1月1日より有効です。\n最終更新日：2026年5月8日';

  @override
  String get privacyCollectedInfo => '収集した情報は以下の目的でのみ使用されます。';

  @override
  String get privacyDataFeatures =>
      'ペットスムタンはデータのエクスポート（バックアップ）とインポート（復元）機能を提供しています。';

  @override
  String get privacyPolicyMayUpdate =>
      'このプライバシーポリシーは、法律やサービスの変更により更新される場合があります。';

  @override
  String get privacyPolicyContact => 'プライバシーポリシーに関するお問い合わせは、以下よりご連絡ください。';

  @override
  String get catMeal => 'ごはん';

  @override
  String get catWater => '水';

  @override
  String get catGrooming => 'お手入れ';

  @override
  String get catBrushing => '歯磨き';

  @override
  String get catWalk => '散歩';

  @override
  String get catHospital => '病院';

  @override
  String get catAbnormalSymptom => '異常';

  @override
  String get catCondition => '体調';

  @override
  String get catPotty => 'トイレ';

  @override
  String get mealFormTitle => '🍽️ ごはんの記録';

  @override
  String get walkFormTitle => '🦮 散歩の記録';

  @override
  String get weightFormTitle => '⚖️ 体重の記録';

  @override
  String get waterFormTitle => '💧 水の記録';

  @override
  String get medicationFormTitle => '💊 お薬の記録';

  @override
  String get groomingFormTitle => '✂️ お手入れの記録';

  @override
  String get brushingFormTitle => '🪥 歯磨きの記録';

  @override
  String get conditionFormTitle => '🌡️ 体調の記録';

  @override
  String get poopFormTitle => '💩 トイレの記録';

  @override
  String get vaccinationFormTitle => '💉 ワクチンの記録';

  @override
  String get hospitalFormTitle => '🏥 病院の記録';

  @override
  String get abnormalSymptomFormTitle => '🚨 異常サインの記録';

  @override
  String get memoFormTitle => '📝 メモ';

  @override
  String get measureMethod => '測定方法';

  @override
  String get feedAmount => '給与量';

  @override
  String get mlInputLabel => 'mLを手動で入力';

  @override
  String get alarmRescheduleNote => 'このお知らせの日時は過ぎています。\n新しい日時を選択するか、削除してください。';

  @override
  String get nailTrim => '爪切り';

  @override
  String get shopNameExample => '例：モフモフペットショップ';

  @override
  String get poopRecordSaved => '💩 トイレを記録しました';

  @override
  String get memoRecordSaved => '📝 メモを記録しました';

  @override
  String get other => 'その他';

  @override
  String get whole => '全身';

  @override
  String get paw => '足';

  @override
  String get importance => '重要度';

  @override
  String get timeTaken => '所要時間';

  @override
  String get example10 => '例：10';

  @override
  String get minuteUnit => '分';

  @override
  String get hospitalNameExample => '例：ハッピー動物病院';

  @override
  String get diagnosisExample => '例：腸炎、皮膚炎';

  @override
  String get memoTitlePlaceholder => 'メモのタイトルを入力';

  @override
  String get hintMemoTitle => '💡 タイトルを入力してください';

  @override
  String get poopType => '種類';

  @override
  String get poopStatus => '状態';

  @override
  String get feces => 'ウンチ';

  @override
  String get bloody => '血便';

  @override
  String get vaccineDhppl => '混合ワクチン (DHPPL)';

  @override
  String get vaccineCorona => 'コロナウイルス';

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
  String photoVideoCount(int count) {
    return '写真・動画 · $count';
  }

  @override
  String get selectMediaSource => 'メディアの追加方法を選択';

  @override
  String get cameraCapture => 'カメラで撮影';

  @override
  String get cameraCaptureSubtitle => '写真や動画を撮影します';

  @override
  String get selectFromGallery => 'ギャラリーから選択';

  @override
  String get selectFromGallerySubtitle => '複数選択が可能です';

  @override
  String get takePhotoSubtitle => 'カメラで写真を撮影します';

  @override
  String get recordVideoSubtitle => 'カメラで動画を撮影します';

  @override
  String get permissionRequired => '設定から権限を許可してください';

  @override
  String get confirmDeletePhoto => 'この写真を削除しますか？';

  @override
  String get confirmDeleteVideo => 'この動画を削除しますか？';

  @override
  String get hintMedicineAndDose => '💡 お薬の名前と服用量を入力してください';

  @override
  String deleteRecordBody(String category) {
    return '$categoryの記録が削除されます。\nこの操作は元に戻せません。';
  }

  @override
  String dayCountShort(int days) {
    return '$days日';
  }

  @override
  String get helpIntroContent =>
      'ペットスムタンは、ペットの健康や日常を1か所で記録・管理できるアプリです。\nごはん、水、トイレ、体重、お薬、病院の訪問などを簡単に記録し、大切な予定を忘れないようにお知らせを設定できます。';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      '今日登録されたすべての記録を一目で確認できます。記録をタップすると詳細を表示したり編集したりできます。';

  @override
  String get helpHomeWeeklyStatsDesc =>
      '今週のトイレの回数、食事量、飲水量をグラフで確認し、ペットの生活パターンを把握できます。';

  @override
  String get helpHomeWeightChangeChartDesc =>
      '最近の体重記録をグラフで表示し、体重の変化を簡単に追跡できます。';

  @override
  String get helpHomeFindNearbyHospitalsDesc => 'ボタンをタップして、地図上で近くの動物病院を検索します。';

  @override
  String get helpHomeAddNewRecordDesc =>
      '下部の「＋」ボタンをタップしてカテゴリーを選択し、新しい記録を追加します。';

  @override
  String get helpRecordCategoriesIntro => 'ペットの日常を12種類のカテゴリーで記録できます。';

  @override
  String get helpCategoryPottyName => 'トイレ';

  @override
  String get helpCategoryPottyDesc => 'トイレの状態や種類を記録します。写真も添付できます。';

  @override
  String get helpCategoryConditionName => '体調';

  @override
  String get helpCategoryConditionDesc => 'ペットの全体的な体調を記録します。';

  @override
  String get helpCategoryMedicationName => 'お薬';

  @override
  String get helpCategoryMedicationDesc => 'お薬の名前、服用量、時間を記録します。';

  @override
  String get helpCategoryWeightName => '体重';

  @override
  String get helpCategoryWeightDesc => '体重 (kg) を記録します。ホーム画面で推移を確認できます。';

  @override
  String get helpCategoryMealName => 'ごはん';

  @override
  String get helpCategoryMealDesc => '食事量や種類を記録します。写真/動画を添付できます。';

  @override
  String get helpCategoryWaterName => '水';

  @override
  String get helpCategoryWaterDesc => '飲水量 (ml) を記録します。写真/動画を添付できます。';

  @override
  String get helpCategoryHospitalName => '病院';

  @override
  String get helpCategoryHospitalDesc => '病院名や診断名を記録します。写真/動画を添付できます。';

  @override
  String get helpCategoryVaccinationName => 'ワクチン';

  @override
  String get helpCategoryVaccinationDesc => 'ワクチンの種類と日付を記録します。';

  @override
  String get helpCategoryGroomingName => 'お手入れ';

  @override
  String get helpCategoryGroomingDesc => 'お手入れの詳細を記録し、写真/動画を添付できます。';

  @override
  String get helpCategoryDentalName => '歯磨き';

  @override
  String get helpCategoryDentalDesc => '歯磨きの状況やメモを記録します。';

  @override
  String get helpCategoryWalkName => '散歩';

  @override
  String get helpCategoryWalkDesc => '散歩の距離や時間を記録します。';

  @override
  String get helpCategoryMemoName => 'メモ';

  @override
  String get helpCategoryMemoDesc => '自由な形式でメモを残せます。';

  @override
  String get helpJournalViewRecordListDesc =>
      '日付ごとにすべての記録を表示します。カテゴリーバッジで簡単に見分けられます。';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      '記録をタップすると編集シートが開きます。内容の変更や削除が可能です。';

  @override
  String get helpJournalAttachMediaDesc =>
      'ごはん、水、病院、お手入れ、トイレなどのカテゴリーには写真や動画を添付できます。';

  @override
  String get helpAlarmAddDesc =>
      'ワクチン、お薬、病院、お手入れなどの予定をお知らせします。まず種類を選び、次に日時を設定します。';

  @override
  String get helpAlarmRepeatDesc =>
      '毎日、毎週、毎月などの繰り返しルールを設定できます。定期的なお薬やフィラリア予防に便利です。';

  @override
  String get helpAlarmAdvanceDesc =>
      'ワクチンのような重要な予定には、7日前、3日前、1日前に事前のお知らせを受け取れます。';

  @override
  String get helpAlarmCompleteDesc =>
      'お知らせをタップして完了マークを付けます。完了したお知らせは「過去のお知らせ」リストに移動します。';

  @override
  String get helpAlarmDeleteDesc => 'お知らせを左にスワイプすると削除できます。';

  @override
  String get helpPetRegisterDesc =>
      '名前、種類 (犬/猫)、品種、性別、生年月日、去勢・避妊の状況を入力してペットを登録します。';

  @override
  String get helpPetEditProfileDesc =>
      'プロフィール画面で名前、品種、体重、マイクロチップ番号、登録番号、プロフィール写真を編集できます。';

  @override
  String get helpPetManageMultipleDesc =>
      '複数のペットを登録できます。上部のペットチップをタップして切り替えます。';

  @override
  String get helpDogHealthGuideDesc =>
      '獣医師に基づいた健康情報を提供します：コア/ノンコアワクチンのスケジュール、寄生虫予防、デンタルケア、栄養など。';

  @override
  String get helpCatHealthGuideDesc =>
      '猫特有のワクチンスケジュール、寄生虫予防、デンタルケア、栄養情報を確認できます。';

  @override
  String get helpSettingsNotificationDesc => 'アプリのすべての通知をオンまたはオフにします。';

  @override
  String get helpSettingsExportDesc =>
      '記録されたすべてのデータをZIPファイルとしてエクスポートします。機種変更時のバックアップとして使用できます。';

  @override
  String get helpSettingsImportDesc => '保存しておいたZIPバックアップファイルをインポートしてデータを復元します。';

  @override
  String get helpSettingsFeedbackDesc =>
      '問題やご意見があればメールでお知らせください。アプリの改善に役立てさせていただきます。';

  @override
  String get helpFaqDeletePetQ => 'ペットを削除すると、すべての記録も削除されますか？';

  @override
  String get helpFaqDeletePetA =>
      'はい、ペットを削除するとその記録とお知らせもすべて削除されます。削除する前にデータのエクスポートとバックアップを行ってください。';

  @override
  String get helpFaqMultipleMediaQ => '1つの記録に複数の写真を添付できますか？';

  @override
  String get helpFaqMultipleMediaA =>
      'はい、複数の写真や動画を添付できます。ギャラリーから選択するか、カメラで直接撮影してください。';

  @override
  String get helpFaqNoNotificationQ => 'お知らせが届きません。';

  @override
  String get helpFaqNoNotificationA =>
      '端末の設定で、ペットスムタンアプリの通知が許可されているか確認してください。また、アプリ内の「設定 > 通知設定」がオンになっているかも確認してください。';

  @override
  String get helpFaqMoveDataQ => '新しい端末にデータを移行できますか？';

  @override
  String get helpFaqMoveDataA =>
      '「設定 > データのエクスポート」でバックアップファイルを保存し、新しい端末の「設定 > データのインポート」から復元してください。';

  @override
  String get helpFaqMultiplePetsQ => '複数のペットを登録できますか？';

  @override
  String get helpFaqMultiplePetsA => '1匹は無料で登録できます。追加のペットはプレミアム機能を使用して追加できます。';

  @override
  String get privacyIntroBody =>
      'ペットスムタンは会員登録なしで利用できるアプリであり、すべてのデータはお客様の端末にのみ保存されます。個人情報を外部サーバーに送信することはなく、大切なペットの情報を安全に守ります。';

  @override
  String get privacySection1Title => '収集する個人情報';

  @override
  String get privacySection1Body =>
      'ペットスムタンは登録なしで利用でき、個人を特定できる情報は収集しません。ただし、アプリの機能を提供するため、以下の情報がお客様の端末に保存される場合があります。';

  @override
  String get privacyLocalStorageInfo => '端末のローカルに保存される情報';

  @override
  String get privacyPetInfo =>
      'ペット情報：名前、動物種、品種、生年月日、性別、体重、去勢・避妊の状況、マイクロチップ番号、動物登録番号';

  @override
  String get privacyHealthRecords =>
      '健康記録：お客様が直接入力したトイレ、ごはん、水、体重、お薬、ワクチン、病院、お手入れ、歯磨き、散歩、体調、メモなど';

  @override
  String get privacyAttachedMedia => '添付メディア：お客様が直接撮影または選択した写真や動画';

  @override
  String get privacyNotificationSettings => 'お知らせ設定：お知らせの種類、予定日時、繰り返しルール';

  @override
  String get privacyInAppPurchaseTitle => 'アプリ内課金について';

  @override
  String get privacyPaymentProcessing =>
      '支払いの処理はApple App StoreまたはGoogle Play Storeを通じて行われ、アプリが直接支払い情報を収集または保存することはありません。';

  @override
  String get privacyReceiptVerification =>
      '各プラットフォームのポリシーに従い、購入のレシート確認に必要な最小限の情報のみが処理されます。';

  @override
  String get privacySection2Title => '収集および利用の目的';

  @override
  String get privacyPurposeRecords => 'ペットの健康記録の保存および閲覧';

  @override
  String get privacyPurposeStats => 'ホーム画面での統計の提供（今週のトイレ、ごはん、水の状況、体重変化グラフなど）';

  @override
  String get privacyPurposeReminders => 'ワクチン、お薬、病院など健康に関するお知らせの送信';

  @override
  String get privacyPurposeBackupRestore => 'データのバックアップおよび復元機能の提供';

  @override
  String get privacyPurposePaidEligibility => '有料機能の利用資格の確認';

  @override
  String get privacySection3Title => '情報の保持および破棄';

  @override
  String get privacyRetentionBody =>
      'ペットスムタンのすべてのデータはお客様の端末内のローカルデータベース (SQLite) にのみ保存され、外部サーバーには送信されません。';

  @override
  String get privacyDataDeletionMethod => 'データの破棄方法';

  @override
  String get privacyDeleteInApp => 'アプリの「設定 > データ管理」から、ペット情報や記録を直接削除できます。';

  @override
  String get privacyDeleteUninstall => 'アプリを削除すると、端末に保存されているすべてのデータも削除されます。';

  @override
  String get privacyDeleteBackupWarning =>
      'ただし、アプリを削除する前にバックアップ（エクスポート）を行わなかった場合、データは復元できなくなりますのでご注意ください。';

  @override
  String get privacySection4Title => '第三者への情報提供';

  @override
  String get privacyThirdPartyBody =>
      'ペットスムタンは、お客様の個人情報を外部の第三者に提供することはありません。ただし、以下の場合を除きます。';

  @override
  String get privacyThirdPartyUserExport =>
      'お客様が自らデータのエクスポート（バックアップファイルの共有）機能を使用する場合';

  @override
  String get privacyThirdPartyLegalRequest =>
      '法律により要求された場合、または捜査機関からの適法な要請があった場合';

  @override
  String get privacySection5Title => 'アクセス権限の案内';

  @override
  String get privacyPermissionsBody =>
      'アプリの機能を提供するため、以下の権限を要求する場合があります。権限を許可しなくても、その他の機能は通常通りご利用いただけます。';

  @override
  String get privacyPermissionCameraName => 'カメラ';

  @override
  String get privacyPermissionCameraDesc => '健康記録に添付する写真や動画を直接撮影する際に使用します。';

  @override
  String get privacyPermissionMediaName => '写真とメディアへのアクセス';

  @override
  String get privacyPermissionMediaDesc => '記録に添付する写真や動画をギャラリーから選択する際に使用します。';

  @override
  String get privacyPermissionNotificationName => '通知';

  @override
  String get privacyPermissionNotificationDesc =>
      'ワクチン、お薬、病院など健康に関するお知らせを送信するために使用します。';

  @override
  String get privacyPermissionFileName => 'ファイルへのアクセス (Android)';

  @override
  String get privacyPermissionFileDesc => 'データのバックアップファイルを保存または読み込む際に使用します。';

  @override
  String get privacySection6Title => 'データのバックアップと復元';

  @override
  String get privacyBackupExport =>
      'エクスポート：アプリ内のすべてのデータをファイル (.zip) として保存または共有できます。';

  @override
  String get privacyBackupImport =>
      'インポート：以前にエクスポートしたバックアップファイルを読み込んでデータを復元できます。';

  @override
  String get privacyBackupWarning =>
      'バックアップファイルはお客様ご自身で管理していただきますので、他人にファイルを共有しないようご注意ください。';

  @override
  String get privacySection7Title => '児童のプライバシー保護';

  @override
  String get privacyChildrenBody =>
      'ペットスムタンは、14歳未満の児童から個別に個人情報を収集することはありません。すべてのアプリデータは端末にのみ保存され、外部サーバーへの送信がないため、お子様でも安全にご利用いただけます。';

  @override
  String get privacySection8Title => 'プライバシーポリシーの変更';

  @override
  String get privacyPolicyChangeNotice =>
      '変更がある場合は、アプリのアップデートノートまたはアプリ内のお知らせを通じて通知します。';

  @override
  String get privacyPolicyChangeEffective => '変更されたポリシーは、通知から7日後に効力を発揮します。';

  @override
  String get privacySection9Title => 'お問い合わせ';

  @override
  String get hgDogHeroTitle => '犬のヘルスケアガイド';

  @override
  String get hgCatHeroTitle => '猫のヘルスケアガイド';

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
      '**DHPPL (Combo Vaccine)** — Distemper, Hepatitis, Parvovirus, Parainfluenza, Leptospirosis.\n1st dose at 6-8 weeks, 3 doses at 3-4 week intervals, then annual boosters.';

  @override
  String get hgDogCoreRabies =>
      '**Rabies** — 1st dose after 3 months of age, then annually (Legally required in many areas).';

  @override
  String get hgDogCoreCorona =>
      '**Coronavirus** — Starts at 6-8 weeks, 2 doses at 3-4 week intervals, then annual boosters.';

  @override
  String get hgDogNonCoreKennel =>
      '**Kennel Cough** — Recommended for multi-dog environments, grooming salons, or boarding. Nasal or injectable.';

  @override
  String get hgDogNonCoreFlu =>
      '**Influenza** — If highly active outdoors or frequently in contact with other dogs.';

  @override
  String get hgDogHeartworm1 =>
      'Recommended to administer preventative medication **once a month** around mosquito season (March-November).';

  @override
  String get hgDogHeartworm2 =>
      'Treatment is difficult and fatal if infected — **Prevention is the best method**.';

  @override
  String get hgDogHeartworm3 =>
      'Must test for infection and confirm negative before administering.';

  @override
  String get hgDogHeartworm4 =>
      'Year-round administration is safer (Recommended by vets).';

  @override
  String get hgDogExternalParasites1 =>
      'Administer spot-on or oral preventative **monthly**.';

  @override
  String get hgDogExternalParasites2 =>
      'Must check for ticks in ears, between toes, and armpits after walks.';

  @override
  String get hgDogExternalParasites3 =>
      'When removing ticks, use tweezers to pull straight out slowly (Do not twist).';

  @override
  String get hgDogInternalParasites1 =>
      'Roundworms, hookworms, whipworms: Administer dewormer **every 3-6 months**.';

  @override
  String get hgDogInternalParasites2 =>
      'Puppy stage (from 2 weeks): Deworm 4 times at 2-week intervals, then regular maintenance.';

  @override
  String get hgDental1 =>
      'Daily brushing is ideal — Recommended at least **3 times a week**.';

  @override
  String get hgDental2 =>
      'Must use **pet-specific toothpaste** (Human toothpaste containing xylitol is strictly forbidden).';

  @override
  String get hgDental3 =>
      'If tartar is severe, scaling at the vet is required (Requires general anesthesia).';

  @override
  String get hgDental4 =>
      'Dental chews and tooth toys can be used as supplementary care.';

  @override
  String get hgDogForbiddenFoodAlert =>
      'The following foods are toxic to dogs. Even small amounts can be dangerous, so never feed them.';

  @override
  String get hgDogForbiddenGrape =>
      '**Grapes/Raisins** — Causes kidney failure, even small amounts are fatal.';

  @override
  String get hgDogForbiddenChocolate =>
      '**Chocolate/Cacao** — Theobromine poisoning, heart failure, seizures.';

  @override
  String get hgDogForbiddenOnion =>
      '**Onions/Garlic/Leeks** — Destroys red blood cells, hemolytic anemia.';

  @override
  String get hgDogForbiddenXylitol =>
      '**Xylitol** — Insulin hypersecretion, hypoglycemia, liver failure.';

  @override
  String get hgDogForbiddenMacadamia =>
      '**Macadamia Nuts** — Muscle weakness, high fever, vomiting.';

  @override
  String get hgDogForbiddenDoughAlcohol =>
      '**Raw Dough/Alcohol** — Ethanol poisoning, hypoglycemia.';

  @override
  String get hgDogForbiddenAvocado =>
      '**Avocado** — Contains persin, causes vomiting and diarrhea.';

  @override
  String get hgEmergencyAlert =>
      'If the following symptoms appear, visit the vet immediately.';

  @override
  String get hgDogEmergency1 =>
      'Complete loss of appetite for more than 24 hours.';

  @override
  String get hgDogEmergency2 =>
      'Vomiting/diarrhea repeated 3 or more times a day.';

  @override
  String get hgDogEmergency3 =>
      'Abdominal distension/retching (Suspected gastric dilatation-volvulus).';

  @override
  String get hgDogEmergency4 => 'Difficulty breathing, pale gums, cyanosis.';

  @override
  String get hgDogEmergency5 => 'Convulsions, seizures, loss of consciousness.';

  @override
  String get hgDogEmergency6 => 'Inability to urinate for more than 12 hours.';

  @override
  String get hgDogEmergency7 => 'Noticeable trauma, fractures, heavy bleeding.';

  @override
  String get hgDogExerciseAlert =>
      'Lack of exercise in dogs is not just a physical issue. It is a major cause of stress, anxiety, and destructive behavior.';

  @override
  String get hgDogWalk1 =>
      'Small breeds: **20-30 mins**+ daily, Medium/Large breeds: **1 hour**+ recommended.';

  @override
  String get hgDogWalk2 =>
      'Walks are not just for potty, but for **olfactory stimulation, socialization, and stress relief**.';

  @override
  String get hgDogWalk3 =>
      'Allow plenty of sniffing — Very effective for relieving mental fatigue.';

  @override
  String get hgDogWalk4 =>
      'Beware of asphalt burns in summer — Recommend walking before 7 AM or in the evening.';

  @override
  String get hgDogPlay1 =>
      '**Fetch / Tug-of-war** — Releases physical energy, strengthens bond with owner.';

  @override
  String get hgDogPlay2 =>
      '**Nosework** — Brain stimulation, 15 mins equals 30 mins of walking effect.';

  @override
  String get hgDogPlay3 =>
      '**Puzzle/Kong toys** — Effective in alleviating separation anxiety when alone.';

  @override
  String get hgDogPlay4 =>
      'Just **10-15 mins** of focused play daily significantly reduces stress levels.';

  @override
  String get hgDogStress1 =>
      'Destroying furniture/objects, excessive barking — Signs of lack of exercise/stimulation.';

  @override
  String get hgDogStress2 =>
      'Tail chasing, excessive licking (paws, body) — Compulsive behavior, attempt to relieve stress.';

  @override
  String get hgDogStress3 =>
      'Excessive anxiety or potty mistakes when owner leaves — Suspected separation anxiety.';

  @override
  String get hgDogStress4 =>
      'If it persists, consulting a vet or pet behavior specialist is recommended.';

  @override
  String get hgDogSocial1 =>
      '**3-14 weeks** of age is the golden period for socialization — Exposure to various people, sounds, and environments is crucial.';

  @override
  String get hgDogSocial2 =>
      'Interaction with other dogs — Utilize dog parks or puppy classes.';

  @override
  String get hgDogSocial3 =>
      'Experiencing new places, smells, and sounds contributes to mental enrichment.';

  @override
  String get hgDogSocial4 =>
      'Positive reinforcement training (clicker, treats) increases brain stimulation and bonding simultaneously.';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP (Combo Vaccine)** — Herpesvirus, Calicivirus, Panleukopenia.\n1st dose at 6-8 weeks, 3 doses at 3-4 week intervals, then every 1-3 years.';

  @override
  String get hgCatCoreRabies =>
      '**Rabies** — Mandatory for outdoor cats, recommended for indoor cats (Legally required in many areas).';

  @override
  String get hgCatNonCoreFelv =>
      '**Feline Leukemia (FeLV)** — Highly recommended for outdoor cats or multi-cat households.';

  @override
  String get hgCatNonCoreChlamydia =>
      '**Feline Chlamydia** — Multi-cat environments, prevents conjunctivitis.';

  @override
  String get hgCatNonCoreFiv =>
      '**Feline Immunodeficiency Virus (FIV)** — Outdoor male cats (transmitted through bite wounds).';

  @override
  String get hgCatExternalParasites1 =>
      'Outdoor cats: Administer flea/tick preventative **once a month**.';

  @override
  String get hgCatExternalParasites2 =>
      'Indoor cats can also get fleas via human clothes/shoes → Preventative recommended **every 3 months**.';

  @override
  String get hgCatExternalParasites3 =>
      'When using spot-on products, apply accurately to the back of the neck.';

  @override
  String get hgCatInternalHeartworm => 'Internal Parasites & Heartworm';

  @override
  String get hgCatInternalParasites1 =>
      'Roundworms/Tapeworms: Administer dewormer **every 3-6 months**.';

  @override
  String get hgCatInternalParasites2 =>
      'If feeding a raw diet (raw meat/fish), more frequent testing is recommended.';

  @override
  String get hgCatHeartworm1 =>
      'Heartworm — **There is no cure for cats, prevention is the only way**. Monthly administration highly recommended for outdoor cats.';

  @override
  String get hgCatMajorDiseases => 'Beware of Major Cat Diseases';

  @override
  String get hgCatDiseaseAlert =>
      'Cats hide their pain, so when symptoms appear, the disease has often already progressed. Regular checkups are especially important.';

  @override
  String get hgCatDiseaseFlutd =>
      '**Feline Lower Urinary Tract Disease (FLUTD)** — Common in males. If unable to urinate, immediate emergency care is needed.';

  @override
  String get hgCatDiseaseCkd =>
      '**Chronic Kidney Disease (CKD)** — #1 cause of death in senior cats. Regular kidney panel tests essential for cats 7+ years old.';

  @override
  String get hgCatDiseaseDiabetes =>
      '**Feline Diabetes** — Risk for obese/senior cats. Watch for increased thirst and urination.';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**Hyperthyroidism** — Common in cats 10+ years old. Symptoms include weight loss, overeating, and hyperactivity.';

  @override
  String get hgCatDiseaseStomatitis =>
      '**Stomatitis** — Very common in cats. Check if there is bad breath, drooling, or loss of appetite.';

  @override
  String get hgCatDiseaseFhv =>
      '**Feline Herpes (FHV-1)** — Once infected, it remains dormant for life. Relapses during stress, causing sneezing, eye discharge, conjunctivitis.';

  @override
  String get hgHydrationDiet => 'Hydration & Diet Management';

  @override
  String get hgCatHydrationAlert =>
      'Cats naturally do not drink much water, making them vulnerable to urinary diseases. Encouraging water intake is very important.';

  @override
  String get hgCatHydration1 =>
      'Combining wet food (cans/pouches) is recommended to supplement hydration.';

  @override
  String get hgCatHydration2 =>
      'Prefers flowing water — Installing a **water fountain** is effective.';

  @override
  String get hgCatHydration3 =>
      'Separate water bowls from food bowls; prefer wide, shallow bowls.';

  @override
  String get hgCatHydration4 =>
      'Target water intake: About **40-60ml** per 1kg of body weight per day.';

  @override
  String get hgCatForbiddenFoodAlert =>
      'The following foods are toxic to cats. Even small amounts can be dangerous, so never feed them.';

  @override
  String get hgCatForbiddenOnion =>
      '**Onions/Garlic/Leeks** — Destroys red blood cells, hemolytic anemia (More sensitive than dogs).';

  @override
  String get hgCatForbiddenGrape =>
      '**Grapes/Raisins** — Causes kidney failure.';

  @override
  String get hgCatForbiddenChocolate =>
      '**Chocolate/Caffeine** — Heart and nervous system toxicity.';

  @override
  String get hgCatForbiddenRawFish =>
      '**Raw Fish (continuous feeding)** — Causes Thiamine (B1) deficiency.';

  @override
  String get hgCatForbiddenMilk =>
      '**Milk/Dairy** — Adult cats are lactose intolerant, causes diarrhea.';

  @override
  String get hgCatForbiddenXylitolAlcohol =>
      '**Xylitol/Alcohol** — Liver and nervous system toxicity.';

  @override
  String get hgCatForbiddenAvocado =>
      '**Avocado** — Contains persin, causes vomiting and diarrhea.';

  @override
  String get hgCatForbiddenRawEggWhite =>
      '**Raw Egg Whites** — Avidin blocks biotin, causing skin/coat issues.';

  @override
  String get hgCatEmergency1 =>
      '**Unable to urinate at all or blood in urine** — Urethral obstruction emergency (Especially watch male cats).';

  @override
  String get hgCatEmergency2 =>
      'Complete loss of appetite for more than 24 hours (Risk of fatty liver).';

  @override
  String get hgCatEmergency3 =>
      '**Open-mouth breathing** — Never normal for cats, immediate emergency.';

  @override
  String get hgCatEmergency4 =>
      'Sudden paralysis or coldness in hind legs (Suspected thrombosis).';

  @override
  String get hgCatEmergency5 => 'Convulsions, seizures, loss of consciousness.';

  @override
  String get hgCatEmergency6 => 'Pale or jaundiced (yellowish) gums/tongue.';

  @override
  String get hgCatEmergency7 =>
      'Vomiting/diarrhea repeated 3 or more times a day, or bloody stool/vomit.';

  @override
  String get hgCatEmergency8 => 'Noticeable trauma, fractures, heavy bleeding.';

  @override
  String get hgEnvironmentMentalHealth => 'Environment & Mental Health';

  @override
  String get hgIndoorEnvironment => 'Indoor Environment Management';

  @override
  String get hgStressManagement => 'Stress Management';

  @override
  String get hgCatEnvironment1 =>
      '**Litter Boxes**: Number of cats + 1 or more placed, clean daily.';

  @override
  String get hgCatEnvironment2 =>
      '**Scratchers**: At least 2 or more (combine vertical and horizontal).';

  @override
  String get hgCatEnvironment3 =>
      '**High Spaces**: Provide vertical spaces like cat trees or shelves (satisfies territorial instincts).';

  @override
  String get hgCatEnvironment4 =>
      '**Hiding Spots**: Provide safe hiding spaces like boxes or tunnels.';

  @override
  String get hgCatStress1 =>
      'Cat stress is directly linked to weakened immunity, FLUTD, herpes relapses, etc.';

  @override
  String get hgCatStress2 =>
      'Use pheromone diffusers (Feliway) during sudden environmental changes (moving, new family members).';

  @override
  String get hgCatStress3 =>
      'Secure at least **10-15 mins** of playtime with toys daily.';

  @override
  String get hgCatStress4 =>
      'Multi-cat households: Separate resources (food bowls, litter boxes, beds) according to the number of cats.';

  @override
  String get hgAge => 'Age';

  @override
  String get hgCheckupCycle => 'Checkup Cycle';

  @override
  String get hgMainItems => 'Main Items';

  @override
  String get hgAge1to6 => '1-6 years';

  @override
  String get hgAge7to10 => '7-10 years';

  @override
  String get hgAge11Plus => '11+ years';

  @override
  String get hgYearlyOnce => 'Once a year';

  @override
  String get hgYearlyTwice => 'Twice a year';

  @override
  String get hgEvery3to4Months => 'Every 3-4 months';

  @override
  String get hgDogCheckupItems1 =>
      'Blood test, heart auscultation, weight, teeth';

  @override
  String get hgDogCheckupItems2 =>
      'Blood, urine, X-ray, blood pressure, joints';

  @override
  String get hgDogCheckupItems3 =>
      'Comprehensive blood, ultrasound, kidney/liver function';

  @override
  String get hgCatCheckupItems1 => 'Blood test, urine test, weight, teeth';

  @override
  String get hgCatCheckupItems2 =>
      'Kidney/liver panel, blood pressure, thyroid (T4)';

  @override
  String get hgCatCheckupItems3 =>
      'Comprehensive blood, abdominal ultrasound, intensive kidney monitoring';

  @override
  String get hgExerciseAmount => 'Exercise Level';

  @override
  String get hgBreedExamples => 'Breed Examples';

  @override
  String get hgLow => 'Low';

  @override
  String get hgNormal => 'Normal';

  @override
  String get hgHigh => 'High';

  @override
  String get hgBreedLowExamples => 'Bulldog, Basset Hound, Shih Tzu, Maltese';

  @override
  String get hgBreedNormalExamples => 'Poodle, Bichon, Cocker Spaniel, Beagle';

  @override
  String get hgBreedHighExamples =>
      'Labrador, Golden Retriever, Husky, Border Collie';

  @override
  String get hgDisclaimer =>
      'This guide provides general health care information, and necessary care may vary depending on your pet\'s condition. If there are abnormal symptoms or treatment is needed, be sure to consult a veterinarian.';

  @override
  String get categoryFilter => 'Category Filter';

  @override
  String get selectAll => 'Select All';

  @override
  String get deselectAll => 'Deselect All';

  @override
  String get apply => 'Apply';

  @override
  String get saving => 'Saving...';

  @override
  String get treatmentContent => 'Treatment';

  @override
  String get conditionScoreWord1 => 'Terrible';

  @override
  String get conditionScoreWord2 => 'Poor';

  @override
  String get conditionScoreWord3 => 'Fair';

  @override
  String get conditionScoreWord4 => 'Good';

  @override
  String get conditionScoreWord5 => 'Excellent';

  @override
  String conditionScoreFormat(Object score, Object word) {
    return 'Condition $score pts - $word';
  }
}
