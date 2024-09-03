import 'package:mobx/mobx.dart';
import 'dart:math';

part 'mobx.g.dart';

class SpaceCalculatorStore = _SpaceCalculatorStore with _$SpaceCalculatorStore;

abstract class _SpaceCalculatorStore with Store {
  // Ruang 1 (balok)
  @observable
  double length1 = 0;

  @observable
  double width1 = 0;

  @observable
  double height1 = 0;

  @computed
  double get volume1 => length1 * width1 * height1 * 1.1; // Faktor pembeda 1.1

  // Ruang 2 (tabung)
  @observable
  double radius2 = 0;

  @observable
  double height2 = 0;

  @computed
  double get volume2 => pi * pow(radius2, 2) * height2 * 1.2; // Faktor pembeda 1.2

  // Ruang 3 (bola)
  @observable
  double radius3 = 0;

  @computed
  double get volume3 => (4/3) * pi * pow(radius3, 3) * 1.3; // Faktor pembeda 1.3

  @computed
  double get totalVolume => volume1 + volume2 + volume3;

  @action
  void setLength1(double value) {
    length1 = value;
  }

  @action
  void setWidth1(double value) {
    width1 = value;
  }

  @action
  void setHeight1(double value) {
    height1 = value;
  }

  @action
  void setRadius2(double value) {
    radius2 = value;
  }

  @action
  void setHeight2(double value) {
    height2 = value;
  }

  @action
  void setRadius3(double value) {
    radius3 = value;
  }
}
