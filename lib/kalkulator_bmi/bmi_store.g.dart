// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MenBmiStore on _MenBmiStore, Store {
  Computed<double>? _$bmiComputed;

  @override
  double get bmi => (_$bmiComputed ??=
          Computed<double>(() => super.bmi, name: '_MenBmiStore.bmi'))
      .value;

  late final _$weightAtom = Atom(name: '_MenBmiStore.weight', context: context);

  @override
  double get weight {
    _$weightAtom.reportRead();
    return super.weight;
  }

  @override
  set weight(double value) {
    _$weightAtom.reportWrite(value, super.weight, () {
      super.weight = value;
    });
  }

  late final _$heightAtom = Atom(name: '_MenBmiStore.height', context: context);

  @override
  double get height {
    _$heightAtom.reportRead();
    return super.height;
  }

  @override
  set height(double value) {
    _$heightAtom.reportWrite(value, super.height, () {
      super.height = value;
    });
  }

  late final _$_MenBmiStoreActionController =
      ActionController(name: '_MenBmiStore', context: context);

  @override
  void setWeight(double value) {
    final _$actionInfo = _$_MenBmiStoreActionController.startAction(
        name: '_MenBmiStore.setWeight');
    try {
      return super.setWeight(value);
    } finally {
      _$_MenBmiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHeight(double value) {
    final _$actionInfo = _$_MenBmiStoreActionController.startAction(
        name: '_MenBmiStore.setHeight');
    try {
      return super.setHeight(value);
    } finally {
      _$_MenBmiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
weight: ${weight},
height: ${height},
bmi: ${bmi}
    ''';
  }
}

mixin _$WomenBmiStore on _WomenBmiStore, Store {
  Computed<double>? _$bmiComputed;

  @override
  double get bmi => (_$bmiComputed ??=
          Computed<double>(() => super.bmi, name: '_WomenBmiStore.bmi'))
      .value;

  late final _$weightAtom =
      Atom(name: '_WomenBmiStore.weight', context: context);

  @override
  double get weight {
    _$weightAtom.reportRead();
    return super.weight;
  }

  @override
  set weight(double value) {
    _$weightAtom.reportWrite(value, super.weight, () {
      super.weight = value;
    });
  }

  late final _$heightAtom =
      Atom(name: '_WomenBmiStore.height', context: context);

  @override
  double get height {
    _$heightAtom.reportRead();
    return super.height;
  }

  @override
  set height(double value) {
    _$heightAtom.reportWrite(value, super.height, () {
      super.height = value;
    });
  }

  late final _$_WomenBmiStoreActionController =
      ActionController(name: '_WomenBmiStore', context: context);

  @override
  void setWeight(double value) {
    final _$actionInfo = _$_WomenBmiStoreActionController.startAction(
        name: '_WomenBmiStore.setWeight');
    try {
      return super.setWeight(value);
    } finally {
      _$_WomenBmiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHeight(double value) {
    final _$actionInfo = _$_WomenBmiStoreActionController.startAction(
        name: '_WomenBmiStore.setHeight');
    try {
      return super.setHeight(value);
    } finally {
      _$_WomenBmiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
weight: ${weight},
height: ${height},
bmi: ${bmi}
    ''';
  }
}
