part of main_mean_entity;

class ResultCalculateEntity extends Entity with EquatableMixin {
  final DateTime dateTime;
  final double suma;

  ResultCalculateEntity({required this.dateTime, required this.suma});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [dateTime, suma];

  ResultCalculateEntity copyWith({DateTime? dateTime, double? suma}) {
    return ResultCalculateEntity(dateTime: dateTime ?? this.dateTime, suma: suma ?? this.suma);
  }
}
