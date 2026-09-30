import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/components/custom_button.dart';
import 'package:latihan_flutter/components/custom_textfield.dart';
import 'package:latihan_flutter/routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Column(
        children: [
          CustomTextfield(
            txtController: txtNama,
            myHint: "Input name"
          ),
          
          const SizedBox(height: 9),

          CustomTextfield(
            txtController: txtAlamat,
            myHint: "Input alamat",
          ),

          const SizedBox(height: 9),

          CustomTextfield(
            txtController: txtEmail,
            myHint: "Input email",
          ),

          const SizedBox(height: 9),

          CustomTextfield(
            txtController: txtNoWa,
            myHint: "Input no WA",
          ),
          
          const SizedBox(height: 9),

          CustomTextfield(
            txtController: txtJenisKelamin,
            myHint: "Input jenis kelamin",
          ),

          const SizedBox(height: 22),

          CustomButton(
            onTap: () {
              // get to untuk pindah
              // argument untuk kirim data
              // get off
              Get.toNamed(
                Routes.confirm_registration,
                arguments: {
                  'name': txtNama.text.toString(),
                  'alamat': txtAlamat.text.toString(),
                  'email': txtEmail.text.toString(),
                  'no_wa': txtNoWa.text.toString(),
                  'jenis_kelamin': txtJenisKelamin.text.toString(), // dari widget kalian,
                  // dll
                },
              );
            },
            myButtonText: "Send",
          ),
        ],
      ),
    );
  }
}
///