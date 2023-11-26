part of main_mean_entity;

class MainMeanEntity extends Entity with EquatableMixin {
  final String name;
  final DepreciationMethod depreciationMethod;

  MainMeanEntity({required this.name, required this.depreciationMethod});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, depreciationMethod];

  MainMeanEntity copyWith({String? name, DepreciationMethod? depreciationMethod}) {
    return MainMeanEntity(
        name: name ?? this.name, depreciationMethod: depreciationMethod ?? this.depreciationMethod);
  }
}
