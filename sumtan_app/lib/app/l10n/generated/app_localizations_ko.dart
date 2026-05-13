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
  String get settingsPurchaseProductLoadFailed =>
      '상품 정보를 불러오지 못했어요. 잠시 후 다시 시도해 주세요.';

  @override
  String get settingsPurchaseStartFailed => '결제를 시작하지 못했어요. 잠시 후 다시 시도해 주세요.';

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
  String get weekStats => '건강 통계';

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

  @override
  String dayCountShort(int days) {
    return '$days일';
  }

  @override
  String get helpIntroContent =>
      '반려숨탄은 반려동물의 건강과 일상을 한 곳에서 기록하고 관리할 수 있는 앱이에요.\n식사, 음수, 배변, 체중, 투약, 병원 방문 등 다양한 건강 기록을 손쉽게 남기고, 알림 기능으로 중요한 일정을 놓치지 않을 수 있어요.';

  @override
  String get helpHomeTodayRecordSummaryDesc =>
      '오늘 등록된 모든 기록을 한눈에 확인할 수 있어요. 기록 항목을 탭하면 상세 내용을 보거나 수정할 수 있어요.';

  @override
  String get helpHomeWeeklyStatsDesc =>
      '이번 주 배변 횟수, 식사량, 음수량을 그래프로 확인할 수 있어요. 반려동물의 생활 패턴을 파악하는 데 도움이 돼요.';

  @override
  String get helpHomeWeightChangeChartDesc =>
      '최근 체중 기록을 그래프로 보여줘요. 체중 변화 추이를 쉽게 파악할 수 있어요.';

  @override
  String get helpHomeFindNearbyHospitalsDesc =>
      '버튼을 탭하면 네이버 지도에서 주변 동물병원을 검색할 수 있어요.';

  @override
  String get helpHomeAddNewRecordDesc =>
      '화면 하단의 + 버튼을 탭하면 기록 카테고리를 선택해 새 기록을 추가할 수 있어요.';

  @override
  String get helpRecordCategoriesIntro => '총 12가지 카테고리로 반려동물의 일상을 기록할 수 있어요.';

  @override
  String get helpCategoryPottyName => '배변';

  @override
  String get helpCategoryPottyDesc => '배변 여부와 상태를 기록해요. 사진도 첨부할 수 있어요.';

  @override
  String get helpCategoryConditionName => '컨디션';

  @override
  String get helpCategoryConditionDesc => '반려동물의 전반적인 컨디션 상태를 기록해요.';

  @override
  String get helpCategoryMedicationName => '투약';

  @override
  String get helpCategoryMedicationDesc => '약 이름, 용량, 투약 시간을 기록해요.';

  @override
  String get helpCategoryWeightName => '체중';

  @override
  String get helpCategoryWeightDesc => '체중(kg)을 기록해요. 홈 화면에서 변화 추이를 확인할 수 있어요.';

  @override
  String get helpCategoryMealName => '식사';

  @override
  String get helpCategoryMealDesc => '식사량과 사료 종류를 기록해요. 사진·영상도 첨부할 수 있어요.';

  @override
  String get helpCategoryWaterName => '음수';

  @override
  String get helpCategoryWaterDesc => '음수량(ml)을 기록해요. 사진·영상도 첨부할 수 있어요.';

  @override
  String get helpCategoryHospitalName => '병원';

  @override
  String get helpCategoryHospitalDesc => '병원명과 진료 내용을 기록해요. 사진·영상도 첨부할 수 있어요.';

  @override
  String get helpCategoryVaccinationName => '예방접종';

  @override
  String get helpCategoryVaccinationDesc => '접종 종류와 날짜를 기록해요.';

  @override
  String get helpCategoryGroomingName => '미용';

  @override
  String get helpCategoryGroomingDesc => '미용 내용을 기록하고 사진·영상을 첨부할 수 있어요.';

  @override
  String get helpCategoryDentalName => '양치';

  @override
  String get helpCategoryDentalDesc => '양치 여부와 메모를 기록해요.';

  @override
  String get helpCategoryWalkName => '산책';

  @override
  String get helpCategoryWalkDesc => '산책 거리와 시간을 기록해요.';

  @override
  String get helpCategoryMemoName => '메모';

  @override
  String get helpCategoryMemoDesc => '자유롭게 메모를 남길 수 있어요.';

  @override
  String get helpJournalViewRecordListDesc =>
      '날짜별로 등록된 모든 기록을 확인할 수 있어요. 카테고리 배지로 종류를 한눈에 구분할 수 있어요.';

  @override
  String get helpJournalEditDeleteRecordDesc =>
      '기록 항목을 탭하면 수정 시트가 열려요. 내용을 수정하거나 삭제할 수 있어요.';

  @override
  String get helpJournalAttachMediaDesc =>
      '식사, 음수, 병원, 미용, 배변 등 일부 카테고리에서는 사진이나 영상을 첨부할 수 있어요.';

  @override
  String get helpAlarmAddDesc =>
      '예방접종, 투약, 병원 방문, 미용 등 다양한 유형의 알림을 등록할 수 있어요. 알림 유형을 먼저 선택한 후 날짜와 시간을 설정해요.';

  @override
  String get helpAlarmRepeatDesc =>
      '매일, 매주, 매월 등 반복 규칙을 설정할 수 있어요. 정기적인 투약이나 심장사상충 예방에 유용해요.';

  @override
  String get helpAlarmAdvanceDesc =>
      '예방접종처럼 중요한 일정은 7일 전, 3일 전, 1일 전에 미리 알림을 받을 수 있어요.';

  @override
  String get helpAlarmCompleteDesc =>
      '알림 항목을 탭해 완료로 표시할 수 있어요. 완료된 알림은 지난 알림 목록에서 확인할 수 있어요.';

  @override
  String get helpAlarmDeleteDesc => '알림 항목을 왼쪽으로 스와이프하면 삭제할 수 있어요.';

  @override
  String get helpPetRegisterDesc =>
      '이름, 종(강아지/고양이), 품종, 성별, 생년월일, 중성화 여부를 입력해 반려동물을 등록해요.';

  @override
  String get helpPetEditProfileDesc =>
      '프로필 화면에서 이름, 품종, 체중, 마이크로칩 번호, 동물등록번호, 프로필 사진을 수정할 수 있어요.';

  @override
  String get helpPetManageMultipleDesc =>
      '반려동물을 여러 마리 등록할 수 있어요. 상단의 반려동물 칩을 탭하면 관리할 반려동물을 전환할 수 있어요.';

  @override
  String get helpDogHealthGuideDesc =>
      '필수·선택 예방접종 스케줄, 심장사상충·외부기생충 예방, 치아 관리, 영양 관리 등 수의학 기반의 건강 정보를 제공해요.';

  @override
  String get helpCatHealthGuideDesc =>
      '고양이 전용 예방접종 스케줄, 기생충 예방, 치아 관리, 영양 정보를 확인할 수 있어요.';

  @override
  String get helpSettingsNotificationDesc => '앱 전체 알림을 켜거나 끌 수 있어요.';

  @override
  String get helpSettingsExportDesc =>
      '기록된 모든 데이터를 ZIP 파일로 내보낼 수 있어요. 기기 변경 시 백업용으로 사용하세요.';

  @override
  String get helpSettingsImportDesc => '이전에 내보낸 ZIP 백업 파일을 불러와 데이터를 복원할 수 있어요.';

  @override
  String get helpSettingsFeedbackDesc =>
      '앱 사용 중 불편한 점이나 개선 의견을 이메일로 보내주세요. 더 나은 앱을 만드는 데 큰 도움이 돼요.';

  @override
  String get helpFaqDeletePetQ => '반려동물을 삭제하면 기록도 모두 삭제되나요?';

  @override
  String get helpFaqDeletePetA =>
      '네, 반려동물을 삭제하면 해당 반려동물의 모든 기록과 알림이 함께 삭제돼요. 삭제 전에 데이터를 내보내기로 백업해 두세요.';

  @override
  String get helpFaqMultipleMediaQ => '기록에 사진을 여러 장 첨부할 수 있나요?';

  @override
  String get helpFaqMultipleMediaA =>
      '네, 사진과 영상을 여러 개 첨부할 수 있어요. 갤러리에서 선택하거나 카메라로 바로 촬영할 수 있어요.';

  @override
  String get helpFaqNoNotificationQ => '알림이 오지 않아요.';

  @override
  String get helpFaqNoNotificationA =>
      '기기의 알림 설정에서 반려숨탄 앱의 알림이 허용되어 있는지 확인해 주세요. 설정 > 알림 설정에서 앱 알림이 켜져 있는지도 확인해 주세요.';

  @override
  String get helpFaqMoveDataQ => '데이터를 새 기기로 옮길 수 있나요?';

  @override
  String get helpFaqMoveDataA =>
      '설정 > 데이터 내보내기로 백업 파일을 저장한 후, 새 기기에서 설정 > 데이터 가져오기로 복원할 수 있어요.';

  @override
  String get helpFaqMultiplePetsQ => '여러 마리의 반려동물을 등록할 수 있나요?';

  @override
  String get helpFaqMultiplePetsA =>
      '기본적으로 1마리를 무료로 등록할 수 있어요. 추가 등록은 프리미엄 기능을 통해 이용할 수 있어요.';

  @override
  String get privacyIntroBody =>
      '반려숨탄은 회원가입 없이 사용하는 앱으로, 모든 데이터는 사용자의 기기 내에만 저장됩니다. 외부 서버로 개인정보를 전송하지 않으며, 사용자의 소중한 반려동물 정보를 안전하게 보호합니다.';

  @override
  String get privacySection1Title => '수집하는 개인정보 항목';

  @override
  String get privacySection1Body =>
      '반려숨탄은 회원가입 없이 사용할 수 있으며, 별도의 개인 식별 정보를 수집하지 않습니다. 다만, 앱 기능 제공을 위해 아래와 같은 정보가 기기 내에 저장될 수 있습니다.';

  @override
  String get privacyLocalStorageInfo => '기기 내 로컬 저장 정보';

  @override
  String get privacyPetInfo =>
      '반려동물 정보: 이름, 종, 품종, 생년월일, 성별, 체중, 중성화 여부, 마이크로칩 번호, 동물등록번호';

  @override
  String get privacyHealthRecords =>
      '건강 기록: 배변, 식사, 음수, 체중, 투약, 예방접종, 병원, 미용, 양치, 산책, 컨디션, 메모 등 사용자가 직접 입력한 기록';

  @override
  String get privacyAttachedMedia => '첨부 미디어: 사용자가 직접 촬영하거나 선택한 사진 및 동영상';

  @override
  String get privacyNotificationSettings => '알림 설정: 알림 유형, 예정 일시, 반복 규칙';

  @override
  String get privacyInAppPurchaseTitle => '인앱 결제 관련';

  @override
  String get privacyPaymentProcessing =>
      '결제 처리는 Apple App Store 또는 Google Play Store를 통해 이루어지며, 결제 정보는 앱이 직접 수집하거나 저장하지 않습니다.';

  @override
  String get privacyReceiptVerification =>
      '구매 영수증 검증에 필요한 최소한의 정보만 각 플랫폼 정책에 따라 처리됩니다.';

  @override
  String get privacySection2Title => '개인정보 수집 및 이용 목적';

  @override
  String get privacyPurposeRecords => '반려동물 건강 기록의 저장 및 조회';

  @override
  String get privacyPurposeStats => '홈 화면 통계(주간 배변·식사·음수 현황, 체중 변화 그래프 등) 제공';

  @override
  String get privacyPurposeReminders => '예방접종, 투약, 병원 방문 등 건강 관련 알림 발송';

  @override
  String get privacyPurposeBackupRestore => '데이터 백업 및 복원 기능 제공';

  @override
  String get privacyPurposePaidEligibility => '유료 기능 이용 자격 확인';

  @override
  String get privacySection3Title => '개인정보 보유 및 파기';

  @override
  String get privacyRetentionBody =>
      '반려숨탄의 모든 데이터는 사용자의 기기 내 로컬 데이터베이스(SQLite)에만 저장되며, 외부 서버로 전송되지 않습니다.';

  @override
  String get privacyDataDeletionMethod => '데이터 파기 방법';

  @override
  String get privacyDeleteInApp =>
      '앱 내 설정 > 데이터 관리에서 반려동물 정보 및 기록을 직접 삭제할 수 있습니다.';

  @override
  String get privacyDeleteUninstall => '앱을 삭제하면 기기에 저장된 모든 데이터가 함께 삭제됩니다.';

  @override
  String get privacyDeleteBackupWarning =>
      '단, 앱 삭제 전 백업(내보내기)을 진행하지 않은 경우 데이터를 복구할 수 없으니 주의하시기 바랍니다.';

  @override
  String get privacySection4Title => '개인정보의 제3자 제공';

  @override
  String get privacyThirdPartyBody =>
      '반려숨탄은 사용자의 개인정보를 외부에 제공하지 않습니다. 다만, 아래의 경우는 예외로 합니다.';

  @override
  String get privacyThirdPartyUserExport =>
      '사용자가 직접 데이터 내보내기(백업 파일 공유) 기능을 사용하는 경우';

  @override
  String get privacyThirdPartyLegalRequest => '법령에 의거하거나 수사기관의 적법한 요청이 있는 경우';

  @override
  String get privacySection5Title => '접근 권한 안내';

  @override
  String get privacyPermissionsBody =>
      '앱 기능 제공을 위해 아래 권한을 요청할 수 있습니다. 권한을 허용하지 않아도 해당 기능을 제외한 나머지 기능은 정상 이용 가능합니다.';

  @override
  String get privacyPermissionCameraName => '카메라';

  @override
  String get privacyPermissionCameraDesc =>
      '건강 기록에 사진·동영상을 직접 촬영하여 첨부할 때 사용됩니다.';

  @override
  String get privacyPermissionMediaName => '사진 및 미디어 접근';

  @override
  String get privacyPermissionMediaDesc =>
      '갤러리에서 사진·동영상을 선택하여 기록에 첨부할 때 사용됩니다.';

  @override
  String get privacyPermissionNotificationName => '알림';

  @override
  String get privacyPermissionNotificationDesc =>
      '예방접종, 투약, 병원 방문 등 건강 관련 알림을 발송할 때 사용됩니다.';

  @override
  String get privacyPermissionFileName => '파일 접근 (Android)';

  @override
  String get privacyPermissionFileDesc => '데이터 백업 파일을 저장하거나 불러올 때 사용됩니다.';

  @override
  String get privacySection6Title => '데이터 백업 및 복원';

  @override
  String get privacyBackupExport =>
      '내보내기: 앱 내 모든 데이터를 파일(.zip)로 저장하거나 공유할 수 있습니다.';

  @override
  String get privacyBackupImport => '가져오기: 이전에 내보낸 백업 파일을 불러와 데이터를 복원할 수 있습니다.';

  @override
  String get privacyBackupWarning =>
      '백업 파일은 사용자가 직접 관리하며, 파일을 타인과 공유하지 않도록 주의하시기 바랍니다.';

  @override
  String get privacySection7Title => '아동의 개인정보 보호';

  @override
  String get privacyChildrenBody =>
      '반려숨탄은 만 14세 미만 아동으로부터 별도의 개인정보를 수집하지 않습니다. 앱의 모든 데이터는 기기 내에만 저장되며, 외부 서버 전송이 없으므로 아동도 안전하게 이용할 수 있습니다.';

  @override
  String get privacySection8Title => '개인정보 처리방침 변경';

  @override
  String get privacyPolicyChangeNotice => '변경 시 앱 업데이트 노트 또는 앱 내 공지를 통해 안내합니다.';

  @override
  String get privacyPolicyChangeEffective =>
      '변경된 방침은 공지 후 7일이 경과한 날부터 효력이 발생합니다.';

  @override
  String get privacySection9Title => '문의';

  @override
  String get hgDogHeroTitle => '강아지 건강관리 가이드';

  @override
  String get hgCatHeroTitle => '고양이 건강관리 가이드';

  @override
  String get hgHeroSubtitle => '수의사 권장 기준을 바탕으로\n작성된 전문 건강 안내서예요.';

  @override
  String get hgVaccination => '예방접종';

  @override
  String get hgCoreVaccines => '핵심 필수 접종 (Core Vaccine)';

  @override
  String get hgNonCoreVaccines => '선택 접종 (Non-Core)';

  @override
  String get hgRequired => '필수';

  @override
  String get hgRecommended => '권장';

  @override
  String get hgParasitePrevention => '기생충 예방';

  @override
  String get hgHeartworm => '심장사상충';

  @override
  String get hgMonthly => '매월';

  @override
  String get hgExternalParasites => '외부기생충 (벼룩·진드기)';

  @override
  String get hgInternalParasites => '내부기생충';

  @override
  String get hgThreeToSixMonths => '3~6개월';

  @override
  String get hgRegular => '정기';

  @override
  String get hgRegularCheckup => '정기 건강검진';

  @override
  String get hgDentalCare => '치아 & 구강 관리';

  @override
  String get hgForbiddenFoods => '절대 금지 음식';

  @override
  String get hgEmergencySymptoms => '즉시 병원 방문이 필요한 증상';

  @override
  String get hgExerciseMentalHealth => '운동 & 정신 건강';

  @override
  String get hgWalk => '산책';

  @override
  String get hgDaily => '매일';

  @override
  String get hgBreedExerciseAmount => '품종별 권장 운동량';

  @override
  String get hgPlayBrainStimulation => '놀이 & 두뇌 자극';

  @override
  String get hgStressSignals => '스트레스 신호 알아채기';

  @override
  String get hgCaution => '주의';

  @override
  String get hgSocialization => '사회화 & 환경 자극';

  @override
  String get hgDogCoreDhppl =>
      '**DHPPL (종합백신)** — 홍역·간염·파보·파라인플루엔자·렙토스피라.\n생후 6~8주 1차, 3~4주 간격 3회, 매년 추가접종';

  @override
  String get hgDogCoreRabies => '**광견병** — 생후 3개월 이후 1차, 이후 매년 1회 (법정 의무접종)';

  @override
  String get hgDogCoreCorona => '**코로나 장염** — 생후 6~8주 시작, 3~4주 간격 2회, 매년 추가접종';

  @override
  String get hgDogNonCoreKennel => '**켄넬코프** — 다견 환경·미용실·펜션 이용 시 권장. 비강 또는 주사형';

  @override
  String get hgDogNonCoreFlu => '**인플루엔자** — 야외 활동이 많거나 다른 개와 접촉이 잦은 경우';

  @override
  String get hgDogHeartworm1 => '모기 활동기(3~11월) 전후로 **매월 1회** 예방약 투여 권장';

  @override
  String get hgDogHeartworm2 => '감염 시 치료가 어렵고 치명적 — **예방이 최선**';

  @override
  String get hgDogHeartworm3 => '투여 전 반드시 감염 여부 검사 후 음성 확인 필요';

  @override
  String get hgDogHeartworm4 => '연중 투여 시 더욱 안전 (수의사 권장)';

  @override
  String get hgDogExternalParasites1 => '스팟온(spot-on) 또는 경구형 예방약 **매월 투여**';

  @override
  String get hgDogExternalParasites2 => '산책 후 귀·발가락 사이·겨드랑이 진드기 확인 필수';

  @override
  String get hgDogExternalParasites3 => '진드기 제거 시 핀셋으로 수직 방향으로 천천히 제거 (비틀기 금지)';

  @override
  String get hgDogInternalParasites1 => '회충·구충·편충: **3~6개월마다** 구충제 투여';

  @override
  String get hgDogInternalParasites2 => '강아지 시기(생후 2주~): 2주 간격으로 4회 구충 후 정기 관리';

  @override
  String get hgDental1 => '매일 양치질이 이상적 — 최소 **주 3회 이상** 권장';

  @override
  String get hgDental2 => '반드시 **반려동물 전용 치약** 사용 (자일리톨 함유 인체용 치약 금지)';

  @override
  String get hgDental3 => '치석이 심한 경우 동물병원에서 스케일링 (전신마취 필요)';

  @override
  String get hgDental4 => '덴탈껌·치아 장난감으로 보조적 관리 가능';

  @override
  String get hgDogForbiddenFoodAlert =>
      '아래 음식은 강아지에게 독성을 가집니다. 소량도 위험할 수 있으니 절대 급여하지 마세요.';

  @override
  String get hgDogForbiddenGrape => '**포도·건포도** — 신부전 유발, 소량도 치명적';

  @override
  String get hgDogForbiddenChocolate => '**초콜릿·카카오** — 테오브로민 중독, 심부전·경련';

  @override
  String get hgDogForbiddenOnion => '**양파·마늘·파** — 적혈구 파괴, 용혈성 빈혈';

  @override
  String get hgDogForbiddenXylitol => '**자일리톨** — 인슐린 과분비, 저혈당·간부전';

  @override
  String get hgDogForbiddenMacadamia => '**마카다미아 너트** — 근육 약화, 고열, 구토';

  @override
  String get hgDogForbiddenDoughAlcohol => '**날 반죽·알코올** — 에탄올 중독, 저혈당';

  @override
  String get hgDogForbiddenAvocado => '**아보카도** — 퍼신(persin) 성분, 구토·설사';

  @override
  String get hgEmergencyAlert => '아래 증상이 나타나면 즉시 동물병원을 방문하세요.';

  @override
  String get hgDogEmergency1 => '24시간 이상 식욕 완전 소실';

  @override
  String get hgDogEmergency2 => '구토·설사가 하루 3회 이상 반복';

  @override
  String get hgDogEmergency3 => '복부 팽만·헛구역질 (위확장·염전 의심)';

  @override
  String get hgDogEmergency4 => '호흡 곤란·잇몸 창백·청색증';

  @override
  String get hgDogEmergency5 => '경련·발작·의식 소실';

  @override
  String get hgDogEmergency6 => '소변을 12시간 이상 보지 못함';

  @override
  String get hgDogEmergency7 => '눈에 띄는 외상·골절·다량 출혈';

  @override
  String get hgDogExerciseAlert =>
      '강아지에게 운동 부족은 단순한 체력 문제가 아니에요. 스트레스·불안·파괴적 행동의 주요 원인이 됩니다.';

  @override
  String get hgDogWalk1 => '소형견: 하루 **20~30분** 이상, 중·대형견: **1시간** 이상 권장';

  @override
  String get hgDogWalk2 => '산책은 단순 배변이 아닌 **후각 자극·사회화·스트레스 해소**의 시간';

  @override
  String get hgDogWalk3 => '냄새 맡는 행동(스니핑)을 충분히 허용 — 정신적 피로 해소에 매우 효과적';

  @override
  String get hgDogWalk4 => '여름철 아스팔트 화상 주의 — 오전 7시 이전 또는 저녁 산책 권장';

  @override
  String get hgDogPlay1 => '**공 던지기·터그 놀이** — 신체 에너지 발산, 보호자와 유대감 강화';

  @override
  String get hgDogPlay2 => '**노즈워크(냄새 찾기)** — 두뇌 자극, 산책 30분 효과를 15분 만에 가능';

  @override
  String get hgDogPlay3 => '**퍼즐·콩 장난감** — 혼자 있는 시간 분리불안 완화에 효과적';

  @override
  String get hgDogPlay4 => '하루 **10~15분** 집중 놀이만으로도 스트레스 수치 크게 감소';

  @override
  String get hgDogStress1 => '가구·물건 파괴, 과도한 짖음 — 운동·자극 부족 신호';

  @override
  String get hgDogStress2 => '꼬리 물기·과도한 핥기(발, 몸) — 강박 행동, 스트레스 해소 시도';

  @override
  String get hgDogStress3 => '보호자 외출 시 과도한 불안·배변 실수 — 분리불안 의심';

  @override
  String get hgDogStress4 => '지속될 경우 수의사 또는 반려동물 행동 전문가 상담 권장';

  @override
  String get hgDogSocial1 => '생후 **3~14주**가 사회화 황금기 — 다양한 사람·소리·환경 노출이 중요';

  @override
  String get hgDogSocial2 => '다른 강아지와의 교류 — 도그파크·퍼피 클래스 활용';

  @override
  String get hgDogSocial3 => '새로운 장소·냄새·소리 경험이 정신적 풍요로움에 기여';

  @override
  String get hgDogSocial4 => '긍정 강화 훈련(클리커·간식)은 두뇌 자극과 유대감을 동시에 높임';

  @override
  String get hgCatCoreFvrcp =>
      '**FVRCP (종합백신)** — 허피스바이러스·칼리시·범백혈구감소증.\n생후 6~8주 1차, 3~4주 간격 3회, 이후 1~3년마다';

  @override
  String get hgCatCoreRabies => '**광견병** — 외출 고양이 필수, 실내 고양이도 권장 (법정 의무)';

  @override
  String get hgCatNonCoreFelv => '**고양이 백혈병(FeLV)** — 외출 고양이·다묘 가정 강력 권장';

  @override
  String get hgCatNonCoreChlamydia => '**고양이 클라미디아** — 다묘 환경, 결막염 예방';

  @override
  String get hgCatNonCoreFiv =>
      '**고양이 면역결핍바이러스(FIV)** — 외출 수컷 고양이 (싸움 상처 통해 전파)';

  @override
  String get hgCatExternalParasites1 => '외출 고양이: 벼룩·진드기 예방약 **매월 1회** 투여';

  @override
  String get hgCatExternalParasites2 =>
      '실내 고양이도 사람 옷·신발 통해 벼룩 유입 가능 → **3개월마다** 예방 권장';

  @override
  String get hgCatExternalParasites3 => '스팟온 제품 사용 시 목덜미에 정확히 도포';

  @override
  String get hgCatInternalHeartworm => '내부기생충 & 심장사상충';

  @override
  String get hgCatInternalParasites1 => '회충·조충: **3~6개월마다** 구충제 투여';

  @override
  String get hgCatInternalParasites2 => '생식(날고기·날생선) 급여 시 더 자주 검사 권장';

  @override
  String get hgCatHeartworm1 =>
      '심장사상충 — 고양이는 **치료제가 없어 예방이 유일한 방법**. 외출 고양이 매월 투여 강력 권장';

  @override
  String get hgCatMajorDiseases => '고양이 주요 질환 주의';

  @override
  String get hgCatDiseaseAlert =>
      '고양이는 아픔을 숨기는 습성이 있어 증상이 나타날 때는 이미 진행된 경우가 많습니다. 정기 검진이 특히 중요해요.';

  @override
  String get hgCatDiseaseFlutd =>
      '**하부요로기계질환(FLUTD)** — 수컷에 흔함. 소변 못 보면 즉시 응급처치 필요';

  @override
  String get hgCatDiseaseCkd =>
      '**만성신장병(CKD)** — 노령묘 1위 사망 원인. 7세 이상 정기 신장 수치 검사 필수';

  @override
  String get hgCatDiseaseDiabetes => '**고양이 당뇨** — 비만·고령 고양이 위험. 다음·다뇨 증상 주의';

  @override
  String get hgCatDiseaseHyperthyroidism =>
      '**갑상선기능항진증** — 10세 이상 흔함. 체중 감소·과식·과활동 증상';

  @override
  String get hgCatDiseaseStomatitis =>
      '**구내염** — 고양이에 매우 흔함. 입냄새·침흘림·식욕부진 시 검진';

  @override
  String get hgCatDiseaseFhv =>
      '**고양이 허피스(FHV-1)** — 한번 감염 시 평생 잠복. 스트레스 시 재발, 재채기·눈곱·결막염';

  @override
  String get hgHydrationDiet => '수분 섭취 & 식이 관리';

  @override
  String get hgCatHydrationAlert =>
      '고양이는 원래 물을 잘 마시지 않아 비뇨기 질환에 취약해요. 수분 섭취 유도가 매우 중요합니다.';

  @override
  String get hgCatHydration1 => '습식 사료(캔·파우치) 병행으로 수분 보충 권장';

  @override
  String get hgCatHydration2 => '흐르는 물 선호 — **분수형 음수대** 설치 효과적';

  @override
  String get hgCatHydration3 => '물그릇은 사료그릇과 분리, 넓고 얕은 그릇 선호';

  @override
  String get hgCatHydration4 => '목표 수분 섭취량: 체중 1kg당 하루 약 **40~60ml**';

  @override
  String get hgCatForbiddenFoodAlert =>
      '아래 음식은 고양이에게 독성을 가집니다. 소량도 위험할 수 있으니 절대 급여하지 마세요.';

  @override
  String get hgCatForbiddenOnion => '**양파·마늘·파** — 적혈구 파괴, 용혈성 빈혈 (개보다 더 민감)';

  @override
  String get hgCatForbiddenGrape => '**포도·건포도** — 신부전 유발';

  @override
  String get hgCatForbiddenChocolate => '**초콜릿·카페인** — 심장·신경계 독성';

  @override
  String get hgCatForbiddenRawFish => '**날 생선 (지속 급여)** — 티아민(B1) 결핍 유발';

  @override
  String get hgCatForbiddenMilk => '**우유·유제품** — 성묘 유당불내증, 설사 유발';

  @override
  String get hgCatForbiddenXylitolAlcohol => '**자일리톨·알코올** — 간·신경 독성';

  @override
  String get hgCatForbiddenAvocado => '**아보카도** — 퍼신(persin) 성분, 구토·설사';

  @override
  String get hgCatForbiddenRawEggWhite => '**날 달걀 흰자** — 아비딘이 비오틴 차단, 피부·털 문제';

  @override
  String get hgCatEmergency1 => '**소변을 전혀 못 보거나 혈뇨** — 요도폐색 응급 (수컷 고양이 특히 주의)';

  @override
  String get hgCatEmergency2 => '24시간 이상 완전 식욕 소실 (지방간 위험)';

  @override
  String get hgCatEmergency3 => '**입을 벌리고 호흡** — 고양이는 절대 정상이 아님, 즉시 응급';

  @override
  String get hgCatEmergency4 => '뒷다리 갑작스러운 마비·차가움 (혈전증 의심)';

  @override
  String get hgCatEmergency5 => '경련·발작·의식 소실';

  @override
  String get hgCatEmergency6 => '잇몸·혀 창백 또는 황달(노란빛)';

  @override
  String get hgCatEmergency7 => '구토·설사가 하루 3회 이상 반복되거나 혈변·혈토';

  @override
  String get hgCatEmergency8 => '눈에 띄는 외상·골절·다량 출혈';

  @override
  String get hgEnvironmentMentalHealth => '환경 & 정신 건강';

  @override
  String get hgIndoorEnvironment => '실내 환경 관리';

  @override
  String get hgStressManagement => '스트레스 관리';

  @override
  String get hgCatEnvironment1 => '**화장실**: 고양이 수 + 1개 이상 배치, 매일 청소';

  @override
  String get hgCatEnvironment2 => '**스크래처**: 최소 2개 이상 (수직형·수평형 병행)';

  @override
  String get hgCatEnvironment3 => '**높은 공간**: 캣타워·선반 등 수직 공간 제공 (영역 본능 충족)';

  @override
  String get hgCatEnvironment4 => '**은신처**: 박스·터널 등 안전하게 숨을 수 있는 공간 제공';

  @override
  String get hgCatStress1 => '고양이 스트레스는 면역 저하·FLUTD·허피스 재발 등에 직결';

  @override
  String get hgCatStress2 => '급격한 환경 변화(이사·새 가족) 시 페로몬 디퓨저(Feliway) 활용';

  @override
  String get hgCatStress3 => '하루 **10~15분 이상** 장난감을 이용한 놀이 시간 확보';

  @override
  String get hgCatStress4 => '다묘 가정: 자원(밥그릇·화장실·잠자리) 개체 수만큼 분리 배치';

  @override
  String get hgAge => '나이';

  @override
  String get hgCheckupCycle => '검진 주기';

  @override
  String get hgMainItems => '주요 항목';

  @override
  String get hgAge1to6 => '1~6세';

  @override
  String get hgAge7to10 => '7~10세';

  @override
  String get hgAge11Plus => '11세 이상';

  @override
  String get hgYearlyOnce => '연 1회';

  @override
  String get hgYearlyTwice => '연 2회';

  @override
  String get hgEvery3to4Months => '3~4개월마다';

  @override
  String get hgDogCheckupItems1 => '혈액검사, 심장청진, 체중, 치아';

  @override
  String get hgDogCheckupItems2 => '혈액·소변·X-ray, 혈압, 관절';

  @override
  String get hgDogCheckupItems3 => '종합혈액, 초음파, 신장·간 기능';

  @override
  String get hgCatCheckupItems1 => '혈액검사, 소변검사, 체중, 치아';

  @override
  String get hgCatCheckupItems2 => '신장·간 수치, 혈압, 갑상선(T4)';

  @override
  String get hgCatCheckupItems3 => '종합혈액, 복부초음파, 신장 집중 모니터링';

  @override
  String get hgExerciseAmount => '운동량';

  @override
  String get hgBreedExamples => '해당 품종 예시';

  @override
  String get hgLow => '낮음';

  @override
  String get hgNormal => '보통';

  @override
  String get hgHigh => '높음';

  @override
  String get hgBreedLowExamples => '불독, 바셋하운드, 시추, 말티즈';

  @override
  String get hgBreedNormalExamples => '푸들, 비숑, 코커스패니얼, 비글';

  @override
  String get hgBreedHighExamples => '래브라도, 골든, 허스키, 보더콜리';

  @override
  String get hgDisclaimer =>
      '이 가이드는 일반적인 건강관리 정보이며, 반려동물의 상태에 따라 필요한 관리가 달라질 수 있습니다. 이상 증상이 있거나 치료가 필요한 경우 반드시 수의사와 상담하세요.';
}
