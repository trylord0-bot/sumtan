// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => '반려숨탄';

  @override
  String get appTagline => '반려동물 건강관리 앱';

  @override
  String get navHome => '홈';

  @override
  String get navJournal => '일지';

  @override
  String get navNotifications => '알림';

  @override
  String get navProfile => '프로필';

  @override
  String get navSettings => '설정';

  @override
  String get navAddAlarm => '알림 추가';

  @override
  String get drawerService => '서비스';

  @override
  String get drawerNearbyHospitals => '주변 병원 찾기';

  @override
  String get drawerNearbyHospitalsSub => '내 위치 기반 동물병원';

  @override
  String get drawerHealthGuide => '건강관리 가이드';

  @override
  String get drawerHealthGuideSub => '반려동물 건강 안내서';

  @override
  String get drawerApp => '앱';

  @override
  String get drawerHelp => '도움말';

  @override
  String get dialogExternalTitle => '외부 웹페이지로 이동해요';

  @override
  String get dialogExternalHospitalBody =>
      '주변 동물병원을 찾으려면\n외부 웹페이지가 필요해요.\n\n지금 바로 이동할까요?';

  @override
  String get commonCancel => '취소';

  @override
  String get commonGo => '이동할게요';

  @override
  String get commonDelete => '삭제';

  @override
  String get commonSave => '저장하기';

  @override
  String get commonLoading => '준비 중...';

  @override
  String commonPercent(String percent) {
    return '$percent%';
  }

  @override
  String get toastBackToExit => '한 번 더 누르면 앱을 종료합니다';

  @override
  String get toastNeedPet => '아직 반려동물이 없네요. 프로필에서 먼저 등록해 주세요!';

  @override
  String get settingsNotifications => '알림';

  @override
  String get settingsPushNotifications => '푸시 알림 허용';

  @override
  String get settingsPushNotificationsSub => '기기 알림 권한 설정';

  @override
  String get settingsLanguageSection => '언어';

  @override
  String get settingsLanguage => '앱 언어';

  @override
  String get settingsLanguageSystem => '기기 설정 사용';

  @override
  String get settingsLanguageChanged => '앱 언어가 변경됐어요';

  @override
  String get settingsData => '데이터 관리';

  @override
  String get settingsExport => '데이터 내보내기';

  @override
  String get settingsExportSub => 'ZIP 파일로 저장';

  @override
  String get settingsImport => '데이터 가져오기';

  @override
  String get settingsImportSub => 'ZIP 파일에서 복원';

  @override
  String get settingsAppInfo => '앱 정보';

  @override
  String get settingsVersion => '앱 버전';

  @override
  String get settingsPrivacy => '개인정보 처리방침';

  @override
  String get settingsFeedback => '피드백 보내기';

  @override
  String get settingsFeedbackSubject => '반려숨탄 피드백';

  @override
  String get settingsEmailAppMissing => '이메일 앱을 찾을 수 없어요';

  @override
  String get settingsImportConfirmBody =>
      '기존의 모든 데이터가 삭제되고 백업 파일의 데이터로 교체됩니다.\n\n계속하시겠습니까?';

  @override
  String get settingsImportAction => '가져오기';

  @override
  String get settingsImporting => '데이터 가져오기';

  @override
  String get settingsImportSuccess => '백업 데이터를 복원했어요';

  @override
  String get settingsImportFailed => '가져오기에 실패했어요';

  @override
  String get settingsExportTitle => '데이터 내보내기';

  @override
  String get settingsExportBenefitTitle => '내 소중한 기록을 안전하게';

  @override
  String get settingsExportBenefitPets => '모든 반려동물 프로필 & 사진';

  @override
  String get settingsExportBenefitRecords => '건강 기록 · 일지 · 체중 전체';

  @override
  String get settingsExportBenefitMedia => '첨부 이미지 & 영상 포함';

  @override
  String get settingsStoreUnavailable => '현재 스토어에 연결할 수 없어요.\n잠시 후 다시 시도해 주세요.';

  @override
  String settingsPayAndExport(String price) {
    return '$price 결제하고 내보내기';
  }

  @override
  String get settingsUnlocked => '잠금 해제됨';

  @override
  String get settingsExportUnlockedBody =>
      '모든 반려동물 정보와 기록을 ZIP 파일로 저장합니다.\n저장된 파일은 언제든 무료로 가져오기 복원할 수 있어요.';

  @override
  String get settingsExporting => '내보내는 중...';

  @override
  String get settingsExportZip => 'ZIP 파일로 내보내기';

  @override
  String get settingsExportConfirmBody =>
      '모든 반려동물 정보와 기록, 첨부 미디어를 ZIP 파일로 내보냅니다.';

  @override
  String get settingsExportAction => '내보내기';

  @override
  String get settingsExportSuccess => '백업 파일을 공유할 수 있어요';

  @override
  String get settingsExportFailed => '내보내기에 실패했어요';

  @override
  String get settingsPurchaseFailed => '결제에 실패했어요';

  @override
  String get errorDbInit => '앱 데이터를 준비하는 중 문제가 발생했습니다.\n잠시 후 다시 실행해 주세요.';

  @override
  String get help => '도움말';

  @override
  String get healthGuide => '건강관리 가이드';

  @override
  String get dog => '강아지';

  @override
  String get cat => '고양이';

  @override
  String get tabDog => '🐶 강아지';

  @override
  String get tabCat => '🐱 고양이';

  @override
  String get savedMsg => '저장됐어요';

  @override
  String get cancel => '취소';

  @override
  String get delete => '삭제';

  @override
  String get deleteAction => '삭제하기';

  @override
  String get save => '저장하기';

  @override
  String get memo => '메모';

  @override
  String get memoPlaceholder => '자유롭게 메모를 남겨보세요';

  @override
  String get addBtn => '+ 추가';

  @override
  String get errorOccurred => '오류가 발생했어요';

  @override
  String errorOccurredWithDetail(String error) {
    return '오류가 발생했어요\n$error';
  }

  @override
  String get pet => '반려동물';

  @override
  String get selectPet => '반려동물 선택';

  @override
  String get addNewPet => '새 반려동물 추가하기';

  @override
  String get noAlarms => '등록된 알림이 없네요';

  @override
  String alarmEmptyDesc(String petName) {
    return '$petName는 오늘도 건강하게 지내봐요!\n아래 알림 추가 버튼을 눌러 시작해보세요.';
  }

  @override
  String get scheduledAlarms => '예정된 알림';

  @override
  String get swipeToDelete => '스와이프하면 삭제할 수 있어요';

  @override
  String get selectAlarmType => '알림 종류 선택';

  @override
  String get vetAppointment => '병원 예약';

  @override
  String get medication => '투약';

  @override
  String get mealTime => '식사 시간';

  @override
  String get dailyReminder => '일일 리마인더';

  @override
  String get alarmLabel => '알림';

  @override
  String get alarmBodyVaccination => '예방접종 예정일을 확인해 주세요.';

  @override
  String get alarmBodyVetAppointment => '병원 예약 시간이 다가왔어요.';

  @override
  String get alarmBodyMedication => '투약할 시간이에요.';

  @override
  String get alarmBodyMealTime => '식사 시간을 챙겨 주세요.';

  @override
  String get alarmBodyDailyReminder => '오늘의 건강 기록을 남겨 주세요.';

  @override
  String get alarmBodyDefault => '반려동물 건강관리 알림입니다.';

  @override
  String get alarmDeleted => '알림이 삭제됐어요 🗑️';

  @override
  String get hidePastAlarms => '지난 알림 숨기기';

  @override
  String get showPastAlarms => '지난 알림 보기';

  @override
  String get deleteAll => '전체 삭제';

  @override
  String get deletePastAlarms => '지난 알림 삭제';

  @override
  String deletePastAlarmsConfirm(int count) {
    return '지난 알림 $count개를 모두 삭제할까요?';
  }

  @override
  String get pastAlarmsDeleted => '지난 알림이 모두 삭제됐어요';

  @override
  String get pastLabel => '지남';

  @override
  String get today => '오늘';

  @override
  String get tomorrowSameTime => '내일 같은 시간';

  @override
  String get snoozeQuestion => '언제 다시 알려드릴까요?';

  @override
  String get snooze5min => '5분 뒤';

  @override
  String get snooze10min => '10분 뒤';

  @override
  String get snooze30min => '30분 뒤';

  @override
  String get snooze1hour => '1시간 뒤';

  @override
  String get snooze3hour => '3시간 뒤';

  @override
  String get snoozeCustom => '직접 지정';

  @override
  String get snoozeAtThisTime => '이 시간에 다시 알림';

  @override
  String snoozeConfirm(String time) {
    return '🕐 $time에 다시 알려드릴게요';
  }

  @override
  String get selectFutureTime => '지금 이후의 시간을 선택해주세요';

  @override
  String recordCheckHint(String typeLabel) {
    return '기록 → $typeLabel 항목에서 확인할 수 있어요';
  }

  @override
  String get pushAlsoCancel => '예정된 푸시 알림도 함께 취소돼요.';

  @override
  String get reschedule => '재예약하기';

  @override
  String get deleteThisAlarm => '이 알림 삭제하기';

  @override
  String get vaccineNameRequired => '백신 이름 *';

  @override
  String get vaccineNameExample => '예) 광견병, 종합백신 등';

  @override
  String get scheduledDateRequired => '예정일 *';

  @override
  String get reminderTiming => '알림 시점';

  @override
  String get sameDay => '당일';

  @override
  String get reminderTimeRequired => '알림 시각 *';

  @override
  String get memoInputHint => '메모를 입력하세요';

  @override
  String get visitPurposeRequired => '방문 목적 *';

  @override
  String get visitPurposeExample => '예) 정기검진, 피부 진료 등';

  @override
  String get appointmentDateTimeRequired => '예약 일시 *';

  @override
  String get hospitalName => '병원명';

  @override
  String get hospitalNameHint => '병원 이름을 입력하세요';

  @override
  String get medicineNameRequired => '약품 이름 *';

  @override
  String get medicineNameExample => '예) 심장사상충, 구충제 등';

  @override
  String get repeatRequired => '반복 *';

  @override
  String get none => '없음';

  @override
  String get daily => '매일';

  @override
  String get weekly => '매주';

  @override
  String get monthly => '매달';

  @override
  String get weekdays => '평일';

  @override
  String get weekdaysOnly => '평일만';

  @override
  String get weekends => '주말';

  @override
  String get weekendsOnly => '주말만';

  @override
  String get medicationDateTimeRequired => '투약 일시 *';

  @override
  String get medicationTimeRequired => '투약 시각 *';

  @override
  String get alarmNameRequired => '알림 이름 *';

  @override
  String get mealTimeExample => '예) 아침 식사, 저녁 밥 등';

  @override
  String get mealTimeRequired => '식사 시각 *';

  @override
  String get alarmMessage => '알림 문구';

  @override
  String get alarmMessageExample => '예) 콩이 오늘 기록 남기셨나요? 🐾';

  @override
  String get alarmPastDueMsg => '이 알림의 예정일이 지났어요.\n새 날짜로 변경하거나 삭제할 수 있어요.';

  @override
  String get reselectDate => '날짜 재선택';

  @override
  String get selectDate => '날짜 선택';

  @override
  String get selectTime => '시각 선택';

  @override
  String get todayStatus => '오늘의 상태';

  @override
  String get addRecord => '+ 기록하기';

  @override
  String get todayReminders => '오늘의 리마인더';

  @override
  String get todayRecords => '오늘의 기록';

  @override
  String get viewAll => '전체 보기';

  @override
  String get weekStats => '이번 주 통계';

  @override
  String get pottyCount => '배변 횟수';

  @override
  String get mealCount => '식사 횟수';

  @override
  String get waterLevel => '음수 단계';

  @override
  String get timesUnit => '회';

  @override
  String get mealsUnit => '끼';

  @override
  String get pointsUnit => '점';

  @override
  String get recordDeleted => '기록이 삭제됐어요 🗑️';

  @override
  String get recordUpdated => '기록이 수정됐어요';

  @override
  String get deleteRecordConfirm => '기록을 삭제할까요?';

  @override
  String get deleteThisRecord => '이 기록 삭제하기';

  @override
  String get typeLabel => '유형';

  @override
  String get statusLabel => '상태';

  @override
  String get conditionScore => '컨디션 점수';

  @override
  String get symptomTags => '증상 태그';

  @override
  String get medicineName => '약품명';

  @override
  String get dose => '용량';

  @override
  String get medicationMethod => '투약 방법';

  @override
  String get weightKg => '체중 (kg)';

  @override
  String get measurementMethod => '측정 방법';

  @override
  String get mealType => '식사 종류';

  @override
  String get mealAmount => '식사량';

  @override
  String get servingAmount => '급여량';

  @override
  String get waterAmount => '음수량';

  @override
  String get visitType => '진료 유형';

  @override
  String get diagnosisName => '진단명';

  @override
  String get vaccineType => '백신 종류';

  @override
  String get sideEffects => '부작용';

  @override
  String get groomingType => '미용 종류';

  @override
  String get shopName => '샵 이름';

  @override
  String get cost => '비용';

  @override
  String get nextAppointment => '다음 예약일';

  @override
  String get brushingArea => '빗질 부위';

  @override
  String get duration => '소요 시간';

  @override
  String get walkTime => '산책 시간';

  @override
  String get distance => '거리';

  @override
  String get title => '제목';

  @override
  String get priority => '중요도';

  @override
  String get stool => '대변';

  @override
  String get urine => '소변';

  @override
  String get vomiting => '구토';

  @override
  String get normal => '정상';

  @override
  String get loose => '묽음';

  @override
  String get hard => '딱딱함';

  @override
  String get bloodInStool => '혈변';

  @override
  String get cough => '기침';

  @override
  String get lethargy => '무기력';

  @override
  String get lossOfAppetite => '식욕부진';

  @override
  String get diarrhea => '설사';

  @override
  String get runnyNose => '콧물';

  @override
  String get sneezing => '재채기';

  @override
  String get trembling => '떨림';

  @override
  String get bloodInUrine => '혈뇨';

  @override
  String get oral => '경구';

  @override
  String get injection => '주사';

  @override
  String get topical => '외용';

  @override
  String get eyeDrops => '점안';

  @override
  String get earDrops => '점이';

  @override
  String get vetHospital => '동물병원';

  @override
  String get homeScale => '가정용 체중계';

  @override
  String get holdAndWeigh => '안고 측정';

  @override
  String get breakfast => '아침';

  @override
  String get lunch => '점심';

  @override
  String get dinner => '저녁';

  @override
  String get snack => '간식';

  @override
  String get veryLittle => '매우 적음';

  @override
  String get little => '적음';

  @override
  String get much => '많음';

  @override
  String get veryMuch => '매우 많음';

  @override
  String get general => '일반';

  @override
  String get regularCheckup => '정기검진';

  @override
  String get emergency => '응급';

  @override
  String get mild => '경미';

  @override
  String get severe => '심각';

  @override
  String get bath => '목욕';

  @override
  String get fullGrooming => '전체미용';

  @override
  String get partialGrooming => '부분미용';

  @override
  String get nails => '발톱';

  @override
  String get earCleaning => '귀청소';

  @override
  String get tartarRemoval => '치석제거';

  @override
  String get analGlands => '항문낭';

  @override
  String get all => '전체';

  @override
  String get back => '등';

  @override
  String get belly => '배';

  @override
  String get tail => '꼬리';

  @override
  String get face => '얼굴';

  @override
  String get paws => '발';

  @override
  String get important => '중요';

  @override
  String get photosAndVideos => '사진 · 동영상';

  @override
  String get addMedia => '미디어 추가';

  @override
  String get selectMediaMethod => '미디어 추가 방법 선택';

  @override
  String get useCamera => '카메라로 촬영';

  @override
  String get takePhotoOrVideo => '사진 또는 동영상 촬영';

  @override
  String get chooseFromGallery => '갤러리에서 선택';

  @override
  String get multiSelectHint => '사진 · 동영상 다중 선택 가능';

  @override
  String get takePhoto => '사진 촬영';

  @override
  String get takePhotoDesc => '카메라로 사진을 촬영';

  @override
  String get recordVideo => '동영상 촬영';

  @override
  String get recordVideoDesc => '카메라로 동영상을 촬영';

  @override
  String get deleteThisPhoto => '이 사진 삭제';

  @override
  String get deletePhotoConfirm => '사진을 삭제할까요?';

  @override
  String get deleteThisVideo => '이 동영상 삭제';

  @override
  String get deleteVideoConfirm => '동영상을 삭제할까요?';

  @override
  String get muted => '음소거';

  @override
  String get soundOn => '소리 켜짐';

  @override
  String get allowPermissionInSettings => '설정에서 권한을 허용해 주세요';

  @override
  String get openSettings => '설정 열기';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String get contactDeveloper => '개발자에게 문의하기';

  @override
  String get contact => '문의';

  @override
  String get settingsLabel => '설정';

  @override
  String get exportData => '데이터 내보내기';

  @override
  String get importData => '데이터 가져오기';

  @override
  String get sendFeedback => '피드백 보내기';

  @override
  String get faq => '자주 묻는 질문';

  @override
  String get homeScreen => '홈 화면';

  @override
  String get journalScreen => '일지 화면';

  @override
  String get alarmScreen => '알림 화면';

  @override
  String get petManagement => '반려동물 관리';

  @override
  String get recordCategories => '기록 카테고리';

  @override
  String get whatIsPetSumtan => '반려숨탄이란?';

  @override
  String get todayRecordSummary => '오늘의 기록 요약';

  @override
  String get weeklyStats => '주간 통계';

  @override
  String get weightChangeChart => '체중 변화 그래프';

  @override
  String get findNearbyHospitals => '주변 병원 찾기';

  @override
  String get addNewRecord => '새 기록 추가 (+)';

  @override
  String get viewRecordList => '기록 목록 보기';

  @override
  String get editDeleteRecord => '기록 수정 및 삭제';

  @override
  String get attachMedia => '사진·영상 첨부';

  @override
  String get addAlarm => '알림 추가';

  @override
  String get repeatAlarm => '반복 알림';

  @override
  String get advanceAlarmHint => '사전 알림 (D-7, D-3, D-1)';

  @override
  String get completeAlarm => '알림 완료 처리';

  @override
  String get deleteAlarm => '알림 삭제';

  @override
  String get registerPet => '반려동물 등록';

  @override
  String get editProfile => '프로필 수정';

  @override
  String get manageMultiplePets => '여러 마리 관리';

  @override
  String get dogHealthGuide => '강아지 건강 가이드';

  @override
  String get catHealthGuide => '고양이 건강 가이드';

  @override
  String get notificationSettings => '알림 설정';

  @override
  String get dogHealthCareGuide => '강아지 건강관리 가이드';

  @override
  String get catHealthCareGuide => '고양이 건강관리 가이드';

  @override
  String get healthGuideSubtitle => '수의사 권장 기준을 바탕으로\n작성된 전문 건강 안내서예요.';

  @override
  String get vaccination => '예방접종';

  @override
  String get coreVaccines => '핵심 필수 접종 (Core Vaccine)';

  @override
  String get required => '필수';

  @override
  String get nonCoreVaccines => '선택 접종 (Non-Core)';

  @override
  String get recommended => '권장';

  @override
  String get parasitePrevention => '기생충 예방';

  @override
  String get heartworm => '심장사상충';

  @override
  String get monthlyFreq => '매월';

  @override
  String get externalParasites => '외부기생충 (벼룩·진드기)';

  @override
  String get internalParasites => '내부기생충';

  @override
  String get threeToSixMonths => '3~6개월';

  @override
  String get nutritionManagement => '영양 관리';

  @override
  String get dentalCare => '치아 관리';

  @override
  String get healthCheckup => '건강검진';

  @override
  String get emergencySigns => '응급 신호';

  @override
  String get age => '나이';

  @override
  String get checkupCycle => '검진 주기';

  @override
  String get mainItems => '주요 항목';

  @override
  String get exerciseLevel => '운동량';

  @override
  String get breedExamples => '해당 품종 예시';

  @override
  String get low => '낮음';

  @override
  String get high => '높음';

  @override
  String get menu => '메뉴';

  @override
  String get helloGreeting => '안녕하세요! ';

  @override
  String get healthyTodayMsg => '\n오늘도 건강한가요? 🐾';

  @override
  String get noRecordsYet => '아직 기록이 없어요';

  @override
  String lastRecord(String time) {
    return '마지막 기록 · $time';
  }

  @override
  String avgPerDay(String value, String unit) {
    return '평균 $value$unit/일';
  }

  @override
  String get weightTrend => '⚖️ 체중 추이';

  @override
  String get weightChange => '⚖️ 체중 변화';

  @override
  String get noWeightData => '체중 데이터가 없어요';

  @override
  String get measuredWeight => '실측 체중';

  @override
  String get standardRange => '표준 범위';

  @override
  String get noTodayRecords => '아직 오늘의 기록이 없어요';

  @override
  String get homeNoRecordHint => '반려동물의 컨디션, 배변, 체중을\n기록해 건강을 관리해 보세요!';

  @override
  String noRecordsForDate(String date) {
    return '$date의 기록이 없어요';
  }

  @override
  String recordsForDate(String date, String count) {
    return '$date 기록 ($count건)';
  }

  @override
  String get daySun => '일';

  @override
  String get dayMon => '월';

  @override
  String get dayTue => '화';

  @override
  String get dayWed => '수';

  @override
  String get dayThu => '목';

  @override
  String get dayFri => '금';

  @override
  String get daySat => '토';

  @override
  String get whatToRecord => '📝 무엇을 기록할까요?';

  @override
  String saveErrorMsg(String error) {
    return '저장 중 오류가 발생했어요: $error';
  }

  @override
  String get alarmUpdated => '✅ 알림이 수정됐어요';

  @override
  String get alarmAdded => '🔔 알림이 추가됐어요';

  @override
  String get editAlarm => '알림 수정';

  @override
  String get deleteAlarmConfirm => '알림을 삭제할까요?';

  @override
  String deleteAlarmWithPushMsg(String name) {
    return '$name이 삭제되고\n예정된 푸시 알림도 함께 취소돼요.';
  }

  @override
  String get doneMsg => '✅ 완료했어요';

  @override
  String get laterMsg => '🕐 나중에';

  @override
  String get saveCompletion => '✅ 완료 저장';

  @override
  String completedQuestion(String type) {
    return '$type을 완료했나요?';
  }

  @override
  String autoSaveToTodayMsg(String name) {
    return '$name 을(를)\n오늘 기록에 자동으로 저장할게요.';
  }

  @override
  String completionSaved(String name) {
    return '$name 완료가 기록됐어요 ✅';
  }

  @override
  String get tapAlarmTypeHint => '👆 원하는 알림 종류를 탭하세요';

  @override
  String countUnit(int count) {
    return '$count개';
  }

  @override
  String dateCompleted(String date) {
    return '$date · 완료됨';
  }

  @override
  String datePassedTapToReschedule(String date) {
    return '⚠️ $date 지남 · 탭해서 재예약';
  }

  @override
  String get completedLabel => '완료됨';

  @override
  String get edit => '수정';

  @override
  String recordDeleteCannotUndo(String category) {
    return '$category 기록이 삭제되고\n되돌릴 수 없어요.';
  }

  @override
  String get hintMedicineNameAndDose => '💡 약품명과 용량을 입력해 주세요';

  @override
  String get hintMedicineName => '💡 약품명을 입력해 주세요';

  @override
  String get hintDose => '💡 용량을 입력해 주세요';

  @override
  String get hintWeightNumber => '💡 체중을 숫자로 입력해 주세요';

  @override
  String get hintWeight => '💡 체중을 입력해 주세요';

  @override
  String get hintWeightIsNumber => '💡 체중은 숫자로 입력해 주세요';

  @override
  String get hintWalkTime => '💡 산책 시간을 입력해 주세요';

  @override
  String get hintWalkTimeIsNumber => '💡 산책 시간은 숫자로 입력해 주세요';

  @override
  String get hintWalkTimeNumber => '💡 산책 시간을 숫자로 입력해 주세요';

  @override
  String get hintSelectBrushingArea => '💡 빗질 부위를 하나 이상 선택해 주세요';

  @override
  String get hintSelectVaccineType => '💡 백신 종류를 하나 이상 선택해 주세요';

  @override
  String get hintSelectGroomingType => '💡 미용 종류를 하나 이상 선택해 주세요';

  @override
  String get hintTitle => '💡 제목을 입력해 주세요';

  @override
  String get hintVaccineName => '💡 백신 이름을 입력해 주세요';

  @override
  String get hintSelectScheduledDate => '💡 예정일을 선택해 주세요';

  @override
  String get hintSelectScheduledTime => '💡 예정 시각을 선택해 주세요';

  @override
  String get hintVisitPurpose => '💡 방문 목적을 입력해 주세요';

  @override
  String get hintSelectAppointmentDate => '💡 예약 날짜를 선택해 주세요';

  @override
  String get hintSelectAppointmentTime => '💡 예약 시각을 선택해 주세요';

  @override
  String get hintMedicineNameInput => '💡 약품 이름을 입력해 주세요';

  @override
  String get hintSelectMedicationDate => '💡 투약 날짜를 선택해 주세요';

  @override
  String get hintSelectMedicationTime => '💡 투약 시각을 선택해 주세요';

  @override
  String get hintAlarmName => '💡 알림 이름을 입력해 주세요';

  @override
  String get hintSelectMealTime => '💡 식사 시각을 선택해 주세요';

  @override
  String get hintSelectAlarmTime => '💡 알림 시각을 선택해 주세요';

  @override
  String get noPetRegisterFirst => '아직 반려동물이 없네요 🐾 프로필에서 먼저 등록해 주세요!';

  @override
  String get alarmRescheduled => '🔄 알림이 재예약됐어요';

  @override
  String get examplePetName => '예: 콩이';

  @override
  String get exampleBreed => '예: 말티즈';

  @override
  String get exampleBreedMulti => '예: 말티즈, 페르시안';

  @override
  String get example30 => '예: 30';

  @override
  String get example80 => '예: 80';

  @override
  String get example200 => '예: 200';

  @override
  String get example25 => '예: 2.5';

  @override
  String get example35000 => '예: 35000';

  @override
  String get example50000 => '예: 50000';

  @override
  String get enterNameHint => '이름을 입력해 주세요';

  @override
  String get addNewPetTitle => '새 반려동물 추가';

  @override
  String get basicInfo => '기본 정보';

  @override
  String get idInfo => '식별 정보';

  @override
  String get idInfoOptional => '식별 정보 (선택)';

  @override
  String get name => '이름';

  @override
  String get petKind => '종류';

  @override
  String get breed => '품종';

  @override
  String get weight => '체중';

  @override
  String get microchip => '마이크로칩';

  @override
  String get registrationNumber => '등록번호';

  @override
  String get birthDate => '생년월일';

  @override
  String get gender => '성별';

  @override
  String get male => '수컷';

  @override
  String get female => '암컷';

  @override
  String get maleSym => '수컷 ♂';

  @override
  String get femaleSym => '암컷 ♀';

  @override
  String get neutered => '중성화';

  @override
  String get done => '완료';

  @override
  String get notDone => '미완료';

  @override
  String get notEntered => '미입력';

  @override
  String get notRegistered => '미등록';

  @override
  String get dogEmoji => '강아지 🐶';

  @override
  String get catEmoji => '고양이 🐱';

  @override
  String get otherEmoji => '기타 🐾';

  @override
  String get noPetsRegistered => '등록된 반려동물이 없어요';

  @override
  String get registerPetPrompt => '반려동물을 등록하고\n건강을 함께 관리해봐요!';

  @override
  String get registerPetBtn => '반려동물 등록하기';

  @override
  String get editPet => '반려동물 편집';

  @override
  String get neuteringStatus => '중성화 여부';

  @override
  String get neuteredDone => '중성화 완료';

  @override
  String get notNeutered => '중성화 안 함';

  @override
  String get selectDateHint => '날짜를 선택하세요';

  @override
  String get saveChanges => '수정 완료';

  @override
  String get registerBtn => '등록하기';

  @override
  String deletePetName(String name) {
    return '$name 삭제하기';
  }

  @override
  String deletePetConfirm(String name) {
    return '$name을(를) 삭제할까요?';
  }

  @override
  String deletePetWarning(String name) {
    return '$name의 모든 기록과 알림이 함께 삭제되며 복구할 수 없어요.';
  }

  @override
  String petDeleted(String name) {
    return '$name이(가) 삭제됐어요';
  }

  @override
  String petAdded(String name) {
    return '$name이(가) 추가됐어요 🐾';
  }

  @override
  String get storeUnavailableMsg => '지금은 스토어에 연결할 수 없어요. 잠시 후 다시 시도해 주세요.';

  @override
  String get checkingPaymentMsg => '결제 정보를 확인 중이에요. 잠시 후 다시 눌러 주세요.';

  @override
  String get paymentCompleteMsg => '결제가 완료됐어요. 이제 새 친구 정보를 입력해 주세요.';

  @override
  String get addNewFamilyMember => '새 가족을 추가할까요?';

  @override
  String get firstPetFreeDesc =>
      '첫 번째 반려동물은 무료로 등록할 수 있고, 두 번째 가족부터는 한 가족당 결제가 필요해요.';

  @override
  String petsRegisteredStoreUnavailable(String count) {
    return '현재 등록된 반려동물 $count마리\n스토어 연결이 가능할 때 다시 시도해 주세요.';
  }

  @override
  String petsRegisteredPayToAdd(String count, String price) {
    return '현재 등록된 반려동물 $count마리\n$price 결제 후 새 가족을 추가할 수 있어요.';
  }

  @override
  String get maybeLater => '다음에 할게요';

  @override
  String get unavailable => '연결 불가';

  @override
  String payAndAdd(String price) {
    return '$price 결제하고 추가';
  }

  @override
  String get addNextAppointment => '+ 다음 예약일 추가';

  @override
  String get pottyRecordSaved => '💩 배변이 기록됐어요';

  @override
  String get conditionRecordSaved => '💗 컨디션이 기록됐어요';

  @override
  String get medicationRecordSaved => '💊 투약이 기록됐어요';

  @override
  String get weightRecordSaved => '⚖️ 체중이 기록됐어요';

  @override
  String get mealRecordSaved => '🍽️ 식사가 기록됐어요';

  @override
  String get waterRecordSaved => '💧 음수가 기록됐어요';

  @override
  String get vetVisitRecordSaved => '🏥 병원 방문이 기록됐어요';

  @override
  String get vaccinationRecordSaved => '💉 예방접종이 기록됐어요';

  @override
  String get groomingRecordSaved => '✂️ 미용이 기록됐어요';

  @override
  String get brushingRecordSaved => '🪥 빗질이 기록됐어요';

  @override
  String get walkRecordSaved => '🦮 산책이 기록됐어요';

  @override
  String get memoSaved => '📝 메모가 기록됐어요';

  @override
  String get moreQuestions => '더 궁금한 점이 있으신가요?';

  @override
  String get contactViaSendFeedback =>
      '설정 > 피드백 보내기를 통해 문의해 주세요.\n빠르게 답변 드릴게요 🐾';

  @override
  String get contactViaSendFeedbackLong =>
      '설정 화면의 [피드백 보내기] 버튼을 통해 문의하시면\n빠르게 답변드리겠습니다.';

  @override
  String get privacyPolicyEffectiveDate =>
      '본 개인정보 처리방침은 2026년 1월 1일부터 시행됩니다.\n최종 수정일: 2026년 5월 8일';

  @override
  String get privacyCollectedInfo => '수집된 정보는 아래 목적으로만 사용됩니다.';

  @override
  String get privacyDataFeatures => '반려숨탄은 데이터 내보내기(백업) 및 가져오기(복원) 기능을 제공합니다.';

  @override
  String get privacyPolicyMayUpdate =>
      '본 개인정보 처리방침은 법령 또는 서비스 변경에 따라 업데이트될 수 있습니다.';

  @override
  String get privacyPolicyContact => '개인정보 처리방침에 관한 문의사항은 아래 방법으로 연락해 주세요.';

  @override
  String get catMeal => '식사';

  @override
  String get catWater => '음수';

  @override
  String get catGrooming => '미용';

  @override
  String get catBrushing => '빗질';

  @override
  String get catWalk => '산책';

  @override
  String get catHospital => '병원';

  @override
  String get catCondition => '컨디션';

  @override
  String get catPotty => '배변';

  @override
  String get mealFormTitle => '🍽️ 식사 기록';

  @override
  String get walkFormTitle => '🦮 산책 기록';

  @override
  String get weightFormTitle => '⚖️ 체중 기록';

  @override
  String get waterFormTitle => '💧 음수 기록';

  @override
  String get medicationFormTitle => '💊 투약 기록';

  @override
  String get groomingFormTitle => '✂️ 미용 기록';

  @override
  String get brushingFormTitle => '🪥 빗질 기록';

  @override
  String get conditionFormTitle => '🌡️ 컨디션 기록';

  @override
  String get poopFormTitle => '💩 배변 기록';

  @override
  String get vaccinationFormTitle => '💉 접종 기록';

  @override
  String get hospitalFormTitle => '🏥 병원 기록';

  @override
  String get memoFormTitle => '📝 메모';

  @override
  String get measureMethod => '측정 방법';

  @override
  String get feedAmount => '급여량';

  @override
  String get mlInputLabel => 'mL 직접 입력';

  @override
  String get alarmRescheduleNote => '이 알림의 예정일이 지났어요.\n새 날짜로 변경하거나 삭제할 수 있어요.';

  @override
  String get nailTrim => '발톱';

  @override
  String get shopNameExample => '예: 뽀송뽀송 펫샵';

  @override
  String get poopRecordSaved => '💩 배변이 기록됐어요';

  @override
  String get memoRecordSaved => '📝 메모가 기록됐어요';

  @override
  String get other => '기타';

  @override
  String get whole => '전체';

  @override
  String get paw => '발';

  @override
  String get importance => '중요도';

  @override
  String get timeTaken => '소요 시간';

  @override
  String get example10 => '예: 10';

  @override
  String get hospitalNameExample => '예: 행복동물병원';

  @override
  String get diagnosisExample => '예: 장염, 피부염';

  @override
  String get memoTitlePlaceholder => '메모 제목을 입력하세요';

  @override
  String get hintMemoTitle => '💡 제목을 입력해 주세요';

  @override
  String get poopType => '유형';

  @override
  String get poopStatus => '상태';

  @override
  String get feces => '대변';

  @override
  String get bloody => '혈변';

  @override
  String get vaccineDhppl => '종합백신 (DHPPL)';

  @override
  String get vaccineCorona => '코로나장염';

  @override
  String get vaccineKennelCough => '켄넬코프';

  @override
  String get vaccineRabies => '광견병';

  @override
  String get vaccineInfluenza => '인플루엔자';

  @override
  String get vaccineFvrcp => '종합백신 (FVRCP)';

  @override
  String get vaccineFelv => '백혈병 (FeLV)';

  @override
  String get vaccineChlamydia => '클라미디아';

  @override
  String get mute => '음소거';

  @override
  String get photoVideo => '사진 · 동영상';

  @override
  String photoVideoCount(String count) {
    return '사진 · 동영상 · $count개';
  }

  @override
  String get selectMediaSource => '미디어 추가 방법 선택';

  @override
  String get cameraCapture => '카메라로 촬영';

  @override
  String get cameraCaptureSubtitle => '사진 또는 동영상 촬영';

  @override
  String get selectFromGallery => '갤러리에서 선택';

  @override
  String get selectFromGallerySubtitle => '사진 · 동영상 다중 선택 가능';

  @override
  String get takePhotoSubtitle => '카메라로 사진을 촬영';

  @override
  String get recordVideoSubtitle => '카메라로 동영상을 촬영';

  @override
  String get permissionRequired => '설정에서 권한을 허용해 주세요';

  @override
  String get confirmDeletePhoto => '이 사진을 삭제할까요?';

  @override
  String get confirmDeleteVideo => '이 동영상을 삭제할까요?';

  @override
  String get hintMedicineAndDose => '💡 약품명과 용량을 입력해 주세요';

  @override
  String deleteRecordBody(String category) {
    return '$category 기록이 삭제되고\n되돌릴 수 없어요.';
  }
}
