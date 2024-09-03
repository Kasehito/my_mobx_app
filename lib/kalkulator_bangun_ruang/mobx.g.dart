// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SpaceCalculatorStore on _SpaceCalculatorStore, Store {
  Computed<double>? _$volume1Computed;

  @override
  double get volume1 =>
      (_$volume1Computed ??= Computed<double>(() => super.volume1,
              name: '_SpaceCalculatorStore.volume1'))
          .value;
  Computed<double>? _$volume2Computed;

  @override
  double get volume2 =>
      (_$volume2Computed ??= Computed<double>(() => super.volume2,
              name: '_SpaceCalculatorStore.volume2'))
          .value;
  Computed<double>? _$volume3Computed;

  @override
  double get volume3 =>
      (_$volume3Computed ??= Computed<double>(() => super.volume3,
              name: '_SpaceCalculatorStore.volume3'))
          .value;
  Computed<double>? _$totalVolumeComputed;

  @override
  double get totalVolume =>
      (_$totalVolumeComputed ??= Computed<double>(() => super.totalVolume,
              name: '_SpaceCalculatorStore.totalVolume'))
          .value;

  late final _$length1Atom =
      Atom(name: '_SpaceCalculatorStore.length1', context: context);

  @override
  double get length1 {
    _$length1Atom.reportRead();
    return super.length1;
  }

  @override
  set length1(double value) {
    _$length1Atom.reportWrite(value, super.length1, () {
      super.length1 = value;
    });
  }

  late final _$width1Atom =
      Atom(name: '_SpaceCalculatorStore.width1', context: context);

  @override
  double get width1 {
    _$width1Atom.reportRead();
    return super.width1;
  }

  @override
  set width1(double value) {
    _$width1Atom.reportWrite(value, super.width1, () {
      super.width1 = value;
    });
  }

  late final _$height1Atom =
      Atom(name: '_SpaceCalculatorStore.height1', context: context);

  @override
  double get height1 {
    _$height1Atom.reportRead();
    return super.height1;
  }

  @override
  set height1(double value) {
    _$height1Atom.reportWrite(value, super.height1, () {
      super.height1 = value;
    });
  }

  late final _$radius2Atom =
      Atom(name: '_SpaceCalculatorStore.radius2', context: context);

  @override
  double get radius2 {
    _$radius2Atom.reportRead();
    return super.radius2;
  }

  @override
  set radius2(double value) {
    _$radius2Atom.reportWrite(value, super.radius2, () {
      super.radius2 = value;
    });
  }

  late final _$height2Atom =
      Atom(name: '_SpaceCalculatorStore.height2', context: context);

  @override
  double get height2 {
    _$height2Atom.reportRead();
    return super.height2;
  }

  @override
  set height2(double value) {
    _$height2Atom.reportWrite(value, super.height2, () {
      super.height2 = value;
    });
  }

  late final _$radius3Atom =
      Atom(name: '_SpaceCalculatorStore.radius3', context: context);

  @override
  double get radius3 {
    _$radius3Atom.reportRead();
    return super.radius3;
  }

  @override
  set radius3(double value) {
    _$radius3Atom.reportWrite(value, super.radius3, () {
      super.radius3 = value;
    });
  }

  late final _$_SpaceCalculatorStoreActionController =
      ActionController(name: '_SpaceCalculatorStore', context: context);

  @override
  void setLength1(double value) {
    final _$actionInfo = _$_SpaceCalculatorStoreActionController.startAction(
        name: '_SpaceCalculatorStore.setLength1');
    try {
      return super.setLength1(value);
    } finally {
      _$_SpaceCalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWidth1(double value) {
    final _$actionInfo = _$_SpaceCalculatorStoreActionController.startAction(
        name: '_SpaceCalculatorStore.setWidth1');
    try {
      return super.setWidth1(value);
    } finally {
      _$_SpaceCalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHeight1(double value) {
    final _$actionInfo = _$_SpaceCalculatorStoreActionController.startAction(
        name: '_SpaceCalculatorStore.setHeight1');
    try {
      return super.setHeight1(value);
    } finally {
      _$_SpaceCalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRadius2(double value) {
    final _$actionInfo = _$_SpaceCalculatorStoreActionController.startAction(
        name: '_SpaceCalculatorStore.setRadius2');
    try {
      return super.setRadius2(value);
    } finally {
      _$_SpaceCalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHeight2(double value) {
    final _$actionInfo = _$_SpaceCalculatorStoreActionController.startAction(
        name: '_SpaceCalculatorStore.setHeight2');
    try {
      return super.setHeight2(value);
    } finally {
      _$_SpaceCalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRadius3(double value) {
    final _$actionInfo = _$_SpaceCalculatorStoreActionController.startAction(
        name: '_SpaceCalculatorStore.setRadius3');
    try {
      return super.setRadius3(value);
    } finally {
      _$_SpaceCalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
length1: ${length1},
width1: ${width1},
height1: ${height1},
radius2: ${radius2},
height2: ${height2},
radius3: ${radius3},
volume1: ${volume1},
volume2: ${volume2},
volume3: ${volume3},
totalVolume: ${totalVolume}
    ''';
  }
}
