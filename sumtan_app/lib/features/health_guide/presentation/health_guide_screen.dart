import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/widgets/app_page_app_bar.dart';

const _blue50 = Color(0xFFEFF6FF);
const _blue100 = Color(0xFFDBEAFE);
const _blue600 = Color(0xFF2563EB);
const _blue700 = Color(0xFF1D4ED8);
const _red50 = Color(0xFFFEF2F2);
const _red100 = Color(0xFFFEE2E2);
const _red500 = Color(0xFFEF4444);
const _red600 = Color(0xFFDC2626);
const _orange50 = Color(0xFFFFF7ED);
const _orange100 = Color(0xFFFFEDD5);
const _orange500 = Color(0xFFF97316);
const _orange600 = Color(0xFFEA580C);
const _purple50 = Color(0xFFF5F3FF);
const _purple100 = Color(0xFFEDE9FE);
const _purple600 = Color(0xFF7C3AED);
const _teal50 = Color(0xFFF0FDFA);
const _teal600 = Color(0xFF0D9488);
const _green50 = Color(0xFFF0FDF4);
const _green100 = Color(0xFFDCFCE7);
const _green600 = Color(0xFF16A34A);
const _amber50 = Color(0xFFFFFBEB);
const _amber500 = Color(0xFFF59E0B);
const _amber600 = Color(0xFFD97706);
const _yellow100 = Color(0xFFFEF9C3);
const _yellow600 = Color(0xFFCA8A04);

TextSpan _t(String s) => TextSpan(text: s);
TextSpan _b(String s) =>
    TextSpan(text: s, style: const TextStyle(fontWeight: FontWeight.w700));

Widget _item(Color dot, List<InlineSpan> spans) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 5,
            height: 5,
            margin: const EdgeInsets.only(top: 6),
            decoration: BoxDecoration(color: dot, shape: BoxShape.circle),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontSize: 12, color: AppColors.gray700, height: 1.6),
                children: spans,
              ),
            ),
          ),
        ],
      ),
    );

// ─── Screen ──────────────────────────────────────────────────────────────────

class HealthGuideScreen extends StatefulWidget {
  const HealthGuideScreen({super.key});

  @override
  State<HealthGuideScreen> createState() => _HealthGuideScreenState();
}

class _HealthGuideScreenState extends State<HealthGuideScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tab;
  int _idx = 0;

  @override
  void initState() {
    super.initState();
    _tab = TabController(length: 2, vsync: this);
    _tab.addListener(() {
      if (_tab.indexIsChanging) setState(() => _idx = _tab.index);
    });
  }

  @override
  void dispose() {
    _tab.dispose();
    super.dispose();
  }

  Color get _tabColor => _idx == 0 ? AppColors.primary600 : _blue600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamBg,
      appBar: AppPageAppBar(
        title: '건강관리 가이드',
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(49),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(height: 1, color: AppColors.gray100),
              TabBar(
                controller: _tab,
                labelColor: _tabColor,
                unselectedLabelColor: AppColors.gray400,
                indicatorColor: _tabColor,
                indicatorWeight: 2.5,
                labelStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                unselectedLabelStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                tabs: const [Tab(text: '🐶 강아지'), Tab(text: '🐱 고양이')],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tab,
        children: const [_DogContent(), _CatContent()],
      ),
    );
  }
}

// ─── Dog Content ─────────────────────────────────────────────────────────────

class _DogContent extends StatelessWidget {
  const _DogContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
      children: [
        _HeroBanner(
          emoji: '🐶',
          title: '강아지 건강관리 가이드',
          subtitle: '수의사 권장 기준을 바탕으로\n작성된 전문 건강 안내서예요.',
          gradientColors: [AppColors.primary50, const Color(0xFFD1FAE5)],
          titleColor: AppColors.primary700,
        ),
        const SizedBox(height: 18),

        // 1. 예방접종
        const _SectionHeader(emoji: '💉', title: '예방접종', iconBg: _blue50),
        const SizedBox(height: 10),
        _GuideCard(
          header: _CardHeader(
            emoji: '🛡️',
            title: '핵심 필수 접종 (Core Vaccine)',
            badge: const _CBadge('필수', _blue50, _blue600),
          ),
          body: Column(children: [
            _item(_blue600, [
              _b('DHPPL (종합백신)'),
              _t(' — 홍역·간염·파보·파라인플루엔자·렙토스피라.\n생후 6~8주 1차, 3~4주 간격 3회, 매년 추가접종')
            ]),
            _item(_blue600,
                [_b('광견병'), _t(' — 생후 3개월 이후 1차, 이후 매년 1회 (법정 의무접종)')]),
            _item(_blue600,
                [_b('코로나 장염'), _t(' — 생후 6~8주 시작, 3~4주 간격 2회, 매년 추가접종')]),
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '💊',
            title: '선택 접종 (Non-Core)',
            badge: const _CBadge('권장', _amber50, _amber600),
          ),
          body: Column(children: [
            _item(_amber500,
                [_b('켄넬코프'), _t(' — 다견 환경·미용실·펜션 이용 시 권장. 비강 또는 주사형')]),
            _item(
                _amber500, [_b('인플루엔자'), _t(' — 야외 활동이 많거나 다른 개와 접촉이 잦은 경우')]),
          ]),
        ),
        const SizedBox(height: 16),

        // 2. 기생충 예방
        const _SectionHeader(emoji: '🦟', title: '기생충 예방', iconBg: _red50),
        const SizedBox(height: 10),
        _GuideCard(
          header: _CardHeader(
            emoji: '❤️',
            title: '심장사상충',
            badge: const _CBadge('매월', _red50, _red600),
          ),
          body: Column(children: [
            _item(_red500,
                [_t('모기 활동기(3~11월) 전후로 '), _b('매월 1회'), _t(' 예방약 투여 권장')]),
            _item(_red500, [_t('감염 시 치료가 어렵고 치명적 — '), _b('예방이 최선')]),
            _item(_red500, [_t('투여 전 반드시 감염 여부 검사 후 음성 확인 필요')]),
            _item(_red500, [_t('연중 투여 시 더욱 안전 (수의사 권장)')]),
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '🐛',
            title: '외부기생충 (벼룩·진드기)',
            badge: const _CBadge('매월', _orange50, _orange500),
          ),
          body: Column(children: [
            _item(_orange500, [_t('스팟온(spot-on) 또는 경구형 예방약 '), _b('매월 투여')]),
            _item(_orange500, [_t('산책 후 귀·발가락 사이·겨드랑이 진드기 확인 필수')]),
            _item(_orange500, [_t('진드기 제거 시 핀셋으로 수직 방향으로 천천히 제거 (비틀기 금지)')]),
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '🔬',
            title: '내부기생충',
            badge: const _CBadge('3~6개월', _purple50, _purple600),
          ),
          body: Column(children: [
            _item(_purple600, [_t('회충·구충·편충: '), _b('3~6개월마다'), _t(' 구충제 투여')]),
            _item(_purple600, [_t('강아지 시기(생후 2주~): 2주 간격으로 4회 구충 후 정기 관리')]),
          ]),
        ),
        const SizedBox(height: 16),

        // 3. 정기검진
        const _SectionHeader(emoji: '🏥', title: '정기 건강검진', iconBg: _teal50),
        const SizedBox(height: 10),
        const _GuideCard(body: _CheckupTable(isDog: true)),
        const SizedBox(height: 16),

        // 4. 치아
        const _SectionHeader(
            emoji: '🦷', title: '치아 & 구강 관리', iconBg: _amber50),
        const SizedBox(height: 10),
        _GuideCard(
          body: Column(children: [
            _item(
                _amber500, [_t('매일 양치질이 이상적 — 최소 '), _b('주 3회 이상'), _t(' 권장')]),
            _item(_amber500,
                [_t('반드시 '), _b('반려동물 전용 치약'), _t(' 사용 (자일리톨 함유 인체용 치약 금지)')]),
            _item(_amber500, [_t('치석이 심한 경우 동물병원에서 스케일링 (전신마취 필요)')]),
            _item(_amber500, [_t('덴탈껌·치아 장난감으로 보조적 관리 가능')]),
          ]),
        ),
        const SizedBox(height: 16),

        // 5. 절대 금지 음식
        const _SectionHeader(emoji: '🚫', title: '절대 금지 음식', iconBg: _red50),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _red50,
          border: _red100,
          textColor: _red600,
          icon: '⚠️',
          text: '아래 음식은 강아지에게 독성을 가집니다. 소량도 위험할 수 있으니 절대 급여하지 마세요.',
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: Column(children: [
            _item(_red500, [_b('포도·건포도'), _t(' — 신부전 유발, 소량도 치명적')]),
            _item(_red500, [_b('초콜릿·카카오'), _t(' — 테오브로민 중독, 심부전·경련')]),
            _item(_red500, [_b('양파·마늘·파'), _t(' — 적혈구 파괴, 용혈성 빈혈')]),
            _item(_red500, [_b('자일리톨'), _t(' — 인슐린 과분비, 저혈당·간부전')]),
            _item(_red500, [_b('마카다미아 너트'), _t(' — 근육 약화, 고열, 구토')]),
            _item(_red500, [_b('날 반죽·알코올'), _t(' — 에탄올 중독, 저혈당')]),
            _item(_red500, [_b('아보카도'), _t(' — 퍼신(persin) 성분, 구토·설사')]),
          ]),
        ),
        const SizedBox(height: 16),

        // 6. 응급 증상
        const _SectionHeader(
            emoji: '🚨', title: '즉시 병원 방문이 필요한 증상', iconBg: _red50),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _red50,
          border: _red100,
          textColor: _red600,
          icon: '🚑',
          text: '아래 증상이 나타나면 즉시 동물병원을 방문하세요.',
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: Column(children: [
            _item(_red500, [_t('24시간 이상 식욕 완전 소실')]),
            _item(_red500, [_t('구토·설사가 하루 3회 이상 반복')]),
            _item(_red500, [_t('복부 팽만·헛구역질 (위확장·염전 의심)')]),
            _item(_red500, [_t('호흡 곤란·잇몸 창백·청색증')]),
            _item(_red500, [_t('경련·발작·의식 소실')]),
            _item(_red500, [_t('소변을 12시간 이상 보지 못함')]),
            _item(_red500, [_t('눈에 띄는 외상·골절·다량 출혈')]),
          ]),
        ),
        const SizedBox(height: 16),

        // 7. 운동 & 정신 건강
        const _SectionHeader(
            emoji: '🏃', title: '운동 & 정신 건강', iconBg: _green50),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _green50,
          border: _green100,
          textColor: _green600,
          icon: '💡',
          text: '강아지에게 운동 부족은 단순한 체력 문제가 아니에요. 스트레스·불안·파괴적 행동의 주요 원인이 됩니다.',
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '🦮',
            title: '산책',
            badge: const _CBadge('매일', _green50, _green600),
          ),
          body: Column(children: [
            _item(_green600, [
              _t('소형견: 하루 '),
              _b('20~30분'),
              _t(' 이상, 중·대형견: '),
              _b('1시간'),
              _t(' 이상 권장')
            ]),
            _item(_green600,
                [_t('산책은 단순 배변이 아닌 '), _b('후각 자극·사회화·스트레스 해소'), _t('의 시간')]),
            _item(_green600, [_t('냄새 맡는 행동(스니핑)을 충분히 허용 — 정신적 피로 해소에 매우 효과적')]),
            _item(_green600, [_t('여름철 아스팔트 화상 주의 — 오전 7시 이전 또는 저녁 산책 권장')]),
          ]),
        ),
        const SizedBox(height: 8),
        const _GuideCard(
          header: _CardHeader(emoji: '📊', title: '품종별 권장 운동량'),
          body: _BreedExerciseTable(),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '🎾',
            title: '놀이 & 두뇌 자극',
            badge: const _CBadge('매일', _amber50, _amber600),
          ),
          body: Column(children: [
            _item(_amber500,
                [_b('공 던지기·터그 놀이'), _t(' — 신체 에너지 발산, 보호자와 유대감 강화')]),
            _item(_amber500,
                [_b('노즈워크(냄새 찾기)'), _t(' — 두뇌 자극, 산책 30분 효과를 15분 만에 가능')]),
            _item(_amber500, [_b('퍼즐·콩 장난감'), _t(' — 혼자 있는 시간 분리불안 완화에 효과적')]),
            _item(_amber500,
                [_t('하루 '), _b('10~15분'), _t(' 집중 놀이만으로도 스트레스 수치 크게 감소')]),
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '😰',
            title: '스트레스 신호 알아채기',
            badge: const _CBadge('주의', _red50, _red600),
          ),
          body: Column(children: [
            _item(_red500, [_t('가구·물건 파괴, 과도한 짖음 — 운동·자극 부족 신호')]),
            _item(_red500, [_t('꼬리 물기·과도한 핥기(발, 몸) — 강박 행동, 스트레스 해소 시도')]),
            _item(_red500, [_t('보호자 외출 시 과도한 불안·배변 실수 — 분리불안 의심')]),
            _item(_red500, [_t('지속될 경우 수의사 또는 반려동물 행동 전문가 상담 권장')]),
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: const _CardHeader(emoji: '🐾', title: '사회화 & 환경 자극'),
          body: Column(children: [
            _item(_teal600, [
              _t('생후 '),
              _b('3~14주'),
              _t('가 사회화 황금기 — 다양한 사람·소리·환경 노출이 중요')
            ]),
            _item(_teal600, [_t('다른 강아지와의 교류 — 도그파크·퍼피 클래스 활용')]),
            _item(_teal600, [_t('새로운 장소·냄새·소리 경험이 정신적 풍요로움에 기여')]),
            _item(_teal600, [_t('긍정 강화 훈련(클리커·간식)은 두뇌 자극과 유대감을 동시에 높임')]),
          ]),
        ),
        const SizedBox(height: 16),
        const _Disclaimer(),
      ],
    );
  }
}

// ─── Cat Content ─────────────────────────────────────────────────────────────

class _CatContent extends StatelessWidget {
  const _CatContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
      children: [
        _HeroBanner(
          emoji: '🐱',
          title: '고양이 건강관리 가이드',
          subtitle: '수의사 권장 기준을 바탕으로\n작성된 전문 건강 안내서예요.',
          gradientColors: [_blue50, _blue100],
          titleColor: _blue700,
        ),
        const SizedBox(height: 18),

        // 1. 예방접종
        const _SectionHeader(emoji: '💉', title: '예방접종', iconBg: _blue50),
        const SizedBox(height: 10),
        _GuideCard(
          header: _CardHeader(
            emoji: '🛡️',
            title: '핵심 필수 접종 (Core Vaccine)',
            badge: const _CBadge('필수', _blue50, _blue600),
          ),
          body: Column(children: [
            _item(_blue600, [
              _b('FVRCP (종합백신)'),
              _t(' — 허피스바이러스·칼리시·범백혈구감소증.\n생후 6~8주 1차, 3~4주 간격 3회, 이후 1~3년마다')
            ]),
            _item(
                _blue600, [_b('광견병'), _t(' — 외출 고양이 필수, 실내 고양이도 권장 (법정 의무)')]),
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '💊',
            title: '선택 접종 (Non-Core)',
            badge: const _CBadge('권장', _amber50, _amber600),
          ),
          body: Column(children: [
            _item(
                _amber500, [_b('고양이 백혈병(FeLV)'), _t(' — 외출 고양이·다묘 가정 강력 권장')]),
            _item(_amber500, [_b('고양이 클라미디아'), _t(' — 다묘 환경, 결막염 예방')]),
            _item(_amber500,
                [_b('고양이 면역결핍바이러스(FIV)'), _t(' — 외출 수컷 고양이 (싸움 상처 통해 전파)')]),
          ]),
        ),
        const SizedBox(height: 16),

        // 2. 기생충 예방
        const _SectionHeader(emoji: '🦟', title: '기생충 예방', iconBg: _red50),
        const SizedBox(height: 10),
        _GuideCard(
          header: _CardHeader(
            emoji: '🐛',
            title: '외부기생충 (벼룩·진드기)',
            badge: const _CBadge('매월', _orange50, _orange500),
          ),
          body: Column(children: [
            _item(_orange500,
                [_t('외출 고양이: 벼룩·진드기 예방약 '), _b('매월 1회'), _t(' 투여')]),
            _item(_orange500, [
              _t('실내 고양이도 사람 옷·신발 통해 벼룩 유입 가능 → '),
              _b('3개월마다'),
              _t(' 예방 권장')
            ]),
            _item(_orange500, [_t('스팟온 제품 사용 시 목덜미에 정확히 도포')]),
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '🔬',
            title: '내부기생충 & 심장사상충',
            badge: const _CBadge('정기', _purple50, _purple600),
          ),
          body: Column(children: [
            _item(_purple600, [_t('회충·조충: '), _b('3~6개월마다'), _t(' 구충제 투여')]),
            _item(_purple600, [_t('생식(날고기·날생선) 급여 시 더 자주 검사 권장')]),
            _item(_red500, [
              _t('심장사상충 — 고양이는 '),
              _b('치료제가 없어 예방이 유일한 방법'),
              _t('. 외출 고양이 매월 투여 강력 권장')
            ]),
          ]),
        ),
        const SizedBox(height: 16),

        // 3. 주요 질환
        const _SectionHeader(
            emoji: '🔬', title: '고양이 주요 질환 주의', iconBg: _purple50),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _purple50,
          border: _purple100,
          textColor: _purple600,
          icon: '💡',
          text:
              '고양이는 아픔을 숨기는 습성이 있어 증상이 나타날 때는 이미 진행된 경우가 많습니다. 정기 검진이 특히 중요해요.',
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: Column(children: [
            _item(_purple600,
                [_b('하부요로기계질환(FLUTD)'), _t(' — 수컷에 흔함. 소변 못 보면 즉시 응급처치 필요')]),
            _item(_purple600, [
              _b('만성신장병(CKD)'),
              _t(' — 노령묘 1위 사망 원인. 7세 이상 정기 신장 수치 검사 필수')
            ]),
            _item(
                _purple600, [_b('고양이 당뇨'), _t(' — 비만·고령 고양이 위험. 다음·다뇨 증상 주의')]),
            _item(_purple600,
                [_b('갑상선기능항진증'), _t(' — 10세 이상 흔함. 체중 감소·과식·과활동 증상')]),
            _item(_purple600,
                [_b('구내염'), _t(' — 고양이에 매우 흔함. 입냄새·침흘림·식욕부진 시 검진')]),
            _item(_purple600, [
              _b('고양이 허피스(FHV-1)'),
              _t(' — 한번 감염 시 평생 잠복. 스트레스 시 재발, 재채기·눈곱·결막염')
            ]),
          ]),
        ),
        const SizedBox(height: 16),

        // 4. 정기검진
        const _SectionHeader(emoji: '🏥', title: '정기 건강검진', iconBg: _teal50),
        const SizedBox(height: 10),
        const _GuideCard(body: _CheckupTable(isDog: false)),
        const SizedBox(height: 16),

        // 5. 수분 & 식이
        const _SectionHeader(
            emoji: '💧', title: '수분 섭취 & 식이 관리', iconBg: _blue50),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _blue50,
          border: _blue100,
          textColor: _blue600,
          icon: '💡',
          text: '고양이는 원래 물을 잘 마시지 않아 비뇨기 질환에 취약해요. 수분 섭취 유도가 매우 중요합니다.',
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: Column(children: [
            _item(_blue600, [_t('습식 사료(캔·파우치) 병행으로 수분 보충 권장')]),
            _item(_blue600, [_t('흐르는 물 선호 — '), _b('분수형 음수대'), _t(' 설치 효과적')]),
            _item(_blue600, [_t('물그릇은 사료그릇과 분리, 넓고 얕은 그릇 선호')]),
            _item(_blue600, [_t('목표 수분 섭취량: 체중 1kg당 하루 약 '), _b('40~60ml')]),
          ]),
        ),
        const SizedBox(height: 16),

        // 6. 절대 금지 음식
        const _SectionHeader(emoji: '🚫', title: '절대 금지 음식', iconBg: _red50),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _red50,
          border: _red100,
          textColor: _red600,
          icon: '⚠️',
          text: '아래 음식은 고양이에게 독성을 가집니다. 소량도 위험할 수 있으니 절대 급여하지 마세요.',
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: Column(children: [
            _item(_red500, [_b('양파·마늘·파'), _t(' — 적혈구 파괴, 용혈성 빈혈 (개보다 더 민감)')]),
            _item(_red500, [_b('포도·건포도'), _t(' — 신부전 유발')]),
            _item(_red500, [_b('초콜릿·카페인'), _t(' — 심장·신경계 독성')]),
            _item(_red500, [_b('날 생선 (지속 급여)'), _t(' — 티아민(B1) 결핍 유발')]),
            _item(_red500, [_b('우유·유제품'), _t(' — 성묘 유당불내증, 설사 유발')]),
            _item(_red500, [_b('자일리톨·알코올'), _t(' — 간·신경 독성')]),
            _item(_red500, [_b('아보카도'), _t(' — 퍼신(persin) 성분, 구토·설사')]),
            _item(_red500, [_b('날 달걀 흰자'), _t(' — 아비딘이 비오틴 차단, 피부·털 문제')]),
          ]),
        ),
        const SizedBox(height: 16),

        // 7. 응급 증상
        const _SectionHeader(
            emoji: '🚨', title: '즉시 병원 방문이 필요한 증상', iconBg: _red50),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _red50,
          border: _red100,
          textColor: _red600,
          icon: '🚑',
          text: '아래 증상이 나타나면 즉시 동물병원을 방문하세요.',
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: Column(children: [
            _item(_red500,
                [_b('소변을 전혀 못 보거나 혈뇨'), _t(' — 요도폐색 응급 (수컷 고양이 특히 주의)')]),
            _item(_red500, [_t('24시간 이상 완전 식욕 소실 (지방간 위험)')]),
            _item(_red500, [_b('입을 벌리고 호흡'), _t(' — 고양이는 절대 정상이 아님, 즉시 응급')]),
            _item(_red500, [_t('뒷다리 갑작스러운 마비·차가움 (혈전증 의심)')]),
            _item(_red500, [_t('경련·발작·의식 소실')]),
            _item(_red500, [_t('잇몸·혀 창백 또는 황달(노란빛)')]),
            _item(_red500, [_t('구토·설사가 하루 3회 이상 반복되거나 혈변·혈토')]),
            _item(_red500, [_t('눈에 띄는 외상·골절·다량 출혈')]),
          ]),
        ),
        const SizedBox(height: 16),

        // 8. 환경 & 정신 건강
        const _SectionHeader(emoji: '🏠', title: '환경 & 정신 건강', iconBg: _teal50),
        const SizedBox(height: 10),
        _GuideCard(
          header: const _CardHeader(emoji: '🏡', title: '실내 환경 관리'),
          body: Column(children: [
            _item(_teal600, [_b('화장실'), _t(': 고양이 수 + 1개 이상 배치, 매일 청소')]),
            _item(_teal600, [_b('스크래처'), _t(': 최소 2개 이상 (수직형·수평형 병행)')]),
            _item(
                _teal600, [_b('높은 공간'), _t(': 캣타워·선반 등 수직 공간 제공 (영역 본능 충족)')]),
            _item(_teal600, [_b('은신처'), _t(': 박스·터널 등 안전하게 숨을 수 있는 공간 제공')]),
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: const _CardHeader(emoji: '😌', title: '스트레스 관리'),
          body: Column(children: [
            _item(_teal600, [_t('고양이 스트레스는 면역 저하·FLUTD·허피스 재발 등에 직결')]),
            _item(_teal600, [_t('급격한 환경 변화(이사·새 가족) 시 페로몬 디퓨저(Feliway) 활용')]),
            _item(_teal600,
                [_t('하루 '), _b('10~15분 이상'), _t(' 장난감을 이용한 놀이 시간 확보')]),
            _item(_teal600, [_t('다묘 가정: 자원(밥그릇·화장실·잠자리) 개체 수만큼 분리 배치')]),
          ]),
        ),
        const SizedBox(height: 16),
        const _Disclaimer(),
      ],
    );
  }
}

// ─── Shared Widgets ───────────────────────────────────────────────────────────

class _HeroBanner extends StatelessWidget {
  final String emoji;
  final String title;
  final String subtitle;
  final List<Color> gradientColors;
  final Color titleColor;

  const _HeroBanner({
    required this.emoji,
    required this.title,
    required this.subtitle,
    required this.gradientColors,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
        borderRadius: BorderRadius.circular(AppRadius.radiusLg),
      ),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 48)),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        color: titleColor)),
                const SizedBox(height: 4),
                Text(subtitle,
                    style: TextStyle(
                        fontSize: 12,
                        color: titleColor.withValues(alpha: 0.78),
                        height: 1.55)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String emoji;
  final String title;
  final Color iconBg;

  const _SectionHeader({
    required this.emoji,
    required this.title,
    required this.iconBg,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: iconBg, borderRadius: BorderRadius.circular(8)),
          child:
              Center(child: Text(emoji, style: const TextStyle(fontSize: 16))),
        ),
        const SizedBox(width: 8),
        Text(title,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.gray900)),
      ],
    );
  }
}

class _GuideCard extends StatelessWidget {
  final _CardHeader? header;
  final Widget body;

  const _GuideCard({this.header, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.radiusLg),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (header != null) ...[
            header!,
            const Divider(height: 1, color: AppColors.gray100),
          ],
          Padding(
            padding: EdgeInsets.fromLTRB(14, header != null ? 10 : 12, 14, 12),
            child: body,
          ),
        ],
      ),
    );
  }
}

class _CardHeader extends StatelessWidget {
  final String emoji;
  final String title;
  final Widget? badge;

  const _CardHeader({required this.emoji, required this.title, this.badge});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 11, 14, 10),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 18)),
          const SizedBox(width: 10),
          Expanded(
            child: Text(title,
                style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.gray900)),
          ),
          if (badge != null) badge!,
        ],
      ),
    );
  }
}

class _CBadge extends StatelessWidget {
  final String text;
  final Color bg;
  final Color fg;

  const _CBadge(this.text, this.bg, this.fg);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration:
          BoxDecoration(color: bg, borderRadius: BorderRadius.circular(20)),
      child: Text(text,
          style:
              TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: fg)),
    );
  }
}

class _AlertBox extends StatelessWidget {
  final Color bg;
  final Color border;
  final Color textColor;
  final String icon;
  final String text;

  const _AlertBox({
    required this.bg,
    required this.border,
    required this.textColor,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
        border: Border.all(color: border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(icon, style: const TextStyle(fontSize: 15)),
          const SizedBox(width: 9),
          Expanded(
            child: Text(text,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                    height: 1.6)),
          ),
        ],
      ),
    );
  }
}

class _CheckupTable extends StatelessWidget {
  final bool isDog;

  const _CheckupTable({required this.isDog});

  @override
  Widget build(BuildContext context) {
    final rows = isDog
        ? [
            ('1~6세', '연 1회', '혈액검사, 심장청진, 체중, 치아'),
            ('7~10세', '연 2회', '혈액·소변·X-ray, 혈압, 관절'),
            ('11세 이상', '3~4개월마다', '종합혈액, 초음파, 신장·간 기능'),
          ]
        : [
            ('1~6세', '연 1회', '혈액검사, 소변검사, 체중, 치아'),
            ('7~10세', '연 2회', '신장·간 수치, 혈압, 갑상선(T4)'),
            ('11세 이상', '3~4개월마다', '종합혈액, 복부초음파, 신장 집중 모니터링'),
          ];

    return Table(
      columnWidths: const {
        0: IntrinsicColumnWidth(),
        1: IntrinsicColumnWidth(),
        2: FlexColumnWidth(),
      },
      border: TableBorder.all(color: AppColors.gray200, width: 1),
      children: [
        TableRow(
          decoration: const BoxDecoration(color: AppColors.gray50),
          children: ['나이', '검진 주기', '주요 항목']
              .map((h) => _cell(h, isHeader: true))
              .toList(),
        ),
        ...rows.map((r) => TableRow(
              children: [r.$1, r.$2, r.$3].map((c) => _cell(c)).toList(),
            )),
      ],
    );
  }

  Widget _cell(String text, {bool isHeader = false}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 11,
            fontWeight: isHeader ? FontWeight.w700 : FontWeight.w400,
            color: isHeader ? AppColors.gray600 : AppColors.gray700,
          ),
        ),
      );
}

class _BreedExerciseTable extends StatelessWidget {
  const _BreedExerciseTable();

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
      },
      border: TableBorder.all(color: AppColors.gray200, width: 1),
      children: [
        TableRow(
          decoration: const BoxDecoration(color: AppColors.gray50),
          children: [
            _hCell('운동량'),
            _hCell('해당 품종 예시'),
          ],
        ),
        TableRow(children: [
          _levelCell('낮음', _green100, _green600),
          _bCell('불독, 바셋하운드, 시추, 말티즈'),
        ]),
        TableRow(children: [
          _levelCell('보통', _yellow100, _yellow600),
          _bCell('푸들, 비숑, 코커스패니얼, 비글'),
        ]),
        TableRow(children: [
          _levelCell('높음', _orange100, _orange600),
          _bCell('래브라도, 골든, 허스키, 보더콜리'),
        ]),
      ],
    );
  }

  Widget _hCell(String t) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        child: Text(t,
            style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: AppColors.gray600)),
      );

  Widget _levelCell(String t, Color bg, Color fg) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
          decoration:
              BoxDecoration(color: bg, borderRadius: BorderRadius.circular(20)),
          child: Text(t,
              style: TextStyle(
                  fontSize: 10, fontWeight: FontWeight.w700, color: fg)),
        ),
      );

  Widget _bCell(String t) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        child: Text(t,
            style: const TextStyle(fontSize: 11, color: AppColors.gray700)),
      );
}

class _Disclaimer extends StatelessWidget {
  const _Disclaimer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
      decoration: BoxDecoration(
        color: AppColors.gray50,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
        border: Border.all(color: AppColors.gray200),
      ),
      child: const Text(
        '⚠️ 본 가이드는 일반적인 건강 정보 제공을 목적으로 하며, 개별 반려동물의 상태에 따라 수의사와 상담하시기 바랍니다.',
        style: TextStyle(fontSize: 11, color: AppColors.gray500, height: 1.6),
      ),
    );
  }
}
