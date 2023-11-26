part of main_mean_entity;

class TotalResultYearEntity extends Entity with EquatableMixin implements ListItem {
  final String title;
  final double suma;

  TotalResultYearEntity({required this.title, required this.suma});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        title,
        suma,
      ];

  TotalResultYearEntity copyWith({String? title, double? suma}) {
    return TotalResultYearEntity(title: title ?? this.title, suma: suma ?? this.suma);
  }
}
