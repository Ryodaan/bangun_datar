// import 'dart:ffi';
import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});

  PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PersegiPage"),
      ),
      body: ListView(
        children: [
          Image.asset(
            "asset/persegi.jpg",
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi",
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
                    "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku")),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _persegiController.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Sisi",
                        hintText: "Masukkan Sisi",
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
                              _persegiController.hitungLuas();
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
                              _persegiController.hitungKeliling();
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
                  _persegiController.hasil.value,
                  style: TextStyle(color: _persegiController.textColor.value),
                )),
          ),
        ],
      ),
    );
  }
}
