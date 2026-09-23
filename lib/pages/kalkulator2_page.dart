import 'package:flutter/material.dart';
import 'package:latihan_flutter/components/custom_textfield.dart';
import 'package:latihan_flutter/controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class Kalkulator2Page extends StatelessWidget {
  Kalkulator2Page({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("kalkulator")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextfield(txtController: txtAngka1, myHint: "input angka 1"),
            // === ditambah: jarak antar elemen
            const SizedBox(height: 8),
            CustomTextfield(txtController: txtAngka2, myHint: "input angka 2"),
            const SizedBox(height: 16),

            // === diubah: 4 tombol dibungkus Row biar sejajar horizontal
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      int angka1 = int.parse(txtAngka1.text);
                      int angka2 = int.parse(txtAngka2.text);
                      controller.tambah(angka1, angka2);
                    },
                    // === diubah: teks jadi putih & lebih besar
                    child: const Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      int angka1 = int.parse(txtAngka1.text);
                      int angka2 = int.parse(txtAngka2.text);
                      controller.kurang(angka1, angka2);
                    },
                    child: const Text(
                      "-",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      int angka1 = int.parse(txtAngka1.text);
                      int angka2 = int.parse(txtAngka2.text);
                      controller.kali(angka1, angka2);
                    },
                    child: const Text(
                      "x",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      int angka1 = int.parse(txtAngka1.text);
                      int angka2 = int.parse(txtAngka2.text);
                      controller.bagi(angka1, angka2);
                    },
                    child: const Text(
                      "/",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),

            Obx(
              () => Text(
                controller.hasil.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}