import 'package:get/get.dart';
import 'package:latihan_flutter/pages/confirm_reg_page.dart';
import 'package:latihan_flutter/pages/registration_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  // Page lainnya disini

  // Untuk kt daftarkan di main dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),
  ];
}