// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shape_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ShapeStore on _ShapeStore, Store {
  Computed<double>? _$hitungPersegiComputed;

  @override
  double get hitungPersegi =>
      (_$hitungPersegiComputed ??= Computed<double>(() => super.hitungPersegi,
              name: '_ShapeStore.hitungPersegi'))
          .value;
  Computed<double>? _$hitungPersegiPanjangComputed;

  @override
  double get hitungPersegiPanjang => (_$hitungPersegiPanjangComputed ??=
          Computed<double>(() => super.hitungPersegiPanjang,
              name: '_ShapeStore.hitungPersegiPanjang'))
      .value;
  Computed<double>? _$hitungTrapesiumComputed;

  @override
  double get hitungTrapesium => (_$hitungTrapesiumComputed ??= Computed<double>(
          () => super.hitungTrapesium,
          name: '_ShapeStore.hitungTrapesium'))
      .value;
  Computed<double>? _$hitungSegitigaComputed;

  @override
  double get hitungSegitiga =>
      (_$hitungSegitigaComputed ??= Computed<double>(() => super.hitungSegitiga,
              name: '_ShapeStore.hitungSegitiga'))
          .value;

  late final _$sisiAtom = Atom(name: '_ShapeStore.sisi', context: context);

  @override
  double get sisi {
    _$sisiAtom.reportRead();
    return super.sisi;
  }

  @override
  set sisi(double value) {
    _$sisiAtom.reportWrite(value, super.sisi, () {
      super.sisi = value;
    });
  }

  late final _$alasAtom = Atom(name: '_ShapeStore.alas', context: context);

  @override
  double get alas {
    _$alasAtom.reportRead();
    return super.alas;
  }

  @override
  set alas(double value) {
    _$alasAtom.reportWrite(value, super.alas, () {
      super.alas = value;
    });
  }

  late final _$tinggiAtom = Atom(name: '_ShapeStore.tinggi', context: context);

  @override
  double get tinggi {
    _$tinggiAtom.reportRead();
    return super.tinggi;
  }

  @override
  set tinggi(double value) {
    _$tinggiAtom.reportWrite(value, super.tinggi, () {
      super.tinggi = value;
    });
  }

  late final _$sisiAtasAtom =
      Atom(name: '_ShapeStore.sisiAtas', context: context);

  @override
  double get sisiAtas {
    _$sisiAtasAtom.reportRead();
    return super.sisiAtas;
  }

  @override
  set sisiAtas(double value) {
    _$sisiAtasAtom.reportWrite(value, super.sisiAtas, () {
      super.sisiAtas = value;
    });
  }

  late final _$sisibawahAtom =
      Atom(name: '_ShapeStore.sisibawah', context: context);

  @override
  double get sisibawah {
    _$sisibawahAtom.reportRead();
    return super.sisibawah;
  }

  @override
  set sisibawah(double value) {
    _$sisibawahAtom.reportWrite(value, super.sisibawah, () {
      super.sisibawah = value;
    });
  }

  late final _$_ShapeStoreActionController =
      ActionController(name: '_ShapeStore', context: context);

  @override
  void setSisi(double value) {
    final _$actionInfo =
        _$_ShapeStoreActionController.startAction(name: '_ShapeStore.setSisi');
    try {
      return super.setSisi(value);
    } finally {
      _$_ShapeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAlas(double value) {
    final _$actionInfo =
        _$_ShapeStoreActionController.startAction(name: '_ShapeStore.setAlas');
    try {
      return super.setAlas(value);
    } finally {
      _$_ShapeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTinggi(double value) {
    final _$actionInfo = _$_ShapeStoreActionController.startAction(
        name: '_ShapeStore.setTinggi');
    try {
      return super.setTinggi(value);
    } finally {
      _$_ShapeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSisiAtas(double value) {
    final _$actionInfo = _$_ShapeStoreActionController.startAction(
        name: '_ShapeStore.setSisiAtas');
    try {
      return super.setSisiAtas(value);
    } finally {
      _$_ShapeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSisiBawah(double value) {
    final _$actionInfo = _$_ShapeStoreActionController.startAction(
        name: '_ShapeStore.setSisiBawah');
    try {
      return super.setSisiBawah(value);
    } finally {
      _$_ShapeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sisi: ${sisi},
alas: ${alas},
tinggi: ${tinggi},
sisiAtas: ${sisiAtas},
sisibawah: ${sisibawah},
hitungPersegi: ${hitungPersegi},
hitungPersegiPanjang: ${hitungPersegiPanjang},
hitungTrapesium: ${hitungTrapesium},
hitungSegitiga: ${hitungSegitiga}
    ''';
  }
}
