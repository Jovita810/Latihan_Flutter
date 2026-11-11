import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/controller/list_makanan_controller.dart';
import 'package:latihan_flutter/controller/team_controller.dart';
import 'package:latihan_flutter/menu/menu_drawer.dart';

class HomePage extends StatelessWidget {
  //final controller = Get.put(ListMakananController());
  final controller = Get.put(TeamController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // appBar: AppBar(
    //   leading: Builder(
    //     builder: (context) => IconButton(
    //       icon: Icon(Icons.menu),
    //       onPressed: () {
    //         Scaffold.of(context).openDrawer();
    //       },
    //     ),
    //   ),
    //   title: Text("Ini home page"),
    // ),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 180,
        child: Obx(
            () => ListView.builder(
            scrollDirection: Axis.horizontal,
            //itemCount: controller.listMakanan.length,
            itemCount: controller.listTeam.length,
            itemBuilder: (context, index){
              //final makanan = controller.listMakanan[index];
              final team = controller.listTeam[index];
                return SizedBox( 
                  width: 140,
                  child: Card( 
                    child: Padding( 
                      padding: EdgeInsets.all(8),
                      child: Column( 
                        children: [
                          Image.network( 
                            //makanan.gambarMakanan,
                            team.gambarTeam,
                            height: 100,
                            width: 120,
                            //fit: BoxFit.cover,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 8), 
                          Text(
                            //makanan.namaMakanan,
                            team.namaTeam,
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