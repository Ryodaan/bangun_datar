import "package:flutter/material.dart";
// import 'dart:ffi';
import "package:get/get.dart";

class SegitigaController extends GetxController{
  int alas =0;
  int tinggi =0;
  double setengah = 0.5;
  double panjang1 = 0;
  double panjang2 = 0;
  double panjang3 = 0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = setengah * alas * tinggi;
    hasil.value = "Hasil Perhitungan Luas dari $setengah * $alas * $tinggi = $hitung";
    textColor.value = Colors.black;
  }

  void hitungKeliling(){
    double hitung = panjang1 + panjang2 + panjang3;
    hasil.value = "Hasil Keliling dari $panjang1 + $panjang2 + $panjang3 = $hitung";
    textColor.value = Colors.black;
  }
}