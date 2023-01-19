part of main_mean_entity;

class ResultCalculateEntity extends Entity with EquatableMixin {
  final String name;

  ResultCalculateEntity({required this.name});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name];

  ResultCalculateEntity copyWith({String? name, DepreciationMethod? depreciationMethod}) {
    return ResultCalculateEntity(name: name ?? this.name);
  }
}
