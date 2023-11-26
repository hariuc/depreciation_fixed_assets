class YearRateCalculate {
  final int lifeTime;

  YearRateCalculate({required this.lifeTime});

  double rateCalculate() {
    return lifeTime == 0 ? 0.0 : 100 / lifeTime;
  }
}
