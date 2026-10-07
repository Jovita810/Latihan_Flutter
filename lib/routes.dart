import 'package:get/get.dart';
import 'package:latihan_flutter/pages/confirm_reg_page.dart';
import 'package:latihan_flutter/pages/list_makanan_page.dart';
import 'package:latihan_flutter/pages/registration_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  // Page lainnya disini

  // Untuk kt daftarkan di main dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
  ];
}