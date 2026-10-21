import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/controller/list_makanan_controller.dart';
import 'package:latihan_flutter/pages/detail_makanan_page.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Ini home page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 180,
        child: Obx(
            () => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.listMakanan.length,
            itemBuilder: (context, index){
              final makanan = controller.listMakanan[index];
                return SizedBox( 
                  width: 140,
                  child: Card( 
                    child: Padding( 
                      padding: EdgeInsets.all(8),
                      child: Column( 
                        children: [
                          Image.network( 
                            makanan.gambarMakanan,
                            height: 100,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8), 
                          Text(
                            makanan.namaMakanan,
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              );
            },
          ),
        ),
      ),
    );
  }
}