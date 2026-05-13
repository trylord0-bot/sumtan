import 'package:flutter/material.dart';

import '../../../app/l10n/l10n_extension.dart';
import '../../../app/l10n/static_text.dart';
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
              title: '수집하는 개인정보 항목',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(
                    '반려숨탄은 회원가입 없이 사용할 수 있으며, 별도의 개인 식별 정보를 수집하지 않습니다. 다만, 앱 기능 제공을 위해 아래와 같은 정보가 기기 내에 저장될 수 있습니다.',
                  ),
                  SizedBox(height: AppSpacing.space3),
                  _SubTitle('기기 내 로컬 저장 정보'),
                  _BulletItem(
                    '반려동물 정보: 이름, 종, 품종, 생년월일, 성별, 체중, 중성화 여부, 마이크로칩 번호, 동물등록번호',
                  ),
                  _BulletItem(
                    '건강 기록: 배변, 식사, 음수, 체중, 투약, 예방접종, 병원, 미용, 양치, 산책, 컨디션, 메모 등 사용자가 직접 입력한 기록',
                  ),
                  _BulletItem('첨부 미디어: 사용자가 직접 촬영하거나 선택한 사진 및 동영상'),
                  _BulletItem('알림 설정: 알림 유형, 예정 일시, 반복 규칙'),
                  SizedBox(height: AppSpacing.space3),
                  _SubTitle('인앱 결제 관련'),
                  _BulletItem(
                    '결제 처리는 Apple App Store 또는 Google Play Store를 통해 이루어지며, 결제 정보는 앱이 직접 수집하거나 저장하지 않습니다.',
                  ),
                  _BulletItem(
                    '구매 영수증 검증에 필요한 최소한의 정보만 각 플랫폼 정책에 따라 처리됩니다.',
                  ),
                ],
              ),
            ),
            _Section(
              number: '2',
              title: '개인정보 수집 및 이용 목적',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText('수집된 정보는 아래 목적으로만 사용됩니다.'),
                  SizedBox(height: AppSpacing.space2),
                  _BulletItem('반려동물 건강 기록의 저장 및 조회'),
                  _BulletItem('홈 화면 통계(주간 배변·식사·음수 현황, 체중 변화 그래프 등) 제공'),
                  _BulletItem('예방접종, 투약, 병원 방문 등 건강 관련 알림 발송'),
                  _BulletItem('데이터 백업 및 복원 기능 제공'),
                  _BulletItem('유료 기능 이용 자격 확인'),
                ],
              ),
            ),
            _Section(
              number: '3',
              title: '개인정보 보유 및 파기',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(
                    '반려숨탄의 모든 데이터는 사용자의 기기 내 로컬 데이터베이스(SQLite)에만 저장되며, 외부 서버로 전송되지 않습니다.',
                  ),
                  SizedBox(height: AppSpacing.space3),
                  _SubTitle('데이터 파기 방법'),
                  _BulletItem('앱 내 설정 > 데이터 관리에서 반려동물 정보 및 기록을 직접 삭제할 수 있습니다.'),
                  _BulletItem('앱을 삭제하면 기기에 저장된 모든 데이터가 함께 삭제됩니다.'),
                  _BulletItem(
                    '단, 앱 삭제 전 백업(내보내기)을 진행하지 않은 경우 데이터를 복구할 수 없으니 주의하시기 바랍니다.',
                  ),
                ],
              ),
            ),
            _Section(
              number: '4',
              title: '개인정보의 제3자 제공',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(
                    '반려숨탄은 사용자의 개인정보를 외부에 제공하지 않습니다. 다만, 아래의 경우는 예외로 합니다.',
                  ),
                  SizedBox(height: AppSpacing.space2),
                  _BulletItem('사용자가 직접 데이터 내보내기(백업 파일 공유) 기능을 사용하는 경우'),
                  _BulletItem('법령에 의거하거나 수사기관의 적법한 요청이 있는 경우'),
                ],
              ),
            ),
            _Section(
              number: '5',
              title: '접근 권한 안내',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText(
                    '앱 기능 제공을 위해 아래 권한을 요청할 수 있습니다. 권한을 허용하지 않아도 해당 기능을 제외한 나머지 기능은 정상 이용 가능합니다.',
                  ),
                  SizedBox(height: AppSpacing.space3),
                  _PermissionItem(
                    icon: '📷',
                    name: '카메라',
                    desc: '건강 기록에 사진·동영상을 직접 촬영하여 첨부할 때 사용됩니다.',
                  ),
                  _PermissionItem(
                    icon: '🖼️',
                    name: '사진 및 미디어 접근',
                    desc: '갤러리에서 사진·동영상을 선택하여 기록에 첨부할 때 사용됩니다.',
                  ),
                  _PermissionItem(
                    icon: '🔔',
                    name: '알림',
                    desc: '예방접종, 투약, 병원 방문 등 건강 관련 알림을 발송할 때 사용됩니다.',
                  ),
                  _PermissionItem(
                    icon: '📁',
                    name: '파일 접근 (Android)',
                    desc: '데이터 백업 파일을 저장하거나 불러올 때 사용됩니다.',
                  ),
                ],
              ),
            ),
            _Section(
              number: '6',
              title: '데이터 백업 및 복원',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText('반려숨탄은 데이터 내보내기(백업) 및 가져오기(복원) 기능을 제공합니다.'),
                  SizedBox(height: AppSpacing.space2),
                  _BulletItem('내보내기: 앱 내 모든 데이터를 파일(.zip)로 저장하거나 공유할 수 있습니다.'),
                  _BulletItem('가져오기: 이전에 내보낸 백업 파일을 불러와 데이터를 복원할 수 있습니다.'),
                  _BulletItem(
                    '백업 파일은 사용자가 직접 관리하며, 파일을 타인과 공유하지 않도록 주의하시기 바랍니다.',
                  ),
                ],
              ),
            ),
            _Section(
              number: '7',
              title: '아동의 개인정보 보호',
              child: _BodyText(
                '반려숨탄은 만 14세 미만 아동으로부터 별도의 개인정보를 수집하지 않습니다. 앱의 모든 데이터는 기기 내에만 저장되며, 외부 서버 전송이 없으므로 아동도 안전하게 이용할 수 있습니다.',
              ),
            ),
            _Section(
              number: '8',
              title: '개인정보 처리방침 변경',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText('본 개인정보 처리방침은 법령 또는 서비스 변경에 따라 업데이트될 수 있습니다.'),
                  SizedBox(height: AppSpacing.space2),
                  _BulletItem('변경 시 앱 업데이트 노트 또는 앱 내 공지를 통해 안내합니다.'),
                  _BulletItem('변경된 방침은 공지 후 7일이 경과한 날부터 효력이 발생합니다.'),
                ],
              ),
            ),
            _Section(
              number: '9',
              title: '문의',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BodyText('개인정보 처리방침에 관한 문의사항은 아래 방법으로 연락해 주세요.'),
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
            localizedStaticText(
              context,
              '반려숨탄은 회원가입 없이 사용하는 앱으로, 모든 데이터는 사용자의 기기 내에만 저장됩니다. 외부 서버로 개인정보를 전송하지 않으며, 사용자의 소중한 반려동물 정보를 안전하게 보호합니다.',
            ),
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
                localizedStaticText(context, title),
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
      localizedStaticText(context, text),
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
        localizedStaticText(context, text),
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
              localizedStaticText(context, text),
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
                  localizedStaticText(context, name),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gray900,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  localizedStaticText(context, desc),
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
