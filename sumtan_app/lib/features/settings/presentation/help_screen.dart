import 'package:flutter/material.dart';

import '../../../app/localization/app_localizations.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/widgets/app_page_app_bar.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamBg,
      appBar: const AppPageAppBar(title: '도움말'),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space4,
          vertical: AppSpacing.space4,
        ),
        children: const [
          _SectionHeader(emoji: '🐾', title: '반려숨탄이란?'),
          _HelpCard(
            content: '반려숨탄은 반려동물의 건강과 일상을 한 곳에서 기록하고 관리할 수 있는 앱이에요.\n'
                '식사, 음수, 배변, 체중, 투약, 병원 방문 등 다양한 건강 기록을 손쉽게 남기고, '
                '알림 기능으로 중요한 일정을 놓치지 않을 수 있어요.',
          ),
          SizedBox(height: AppSpacing.space5),
          _SectionHeader(emoji: '🏠', title: '홈 화면'),
          _HelpItem(
            title: '오늘의 기록 요약',
            desc:
                '오늘 등록된 모든 기록을 한눈에 확인할 수 있어요. 기록 항목을 탭하면 상세 내용을 보거나 수정할 수 있어요.',
          ),
          _HelpItem(
            title: '주간 통계',
            desc:
                '이번 주 배변 횟수, 식사량, 음수량을 그래프로 확인할 수 있어요. 반려동물의 생활 패턴을 파악하는 데 도움이 돼요.',
          ),
          _HelpItem(
            title: '체중 변화 그래프',
            desc: '최근 체중 기록을 그래프로 보여줘요. 체중 변화 추이를 쉽게 파악할 수 있어요.',
          ),
          _HelpItem(
            title: '주변 병원 찾기',
            desc: '버튼을 탭하면 네이버 지도에서 주변 동물병원을 검색할 수 있어요.',
          ),
          _HelpItem(
            title: '새 기록 추가 (+)',
            desc: '화면 하단의 + 버튼을 탭하면 기록 카테고리를 선택해 새 기록을 추가할 수 있어요.',
          ),
          SizedBox(height: AppSpacing.space5),
          _SectionHeader(emoji: '📋', title: '기록 카테고리'),
          _HelpCard(content: '총 12가지 카테고리로 반려동물의 일상을 기록할 수 있어요.'),
          _CategoryItem(
            emoji: '💩',
            name: '배변',
            desc: '배변 여부와 상태를 기록해요. 사진도 첨부할 수 있어요.',
          ),
          _CategoryItem(
            emoji: '😊',
            name: '컨디션',
            desc: '반려동물의 전반적인 컨디션 상태를 기록해요.',
          ),
          _CategoryItem(
            emoji: '💊',
            name: '투약',
            desc: '약 이름, 용량, 투약 시간을 기록해요.',
          ),
          _CategoryItem(
            emoji: '⚖️',
            name: '체중',
            desc: '체중(kg)을 기록해요. 홈 화면에서 변화 추이를 확인할 수 있어요.',
          ),
          _CategoryItem(
            emoji: '🍚',
            name: '식사',
            desc: '식사량과 사료 종류를 기록해요. 사진·영상도 첨부할 수 있어요.',
          ),
          _CategoryItem(
            emoji: '💧',
            name: '음수',
            desc: '음수량(ml)을 기록해요. 사진·영상도 첨부할 수 있어요.',
          ),
          _CategoryItem(
            emoji: '🏥',
            name: '병원',
            desc: '병원명과 진료 내용을 기록해요. 사진·영상도 첨부할 수 있어요.',
          ),
          _CategoryItem(emoji: '💉', name: '예방접종', desc: '접종 종류와 날짜를 기록해요.'),
          _CategoryItem(
            emoji: '✂️',
            name: '미용',
            desc: '미용 내용을 기록하고 사진·영상을 첨부할 수 있어요.',
          ),
          _CategoryItem(emoji: '🪥', name: '양치', desc: '양치 여부와 메모를 기록해요.'),
          _CategoryItem(emoji: '🚶', name: '산책', desc: '산책 거리와 시간을 기록해요.'),
          _CategoryItem(emoji: '📝', name: '메모', desc: '자유롭게 메모를 남길 수 있어요.'),
          SizedBox(height: AppSpacing.space5),
          _SectionHeader(emoji: '📅', title: '일지 화면'),
          _HelpItem(
            title: '기록 목록 보기',
            desc: '날짜별로 등록된 모든 기록을 확인할 수 있어요. 카테고리 배지로 종류를 한눈에 구분할 수 있어요.',
          ),
          _HelpItem(
            title: '기록 수정 및 삭제',
            desc: '기록 항목을 탭하면 수정 시트가 열려요. 내용을 수정하거나 삭제할 수 있어요.',
          ),
          _HelpItem(
            title: '사진·영상 첨부',
            desc: '식사, 음수, 병원, 미용, 배변 등 일부 카테고리에서는 사진이나 영상을 첨부할 수 있어요.',
          ),
          SizedBox(height: AppSpacing.space5),
          _SectionHeader(emoji: '🔔', title: '알림 화면'),
          _HelpItem(
            title: '알림 추가',
            desc:
                '예방접종, 투약, 병원 방문, 미용 등 다양한 유형의 알림을 등록할 수 있어요. 알림 유형을 먼저 선택한 후 날짜와 시간을 설정해요.',
          ),
          _HelpItem(
            title: '반복 알림',
            desc: '매일, 매주, 매월 등 반복 규칙을 설정할 수 있어요. 정기적인 투약이나 심장사상충 예방에 유용해요.',
          ),
          _HelpItem(
            title: '사전 알림 (D-7, D-3, D-1)',
            desc: '예방접종처럼 중요한 일정은 7일 전, 3일 전, 1일 전에 미리 알림을 받을 수 있어요.',
          ),
          _HelpItem(
            title: '알림 완료 처리',
            desc: '알림 항목을 탭해 완료로 표시할 수 있어요. 완료된 알림은 지난 알림 목록에서 확인할 수 있어요.',
          ),
          _HelpItem(title: '알림 삭제', desc: '알림 항목을 왼쪽으로 스와이프하면 삭제할 수 있어요.'),
          SizedBox(height: AppSpacing.space5),
          _SectionHeader(emoji: '🐶', title: '반려동물 관리'),
          _HelpItem(
            title: '반려동물 등록',
            desc: '이름, 종(강아지/고양이), 품종, 성별, 생년월일, 중성화 여부를 입력해 반려동물을 등록해요.',
          ),
          _HelpItem(
            title: '프로필 수정',
            desc: '프로필 화면에서 이름, 품종, 체중, 마이크로칩 번호, 동물등록번호, 프로필 사진을 수정할 수 있어요.',
          ),
          _HelpItem(
            title: '여러 마리 관리',
            desc: '반려동물을 여러 마리 등록할 수 있어요. 상단의 반려동물 칩을 탭하면 관리할 반려동물을 전환할 수 있어요.',
          ),
          SizedBox(height: AppSpacing.space5),
          _SectionHeader(emoji: '📖', title: '건강관리 가이드'),
          _HelpItem(
            title: '강아지 건강 가이드',
            desc:
                '필수·선택 예방접종 스케줄, 심장사상충·외부기생충 예방, 치아 관리, 영양 관리 등 수의학 기반의 건강 정보를 제공해요.',
          ),
          _HelpItem(
            title: '고양이 건강 가이드',
            desc: '고양이 전용 예방접종 스케줄, 기생충 예방, 치아 관리, 영양 정보를 확인할 수 있어요.',
          ),
          SizedBox(height: AppSpacing.space5),
          _SectionHeader(emoji: '⚙️', title: '설정'),
          _HelpItem(title: '알림 설정', desc: '앱 전체 알림을 켜거나 끌 수 있어요.'),
          _HelpItem(
            title: '데이터 내보내기',
            desc: '기록된 모든 데이터를 ZIP 파일로 내보낼 수 있어요. 기기 변경 시 백업용으로 사용하세요.',
          ),
          _HelpItem(
            title: '데이터 가져오기',
            desc: '이전에 내보낸 ZIP 백업 파일을 불러와 데이터를 복원할 수 있어요.',
          ),
          _HelpItem(
            title: '피드백 보내기',
            desc: '앱 사용 중 불편한 점이나 개선 의견을 이메일로 보내주세요. 더 나은 앱을 만드는 데 큰 도움이 돼요.',
          ),
          SizedBox(height: AppSpacing.space5),
          _SectionHeader(emoji: '❓', title: '자주 묻는 질문'),
          _FaqItem(
            q: '반려동물을 삭제하면 기록도 모두 삭제되나요?',
            a: '네, 반려동물을 삭제하면 해당 반려동물의 모든 기록과 알림이 함께 삭제돼요. 삭제 전에 데이터를 내보내기로 백업해 두세요.',
          ),
          _FaqItem(
            q: '기록에 사진을 여러 장 첨부할 수 있나요?',
            a: '네, 사진과 영상을 여러 개 첨부할 수 있어요. 갤러리에서 선택하거나 카메라로 바로 촬영할 수 있어요.',
          ),
          _FaqItem(
            q: '알림이 오지 않아요.',
            a: '기기의 알림 설정에서 반려숨탄 앱의 알림이 허용되어 있는지 확인해 주세요. 설정 > 알림 설정에서 앱 알림이 켜져 있는지도 확인해 주세요.',
          ),
          _FaqItem(
            q: '데이터를 새 기기로 옮길 수 있나요?',
            a: '설정 > 데이터 내보내기로 백업 파일을 저장한 후, 새 기기에서 설정 > 데이터 가져오기로 복원할 수 있어요.',
          ),
          _FaqItem(
            q: '여러 마리의 반려동물을 등록할 수 있나요?',
            a: '기본적으로 1마리를 무료로 등록할 수 있어요. 추가 등록은 프리미엄 기능을 통해 이용할 수 있어요.',
          ),
          SizedBox(height: AppSpacing.space8),
          _ContactCard(),
          SizedBox(height: AppSpacing.space8),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String emoji;
  final String title;

  const _SectionHeader({required this.emoji, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space3),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 18)),
          const SizedBox(width: AppSpacing.space2),
          Text(
            context.lt(title),
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

  const _HelpCard({required this.content});

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
        context.lt(content),
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

  const _HelpItem({required this.title, required this.desc});

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
            context.lt(title),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.gray900,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            context.lt(desc),
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
          Text(emoji, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: AppSpacing.space3),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.lt(name),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gray900,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  context.lt(desc),
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

  const _FaqItem({required this.q, required this.a});

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
                      context.lt(widget.q),
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
                      context.lt(widget.a),
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
            context.lt('더 궁금한 점이 있으신가요?'),
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.gray900,
            ),
          ),
          const SizedBox(height: AppSpacing.space2),
          Text(
            context.lt('설정 > 피드백 보내기를 통해 문의해 주세요.\n빠르게 답변 드릴게요 🐾'),
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
