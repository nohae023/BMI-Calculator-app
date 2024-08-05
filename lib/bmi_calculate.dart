class BmiCalculate {
  final int weight;
  final double height;

  BmiCalculate({required this.weight, required this.height});

  double Calculate() {
    double heightinMeter = height / 100;
    double bmi = weight / (heightinMeter * heightinMeter);
    return bmi;
  }

  String getTitleText() {
    double bmi = Calculate();
    if (bmi >= 25) {
      return "OVER WEIGHT ";
    } else if (bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDER WEIGHT";
    }
  }

  String getDescribtion() {
    double bmi = Calculate();
    if (bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more. ";
    } else if (bmi > 18.5) {
      return "You have a normal body weight. Good Job!";
    } else {
      return "You have a lower than normal body weight. You can eat more. ";
    }
  }
}
