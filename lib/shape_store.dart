import 'package:mobx/mobx.dart';

part 'shape_store.g.dart'; // Bagian ini dihasilkan oleh build_runner

class ShapeStore = _ShapeStore with _$ShapeStore;

abstract class _ShapeStore with Store {
  @observable
  double sisi = 0.0;

  @observable
  double alas = 0.0;

  @observable
  double tinggi = 0.0;

  @observable
  double sisiAtas = 0.0;

  @observable
  double sisibawah = 0.0;

  @computed
  double get hitungPersegi => sisi * sisi;

  @computed
  double get hitungPersegiPanjang => alas * tinggi;

  @computed
  double get hitungTrapesium => ((sisiAtas + sisibawah) / 2) * tinggi;

  @computed
  double get hitungSegitiga => (alas * tinggi) / 2;

  @action
  void setSisi(double value) => sisi = value;

  @action
  void setAlas(double value) => alas = value;

  @action
  void setTinggi(double value) => tinggi = value;

  @action
  void setSisiAtas(double value) => sisiAtas = value;

  @action
  void setSisiBawah(double value) => sisibawah = value;
}
