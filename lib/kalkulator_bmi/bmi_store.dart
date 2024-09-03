import 'package:mobx/mobx.dart';

part 'bmi_store.g.dart';

class MenBmiStore = _MenBmiStore with _$MenBmiStore;
class WomenBmiStore = _WomenBmiStore with _$WomenBmiStore;

abstract class _MenBmiStore with Store {
  @observable
  double weight = 0.0;

  @observable
  double height = 0.0;

  @computed
  double get bmi =>
      height > 0 ? weight / ((height / 100) * (height / 100)) : 0.0;

  @computed
  String get bmiCategory {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Normal weight';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  @action
  void setWeight(double value) {
    weight = value;
  }

  @action
  void setHeight(double value) {
    height = value;
  }
}

abstract class _WomenBmiStore with Store {
  @observable
  double weight = 0.0;

  @observable
  double height = 0.0;

  @computed
  double get bmi =>
      height > 0 ? weight / ((height / 100) * (height / 100)) : 0.0;

  @computed
  String get bmiCategory {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Normal weight';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  @action
  void setWeight(double value) {
    weight = value;
  }

  @action
  void setHeight(double value) {
    height = value;
  }
}
