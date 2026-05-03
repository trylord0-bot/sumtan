# 🐾 반려숨탄 — AI 개발 마스터 지시 명세서 v1.0

## 📌 역할 지시

당신은 **모바일 앱 풀스택 개발 전문가**입니다.
아래 명세서와 **이 파일이 위치한 폴더 내의 모든 `.md` 및 `.html` 파일**을 자동으로 탐색하여 함께 참조하고,
반려숨탄 앱의 **전체 디자인 및 코드**를 작성해 주세요.

---

## 📁 문서 자동 참조 규칙

> **파일명에 의존하지 마세요.** 파일명은 언제든 변경될 수 있습니다.
> 아래 규칙에 따라 **파일 내용을 읽고 역할을 스스로 판단**하여 참조하세요.

### 파일 유형별 역할 판단 기준

| 파일 유형 | 역할 판단 기준 (내용 기반) |
|-----------|--------------------------|
| `.md` 파일 | 파일 내용에 "기획", "명세", "컬러", "컴포넌트", "레이아웃", "마일스톤" 등의 키워드가 포함된 경우 해당 도메인의 설계 명세서로 간주 |
| `.html` 파일 | 파일 내용에 `<!DOCTYPE html>` 또는 `<html`이 포함된 경우 UI 프로토타입으로 간주하여 **시각적 참조용**으로만 사용 |

### 참조 우선순위 원칙

1. **`.md` 명세서가 최우선** — 수치, 컬러, 컴포넌트 스펙은 반드시 `.md`를 기준으로 구현
2. **`.html` 프로토타입은 보조** — 레이아웃 배치, 시각적 구성 참조용. HTML/CSS 코드를 Flutter로 직역 금지
3. **충돌 시** — `.md` 명세서의 내용을 우선 적용하고, 불명확한 경우 최신 버전 번호의 문서를 따름

---

## 🛠️ 기술 스택

| 항목 | 기술 |
|------|------|
| **프레임워크** | Flutter (최신 stable 버전) |
| **언어** | Dart |
| **로컬 DB** | SQLite (`sqflite` 패키지) — Android/iOS 기본, Web은 하단 참조 |
| **플랫폼** | Android, iOS |
| **테스트 환경** | Flutter Web (웹 브라우저에서 실행 가능하도록 구현) |
| **상태 관리** | Riverpod (`flutter_riverpod`) |
| **라우팅** | GoRouter |

> ### ⚠️ Flutter Web DB 호환 처리
> - `sqflite`는 Android/iOS 전용으로 Flutter Web 미지원
> - **권장 해결책**: `sqflite_common_ffi_web` 패키지를 함께 사용하여 Web에서도 SQLite 동작
> - `kIsWeb` 분기를 통해 플랫폼별 DB 초기화 로직을 분리할 것
> - Web 실행: `flutter run -d chrome` / Web 빌드: `flutter build web`

---

## 🎯 1차 마일스톤 MVP 범위

> 폴더 내 "마일스톤" 또는 "MVP" 키워드가 포함된 `.md` 파일을 참조하여 구현 범위를 확정하세요.
> 아래는 해당 문서의 핵심 요약입니다.

### ✅ 1차 구현 대상

#### 반려동물 프로필
- 반려동물 등록 (이름, 종, 품종, 생년월일, 성별, 중성화 여부, 프로필 사진)
- 복수 반려동물 지원 (탭 또는 드로어로 전환)

#### 홈 화면
- 반려동물 프로필 카드 (상단)
- 오늘의 요약 카드 (카테고리별 기록 수, 최근 체중)
- 최근 기록 리스트 (최대 10개)
- FAB (우하단 고정)

#### 일지 화면
- 월간 캘린더 고정 (스크롤 없음)
- 날짜 선택 시 해당 날짜 기록 리스트 표시
- 카테고리별 필터 탭

#### 기록 입력 (FAB → 바텀시트)
- FAB 탭 → 카테고리 선택 바텀시트
- 카테고리별 입력 폼

#### 기록 카테고리 (1차 MVP)

| 카테고리 | 입력 항목 |
|----------|-----------|
| 배변 | 날짜/시간, 유형(대/소/구토), 상태, 메모 |
| 컨디션 | 날짜/시간, 활동량, 식욕, 증상 태그, 메모 |
| 투약 | 날짜/시간, 약품명, 용량, 투약 방법, 메모 |
| 체중 | 날짜/시간, 체중(kg), 메모 |

#### 탭바
- 4탭 균등 분할: 홈 / 일지 / 통계 / 설정
- 통계 탭은 1차에서 "준비 중" 플레이스홀더로 구현

#### 설정 화면
- 반려동물 추가/편집/삭제
- 앱 버전 정보

### ⬜ 2차 이후 구현 (코드에 `// TODO: 2차 마일스톤` 주석으로 표시)
- 통계/차트 화면
- 알림/리마인더
- 데이터 백업/복원
- 미디어 첨부 (사진/동영상)
- 병원 기록, 예방접종, 발정 기록 등 추가 카테고리

---

## 🎨 디자인 시스템 적용 규칙

> 폴더 내 "컬러 시스템", "컴포넌트 시스템", "레이아웃 시스템", "타이포그래피" 키워드가 포함된 `.md` 파일을 참조하세요.
> 아래는 핵심 규칙 요약입니다.

### 컬러 토큰 (Flutter `Color` 상수로 정의)

| 토큰명 | HEX | 주요 용도 |
|--------|-----|-----------|
| `creamBg` | `#FFFDF7` | 앱 전체 배경 |
| `primary50` | `#ECFDF5` | 상태바, 연한 강조 배경 |
| `primary100` | `#D1FAE5` | 카드 배경 강조 |
| `primary200` | `#A7F3D0` | 호버/선택 배경 |
| `primary400` | `#34D399` | 보조 강조 |
| `primary500` | `#10B981` | 주요 액션, FAB, 선택 강조 |
| `primary600` | `#059669` | 버튼 Pressed, Outlined 텍스트 |
| `primary900` | `#064E3B` | 헤더 텍스트, 강한 강조 |
| `gray100` | `#F3F4F6` | 섹션 배경 |
| `gray200` | `#E5E7EB` | 구분선, Disabled 배경 |
| `gray300` | `#D1D5DB` | 보더 |
| `gray400` | `#9CA3AF` | Disabled 텍스트, 플레이스홀더 |
| `gray500` | `#6B7280` | 보조 텍스트 |
| `gray600` | `#4B5563` | 중간 텍스트 |
| `gray700` | `#374151` | 강조 텍스트 |
| `gray900` | `#111827` | 본문 텍스트 |
| `white` | `#FFFFFF` | 카드 배경, Filled 버튼 텍스트 |
| `catPoop` | `#FEF3C7` | 배변 카테고리 배경 |
| `catPoopDot` | `#F59E0B` | 배변 카테고리 강조 |
| `catCond` | `#FCE7F3` | 컨디션 카테고리 배경 |
| `catCondDot` | `#EC4899` | 컨디션 카테고리 강조 |
| `catMed` | `#DBEAFE` | 투약 카테고리 배경 |
| `catMedDot` | `#3B82F6` | 투약 카테고리 강조 |
| `catWeight` | `#D1FAE5` | 체중 카테고리 배경 |
| `catWeightDot` | `#10B981` | 체중 카테고리 강조 |

### 컴포넌트 전역 규칙 (반드시 준수)

1. **Filled 컴포넌트 위 텍스트는 반드시 `white`** — `primary900` 사용 절대 금지
2. **Outlined / Ghost 컴포넌트 텍스트는 `primary600` 또는 `gray500`** — `white` 사용 금지
3. **Disabled 상태: 배경 `gray200`, 텍스트 `gray400`** — 예외 없음
4. **모든 카드: `white` 배경, `radius-md(12px)` 이상, 그림자 적용**
5. **FAB: `primary500` 배경, `white` 아이콘, `radius-full(9999px)`**
6. **수치 하드코딩 금지** — 반드시 토큰 상수 참조

### 보더 레디우스 토큰

| 토큰 | 값 |
|------|----|
| `radiusSm` | 6px |
| `radiusMd` | 12px |
| `radiusLg` | 16px |
| `radiusXl` | 24px |
| `radiusFull` | 9999px |

---

## 📐 레이아웃 구조

> 폴더 내 "레이아웃 시스템" 키워드가 포함된 `.md` 파일과
> "기초 레이아웃" 키워드가 포함된 `.html` 파일을 함께 참조하세요.

```
┌─────────────────────────┐
│       Status Bar        │  44px, primary50 배경
├─────────────────────────┤
│         Header          │  56px, 앱 로고 + 반려동물 전환 버튼 + 알림 아이콘
├─────────────────────────┤
│                         │
│      Content Area       │  flex: 1, 각 페이지 본문, 세로 스크롤 가능
│                         │
├─────────────────────────┤
│     Bottom Tab Bar      │  60px + SafeArea padding, 4탭 균등 분할
└─────────────────────────┘
          ↑
   FAB (우하단 고정, 탭바 위 16dp)
```

### 탭바 구성

| 순서 | 탭명 | 아이콘 | 1차 구현 여부 |
|------|------|--------|--------------|
| 1 | 홈 | home | ✅ |
| 2 | 일지 | calendar_today | ✅ |
| 3 | 통계 | bar_chart | ⬜ 플레이스홀더 |
| 4 | 설정 | settings | ✅ |

---

## 🗂️ 프로젝트 폴더 구조

```
lib/
├── main.dart
├── app/
│   ├── app.dart                      # MaterialApp 루트
│   ├── router.dart                   # GoRouter 전체 라우팅
│   └── theme/
│       ├── app_colors.dart           # 컬러 토큰 상수 (위 표 기준)
│       ├── app_typography.dart       # 타입 스케일 (md 명세 참조)
│       ├── app_spacing.dart          # 스페이싱 / 레디우스 토큰
│       └── app_theme.dart            # ThemeData 조합
├── core/
│   ├── database/
│   │   ├── database_helper.dart      # SQLite 초기화, 마이그레이션
│   │   └── database_web.dart         # Web fallback (sqflite_common_ffi_web)
│   └── utils/
│       ├── platform_utils.dart       # kIsWeb 분기 유틸
│       └── date_utils.dart           # ISO 8601 변환, intl 포맷
├── features/
│   ├── pet/
│   │   ├── data/
│   │   │   ├── pet_model.dart
│   │   │   └── pet_repository.dart
│   │   ├── provider/
│   │   │   └── pet_provider.dart
│   │   └── presentation/
│   │       ├── pet_register_screen.dart
│   │       └── widgets/
│   │           └── pet_profile_card.dart
│   ├── home/
│   │   └── presentation/
│   │       ├── home_screen.dart
│   │       └── widgets/
│   │           ├── today_summary_card.dart
│   │           └── recent_records_list.dart
│   ├── journal/
│   │   └── presentation/
│   │       ├── journal_screen.dart
│   │       └── widgets/
│   │           ├── calendar_widget.dart
│   │           ├── category_filter_tab.dart
│   │           └── record_list_item.dart
│   ├── record/
│   │   ├── data/
│   │   │   ├── record_model.dart
│   │   │   └── record_repository.dart
│   │   ├── provider/
│   │   │   └── record_provider.dart
│   │   └── presentation/
│   │       ├── category_bottom_sheet.dart
│   │       └── forms/
│   │           ├── poop_form.dart
│   │           ├── condition_form.dart
│   │           ├── medication_form.dart
│   │           └── weight_form.dart
│   └── settings/
│       └── presentation/
│           └── settings_screen.dart
└── shared/
    ├── widgets/
    │   ├── app_header.dart
    │   ├── bottom_tab_bar.dart
    │   ├── app_card.dart
    │   ├── app_fab.dart
    │   └── category_badge.dart
    └── constants/
        └── category_constants.dart
```

---

## 🗃️ 데이터베이스 스키마

### 테이블: `pets`

| 컬럼 | 타입 | 제약 | 설명 |
|------|------|------|------|
| `id` | INTEGER | PK AUTOINCREMENT | |
| `name` | TEXT | NOT NULL | 반려동물 이름 |
| `species` | TEXT | | 종 (cat / dog / other) |
| `breed` | TEXT | | 품종 |
| `birth_date` | TEXT | | ISO 8601 날짜 |
| `gender` | TEXT | | male / female |
| `is_neutered` | INTEGER | | 0 = 아니오, 1 = 예 |
| `profile_image_path` | TEXT | | 로컬 파일 경로 |
| `created_at` | TEXT | NOT NULL | ISO 8601 datetime |

### 테이블: `records`

| 컬럼 | 타입 | 제약 | 설명 |
|------|------|------|------|
| `id` | INTEGER | PK AUTOINCREMENT | |
| `pet_id` | INTEGER | FK → pets.id | |
| `category` | TEXT | NOT NULL | poop / condition / medication / weight |
| `recorded_at` | TEXT | NOT NULL | ISO 8601 datetime |
| `data_json` | TEXT | | 카테고리별 상세 데이터 (JSON) |
| `memo` | TEXT | | 자유 메모 |
| `created_at` | TEXT | NOT NULL | ISO 8601 datetime |

> `data_json` 예시
> ```json
> // 배변
> { "type": "대변", "status": "정상", "amount": "보통" }
> // 컨디션
> { "activity": "보통", "appetite": "좋음", "symptoms": ["기침", "재채기"] }
> // 투약
> { "medicine": "항생제", "dose": "0.5ml", "method": "경구" }
> // 체중
> { "weight_kg": 4.2 }
> ```

---

## 📱 화면별 구현 지침

> 각 화면 구현 전, 폴더 내 해당 화면과 관련된 `.md` 명세서와 `.html` 프로토타입을
> 내용 기반으로 탐색하여 함께 참조하세요.

### 홈 화면
- 상단: 반려동물 프로필 카드 (이름, 품종, 나이, 프로필 사진)
- 중단: 오늘의 요약 카드 (카테고리별 기록 수 뱃지, 최근 체중)
- 하단: 최근 기록 리스트 (최대 10개, 카테고리 컬러 적용)
- FAB: 우하단 고정, 탭바 위 16dp

### 일지 화면
- 상단 고정: 월간 캘린더 (스크롤 없이 고정)
  - 기록 있는 날짜: 카테고리 컬러 dot 표시
  - 선택된 날짜: `primary500` 배경 강조
- 하단 스크롤: 선택 날짜의 기록 리스트
  - 카테고리 필터 탭 (전체 / 배변 / 컨디션 / 투약 / 체중)
  - 기록 카드: 카테고리 컬러 배경, 시간, 요약 텍스트

### FAB + 바텀시트
- FAB 탭 → 카테고리 선택 바텀시트 (4개 카테고리 그리드)
- 카테고리 선택 → 해당 입력 폼 바텀시트로 전환 (슬라이드 또는 교체)
- 바텀시트: `white` 배경, 상단 핸들 바, `radiusXl` 상단 모서리
- 저장 버튼: Filled, `primary500` 배경, `white` 텍스트

### 설정 화면
- 반려동물 추가 / 편집 / 삭제
- 앱 버전 정보 표시
- 2차 기능 항목은 비활성 상태로 표시 (`// TODO: 2차 마일스톤`)

---

## 📦 pubspec.yaml 의존성

```yaml
dependencies:
  flutter:
    sdk: flutter

  # 라우팅
  go_router: ^13.0.0

  # 상태 관리
  flutter_riverpod: ^2.5.0
  riverpod_annotation: ^2.3.0

  # DB — Android/iOS
  sqflite: ^2.3.0
  # DB — Web 호환
  sqflite_common_ffi: ^2.3.0

  # 경로
  path: ^1.9.0
  path_provider: ^2.1.0

  # 날짜/시간 포맷 (한국어)
  intl: ^0.19.0

  # 이미지
  image_picker: ^1.1.0

  # 직렬화
  freezed_annotation: ^2.4.0
  json_annotation: ^4.9.0

  # 유틸
  uuid: ^4.3.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.4.0
  freezed: ^2.5.0
  json_serializable: ^6.8.0
  riverpod_generator: ^2.4.0
  flutter_lints: ^3.0.0
```

---

## ✅ 구현 체크리스트

### Phase 1 — 기반 설정
- [ ] Flutter 프로젝트 생성 및 `pubspec.yaml` 설정
- [ ] 컬러 / 타이포그래피 / 스페이싱 토큰 → `app/theme/` 구현
- [ ] GoRouter 라우팅 설정
- [ ] SQLite DB 초기화 + 테이블 생성 (Web fallback 포함)

### Phase 2 — 공통 컴포넌트
- [ ] `AppHeader` 위젯
- [ ] `BottomTabBar` 위젯 (4탭 균등)
- [ ] `AppCard` 위젯
- [ ] `AppFab` 위젯
- [ ] `CategoryBadge` 위젯

### Phase 3 — 반려동물 프로필
- [ ] `Pet` 모델 + Repository
- [ ] 반려동물 등록 화면
- [ ] 프로필 카드 위젯

### Phase 4 — 기록 기능
- [ ] `Record` 모델 + Repository
- [ ] 카테고리 선택 바텀시트
- [ ] 배변 / 컨디션 / 투약 / 체중 입력 폼

### Phase 5 — 화면 구현
- [ ] 홈 화면
- [ ] 일지 화면 + 캘린더
- [ ] 설정 화면

### Phase 6 — 테스트
- [ ] `flutter run -d chrome` Web 동작 확인
- [ ] Android 에뮬레이터 동작 확인
- [ ] iOS 시뮬레이터 동작 확인

---

## ⚠️ 공통 주의사항

1. **수치 하드코딩 금지** — 컬러, 스페이싱, 레디우스는 반드시 토큰 상수 참조
2. **`.html` 프로토타입 직역 금지** — 시각 참조만 허용, HTML/CSS → Flutter 직역 불가
3. **`dart:io` 직접 사용 금지** — `path_provider` 등 크로스플랫폼 패키지 사용
4. **날짜/시간 저장** — 모든 저장은 ISO 8601 문자열, 표시는 `intl` 패키지로 한국어 포맷
5. **2차 기능** — 코드 내 `// TODO: 2차 마일스톤 — [기능명]` 주석으로 위치 표시
6. **기준 해상도** — 390×844 (iPhone 14 기준), `MediaQuery`로 반응형 대응
7. **문서 충돌 시** — 버전 번호가 높은 `.md` 파일을 우선 적용

---

*이 명세서는 같은 폴더 내의 모든 `.md` 및 `.html` 파일과 함께 사용합니다.*
*파일명이 변경되어도 파일 내용을 기준으로 역할을 판단하여 참조하세요.*