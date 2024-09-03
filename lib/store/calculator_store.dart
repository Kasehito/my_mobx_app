import 'package:mobx/mobx.dart';

part 'calculator_store.g.dart';

class CalculatorStore = _CalculatorStore with _$CalculatorStore;

abstract class _CalculatorStore with Store {
  @observable
  String input1 = "";

  @observable
  String input2 = "";

  @observable
  String operator = "+";

  @computed
  String get result {
    try {
      final evalResult = _evaluateExpression(input1, input2, operator);
      return evalResult.toString();
    } catch (e) {
      return "Error";
    }
  }

  @action
  void setInput1(String value) {
    input1 = value;
  }

  @action
  void setInput2(String value) {
    input2 = value;
  }

  @action
  void setOperator(String op) {
    operator = op;
  }

  @action
  void calculate() {
    // Calculation happens automatically in the result computed property
  }

  double _evaluateExpression(String input1, String input2, String operator) {
    final num1 = double.tryParse(input1) ?? 0.0;
    final num2 = double.tryParse(input2) ?? 0.0;

    switch (operator) {
      case "+":
        return num1 + num2;
      case "-":
        return num1 - num2;
      case "*":
        return num1 * num2;
      case "/":
        return num2 != 0 ? num1 / num2 : 0.0;
      default:
        return 0.0;
    }
  }
}
