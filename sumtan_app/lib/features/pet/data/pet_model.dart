class Pet {
  final int? id;
  final String name;
  final String? species;
  final String? breed;
  final String? birthDate;
  final String? gender;
  final double? weight;
  final bool isNeutered;
  final String? microchipId;
  final String? regNumber;
  final String? profileImagePath;
  final String createdAt;

  const Pet({
    this.id,
    required this.name,
    this.species,
    this.breed,
    this.birthDate,
    this.gender,
    this.weight,
    this.isNeutered = false,
    this.microchipId,
    this.regNumber,
    this.profileImagePath,
    required this.createdAt,
  });

  Pet copyWith({
    int? id,
    String? name,
    String? species,
    String? breed,
    String? birthDate,
    String? gender,
    double? weight,
    bool? isNeutered,
    String? microchipId,
    String? regNumber,
    String? profileImagePath,
    String? createdAt,
  }) =>
      Pet(
        id: id ?? this.id,
        name: name ?? this.name,
        species: species ?? this.species,
        breed: breed ?? this.breed,
        birthDate: birthDate ?? this.birthDate,
        gender: gender ?? this.gender,
        weight: weight ?? this.weight,
        isNeutered: isNeutered ?? this.isNeutered,
        microchipId: microchipId ?? this.microchipId,
        regNumber: regNumber ?? this.regNumber,
        profileImagePath: profileImagePath ?? this.profileImagePath,
        createdAt: createdAt ?? this.createdAt,
      );

  Map<String, dynamic> toMap() => {
        if (id != null) 'id': id,
        'name': name,
        'species': species,
        'breed': breed,
        'birth_date': birthDate,
        'gender': gender,
        'weight': weight,
        'is_neutered': isNeutered ? 1 : 0,
        'microchip_id': microchipId,
        'reg_number': regNumber,
        'profile_image_path': profileImagePath,
        'created_at': createdAt,
      };

  factory Pet.fromMap(Map<String, dynamic> m) => Pet(
        id: m['id'] as int?,
        name: m['name'] as String,
        species: m['species'] as String?,
        breed: m['breed'] as String?,
        birthDate: m['birth_date'] as String?,
        gender: m['gender'] as String?,
        weight: (m['weight'] as num?)?.toDouble(),
        isNeutered: (m['is_neutered'] as int? ?? 0) == 1,
        microchipId: m['microchip_id'] as String?,
        regNumber: m['reg_number'] as String?,
        profileImagePath: m['profile_image_path'] as String?,
        createdAt: m['created_at'] as String,
      );

  String get speciesEmoji {
    switch (species) {
      case 'dog':
        return '🐶';
      case 'cat':
        return '🐱';
      default:
        return '🐾';
    }
  }

  int? get ageYears {
    if (birthDate == null) return null;
    final birth = DateTime.tryParse(birthDate!);
    if (birth == null) return null;
    final now = DateTime.now();
    int age = now.year - birth.year;
    if (now.month < birth.month ||
        (now.month == birth.month && now.day < birth.day)) {
      age--;
    }
    return age;
  }

  String get ageLabel {
    if (birthDate == null) return '미입력';
    final birth = DateTime.tryParse(birthDate!);
    if (birth == null) return '미입력';
    final now = DateTime.now();
    final months =
        (now.year - birth.year) * 12 + (now.month - birth.month);
    if (months < 0) return '미입력';
    if (months < 12) return '$months개월';
    final y = months ~/ 12;
    final m = months % 12;
    return m > 0 ? '$y살 $m개월' : '$y살';
  }
}
