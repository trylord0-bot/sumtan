import 'package:flutter/widgets.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../core/utils/number_utils.dart';
import '../../../shared/constants/category_constants.dart';
import '../data/record_model.dart';

String buildRecordSubtitle(BuildContext context, Record record) {
  final data = record.dataJson;
  if (data == null || data.isEmpty) return record.memo ?? '';

  final l10n = AppLocalizations.of(context);

  switch (record.category) {
    case 'poop':
      return [
        _localizedPoopType(l10n, data['type']),
        _localizedRecordValue(l10n, data['status']),
      ].where((s) => s.isNotEmpty).join(' · ');
    case 'condition':
      final score = (data['score'] as num?)?.toInt();
      final symptoms = _localizedRecordList(l10n, data['symptoms']);
      final parts = [
        if (score != null)
          ConditionScoreLabel.localizedRecordText(context, score),
        if (symptoms.isNotEmpty) symptoms,
      ];
      return parts.isNotEmpty ? parts.join(' · ') : (record.memo ?? '');
    case 'medication':
      final parts = [
        data['medicine'] as String? ?? '',
        data['dose'] as String? ?? '',
        _localizedRecordValue(l10n, data['method']),
      ];
      final subtitle = parts.where((s) => s.isNotEmpty).join(' · ');
      return subtitle.isNotEmpty ? subtitle : (record.memo ?? '');
    case 'weight':
      final kg = data['weight_kg'];
      final method = _localizedRecordValue(l10n, data['method']);
      final parts = [
        if (kg != null) '${_formatRecordNumber(context, kg)}kg',
        if (method.isNotEmpty) method,
      ];
      return parts.isNotEmpty ? parts.join(' · ') : (record.memo ?? '');
    case 'meal':
      final amount = _localizedRecordValue(l10n, data['meal_amount']);
      final amountG = data['amount_g'];
      final parts = [
        if (amount.isNotEmpty) amount,
        if (amountG != null) '${_formatRecordNumber(context, amountG)}g',
      ];
      return parts.isNotEmpty ? parts.join(' · ') : (record.memo ?? '');
    case 'water':
      final amount = _localizedRecordValue(l10n, data['water_amount']);
      final ml = data['milliliter'];
      final parts = [
        if (amount.isNotEmpty) amount,
        if (ml != null) '${ml}mL',
      ];
      return parts.isNotEmpty ? parts.join(' · ') : (record.memo ?? '');
    case 'hospital':
      final symptoms = _localizedRecordList(l10n, data['symptoms']);
      final parts = [
        _localizedRecordValue(l10n, data['visit_type']),
        data['hospital_name'] as String? ?? '',
        if (symptoms.isNotEmpty) symptoms,
        data['diagnosis'] as String? ?? '',
      ];
      final subtitle = parts.where((s) => s.isNotEmpty).join(' · ');
      return subtitle.isNotEmpty ? subtitle : (record.memo ?? '');
    case 'vaccination':
      final vaccines = _localizedRecordList(l10n, data['vaccines']);
      final symptoms = _localizedRecordList(l10n, data['symptoms']);
      final sideEffect = _localizedRecordValue(l10n, data['side_effect']);
      final parts = [
        _localizedRecordValue(l10n, data['visit_type']),
        if (vaccines.isNotEmpty) vaccines,
        data['hospital_name'] as String? ?? '',
        if (symptoms.isNotEmpty) symptoms,
        data['diagnosis'] as String? ?? '',
        if (sideEffect.isNotEmpty) sideEffect,
      ];
      final subtitle = parts.where((s) => s.isNotEmpty).join(' · ');
      return subtitle.isNotEmpty ? subtitle : (record.memo ?? '');
    case 'grooming':
      final types = _localizedRecordList(l10n, data['types']);
      final parts = [
        if (types.isNotEmpty) types,
        data['shop_name'] as String? ?? '',
      ];
      final subtitle = parts.where((s) => s.isNotEmpty).join(' · ');
      return subtitle.isNotEmpty ? subtitle : (record.memo ?? '');
    case 'brushing':
      final parts = _localizedRecordList(l10n, data['parts']);
      final duration = data['duration_min'];
      final items = [
        if (parts.isNotEmpty) parts,
        if (duration != null) '$duration ${l10n.minuteUnit}',
      ];
      return items.isNotEmpty ? items.join(' · ') : (record.memo ?? '');
    case 'walk':
      final duration = data['duration_min'];
      final distance = data['distance_km'];
      final parts = [
        if (duration != null) '$duration ${l10n.minuteUnit}',
        if (distance != null) '${_formatRecordNumber(context, distance)}km',
      ];
      return parts.isNotEmpty ? parts.join(' · ') : (record.memo ?? '');
    case 'memo':
      final parts = [
        data['title'] as String? ?? '',
        _localizedRecordValue(l10n, data['pinned']),
        data['content'] as String? ?? '',
      ];
      final subtitle = parts.where((s) => s.isNotEmpty).join(' · ');
      return subtitle;
    case 'abnormal_symptom':
      final parts = [
        _localizedRecordValue(l10n, data['symptom']),
        data['custom_symptom'] as String? ?? '',
      ];
      final subtitle = parts.where((s) => s.isNotEmpty).join(' · ');
      return subtitle.isNotEmpty ? subtitle : (record.memo ?? '');
    default:
      return record.memo ?? '';
  }
}

String _formatRecordNumber(BuildContext context, Object raw) {
  final value = raw is num ? raw : parseLocalizedDecimal(raw.toString());
  if (value == null) return raw.toString();
  return formatLocalizedDecimal(context, value);
}

String _localizedRecordList(AppLocalizations l10n, Object? raw) {
  if (raw is! List) return '';
  return raw
      .map((value) => _localizedRecordValue(l10n, value))
      .where((label) => label.isNotEmpty)
      .join(', ');
}

String _localizedPoopType(AppLocalizations l10n, Object? raw) {
  return switch (raw?.toString()) {
    '대변' => l10n.stool,
    '소변' => l10n.urine,
    _ => '',
  };
}

String _localizedRecordValue(AppLocalizations l10n, Object? raw) {
  final value = raw?.toString() ?? '';
  if (value.isEmpty) return '';

  return switch (value) {
    '대변' => l10n.stool,
    '소변' => l10n.urine,
    '구토' => l10n.vomiting,
    '정상' => l10n.normal,
    '묽음' => l10n.loose,
    '딱딱함' => l10n.hard,
    '혈변' => l10n.bloodInStool,
    '기침' => l10n.cough,
    '무기력' => l10n.lethargy,
    '식욕부진' => l10n.lossOfAppetite,
    '설사' => l10n.diarrhea,
    '콧물' => l10n.runnyNose,
    '재채기' => l10n.sneezing,
    '떨림' => l10n.trembling,
    '혈뇨' => l10n.bloodInUrine,
    '경구' => l10n.oral,
    '주사' => l10n.injection,
    '외용' => l10n.topical,
    '점안' => l10n.eyeDrops,
    '점이' => l10n.earDrops,
    '동물병원' => l10n.vetHospital,
    '가정용 체중계' => l10n.homeScale,
    '안고 측정' => l10n.holdAndWeigh,
    'very_little' || '매우 적음' => l10n.veryLittle,
    'little' || '적음' => l10n.little,
    'normal' || '보통' => l10n.normal,
    'much' || '많음' => l10n.much,
    'very_much' || '매우 많음' => l10n.veryMuch,
    '일반' => l10n.general,
    '정기검진' => l10n.regularCheckup,
    '응급' => l10n.emergency,
    '예방접종' => l10n.vaccination,
    '목욕' => l10n.bath,
    '전체미용' => l10n.fullGrooming,
    '부분미용' => l10n.partialGrooming,
    '발톱' => l10n.nailTrim,
    '귀청소' => l10n.earCleaning,
    '치석제거' => l10n.tartarRemoval,
    '항문낭' => l10n.analGlands,
    '전체' => l10n.whole,
    '등' => l10n.back,
    '배' => l10n.belly,
    '꼬리' => l10n.tail,
    '얼굴' => l10n.face,
    '발' => l10n.paw,
    '중요' => l10n.important,
    '출혈' => l10n.bleeding,
    '경련/발작' => l10n.seizure,
    '호흡곤란' => l10n.dyspnea,
    '기타' => l10n.other,
    '없음' => l10n.none,
    '경미' => l10n.mild,
    '심각' => l10n.severe,
    '종합백신 (DHPPL)' => l10n.vaccineDhppl,
    '코로나장염' => l10n.vaccineCorona,
    '켄넬코프' => l10n.vaccineKennelCough,
    '광견병' => l10n.vaccineRabies,
    '인플루엔자' => l10n.vaccineInfluenza,
    '종합백신 (FVRCP)' => l10n.vaccineFvrcp,
    '백혈병 (FeLV)' => l10n.vaccineFelv,
    '클라미디아' => l10n.vaccineChlamydia,
    _ => value,
  };
}
