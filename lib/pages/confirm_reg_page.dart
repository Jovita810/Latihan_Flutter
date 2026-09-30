import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/components/custom_button.dart';

class ConfirmRegPage extends StatelessWidget {
  const ConfirmRegPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments;
    final String nama = arguments['name'];
    final String alamat= arguments['alamat'];
    final String email= arguments['email'];
    final String noWA= arguments['no_wa'];
    final String jenisKelamin = arguments['jenis_kelamin'];

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama: " + nama,
            style: TextStyle(fontSize: 21, color: Colors.black),
          ),
          
          Text(
            "Alamat: " + alamat,
            style: TextStyle(fontSize: 21, color: Colors.black),
          ),

          Text(
            "Email: " + email,
            style: TextStyle(fontSize: 21, color: Colors.black),
          ),

          Text(
            "No wa: " + noWA,
            style: TextStyle(fontSize: 21, color: Colors.black),
          ),

          Text(
            "Jenis kelamin :" + jenisKelamin,
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