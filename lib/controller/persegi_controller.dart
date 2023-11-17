import "package:flutter/material.dart";
// import 'dart:ffi';
import "package:get/get.dart";

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi*sisi;
    hasil.value = "Hasil Perhitungan Luas dari $sisi * $sisi = $hitung";
    textColor.value = Colors.black;
  }

  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil Keliling dari $sisi + $sisi + $sisi + $sisi = $hitung";
    textColor.value = Colors.black;
  }
}