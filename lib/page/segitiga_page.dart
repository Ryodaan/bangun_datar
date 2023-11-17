// import 'dart:ffi';
import 'package:bangun_datar_kelas_b/controller/persegi_panjang_controller.dart';
import 'package:bangun_datar_kelas_b/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});

  SegitigaController _SegitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SegitigaPage"),
      ),
      body: ListView(
        children: [
          Image.asset(
            "asset/segitiga.jpg",
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Segitiga",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Sebuah segitiga adalah poligon dengan tiga ujung dan tiga simpul. Ini adalah salah satu bentuk dasar dalam geometri. Segitiga dengan simpul A, B, dan C dilambangkan. Dalam geometri Euclidean, setiap tiga titik, ketika non-collinear, menentukan segitiga unik dan sekaligus, sebuah bidang unik")),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _SegitigaController.tinggi = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Tinggi",
                        hintText: "Masukkan Tinggi",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _SegitigaController.alas = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Alas",
                        hintText: "Masukkan Alas",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _SegitigaController.panjang1 = double.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Panjang 1",
                        hintText: "Masukkan Panjang 1",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _SegitigaController.panjang2 = double.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Panjang 2",
                        hintText: "Masukkan Panjang 2",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _SegitigaController.panjang3 = double.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Panjang 3",
                        hintText: "Masukkan Panjang 3",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              _SegitigaController.hitungLuas();
                            },
                            child: const Text(
                              "Hitung luas",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.green))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              _SegitigaController.hitungKeliling();
                            },
                            child: const Text(
                              "Hitung keliling",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.yellow))),
                      ),
                    ]),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Obx(() => Text(
              _SegitigaController.hasil.value,
              style: TextStyle(color: _SegitigaController.textColor.value),
            )),
          ),
        ],
      ),
    );
  }
}
