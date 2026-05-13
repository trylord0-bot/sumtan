import 'package:flutter/material.dart';

import '../../../app/l10n/l10n_extension.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/widgets/app_page_app_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamBg,
      appBar: AppPageAppBar(title: context.l10n.privacyPolicy),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSpacing.space4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _IntroCard(),
            SizedBox(height: AppSpacing.space4),
            _Section(
              number: '1',
              title: context.l10n.privacySection1Title,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(context.l10n.privacySection1Body),
                  SizedBox(height: AppSpacing.space3),
                  _SubTitle(context.l10n.privacyLocalStorageInfo),
                  _BulletItem(context.l10n.privacyPetInfo),
                  _BulletItem(context.l10n.privacyHealthRecords),
                  _BulletItem(context.l10n.privacyAttachedMedia),
                  _BulletItem(context.l10n.privacyNotificationSettings),
                  SizedBox(height: AppSpacing.space3),
                  _SubTitle(context.l10n.privacyInAppPurchaseTitle),
                  _BulletItem(context.l10n.privacyPaymentProcessing),
                  _BulletItem(context.l10n.privacyReceiptVerification),
                ],
              ),
            ),
            _Section(
              number: '2',
              title: context.l10n.privacySection2Title,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(context.l10n.privacyCollectedInfo),
                  SizedBox(height: AppSpacing.space2),
                  _BulletItem(context.l10n.privacyPurposeRecords),
                  _BulletItem(context.l10n.privacyPurposeStats),
                  _BulletItem(context.l10n.privacyPurposeReminders),
                  _BulletItem(context.l10n.privacyPurposeBackupRestore),
                  _BulletItem(context.l10n.privacyPurposePaidEligibility),
                ],
              ),
            ),
            _Section(
              number: '3',
              title: context.l10n.privacySection3Title,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(context.l10n.privacyRetentionBody),
                  SizedBox(height: AppSpacing.space3),
                  _SubTitle(context.l10n.privacyDataDeletionMethod),
                  _BulletItem(context.l10n.privacyDeleteInApp),
                  _BulletItem(context.l10n.privacyDeleteUninstall),
                  _BulletItem(context.l10n.privacyDeleteBackupWarning),
                ],
              ),
            ),
            _Section(
              number: '4',
              title: context.l10n.privacySection4Title,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(context.l10n.privacyThirdPartyBody),
                  SizedBox(height: AppSpacing.space2),
                  _BulletItem(context.l10n.privacyThirdPartyUserExport),
                  _BulletItem(context.l10n.privacyThirdPartyLegalRequest),
                ],
              ),
            ),
            _Section(
              number: '5',
              title: context.l10n.privacySection5Title,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(context.l10n.privacyPermissionsBody),
                  SizedBox(height: AppSpacing.space3),
                  _PermissionItem(
                    icon: '📷',
                    name: context.l10n.privacyPermissionCameraName,
                    desc: context.l10n.privacyPermissionCameraDesc,
                  ),
                  _PermissionItem(
                    icon: '🖼️',
                    name: context.l10n.privacyPermissionMediaName,
                    desc: context.l10n.privacyPermissionMediaDesc,
                  ),
                  _PermissionItem(
                    icon: '🔔',
                    name: context.l10n.privacyPermissionNotificationName,
                    desc: context.l10n.privacyPermissionNotificationDesc,
                  ),
                  _PermissionItem(
                    icon: '📁',
                    name: context.l10n.privacyPermissionFileName,
                    desc: context.l10n.privacyPermissionFileDesc,
                  ),
                ],
              ),
            ),
            _Section(
              number: '6',
              title: context.l10n.privacySection6Title,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(context.l10n.privacyDataFeatures),
                  SizedBox(height: AppSpacing.space2),
                  _BulletItem(context.l10n.privacyBackupExport),
                  _BulletItem(context.l10n.privacyBackupImport),
                  _BulletItem(context.l10n.privacyBackupWarning),
                ],
              ),
            ),
            _Section(
              number: '7',
              title: context.l10n.privacySection7Title,
              child: _BodyText(context.l10n.privacyChildrenBody),
            ),
            _Section(
              number: '8',
              title: context.l10n.privacySection8Title,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(context.l10n.privacyPolicyMayUpdate),
                  SizedBox(height: AppSpacing.space2),
                  _BulletItem(context.l10n.privacyPolicyChangeNotice),
                  _BulletItem(context.l10n.privacyPolicyChangeEffective),
                ],
              ),
            ),
            _Section(
              number: '9',
              title: context.l10n.privacySection9Title,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(context.l10n.privacyPolicyContact),
                  SizedBox(height: AppSpacing.space3),
                  _ContactCard(),
                ],
              ),
            ),
            _EffectiveDateCard(),
            SizedBox(height: AppSpacing.space8),
          ],
        ),
      ),
    );
  }
}

class _IntroCard extends StatelessWidget {
  const _IntroCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.space4),
      decoration: BoxDecoration(
        color: AppColors.primary50,
        borderRadius: BorderRadius.circular(AppRadius.radiusLg),
        border: Border.all(color: AppColors.primary200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('🔒', style: TextStyle(fontSize: 20)),
              const SizedBox(width: AppSpacing.space2),
              Text(
                context.l10n.privacyPolicy,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary900,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.space2),
          Text(
            context.l10n.privacyIntroBody,
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.primary800,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String number;
  final String title;
  final Widget child;

  const _Section({
    required this.number,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                color: AppColors.primary400,
                borderRadius: BorderRadius.circular(AppRadius.radiusFull),
              ),
              alignment: Alignment.center,
              child: Text(
                number,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.space2),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.gray900,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.space3),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppSpacing.space4),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(AppRadius.radiusMd),
            border: Border.all(color: AppColors.gray200),
          ),
          child: child,
        ),
        const SizedBox(height: AppSpacing.space4),
      ],
    );
  }
}

class _BodyText extends StatelessWidget {
  final String text;

  const _BodyText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: AppColors.gray700,
        height: 1.7,
      ),
    );
  }
}

class _SubTitle extends StatelessWidget {
  final String text;

  const _SubTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space2),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.gray900,
        ),
      ),
    );
  }
}

class _BulletItem extends StatelessWidget {
  final String text;

  const _BulletItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6),
            child: CircleAvatar(
              radius: 3,
              backgroundColor: AppColors.primary400,
            ),
          ),
          const SizedBox(width: AppSpacing.space2),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.gray700,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PermissionItem extends StatelessWidget {
  final String icon;
  final String name;
  final String desc;

  const _PermissionItem({
    required this.icon,
    required this.name,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(icon, style: const TextStyle(fontSize: 20)),
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
                    height: 1.5,
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
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.space4),
      decoration: BoxDecoration(
        color: AppColors.primary50,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
        border: Border.all(color: AppColors.primary200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('📬', style: TextStyle(fontSize: 18)),
              const SizedBox(width: AppSpacing.space2),
              Text(
                context.l10n.contactDeveloper,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary900,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.space2),
          Text(
            context.l10n.contactViaSendFeedbackLong,
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.primary800,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class _EffectiveDateCard extends StatelessWidget {
  const _EffectiveDateCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.space4),
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
      ),
      child: Text(
        context.l10n.privacyPolicyEffectiveDate,
        style: const TextStyle(
          fontSize: 13,
          color: AppColors.gray500,
          height: 1.6,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
