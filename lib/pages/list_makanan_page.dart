import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/controller/list_makanan_controller.dart';
import 'package:latihan_flutter/pages/detail_makanan_page.dart';

class ListMakananPage extends StatelessWidget {
  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("List Makanan"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index){
            final makanan = controller.listMakanan[index];
            return Card(
              child: InkWell(
                onTap: () {
                  Get.to(
                    DetailMakananPage(),
                    arguments: makanan,
                  );
                },
                child: ListTile(
                  title: Text(
                    makanan.namaMakanan,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(makanan.hargaMakanan),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            );
        },
        ),
      ),
    );
  }
}