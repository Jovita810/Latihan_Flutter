import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:latihan_flutter/menu/home_page.dart';
import 'package:latihan_flutter/pages/main_menu_page.dart';

class LoginCloneController extends GetxController{

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  void login() async{
    if(txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty){
      Get.snackbar("error", "username dan password harus terisi");
    }else{
      try{
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");
      
      // Proses hit API
      final response = await http.post(url, body: {
        "username" : txtUsername.text.toString(),
        "password" : txtPassword.text.toString()
      });

      isLoading.value = false;
      if(response.statusCode == 200){
        final data = jsonDecode(response.body);
        if(data['status'] == true){
          // String status = data['message']
          Get.snackbar("berhasil", data['message']);
          Get.off(() => MainMenuPage());
        }else{
          Get.snackbar("gagal", data['message']);
        }
      }else{
        Get.snackbar("gagal", "cek koneksi internet");
      }
      
      } catch (e) {
        Get.snackbar("gagal", e.toString());
        print("error nya"+e.toString());
      }
    }
  }
}