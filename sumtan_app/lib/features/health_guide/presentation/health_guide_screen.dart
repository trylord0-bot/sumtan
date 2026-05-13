import 'package:flutter/material.dart';
import '../../../app/l10n/l10n_extension.dart';
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

List<InlineSpan> _richSpans(String text) {
  final spans = <InlineSpan>[];
  final parts = text.split('**');

  for (var i = 0; i < parts.length; i++) {
    if (parts[i].isEmpty) continue;
    spans.add(
      TextSpan(
        text: parts[i],
        style: i.isOdd ? const TextStyle(fontWeight: FontWeight.w700) : null,
      ),
    );
  }

  return spans;
}

Widget _item(Color dot, String text) {
  return Padding(
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
                fontSize: 12,
                color: AppColors.gray700,
                height: 1.6,
              ),
              children: _richSpans(text),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _items(Color dot, List<String> texts) {
  return Column(
    children: texts.map((text) => _item(dot, text)).toList(),
  );
}

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
        title: context.l10n.healthGuide,
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
                tabs: [
                  Tab(text: '🐶 ${context.l10n.dog}'),
                  Tab(text: '🐱 ${context.l10n.cat}'),
                ],
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
    final l = context.l10n;

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
      children: [
        _HeroBanner(
          emoji: '🐶',
          title: l.hgDogHeroTitle,
          subtitle: l.hgHeroSubtitle,
          gradientColors: [AppColors.primary50, const Color(0xFFD1FAE5)],
          titleColor: AppColors.primary700,
        ),
        const SizedBox(height: 18),
        _SectionHeader(emoji: '💉', title: l.hgVaccination, iconBg: _blue50),
        const SizedBox(height: 10),
        _GuideCard(
          header: _CardHeader(
            emoji: '🛡️',
            title: l.hgCoreVaccines,
            badge: _CBadge(l.hgRequired, _blue50, _blue600),
          ),
          body: _items(_blue600, [
            l.hgDogCoreDhppl,
            l.hgDogCoreRabies,
            l.hgDogCoreCorona,
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '💊',
            title: l.hgNonCoreVaccines,
            badge: _CBadge(l.hgRecommended, _amber50, _amber600),
          ),
          body: _items(_amber500, [
            l.hgDogNonCoreKennel,
            l.hgDogNonCoreFlu,
          ]),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🦟',
          title: l.hgParasitePrevention,
          iconBg: _red50,
        ),
        const SizedBox(height: 10),
        _GuideCard(
          header: _CardHeader(
            emoji: '❤️',
            title: l.hgHeartworm,
            badge: _CBadge(l.hgMonthly, _red50, _red600),
          ),
          body: _items(_red500, [
            l.hgDogHeartworm1,
            l.hgDogHeartworm2,
            l.hgDogHeartworm3,
            l.hgDogHeartworm4,
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '🐛',
            title: l.hgExternalParasites,
            badge: _CBadge(l.hgMonthly, _orange50, _orange500),
          ),
          body: _items(_orange500, [
            l.hgDogExternalParasites1,
            l.hgDogExternalParasites2,
            l.hgDogExternalParasites3,
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '🔬',
            title: l.hgInternalParasites,
            badge: _CBadge(l.hgThreeToSixMonths, _purple50, _purple600),
          ),
          body: _items(_purple600, [
            l.hgDogInternalParasites1,
            l.hgDogInternalParasites2,
          ]),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🏥',
          title: l.hgRegularCheckup,
          iconBg: _teal50,
        ),
        const SizedBox(height: 10),
        const _GuideCard(body: _CheckupTable(isDog: true)),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🦷',
          title: l.hgDentalCare,
          iconBg: _amber50,
        ),
        const SizedBox(height: 10),
        _GuideCard(
          body: _items(_amber500, [
            l.hgDental1,
            l.hgDental2,
            l.hgDental3,
            l.hgDental4,
          ]),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🚫',
          title: l.hgForbiddenFoods,
          iconBg: _red50,
        ),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _red50,
          border: _red100,
          textColor: _red600,
          icon: '⚠️',
          text: l.hgDogForbiddenFoodAlert,
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: _items(_red500, [
            l.hgDogForbiddenGrape,
            l.hgDogForbiddenChocolate,
            l.hgDogForbiddenOnion,
            l.hgDogForbiddenXylitol,
            l.hgDogForbiddenMacadamia,
            l.hgDogForbiddenDoughAlcohol,
            l.hgDogForbiddenAvocado,
          ]),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🚨',
          title: l.hgEmergencySymptoms,
          iconBg: _red50,
        ),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _red50,
          border: _red100,
          textColor: _red600,
          icon: '🚑',
          text: l.hgEmergencyAlert,
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: _items(_red500, [
            l.hgDogEmergency1,
            l.hgDogEmergency2,
            l.hgDogEmergency3,
            l.hgDogEmergency4,
            l.hgDogEmergency5,
            l.hgDogEmergency6,
            l.hgDogEmergency7,
          ]),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🏃',
          title: l.hgExerciseMentalHealth,
          iconBg: _green50,
        ),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _green50,
          border: _green100,
          textColor: _green600,
          icon: '💡',
          text: l.hgDogExerciseAlert,
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '🦮',
            title: l.hgWalk,
            badge: _CBadge(l.hgDaily, _green50, _green600),
          ),
          body: _items(_green600, [
            l.hgDogWalk1,
            l.hgDogWalk2,
            l.hgDogWalk3,
            l.hgDogWalk4,
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(emoji: '📊', title: l.hgBreedExerciseAmount),
          body: const _BreedExerciseTable(),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '🎾',
            title: l.hgPlayBrainStimulation,
            badge: _CBadge(l.hgDaily, _amber50, _amber600),
          ),
          body: _items(_amber500, [
            l.hgDogPlay1,
            l.hgDogPlay2,
            l.hgDogPlay3,
            l.hgDogPlay4,
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '😰',
            title: l.hgStressSignals,
            badge: _CBadge(l.hgCaution, _red50, _red600),
          ),
          body: _items(_red500, [
            l.hgDogStress1,
            l.hgDogStress2,
            l.hgDogStress3,
            l.hgDogStress4,
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(emoji: '🐾', title: l.hgSocialization),
          body: _items(_teal600, [
            l.hgDogSocial1,
            l.hgDogSocial2,
            l.hgDogSocial3,
            l.hgDogSocial4,
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
    final l = context.l10n;

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
      children: [
        _HeroBanner(
          emoji: '🐱',
          title: l.hgCatHeroTitle,
          subtitle: l.hgHeroSubtitle,
          gradientColors: [_blue50, _blue100],
          titleColor: _blue700,
        ),
        const SizedBox(height: 18),
        _SectionHeader(emoji: '💉', title: l.hgVaccination, iconBg: _blue50),
        const SizedBox(height: 10),
        _GuideCard(
          header: _CardHeader(
            emoji: '🛡️',
            title: l.hgCoreVaccines,
            badge: _CBadge(l.hgRequired, _blue50, _blue600),
          ),
          body: _items(_blue600, [
            l.hgCatCoreFvrcp,
            l.hgCatCoreRabies,
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '💊',
            title: l.hgNonCoreVaccines,
            badge: _CBadge(l.hgRecommended, _amber50, _amber600),
          ),
          body: _items(_amber500, [
            l.hgCatNonCoreFelv,
            l.hgCatNonCoreChlamydia,
            l.hgCatNonCoreFiv,
          ]),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🦟',
          title: l.hgParasitePrevention,
          iconBg: _red50,
        ),
        const SizedBox(height: 10),
        _GuideCard(
          header: _CardHeader(
            emoji: '🐛',
            title: l.hgExternalParasites,
            badge: _CBadge(l.hgMonthly, _orange50, _orange500),
          ),
          body: _items(_orange500, [
            l.hgCatExternalParasites1,
            l.hgCatExternalParasites2,
            l.hgCatExternalParasites3,
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(
            emoji: '🔬',
            title: l.hgCatInternalHeartworm,
            badge: _CBadge(l.hgRegular, _purple50, _purple600),
          ),
          body: Column(
            children: [
              _item(_purple600, l.hgCatInternalParasites1),
              _item(_purple600, l.hgCatInternalParasites2),
              _item(_red500, l.hgCatHeartworm1),
            ],
          ),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🔬',
          title: l.hgCatMajorDiseases,
          iconBg: _purple50,
        ),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _purple50,
          border: _purple100,
          textColor: _purple600,
          icon: '💡',
          text: l.hgCatDiseaseAlert,
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: _items(_purple600, [
            l.hgCatDiseaseFlutd,
            l.hgCatDiseaseCkd,
            l.hgCatDiseaseDiabetes,
            l.hgCatDiseaseHyperthyroidism,
            l.hgCatDiseaseStomatitis,
            l.hgCatDiseaseFhv,
          ]),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🏥',
          title: l.hgRegularCheckup,
          iconBg: _teal50,
        ),
        const SizedBox(height: 10),
        const _GuideCard(body: _CheckupTable(isDog: false)),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '💧',
          title: l.hgHydrationDiet,
          iconBg: _blue50,
        ),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _blue50,
          border: _blue100,
          textColor: _blue600,
          icon: '💡',
          text: l.hgCatHydrationAlert,
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: _items(_blue600, [
            l.hgCatHydration1,
            l.hgCatHydration2,
            l.hgCatHydration3,
            l.hgCatHydration4,
          ]),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🚫',
          title: l.hgForbiddenFoods,
          iconBg: _red50,
        ),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _red50,
          border: _red100,
          textColor: _red600,
          icon: '⚠️',
          text: l.hgCatForbiddenFoodAlert,
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: _items(_red500, [
            l.hgCatForbiddenOnion,
            l.hgCatForbiddenGrape,
            l.hgCatForbiddenChocolate,
            l.hgCatForbiddenRawFish,
            l.hgCatForbiddenMilk,
            l.hgCatForbiddenXylitolAlcohol,
            l.hgCatForbiddenAvocado,
            l.hgCatForbiddenRawEggWhite,
          ]),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🚨',
          title: l.hgEmergencySymptoms,
          iconBg: _red50,
        ),
        const SizedBox(height: 10),
        _AlertBox(
          bg: _red50,
          border: _red100,
          textColor: _red600,
          icon: '🚑',
          text: l.hgEmergencyAlert,
        ),
        const SizedBox(height: 8),
        _GuideCard(
          body: _items(_red500, [
            l.hgCatEmergency1,
            l.hgCatEmergency2,
            l.hgCatEmergency3,
            l.hgCatEmergency4,
            l.hgCatEmergency5,
            l.hgCatEmergency6,
            l.hgCatEmergency7,
            l.hgCatEmergency8,
          ]),
        ),
        const SizedBox(height: 16),
        _SectionHeader(
          emoji: '🏠',
          title: l.hgEnvironmentMentalHealth,
          iconBg: _teal50,
        ),
        const SizedBox(height: 10),
        _GuideCard(
          header: _CardHeader(emoji: '🏡', title: l.hgIndoorEnvironment),
          body: _items(_teal600, [
            l.hgCatEnvironment1,
            l.hgCatEnvironment2,
            l.hgCatEnvironment3,
            l.hgCatEnvironment4,
          ]),
        ),
        const SizedBox(height: 8),
        _GuideCard(
          header: _CardHeader(emoji: '😌', title: l.hgStressManagement),
          body: _items(_teal600, [
            l.hgCatStress1,
            l.hgCatStress2,
            l.hgCatStress3,
            l.hgCatStress4,
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
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    color: titleColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: titleColor.withValues(alpha: 0.78),
                    height: 1.55,
                  ),
                ),
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
            color: iconBg,
            borderRadius: BorderRadius.circular(8),
          ),
          child:
              Center(child: Text(emoji, style: const TextStyle(fontSize: 16))),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: AppColors.gray900,
          ),
        ),
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
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: AppColors.gray900,
              ),
            ),
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
      child: Text(
        text,
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: fg),
      ),
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
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: textColor,
                height: 1.6,
              ),
            ),
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
    final l = context.l10n;
    final rows = isDog
        ? [
            (l.hgAge1to6, l.hgYearlyOnce, l.hgDogCheckupItems1),
            (l.hgAge7to10, l.hgYearlyTwice, l.hgDogCheckupItems2),
            (l.hgAge11Plus, l.hgEvery3to4Months, l.hgDogCheckupItems3),
          ]
        : [
            (l.hgAge1to6, l.hgYearlyOnce, l.hgCatCheckupItems1),
            (l.hgAge7to10, l.hgYearlyTwice, l.hgCatCheckupItems2),
            (l.hgAge11Plus, l.hgEvery3to4Months, l.hgCatCheckupItems3),
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
          children: [l.hgAge, l.hgCheckupCycle, l.hgMainItems]
              .map((h) => _cell(h, isHeader: true))
              .toList(),
        ),
        ...rows.map(
          (r) => TableRow(
            children: [r.$1, r.$2, r.$3].map((c) => _cell(c)).toList(),
          ),
        ),
      ],
    );
  }

  Widget _cell(String text, {bool isHeader = false}) {
    return Padding(
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
}

class _BreedExerciseTable extends StatelessWidget {
  const _BreedExerciseTable();

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

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
            _hCell(l.hgExerciseAmount),
            _hCell(l.hgBreedExamples),
          ],
        ),
        TableRow(children: [
          _levelCell(l.hgLow, _green100, _green600),
          _bCell(l.hgBreedLowExamples),
        ]),
        TableRow(children: [
          _levelCell(l.hgNormal, _yellow100, _yellow600),
          _bCell(l.hgBreedNormalExamples),
        ]),
        TableRow(children: [
          _levelCell(l.hgHigh, _orange100, _orange600),
          _bCell(l.hgBreedHighExamples),
        ]),
      ],
    );
  }

  Widget _hCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          color: AppColors.gray600,
        ),
      ),
    );
  }

  Widget _levelCell(String text, Color bg, Color fg) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
        decoration:
            BoxDecoration(color: bg, borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style:
              TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: fg),
        ),
      ),
    );
  }

  Widget _bCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      child: Text(
        text,
        style: const TextStyle(fontSize: 11, color: AppColors.gray700),
      ),
    );
  }
}

class _Disclaimer extends StatelessWidget {
  const _Disclaimer();

  @override
  Widget build(BuildContext context) {
    return _AlertBox(
      bg: _amber50,
      border: const Color(0xFFFDE68A),
      textColor: _amber600,
      icon: 'ℹ️',
      text: context.l10n.hgDisclaimer,
    );
  }
}
