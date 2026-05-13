import 'package:flutter/widgets.dart';

String localizedStaticText(BuildContext context, String text) {
  final languageCode = Localizations.localeOf(context).languageCode;
  if (languageCode == 'ko' || text.isEmpty) return text;

  return _englishStaticText[text] ?? text;
}

String localizedDayCountShort(BuildContext context, int days) {
  final locale = Localizations.localeOf(context);
  final code = locale.languageCode;
  final country = locale.countryCode;

  return switch (code) {
    'ko' => '$days일',
    'ja' => '$days日',
    'zh' when country == 'TW' => '$days天',
    'zh' => '$days天',
    'ar' => '$days يوم',
    'de' => '$days T.',
    'es' => '$days d',
    'fr' => '$days j',
    'pt' => '$days d',
    _ => '${days}d',
  };
}

const Map<String, String> _englishStaticText = {
  // Help
  '반려숨탄이란?': 'What is Pet Sumtan?',
  '반려숨탄은 반려동물의 건강과 일상을 한 곳에서 기록하고 관리할 수 있는 앱이에요.\n식사, 음수, 배변, 체중, 투약, 병원 방문 등 다양한 건강 기록을 손쉽게 남기고, 알림 기능으로 중요한 일정을 놓치지 않을 수 있어요.':
      'Pet Sumtan helps you record and manage your pet’s health and daily life in one place.\nYou can easily log meals, water, potty, weight, medication, vet visits, and other health records, and use alerts so important schedules are not missed.',
  '홈 화면': 'Home screen',
  '오늘의 기록 요약': 'Today’s record summary',
  '오늘 등록된 모든 기록을 한눈에 확인할 수 있어요. 기록 항목을 탭하면 상세 내용을 보거나 수정할 수 있어요.':
      'See all records added today at a glance. Tap a record to view details or edit it.',
  '주간 통계': 'Weekly stats',
  '이번 주 배변 횟수, 식사량, 음수량을 그래프로 확인할 수 있어요. 반려동물의 생활 패턴을 파악하는 데 도움이 돼요.':
      'Check this week’s potty count, meal amount, and water intake in charts. It helps you understand your pet’s daily patterns.',
  '체중 변화 그래프': 'Weight change chart',
  '최근 체중 기록을 그래프로 보여줘요. 체중 변화 추이를 쉽게 파악할 수 있어요.':
      'Shows recent weight records as a chart so you can easily follow weight trends.',
  '주변 병원 찾기': 'Find nearby hospitals',
  '버튼을 탭하면 네이버 지도에서 주변 동물병원을 검색할 수 있어요.':
      'Tap the button to search for nearby animal hospitals in Naver Maps.',
  '새 기록 추가 (+)': 'Add new record (+)',
  '화면 하단의 + 버튼을 탭하면 기록 카테고리를 선택해 새 기록을 추가할 수 있어요.':
      'Tap the + button at the bottom of the screen to choose a category and add a new record.',
  '기록 카테고리': 'Record categories',
  '총 12가지 카테고리로 반려동물의 일상을 기록할 수 있어요.':
      'You can record your pet’s daily life across 12 categories.',
  '배변': 'Potty',
  '배변 여부와 상태를 기록해요. 사진도 첨부할 수 있어요.':
      'Record potty events and condition. Photos can also be attached.',
  '컨디션': 'Condition',
  '반려동물의 전반적인 컨디션 상태를 기록해요.': 'Record your pet’s overall condition.',
  '투약': 'Medication',
  '약 이름, 용량, 투약 시간을 기록해요.':
      'Record medicine name, dosage, and medication time.',
  '체중': 'Weight',
  '체중(kg)을 기록해요. 홈 화면에서 변화 추이를 확인할 수 있어요.':
      'Record weight in kg and review trends on the home screen.',
  '식사': 'Meal',
  '식사량과 사료 종류를 기록해요. 사진·영상도 첨부할 수 있어요.':
      'Record meal amount and food type. Photos and videos can also be attached.',
  '음수': 'Water',
  '음수량(ml)을 기록해요. 사진·영상도 첨부할 수 있어요.':
      'Record water intake in mL. Photos and videos can also be attached.',
  '병원': 'Vet visit',
  '병원명과 진료 내용을 기록해요. 사진·영상도 첨부할 수 있어요.':
      'Record the hospital name and visit details. Photos and videos can also be attached.',
  '예방접종': 'Vaccination',
  '접종 종류와 날짜를 기록해요.': 'Record the vaccine type and date.',
  '미용': 'Grooming',
  '미용 내용을 기록하고 사진·영상을 첨부할 수 있어요.':
      'Record grooming details and attach photos or videos.',
  '양치': 'Brushing',
  '양치 여부와 메모를 기록해요.': 'Record whether brushing was done and add notes.',
  '산책': 'Walk',
  '산책 거리와 시간을 기록해요.': 'Record walk distance and duration.',
  '메모': 'Memo',
  '자유롭게 메모를 남길 수 있어요.': 'Leave free-form notes.',
  '일지 화면': 'Journal screen',
  '기록 목록 보기': 'View records',
  '날짜별로 등록된 모든 기록을 확인할 수 있어요. 카테고리 배지로 종류를 한눈에 구분할 수 있어요.':
      'View all records by date. Category badges help you recognize record types quickly.',
  '기록 수정 및 삭제': 'Edit and delete records',
  '기록 항목을 탭하면 수정 시트가 열려요. 내용을 수정하거나 삭제할 수 있어요.':
      'Tap a record to open the edit sheet. You can update or delete the record there.',
  '사진·영상 첨부': 'Attach photos/videos',
  '식사, 음수, 병원, 미용, 배변 등 일부 카테고리에서는 사진이나 영상을 첨부할 수 있어요.':
      'Some categories, such as meal, water, vet visit, grooming, and potty, support photo or video attachments.',
  '알림 화면': 'Alerts screen',
  '알림 추가': 'Add alert',
  '예방접종, 투약, 병원 방문, 미용 등 다양한 유형의 알림을 등록할 수 있어요. 알림 유형을 먼저 선택한 후 날짜와 시간을 설정해요.':
      'Add alerts for vaccination, medication, vet visits, grooming, and more. Choose an alert type first, then set the date and time.',
  '반복 알림': 'Repeating alerts',
  '매일, 매주, 매월 등 반복 규칙을 설정할 수 있어요. 정기적인 투약이나 심장사상충 예방에 유용해요.':
      'Set repeat rules such as daily, weekly, or monthly. This is useful for regular medication or heartworm prevention.',
  '사전 알림 (D-7, D-3, D-1)': 'Advance alerts (D-7, D-3, D-1)',
  '예방접종처럼 중요한 일정은 7일 전, 3일 전, 1일 전에 미리 알림을 받을 수 있어요.':
      'For important schedules such as vaccinations, you can receive reminders 7 days, 3 days, and 1 day in advance.',
  '알림 완료 처리': 'Complete alerts',
  '알림 항목을 탭해 완료로 표시할 수 있어요. 완료된 알림은 지난 알림 목록에서 확인할 수 있어요.':
      'Tap an alert to mark it complete. Completed alerts appear in the past alerts list.',
  '알림 삭제': 'Delete alerts',
  '알림 항목을 왼쪽으로 스와이프하면 삭제할 수 있어요.': 'Swipe an alert item left to delete it.',
  '반려동물 관리': 'Pet management',
  '반려동물 등록': 'Add a pet',
  '이름, 종(강아지/고양이), 품종, 성별, 생년월일, 중성화 여부를 입력해 반려동물을 등록해요.':
      'Add a pet by entering name, species (dog/cat), breed, sex, birthday, and neuter status.',
  '프로필 수정': 'Edit profile',
  '프로필 화면에서 이름, 품종, 체중, 마이크로칩 번호, 동물등록번호, 프로필 사진을 수정할 수 있어요.':
      'Edit name, breed, weight, microchip number, registration number, and profile photo on the profile screen.',
  '여러 마리 관리': 'Manage multiple pets',
  '반려동물을 여러 마리 등록할 수 있어요. 상단의 반려동물 칩을 탭하면 관리할 반려동물을 전환할 수 있어요.':
      'You can add multiple pets. Tap the pet chip at the top to switch the pet you are managing.',
  '건강관리 가이드': 'Health guide',
  '강아지 건강 가이드': 'Dog health guide',
  '필수·선택 예방접종 스케줄, 심장사상충·외부기생충 예방, 치아 관리, 영양 관리 등 수의학 기반의 건강 정보를 제공해요.':
      'Provides veterinary-based health information such as core and optional vaccination schedules, heartworm and parasite prevention, dental care, and nutrition.',
  '고양이 건강 가이드': 'Cat health guide',
  '고양이 전용 예방접종 스케줄, 기생충 예방, 치아 관리, 영양 정보를 확인할 수 있어요.':
      'Check cat-specific vaccination schedules, parasite prevention, dental care, and nutrition information.',
  '설정': 'Settings',
  '알림 설정': 'Notification settings',
  '앱 전체 알림을 켜거나 끌 수 있어요.': 'Turn app-wide notifications on or off.',
  '데이터 내보내기': 'Export data',
  '기록된 모든 데이터를 ZIP 파일로 내보낼 수 있어요. 기기 변경 시 백업용으로 사용하세요.':
      'Export all recorded data as a ZIP file. Use it as a backup when changing devices.',
  '데이터 가져오기': 'Import data',
  '이전에 내보낸 ZIP 백업 파일을 불러와 데이터를 복원할 수 있어요.':
      'Import a previously exported ZIP backup file to restore data.',
  '피드백 보내기': 'Send feedback',
  '앱 사용 중 불편한 점이나 개선 의견을 이메일로 보내주세요. 더 나은 앱을 만드는 데 큰 도움이 돼요.':
      'Send inconvenience reports or suggestions by email. Your feedback helps improve the app.',
  '자주 묻는 질문': 'FAQ',
  '반려동물을 삭제하면 기록도 모두 삭제되나요?': 'If I delete a pet, are all records deleted too?',
  '네, 반려동물을 삭제하면 해당 반려동물의 모든 기록과 알림이 함께 삭제돼요. 삭제 전에 데이터를 내보내기로 백업해 두세요.':
      'Yes. Deleting a pet also deletes all records and alerts for that pet. Please export your data before deleting.',
  '기록에 사진을 여러 장 첨부할 수 있나요?': 'Can I attach multiple photos to a record?',
  '네, 사진과 영상을 여러 개 첨부할 수 있어요. 갤러리에서 선택하거나 카메라로 바로 촬영할 수 있어요.':
      'Yes. You can attach multiple photos and videos. Select them from the gallery or capture them directly with the camera.',
  '알림이 오지 않아요.': 'I am not receiving alerts.',
  '기기의 알림 설정에서 반려숨탄 앱의 알림이 허용되어 있는지 확인해 주세요. 설정 > 알림 설정에서 앱 알림이 켜져 있는지도 확인해 주세요.':
      'Please check that notifications are allowed for Pet Sumtan in your device settings. Also check that app notifications are enabled under Settings > Notification settings.',
  '데이터를 새 기기로 옮길 수 있나요?': 'Can I move my data to a new device?',
  '설정 > 데이터 내보내기로 백업 파일을 저장한 후, 새 기기에서 설정 > 데이터 가져오기로 복원할 수 있어요.':
      'Save a backup file from Settings > Export data, then restore it on the new device from Settings > Import data.',
  '여러 마리의 반려동물을 등록할 수 있나요?': 'Can I add multiple pets?',
  '기본적으로 1마리를 무료로 등록할 수 있어요. 추가 등록은 프리미엄 기능을 통해 이용할 수 있어요.':
      'You can add one pet for free by default. Additional pets are available through the premium feature.',

  // Privacy policy
  '수집하는 개인정보 항목': 'Personal information collected',
  '반려숨탄은 회원가입 없이 사용할 수 있으며, 별도의 개인 식별 정보를 수집하지 않습니다. 다만, 앱 기능 제공을 위해 아래와 같은 정보가 기기 내에 저장될 수 있습니다.':
      'Pet Sumtan can be used without sign-up and does not collect separate personally identifying information. However, the following information may be stored on your device to provide app features.',
  '기기 내 로컬 저장 정보': 'Information stored locally on device',
  '반려동물 정보: 이름, 종, 품종, 생년월일, 성별, 체중, 중성화 여부, 마이크로칩 번호, 동물등록번호':
      'Pet information: name, species, breed, birth date, sex, weight, neuter status, microchip number, and animal registration number',
  '건강 기록: 배변, 식사, 음수, 체중, 투약, 예방접종, 병원, 미용, 양치, 산책, 컨디션, 메모 등 사용자가 직접 입력한 기록':
      'Health records: records directly entered by the user, such as potty, meals, water, weight, medication, vaccination, vet visits, grooming, brushing, walks, condition, and memos',
  '첨부 미디어: 사용자가 직접 촬영하거나 선택한 사진 및 동영상':
      'Attached media: photos and videos taken or selected directly by the user',
  '알림 설정: 알림 유형, 예정 일시, 반복 규칙':
      'Alert settings: alert type, scheduled date/time, and repeat rules',
  '인앱 결제 관련': 'In-app purchases',
  '결제 처리는 Apple App Store 또는 Google Play Store를 통해 이루어지며, 결제 정보는 앱이 직접 수집하거나 저장하지 않습니다.':
      'Payments are processed through the Apple App Store or Google Play Store, and payment information is not directly collected or stored by the app.',
  '구매 영수증 검증에 필요한 최소한의 정보만 각 플랫폼 정책에 따라 처리됩니다.':
      'Only the minimum information needed to verify purchase receipts is processed according to each platform’s policies.',
  '개인정보 수집 및 이용 목적': 'Purpose of collecting and using personal information',
  '수집된 정보는 아래 목적으로만 사용됩니다.':
      'Collected information is used only for the purposes below.',
  '반려동물 건강 기록의 저장 및 조회': 'Saving and viewing pet health records',
  '홈 화면 통계(주간 배변·식사·음수 현황, 체중 변화 그래프 등) 제공':
      'Providing home screen statistics, such as weekly potty, meal, water status, and weight change charts',
  '예방접종, 투약, 병원 방문 등 건강 관련 알림 발송':
      'Sending health-related alerts such as vaccination, medication, and vet visit reminders',
  '데이터 백업 및 복원 기능 제공': 'Providing data backup and restore features',
  '유료 기능 이용 자격 확인': 'Checking eligibility for paid features',
  '개인정보 보유 및 파기': 'Retention and deletion of personal information',
  '반려숨탄의 모든 데이터는 사용자의 기기 내 로컬 데이터베이스(SQLite)에만 저장되며, 외부 서버로 전송되지 않습니다.':
      'All Pet Sumtan data is stored only in the local database (SQLite) on the user’s device and is not sent to external servers.',
  '데이터 파기 방법': 'How data is deleted',
  '앱 내 설정 > 데이터 관리에서 반려동물 정보 및 기록을 직접 삭제할 수 있습니다.':
      'You can directly delete pet information and records from Settings > Data management in the app.',
  '앱을 삭제하면 기기에 저장된 모든 데이터가 함께 삭제됩니다.':
      'When the app is deleted, all data stored on the device is deleted as well.',
  '단, 앱 삭제 전 백업(내보내기)을 진행하지 않은 경우 데이터를 복구할 수 없으니 주의하시기 바랍니다.':
      'Please note that data cannot be recovered if you delete the app without creating a backup (export) first.',
  '개인정보의 제3자 제공': 'Third-party sharing of personal information',
  '반려숨탄은 사용자의 개인정보를 외부에 제공하지 않습니다. 다만, 아래의 경우는 예외로 합니다.':
      'Pet Sumtan does not provide user personal information to external parties. The following cases are exceptions.',
  '사용자가 직접 데이터 내보내기(백업 파일 공유) 기능을 사용하는 경우':
      'When the user directly uses the data export feature, including sharing a backup file',
  '법령에 의거하거나 수사기관의 적법한 요청이 있는 경우':
      'When required by law or by a lawful request from an investigative authority',
  '접근 권한 안내': 'App permissions',
  '앱 기능 제공을 위해 아래 권한을 요청할 수 있습니다. 권한을 허용하지 않아도 해당 기능을 제외한 나머지 기능은 정상 이용 가능합니다.':
      'The app may request the permissions below to provide features. If you do not allow a permission, other features can still be used normally except for the related feature.',
  '카메라': 'Camera',
  '건강 기록에 사진·동영상을 직접 촬영하여 첨부할 때 사용됩니다.':
      'Used when taking photos or videos directly to attach to health records.',
  '사진 및 미디어 접근': 'Photo and media access',
  '갤러리에서 사진·동영상을 선택하여 기록에 첨부할 때 사용됩니다.':
      'Used when selecting photos or videos from the gallery to attach to records.',
  '알림': 'Notifications',
  '파일 접근 (Android)': 'File access (Android)',
  '데이터 백업 파일을 저장하거나 불러올 때 사용됩니다.':
      'Used when saving or loading data backup files.',
  '데이터 백업 및 복원': 'Data backup and restore',
  '반려숨탄은 데이터 내보내기(백업) 및 가져오기(복원) 기능을 제공합니다.':
      'Pet Sumtan provides data export (backup) and import (restore) features.',
  '내보내기: 앱 내 모든 데이터를 파일(.zip)로 저장하거나 공유할 수 있습니다.':
      'Export: Save or share all app data as a .zip file.',
  '가져오기: 이전에 내보낸 백업 파일을 불러와 데이터를 복원할 수 있습니다.':
      'Import: Load a previously exported backup file to restore data.',
  '백업 파일은 사용자가 직접 관리하며, 파일을 타인과 공유하지 않도록 주의하시기 바랍니다.':
      'Backup files are managed directly by the user. Please be careful not to share them with others.',
  '아동의 개인정보 보호': 'Children’s privacy protection',
  '반려숨탄은 만 14세 미만 아동으로부터 별도의 개인정보를 수집하지 않습니다. 앱의 모든 데이터는 기기 내에만 저장되며, 외부 서버 전송이 없으므로 아동도 안전하게 이용할 수 있습니다.':
      'Pet Sumtan does not separately collect personal information from children under 14. All app data is stored only on the device and is not transmitted to external servers, so children can use the app safely.',
  '개인정보 처리방침 변경': 'Changes to this privacy policy',
  '본 개인정보 처리방침은 법령 또는 서비스 변경에 따라 업데이트될 수 있습니다.':
      'This privacy policy may be updated due to legal or service changes.',
  '변경 시 앱 업데이트 노트 또는 앱 내 공지를 통해 안내합니다.':
      'Changes will be announced through app update notes or in-app notices.',
  '변경된 방침은 공지 후 7일이 경과한 날부터 효력이 발생합니다.':
      'The revised policy takes effect 7 days after notice is posted.',
  '문의': 'Contact',
  '개인정보 처리방침에 관한 문의사항은 아래 방법으로 연락해 주세요.':
      'For questions about this privacy policy, please contact us below.',
  '반려숨탄은 회원가입 없이 사용하는 앱으로, 모든 데이터는 사용자의 기기 내에만 저장됩니다. 외부 서버로 개인정보를 전송하지 않으며, 사용자의 소중한 반려동물 정보를 안전하게 보호합니다.':
      'Pet Sumtan is used without sign-up, and all data is stored only on the user’s device. Personal information is not sent to external servers, and your precious pet information is protected safely.',

  // Health guide headings and content
  '강아지 건강관리 가이드': 'Dog health care guide',
  '고양이 건강관리 가이드': 'Cat health care guide',
  '수의사 권장 기준을 바탕으로\n작성된 전문 건강 안내서예요.':
      'A professional health guide\nbased on veterinary recommendations.',
  '핵심 필수 접종 (Core Vaccine)': 'Core vaccines',
  '필수': 'Required',
  'DHPPL (종합백신)': 'DHPPL combo vaccine',
  ' — 홍역·간염·파보·파라인플루엔자·렙토스피라.\n생후 6~8주 1차, 3~4주 간격 3회, 매년 추가접종':
      ' - distemper, hepatitis, parvo, parainfluenza, and leptospirosis.\nFirst dose at 6-8 weeks, three doses 3-4 weeks apart, then annual boosters',
  '광견병': 'Rabies',
  ' — 생후 3개월 이후 1차, 이후 매년 1회 (법정 의무접종)':
      ' - first dose after 3 months of age, then once every year (legally required vaccination)',
  '코로나 장염': 'Coronavirus enteritis',
  ' — 생후 6~8주 시작, 3~4주 간격 2회, 매년 추가접종':
      ' - start at 6-8 weeks of age, two doses 3-4 weeks apart, then annual boosters',
  '선택 접종 (Non-Core)': 'Non-core vaccines',
  '권장': 'Recommended',
  '켄넬코프': 'Kennel cough',
  ' — 다견 환경·미용실·펜션 이용 시 권장. 비강 또는 주사형':
      ' - recommended for multi-dog environments, grooming salons, and boarding. Intranasal or injectable',
  '인플루엔자': 'Influenza',
  ' — 야외 활동이 많거나 다른 개와 접촉이 잦은 경우':
      ' - for dogs with frequent outdoor activity or contact with other dogs',
  '기생충 예방': 'Parasite prevention',
  '심장사상충': 'Heartworm',
  '매월': 'Monthly',
  '모기 활동기(3~11월) 전후로 ': 'Around mosquito season (March-November), ',
  '매월 1회': 'once every month',
  ' 예방약 투여 권장': ' preventive medication is recommended',
  '감염 시 치료가 어렵고 치명적 — ': 'Treatment is difficult and infection can be fatal - ',
  '예방이 최선': 'prevention is best',
  '투여 전 반드시 감염 여부 검사 후 음성 확인 필요':
      'Before giving medication, test for infection and confirm a negative result',
  '연중 투여 시 더욱 안전 (수의사 권장)':
      'Year-round prevention is safer and commonly recommended by veterinarians',
  '외부기생충 (벼룩·진드기)': 'External parasites (fleas/ticks)',
  '스팟온(spot-on) 또는 경구형 예방약 ': 'Spot-on or oral preventive medication ',
  '매월 투여': 'given monthly',
  '산책 후 귀·발가락 사이·겨드랑이 진드기 확인 필수':
      'After walks, check ears, between toes, and armpits for ticks',
  '진드기 제거 시 핀셋으로 수직 방향으로 천천히 제거 (비틀기 금지)':
      'When removing a tick, pull slowly straight out with tweezers. Do not twist.',
  '내부기생충': 'Internal parasites',
  '3~6개월': '3-6 months',
  '회충·구충·편충: ': 'Roundworms, hookworms, and whipworms: ',
  '3~6개월마다': 'every 3-6 months',
  ' 구충제 투여': ' give dewormer',
  '강아지 시기(생후 2주~): 2주 간격으로 4회 구충 후 정기 관리':
      'Puppy period (from 2 weeks old): deworm 4 times every 2 weeks, then continue routine care',
  '정기 건강검진': 'Regular health checkups',
  '치아 & 구강 관리': 'Dental and oral care',
  '매일 양치질이 이상적 — 최소 ': 'Daily brushing is ideal - at least ',
  '주 3회 이상': '3 times a week',
  ' 권장': ' recommended',
  '반드시 ': 'Always use ',
  '반려동물 전용 치약': 'pet-safe toothpaste',
  ' 사용 (자일리톨 함유 인체용 치약 금지)':
      '. Do not use human toothpaste containing xylitol.',
  '치석이 심한 경우 동물병원에서 스케일링 (전신마취 필요)':
      'If tartar is severe, scaling at an animal hospital may be needed under general anesthesia',
  '덴탈껌·치아 장난감으로 보조적 관리 가능':
      'Dental chews and tooth toys can help support oral care',
  '절대 금지 음식': 'Strictly forbidden foods',
  '아래 음식은 강아지에게 독성을 가집니다. 소량도 위험할 수 있으니 절대 급여하지 마세요.':
      'The foods below are toxic to dogs. Even small amounts can be dangerous, so never feed them.',
  '포도·건포도': 'Grapes and raisins',
  ' — 신부전 유발, 소량도 치명적':
      ' - can cause kidney failure, even small amounts may be fatal',
  '초콜릿·카카오': 'Chocolate and cacao',
  ' — 테오브로민 중독, 심부전·경련':
      ' - theobromine poisoning, heart failure, and seizures',
  '양파·마늘·파': 'Onion, garlic, and scallion',
  ' — 적혈구 파괴, 용혈성 빈혈':
      ' - destroys red blood cells and may cause hemolytic anemia',
  '자일리톨': 'Xylitol',
  ' — 인슐린 과분비, 저혈당·간부전':
      ' - excessive insulin release, hypoglycemia, and liver failure',
  '마카다미아 너트': 'Macadamia nuts',
  ' — 근육 약화, 고열, 구토': ' - muscle weakness, high fever, and vomiting',
  '날 반죽·알코올': 'Raw dough and alcohol',
  ' — 에탄올 중독, 저혈당': ' - ethanol poisoning and hypoglycemia',
  '아보카도': 'Avocado',
  ' — 퍼신(persin) 성분, 구토·설사': ' - persin content, vomiting, and diarrhea',
  '즉시 병원 방문이 필요한 증상': 'Signs that need an immediate vet visit',
  '아래 증상이 나타나면 즉시 동물병원을 방문하세요.':
      'If any of the symptoms below appear, visit an animal hospital immediately.',
  '24시간 이상 식욕 완전 소실': 'Complete loss of appetite for more than 24 hours',
  '구토·설사가 하루 3회 이상 반복':
      'Vomiting or diarrhea repeated 3 or more times in one day',
  '복부 팽만·헛구역질 (위확장·염전 의심)':
      'Abdominal bloating or retching, possible gastric dilatation-volvulus',
  '호흡 곤란·잇몸 창백·청색증': 'Difficulty breathing, pale gums, or cyanosis',
  '경련·발작·의식 소실': 'Convulsions, seizures, or loss of consciousness',
  '소변을 12시간 이상 보지 못함': 'Unable to urinate for more than 12 hours',
  '눈에 띄는 외상·골절·다량 출혈': 'Visible trauma, fracture, or heavy bleeding',
  '운동 & 정신 건강': 'Exercise and mental health',
  '강아지에게 운동 부족은 단순한 체력 문제가 아니에요. 스트레스·불안·파괴적 행동의 주요 원인이 됩니다.':
      'For dogs, lack of exercise is not just a fitness issue. It is a major cause of stress, anxiety, and destructive behavior.',
  '매일': 'Daily',
  '소형견: 하루 ': 'Small dogs: ',
  '20~30분': '20-30 minutes',
  ' 이상, 중·대형견: ': ' or more per day, medium/large dogs: ',
  '1시간': '1 hour',
  ' 이상 권장': ' or more recommended',
  '산책은 단순 배변이 아닌 ': 'Walks are not just potty time. They provide ',
  '후각 자극·사회화·스트레스 해소': 'scent stimulation, socialization, and stress relief',
  '의 시간': '.',
  '냄새 맡는 행동(스니핑)을 충분히 허용 — 정신적 피로 해소에 매우 효과적':
      'Allow plenty of sniffing. It is very effective for relieving mental fatigue.',
  '여름철 아스팔트 화상 주의 — 오전 7시 이전 또는 저녁 산책 권장':
      'Watch for asphalt burns in summer. Walk before 7 a.m. or in the evening.',
  '품종별 권장 운동량': 'Recommended exercise by breed',
  '놀이 & 두뇌 자극': 'Play and brain stimulation',
  '공 던지기·터그 놀이': 'Fetch and tug play',
  ' — 신체 에너지 발산, 보호자와 유대감 강화':
      ' - releases physical energy and strengthens bonding with the caregiver',
  '노즈워크(냄새 찾기)': 'Nose work (scent games)',
  ' — 두뇌 자극, 산책 30분 효과를 15분 만에 가능':
      ' - stimulates the brain and can provide the effect of a 30-minute walk in about 15 minutes',
  '퍼즐·콩 장난감': 'Puzzle and Kong toys',
  ' — 혼자 있는 시간 분리불안 완화에 효과적':
      ' - helpful for easing separation anxiety during alone time',
  '하루 ': 'Daily ',
  '10~15분': '10-15 minutes',
  ' 집중 놀이만으로도 스트레스 수치 크게 감소':
      ' of focused play can significantly reduce stress',
  '스트레스 신호 알아채기': 'Recognizing stress signals',
  '주의': 'Caution',
  '가구·물건 파괴, 과도한 짖음 — 운동·자극 부족 신호':
      'Destroying furniture or objects and excessive barking may signal lack of exercise or stimulation',
  '꼬리 물기·과도한 핥기(발, 몸) — 강박 행동, 스트레스 해소 시도':
      'Tail biting or excessive licking may be compulsive behavior and an attempt to relieve stress',
  '보호자 외출 시 과도한 불안·배변 실수 — 분리불안 의심':
      'Excessive anxiety or potty accidents when the caregiver leaves may suggest separation anxiety',
  '지속될 경우 수의사 또는 반려동물 행동 전문가 상담 권장':
      'If it continues, consult a veterinarian or pet behavior professional',
  '사회화 & 환경 자극': 'Socialization and environmental stimulation',
  '생후 ': 'From ',
  '3~14주': '3-14 weeks of age',
  '가 사회화 황금기 — 다양한 사람·소리·환경 노출이 중요':
      ' is the golden period for socialization. Exposure to people, sounds, and environments is important.',
  '다른 강아지와의 교류 — 도그파크·퍼피 클래스 활용':
      'Interaction with other dogs - use dog parks or puppy classes',
  '새로운 장소·냄새·소리 경험이 정신적 풍요로움에 기여':
      'Experiencing new places, smells, and sounds enriches mental well-being',
  '긍정 강화 훈련(클리커·간식)은 두뇌 자극과 유대감을 동시에 높임':
      'Positive reinforcement training with clickers or treats stimulates the brain and strengthens bonding',

  'FVRCP (종합백신)': 'FVRCP combo vaccine',
  ' — 허피스바이러스·칼리시·범백혈구감소증.\n생후 6~8주 1차, 3~4주 간격 3회, 이후 1~3년마다':
      ' - herpesvirus, calicivirus, and panleukopenia.\nFirst dose at 6-8 weeks, three doses 3-4 weeks apart, then every 1-3 years',
  ' — 외출 고양이 필수, 실내 고양이도 권장 (법정 의무)':
      ' - essential for outdoor cats and also recommended for indoor cats (legally required)',
  '고양이 백혈병(FeLV)': 'Feline leukemia (FeLV)',
  ' — 외출 고양이·다묘 가정 강력 권장':
      ' - strongly recommended for outdoor cats and multi-cat homes',
  '고양이 클라미디아': 'Feline chlamydia',
  ' — 다묘 환경, 결막염 예방':
      ' - for multi-cat environments and conjunctivitis prevention',
  '고양이 면역결핍바이러스(FIV)': 'Feline immunodeficiency virus (FIV)',
  ' — 외출 수컷 고양이 (싸움 상처 통해 전파)':
      ' - for outdoor male cats, spread through fight wounds',
  '외출 고양이: 벼룩·진드기 예방약 ': 'Outdoor cats: flea and tick preventive medication ',
  ' 투여': ' administration',
  '실내 고양이도 사람 옷·신발 통해 벼룩 유입 가능 → ':
      'Even indoor cats can get fleas from people’s clothes or shoes, so ',
  ' 예방 권장': ' prevention is recommended',
  '스팟온 제품 사용 시 목덜미에 정확히 도포':
      'Apply spot-on products accurately to the back of the neck',
  '내부기생충 & 심장사상충': 'Internal parasites and heartworm',
  '정기': 'Routine',
  '회충·조충: ': 'Roundworms and tapeworms: ',
  '생식(날고기·날생선) 급여 시 더 자주 검사 권장':
      'If feeding raw meat or raw fish, more frequent testing is recommended',
  '심장사상충 — 고양이는 ': 'Heartworm - cats ',
  '치료제가 없어 예방이 유일한 방법':
      'have no curative treatment, so prevention is the only option',
  '. 외출 고양이 매월 투여 강력 권장':
      '. Monthly prevention is strongly recommended for outdoor cats',
  '고양이 주요 질환 주의': 'Important feline diseases to watch',
  '고양이는 아픔을 숨기는 습성이 있어 증상이 나타날 때는 이미 진행된 경우가 많습니다. 정기 검진이 특히 중요해요.':
      'Cats tend to hide pain, so symptoms often appear after a condition has already progressed. Regular checkups are especially important.',
  '하부요로기계질환(FLUTD)': 'Feline lower urinary tract disease (FLUTD)',
  ' — 수컷에 흔함. 소변 못 보면 즉시 응급처치 필요':
      ' - common in male cats. If the cat cannot urinate, emergency care is needed immediately',
  '만성신장병(CKD)': 'Chronic kidney disease (CKD)',
  ' — 노령묘 1위 사망 원인. 7세 이상 정기 신장 수치 검사 필수':
      ' - a leading cause of death in senior cats. Routine kidney bloodwork is essential from age 7',
  '고양이 당뇨': 'Feline diabetes',
  ' — 비만·고령 고양이 위험. 다음·다뇨 증상 주의':
      ' - risk increases with obesity and age. Watch for excessive thirst and urination',
  '갑상선기능항진증': 'Hyperthyroidism',
  ' — 10세 이상 흔함. 체중 감소·과식·과활동 증상':
      ' - common after age 10. Signs include weight loss, overeating, and hyperactivity',
  '구내염': 'Stomatitis',
  ' — 고양이에 매우 흔함. 입냄새·침흘림·식욕부진 시 검진':
      ' - very common in cats. Check if bad breath, drooling, or poor appetite appears',
  '고양이 허피스(FHV-1)': 'Feline herpesvirus (FHV-1)',
  ' — 한번 감염 시 평생 잠복. 스트레스 시 재발, 재채기·눈곱·결막염':
      ' - remains latent for life after infection. Stress may trigger recurrence, sneezing, eye discharge, and conjunctivitis',
  '수분 섭취 & 식이 관리': 'Hydration and diet management',
  '고양이는 원래 물을 잘 마시지 않아 비뇨기 질환에 취약해요. 수분 섭취 유도가 매우 중요합니다.':
      'Cats naturally tend to drink little water and are vulnerable to urinary disease. Encouraging hydration is very important.',
  '습식 사료(캔·파우치) 병행으로 수분 보충 권장':
      'Wet food such as cans or pouches is recommended to support hydration',
  '흐르는 물 선호 — ': 'Many cats prefer running water - ',
  '분수형 음수대': 'a fountain-style water bowl',
  ' 설치 효과적': ' can be effective',
  '물그릇은 사료그릇과 분리, 넓고 얕은 그릇 선호':
      'Keep the water bowl separate from the food bowl. Wide, shallow bowls are preferred.',
  '목표 수분 섭취량: 체중 1kg당 하루 약 ': 'Target water intake: about ',
  '40~60ml': '40-60 mL',
  '아래 음식은 고양이에게 독성을 가집니다. 소량도 위험할 수 있으니 절대 급여하지 마세요.':
      'The foods below are toxic to cats. Even small amounts can be dangerous, so never feed them.',
  ' — 적혈구 파괴, 용혈성 빈혈 (개보다 더 민감)':
      ' - destroys red blood cells and may cause hemolytic anemia; cats are more sensitive than dogs',
  ' — 신부전 유발': ' - can cause kidney failure',
  '초콜릿·카페인': 'Chocolate and caffeine',
  ' — 심장·신경계 독성': ' - toxic to the heart and nervous system',
  '날 생선 (지속 급여)': 'Raw fish when fed continuously',
  ' — 티아민(B1) 결핍 유발': ' - can cause thiamine (B1) deficiency',
  '우유·유제품': 'Milk and dairy products',
  ' — 성묘 유당불내증, 설사 유발':
      ' - adult cats are often lactose intolerant, causing diarrhea',
  '자일리톨·알코올': 'Xylitol and alcohol',
  ' — 간·신경 독성': ' - liver and nervous system toxicity',
  '날 달걀 흰자': 'Raw egg white',
  ' — 아비딘이 비오틴 차단, 피부·털 문제':
      ' - avidin blocks biotin and may cause skin and coat problems',
  '소변을 전혀 못 보거나 혈뇨': 'Unable to urinate at all or blood in urine',
  ' — 요도폐색 응급 (수컷 고양이 특히 주의)':
      ' - urethral blockage emergency, especially in male cats',
  '24시간 이상 완전 식욕 소실 (지방간 위험)':
      'Complete loss of appetite for more than 24 hours, risk of fatty liver',
  '입을 벌리고 호흡': 'Open-mouth breathing',
  ' — 고양이는 절대 정상이 아님, 즉시 응급':
      ' - never normal for cats and requires immediate emergency care',
  '뒷다리 갑작스러운 마비·차가움 (혈전증 의심)':
      'Sudden hind-leg paralysis or cold limbs, possible thrombosis',
  '잇몸·혀 창백 또는 황달(노란빛)': 'Pale gums or tongue, or jaundice (yellow color)',
  '구토·설사가 하루 3회 이상 반복되거나 혈변·혈토':
      'Vomiting or diarrhea repeated 3 or more times in one day, or bloody stool/vomit',
  '환경 & 정신 건강': 'Environment and mental health',
  '실내 환경 관리': 'Indoor environment management',
  '화장실': 'Litter boxes',
  ': 고양이 수 + 1개 이상 배치, 매일 청소':
      ': provide at least number of cats + 1, and clean daily',
  '스크래처': 'Scratchers',
  ': 최소 2개 이상 (수직형·수평형 병행)':
      ': provide at least 2, using both vertical and horizontal types',
  '높은 공간': 'High spaces',
  ': 캣타워·선반 등 수직 공간 제공 (영역 본능 충족)':
      ': provide vertical spaces such as cat towers and shelves to satisfy territorial instincts',
  '은신처': 'Hiding places',
  ': 박스·터널 등 안전하게 숨을 수 있는 공간 제공':
      ': provide safe hiding spaces such as boxes or tunnels',
  '스트레스 관리': 'Stress management',
  '고양이 스트레스는 면역 저하·FLUTD·허피스 재발 등에 직결':
      'Cat stress is directly linked to reduced immunity, FLUTD, and herpes recurrence',
  '급격한 환경 변화(이사·새 가족) 시 페로몬 디퓨저(Feliway) 활용':
      'For sudden environment changes such as moving or a new family member, consider a pheromone diffuser',
  ' 장난감을 이용한 놀이 시간 확보': ' of play time with toys',
  '다묘 가정: 자원(밥그릇·화장실·잠자리) 개체 수만큼 분리 배치':
      'Multi-cat homes: separate resources such as bowls, litter boxes, and beds for each cat',
  '나이': 'Age',
  '검진 주기': 'Checkup cycle',
  '주요 항목': 'Main items',
  '1~6세': '1-6 years',
  '연 1회': 'Once a year',
  '혈액검사, 심장청진, 체중, 치아': 'Blood test, heart auscultation, weight, teeth',
  '7~10세': '7-10 years',
  '연 2회': 'Twice a year',
  '혈액·소변·X-ray, 혈압, 관절': 'Blood, urine, X-ray, blood pressure, joints',
  '11세 이상': '11 years and older',
  '3~4개월마다': 'Every 3-4 months',
  '종합혈액, 초음파, 신장·간 기능': 'Complete bloodwork, ultrasound, kidney/liver function',
  '혈액검사, 소변검사, 체중, 치아': 'Blood test, urine test, weight, teeth',
  '신장·간 수치, 혈압, 갑상선(T4)': 'Kidney/liver values, blood pressure, thyroid (T4)',
  '종합혈액, 복부초음파, 신장 집중 모니터링':
      'Complete bloodwork, abdominal ultrasound, focused kidney monitoring',
  '운동량': 'Exercise level',
  '해당 품종 예시': 'Breed examples',
  '낮음': 'Low',
  '불독, 바셋하운드, 시추, 말티즈': 'Bulldog, Basset Hound, Shih Tzu, Maltese',
  '보통': 'Medium',
  '푸들, 비숑, 코커스패니얼, 비글': 'Poodle, Bichon, Cocker Spaniel, Beagle',
  '높음': 'High',
  '래브라도, 골든, 허스키, 보더콜리': 'Labrador, Golden Retriever, Husky, Border Collie',
  '⚠️ 본 가이드는 일반적인 건강 정보 제공을 목적으로 하며, 개별 반려동물의 상태에 따라 수의사와 상담하시기 바랍니다.':
      '⚠️ This guide is intended to provide general health information. Please consult a veterinarian according to your individual pet’s condition.',
};
