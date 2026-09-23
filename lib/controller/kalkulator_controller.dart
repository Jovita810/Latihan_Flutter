import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  
  var hasil = 0.obs;    

  void tambah(int angka1, int angka2){
    int hasilTambah = angka1 + angka2;
    hasil.value = hasilTambah;
  }
  void kurang(int angkaKurang1, int angkaKurang2){
    int hasilKurang = angkaKurang1 - angkaKurang2;
    hasil.value = hasilKurang;
  }

  void kali(int angkaKali1, int angkaKali2){
    int hasilKali = angkaKali1 * angkaKali2;
    hasil.value = hasilKali;
  }

  void bagi(int angkaBagi1, int angkaBagi2) {
    int hasilBagi = angkaBagi1 ~/ angkaBagi2;
    hasil.value = hasilBagi;
  }

  }
