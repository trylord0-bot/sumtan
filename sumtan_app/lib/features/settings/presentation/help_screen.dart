import 'package:flutter/material.dart';

import '../../../app/l10n/l10n_extension.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/widgets/app_page_app_bar.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamBg,
      appBar: AppPageAppBar(title: context.l10n.help),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space4,
          vertical: AppSpacing.space4,
        ),
        children: [
          _SectionHeader(
            emoji: '🐾',
            title: context.l10n.whatIsPetNote,
          ),
          _HelpCard(
            content: context.l10n.helpIntroContent,
          ),
          const SizedBox(height: AppSpacing.space5),
          _SectionHeader(
            emoji: '🏠',
            title: context.l10n.homeScreen,
          ),
          _HelpItem(
            title: context.l10n.todayRecordSummary,
            desc: context.l10n.helpHomeTodayRecordSummaryDesc,
          ),
          _HelpItem(
            title: context.l10n.weeklyStats,
            desc: context.l10n.helpHomeWeeklyStatsDesc,
          ),
          _HelpItem(
            title: context.l10n.weightChangeChart,
            desc: context.l10n.helpHomeWeightChangeChartDesc,
          ),
          _HelpItem(
            title: context.l10n.findNearbyHospitals,
            desc: context.l10n.helpHomeFindNearbyHospitalsDesc,
          ),
          _HelpItem(
            title: context.l10n.addNewRecord,
            desc: context.l10n.helpHomeAddNewRecordDesc,
          ),
          const SizedBox(height: AppSpacing.space5),
          _SectionHeader(
            emoji: '📋',
            title: context.l10n.recordCategories,
          ),
          _HelpCard(
            content: context.l10n.helpRecordCategoriesIntro,
          ),
          _CategoryItem(
            emoji: '💩',
            name: context.l10n.helpCategoryPottyName,
            desc: context.l10n.helpCategoryPottyDesc,
          ),
          _CategoryItem(
            emoji: '😊',
            name: context.l10n.helpCategoryConditionName,
            desc: context.l10n.helpCategoryConditionDesc,
          ),
          _CategoryItem(
            emoji: '💊',
            name: context.l10n.helpCategoryMedicationName,
            desc: context.l10n.helpCategoryMedicationDesc,
          ),
          _CategoryItem(
            emoji: '⚖️',
            name: context.l10n.helpCategoryWeightName,
            desc: context.l10n.helpCategoryWeightDesc,
          ),
          _CategoryItem(
            emoji: '🍚',
            name: context.l10n.helpCategoryMealName,
            desc: context.l10n.helpCategoryMealDesc,
          ),
          _CategoryItem(
            emoji: '💧',
            name: context.l10n.helpCategoryWaterName,
            desc: context.l10n.helpCategoryWaterDesc,
          ),
          _CategoryItem(
            emoji: '🏥',
            name: context.l10n.helpCategoryHospitalName,
            desc: context.l10n.helpCategoryHospitalDesc,
          ),
          _CategoryItem(
            emoji: '💉',
            name: context.l10n.helpCategoryVaccinationName,
            desc: context.l10n.helpCategoryVaccinationDesc,
          ),
          _CategoryItem(
            emoji: '✂️',
            name: context.l10n.helpCategoryGroomingName,
            desc: context.l10n.helpCategoryGroomingDesc,
          ),
          _CategoryItem(
            emoji: '🪥',
            name: context.l10n.helpCategoryDentalName,
            desc: context.l10n.helpCategoryDentalDesc,
          ),
          _CategoryItem(
            emoji: '🚶',
            name: context.l10n.helpCategoryWalkName,
            desc: context.l10n.helpCategoryWalkDesc,
          ),
          _CategoryItem(
            emoji: '📝',
            name: context.l10n.helpCategoryMemoName,
            desc: context.l10n.helpCategoryMemoDesc,
          ),
          const SizedBox(height: AppSpacing.space5),
          _SectionHeader(
            emoji: '📅',
            title: context.l10n.journalScreen,
          ),
          _HelpItem(
            title: context.l10n.viewRecordList,
            desc: context.l10n.helpJournalViewRecordListDesc,
          ),
          _HelpItem(
            title: context.l10n.editDeleteRecord,
            desc: context.l10n.helpJournalEditDeleteRecordDesc,
          ),
          _HelpItem(
            title: context.l10n.attachMedia,
            desc: context.l10n.helpJournalAttachMediaDesc,
          ),
          const SizedBox(height: AppSpacing.space5),
          _SectionHeader(
            emoji: '🔔',
            title: context.l10n.alarmScreen,
          ),
          _HelpItem(
            title: context.l10n.addAlarm,
            desc: context.l10n.helpAlarmAddDesc,
          ),
          _HelpItem(
            title: context.l10n.repeatAlarm,
            desc: context.l10n.helpAlarmRepeatDesc,
          ),
          _HelpItem(
            title: context.l10n.advanceAlarmHint,
            desc: context.l10n.helpAlarmAdvanceDesc,
          ),
          _HelpItem(
            title: context.l10n.completeAlarm,
            desc: context.l10n.helpAlarmCompleteDesc,
          ),
          _HelpItem(
            title: context.l10n.deleteAlarm,
            desc: context.l10n.helpAlarmDeleteDesc,
          ),
          const SizedBox(height: AppSpacing.space5),
          _SectionHeader(
            emoji: '🐶',
            title: context.l10n.petManagement,
          ),
          _HelpItem(
            title: context.l10n.registerPet,
            desc: context.l10n.helpPetRegisterDesc,
          ),
          _HelpItem(
            title: context.l10n.editProfile,
            desc: context.l10n.helpPetEditProfileDesc,
          ),
          _HelpItem(
            title: context.l10n.manageMultiplePets,
            desc: context.l10n.helpPetManageMultipleDesc,
          ),
          const SizedBox(height: AppSpacing.space5),
          _SectionHeader(
            emoji: '📖',
            title: context.l10n.healthGuide,
          ),
          _HelpItem(
            title: context.l10n.dogHealthGuide,
            desc: context.l10n.helpDogHealthGuideDesc,
          ),
          _HelpItem(
            title: context.l10n.catHealthGuide,
            desc: context.l10n.helpCatHealthGuideDesc,
          ),
          const SizedBox(height: AppSpacing.space5),
          _SectionHeader(
            emoji: '⚙️',
            title: context.l10n.settingsLabel,
          ),
          _HelpItem(
            title: context.l10n.notificationSettings,
            desc: context.l10n.helpSettingsNotificationDesc,
          ),
          _HelpItem(
            title: context.l10n.exportData,
            desc: context.l10n.helpSettingsExportDesc,
          ),
          _HelpItem(
            title: context.l10n.importData,
            desc: context.l10n.helpSettingsImportDesc,
          ),
          _HelpItem(
            title: context.l10n.sendFeedback,
            desc: context.l10n.helpSettingsFeedbackDesc,
          ),
          const SizedBox(height: AppSpacing.space5),
          _SectionHeader(
            emoji: '❓',
            title: context.l10n.faq,
          ),
          _FaqItem(
            q: context.l10n.helpFaqDeletePetQ,
            a: context.l10n.helpFaqDeletePetA,
          ),
          _FaqItem(
            q: context.l10n.helpFaqMultipleMediaQ,
            a: context.l10n.helpFaqMultipleMediaA,
          ),
          _FaqItem(
            q: context.l10n.helpFaqNoNotificationQ,
            a: context.l10n.helpFaqNoNotificationA,
          ),
          _FaqItem(
            q: context.l10n.helpFaqMoveDataQ,
            a: context.l10n.helpFaqMoveDataA,
          ),
          _FaqItem(
            q: context.l10n.helpFaqMultiplePetsQ,
            a: context.l10n.helpFaqMultiplePetsA,
          ),
          const SizedBox(height: AppSpacing.space8),
          const _ContactCard(),
          const SizedBox(height: AppSpacing.space8),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String emoji;
  final String title;

  const _SectionHeader({
    required this.emoji,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: Row(
        children: [
          Text(
            emoji,
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(width: AppSpacing.space2),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.gray900,
            ),
          ),
        ],
      ),
    );
  }
}

class _HelpCard extends StatelessWidget {
  final String content;

  const _HelpCard({
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.space4),
      decoration: BoxDecoration(
        color: AppColors.primary50,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
        border: Border.all(color: AppColors.primary200),
      ),
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.gray700,
          height: 1.6,
        ),
      ),
    );
  }
}

class _HelpItem extends StatelessWidget {
  final String title;
  final String desc;

  const _HelpItem({
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.space3),
      padding: const EdgeInsets.all(AppSpacing.space4),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.gray900,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            desc,
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.gray600,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final String emoji;
  final String name;
  final String desc;

  const _CategoryItem({
    required this.emoji,
    required this.name,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.space2),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space4,
        vertical: AppSpacing.space3,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            emoji,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(width: AppSpacing.space3),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gray900,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  desc,
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.gray600,
                    height: 1.4,
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

class _FaqItem extends StatefulWidget {
  final String q;
  final String a;

  const _FaqItem({
    required this.q,
    required this.a,
  });

  @override
  State<_FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<_FaqItem> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.space2),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => setState(() => _expanded = !_expanded),
            borderRadius: BorderRadius.circular(AppRadius.radiusMd),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space4,
                vertical: AppSpacing.space3,
              ),
              child: Row(
                children: [
                  const Text(
                    'Q',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary600,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.space2),
                  Expanded(
                    child: Text(
                      widget.q,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.gray900,
                      ),
                    ),
                  ),
                  Icon(
                    _expanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: AppColors.gray400,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          if (_expanded)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.space4,
                0,
                AppSpacing.space4,
                AppSpacing.space3,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.gray100),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      'A',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary400,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.space2),
                  Expanded(
                    child: Text(
                      widget.a,
                      style: const TextStyle(
                        fontSize: 13,
                        color: AppColors.gray600,
                        height: 1.5,
                      ),
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

class _ContactCard extends StatelessWidget {
  const _ContactCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.space4),
      decoration: BoxDecoration(
        color: AppColors.primary50,
        borderRadius: BorderRadius.circular(AppRadius.radiusLg),
        border: Border.all(color: AppColors.primary200),
      ),
      child: Column(
        children: [
          Text(
            context.l10n.moreQuestions,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.gray900,
            ),
          ),
          const SizedBox(height: AppSpacing.space2),
          Text(
            context.l10n.contactViaSendFeedback,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.gray600,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
