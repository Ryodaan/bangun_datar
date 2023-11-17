import 'package:bangun_datar_kelas_b/page/lingkaran_page.dart';
import 'package:bangun_datar_kelas_b/page/persegi_page.dart';
import 'package:bangun_datar_kelas_b/page/persegi_panjang_page.dart';
import 'package:bangun_datar_kelas_b/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PersegiPage()));
                },
                child: CustomMenu(
                    imageAsset: "asset/persegi.jpg", title: "Persegi"),
              )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PersegiPanjangPage()));
                    },
                    child: CustomMenu(
                        imageAsset: "asset/persegi panjang.jpg", title: "Persegi Panjang"),
                  )),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SegitigaPage()));
                  },
                  child: CustomMenu(
                      imageAsset: "asset/segitiga.jpg",
                      title: "Segitiga"),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LingkaranPage()));
                  },
                  child: CustomMenu(
                      imageAsset: "asset/Lingkaran.png",
                      title: "Lingkaran"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(imageAsset, height: 250,),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      color: Colors.blue,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    );
  }
}
