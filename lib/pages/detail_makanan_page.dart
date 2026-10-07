import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/models/makanan_model.dart';

class DetailMakananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final makanan = Get.arguments as MakananModel;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Makanan"),
      ),
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
          children: [
            Text(
              makanan.namaMakanan,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Image.network(
              makanan.gambarMakanan,
              width: 300,
              height: 200,
            ),
            SizedBox(height: 10),
            Text(makanan.hargaMakanan),
            SizedBox(height: 10),
            Text(makanan.deskripsiMakanan),
        ],
      )
    ),
    ),
    );
  }
}