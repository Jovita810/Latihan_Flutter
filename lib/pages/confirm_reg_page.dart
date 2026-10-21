import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/components/custom_button.dart';
import 'package:latihan_flutter/controller/confirm_reg_controller.dart';

class ConfirmRegPage extends StatelessWidget {

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama: " + controller.nama,
            style: TextStyle(fontSize: 21, color: Colors.black),
          ),
          
          Text(
            "Alamat: " + controller.alamat,
            style: TextStyle(fontSize: 21, color: Colors.black),
          ),

          Text(
            "Email: " + controller.email,
            style: TextStyle(fontSize: 21, color: Colors.black),
          ),

          Text(
            "No wa: " + controller.noWA,
            style: TextStyle(fontSize: 21, color: Colors.black),
          ),

          Text(
            "Jenis kelamin: " + controller.jenisKelamin,
            style: TextStyle(fontSize: 21, color: Colors.black),
          ),

          const SizedBox(height: 22),

          CustomButton(
            onTap: () {
              Get.back();
            },
            myButtonText: "Oke",
          ),
        ],
      ),
    );
  }
}