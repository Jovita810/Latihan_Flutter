import 'package:get/get.dart';

class ConfirmRegController extends GetxController {
  late String nama;
  late String alamat;
  late String email;
  late String noWA;
  late String jenisKelamin;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    alamat = arguments['alamat'];
    email = arguments['email'];
    noWA = arguments['no_wa'];
    jenisKelamin = arguments['jenis_kelamin'];
  }
}