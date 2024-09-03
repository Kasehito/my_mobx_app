// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalculatorStore on _CalculatorStore, Store {
  Computed<String>? _$resultComputed;

  @override
  String get result => (_$resultComputed ??=
          Computed<String>(() => super.result, name: '_CalculatorStore.result'))
      .value;

  late final _$input1Atom =
      Atom(name: '_CalculatorStore.input1', context: context);

  @override
  String get input1 {
    _$input1Atom.reportRead();
    return super.input1;
  }

  @override
  set input1(String value) {
    _$input1Atom.reportWrite(value, super.input1, () {
      super.input1 = value;
    });
  }

  late final _$input2Atom =
      Atom(name: '_CalculatorStore.input2', context: context);

  @override
  String get input2 {
    _$input2Atom.reportRead();
    return super.input2;
  }

  @override
  set input2(String value) {
    _$input2Atom.reportWrite(value, super.input2, () {
      super.input2 = value;
    });
  }

  late final _$operatorAtom =
      Atom(name: '_CalculatorStore.operator', context: context);

  @override
  String get operator {
    _$operatorAtom.reportRead();
    return super.operator;
  }

  @override
  set operator(String value) {
    _$operatorAtom.reportWrite(value, super.operator, () {
      super.operator = value;
    });
  }

  late final _$_CalculatorStoreActionController =
      ActionController(name: '_CalculatorStore', context: context);

  @override
  void setInput1(String value) {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
        name: '_CalculatorStore.setInput1');
    try {
      return super.setInput1(value);
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setInput2(String value) {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
        name: '_CalculatorStore.setInput2');
    try {
      return super.setInput2(value);
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOperator(String op) {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
        name: '_CalculatorStore.setOperator');
    try {
      return super.setOperator(op);
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculate() {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
        name: '_CalculatorStore.calculate');
    try {
      return super.calculate();
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
input1: ${input1},
input2: ${input2},
operator: ${operator},
result: ${result}
    ''';
  }
}
