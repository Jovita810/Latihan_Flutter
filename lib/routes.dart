import 'package:get/get.dart';
import 'package:latihan_flutter/pages/confirm_reg_page.dart';
import 'package:latihan_flutter/pages/detail_makanan_page.dart';
import 'package:latihan_flutter/pages/list_makanan_page.dart';
import 'package:latihan_flutter/pages/registration_page.dart';
import 'package:latihan_flutter/pages/main_menu_page.dart';
import 'package:latihan_flutter/pages/login_clone_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String main_menu = "/main_menu";
  static const String login_clone = "/login_clone";
  // Page lainnya disini

  // Untuk kt daftarkan di main dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
    GetPage(name: main_menu, page: () => MainMenuPage()),
    GetPage(name: login_clone, page: () => LoginClonePage()),
  ];
}