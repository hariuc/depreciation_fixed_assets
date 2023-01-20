part of main_mean_entity;

class HeaderResultEntity extends Entity with EquatableMixin implements ListItem {
  final DateTime dateTime;

  HeaderResultEntity({required this.dateTime});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
    dateTime,
      ];

  HeaderResultEntity copyWith({DateTime? dateTime}) {
    return HeaderResultEntity(dateTime: dateTime ?? this.dateTime);
  }
}
