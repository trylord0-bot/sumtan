class Pet {
  final int? id;
  final String name;
  final String? species;
  final String? breed;
  final String? birthDate;
  final String? gender;
  final bool isNeutered;
  final String? profileImagePath;
  final String createdAt;

  const Pet({
    this.id,
    required this.name,
    this.species,
    this.breed,
    this.birthDate,
    this.gender,
    this.isNeutered = false,
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
    bool? isNeutered,
    String? profileImagePath,
    String? createdAt,
  }) => Pet(
    id: id ?? this.id,
    name: name ?? this.name,
    species: species ?? this.species,
    breed: breed ?? this.breed,
    birthDate: birthDate ?? this.birthDate,
    gender: gender ?? this.gender,
    isNeutered: isNeutered ?? this.isNeutered,
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
    'is_neutered': isNeutered ? 1 : 0,
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
    isNeutered: (m['is_neutered'] as int? ?? 0) == 1,
    profileImagePath: m['profile_image_path'] as String?,
    createdAt: m['created_at'] as String,
  );

  String get speciesEmoji {
    switch (species) {
      case 'dog': return '🐶';
      case 'cat': return '🐱';
      default: return '🐾';
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
}
