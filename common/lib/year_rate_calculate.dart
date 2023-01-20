class YearRateCalculate {
  double rateCalculate({required int lifeTime}) {
    return lifeTime == 0 ? 0.0 : 100 / lifeTime;
  }
}
