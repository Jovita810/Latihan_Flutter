import 'package:get/state_manager.dart';
import 'package:latihan_flutter/models/makanan_model.dart';

class ListMakananController extends GetxController{
  List<MakananModel> listMakanan = [
    MakananModel(namaMakanan: "Soto Ayam", hargaMakanan: "10.000", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6EoVEfuiC0popmi5kR5T9Daci2eHROQcRvFjdUMkl-eHRnB7y0Nf9U8Q&s=10", deskripsiMakanan: "Soto ayam adalah sup ayam berkuah kuning khas Indonesia yang gurih dan kaya rempah."),
    MakananModel(namaMakanan: "Lentog", hargaMakanan: "8.000", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaPYdEBGVdR3oHeWkdPmIyaounfmS5-3B2APIoDAtBmlQ9cr2ea8uNAW0&s=10", deskripsiMakanan: "Lentog adalah makanan khas Kudus berupa lontong dengan sayur nangka muda, tahu, dan kuah santan yang gurih dan kaya rasa."),
    MakananModel(namaMakanan: "Pindang Kerbau", hargaMakanan: "20.000", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScwJMJwwqE5o7EIJopR8Pch2KNRHL27cDtQH7M0RN8OziHiltVbjDk5bU&s=10", deskripsiMakanan: "Pindang kerbau adalah makanan khas Kudus berupa irisan daging kerbau dengan kuah cokelat yang gurih, manis, dan kaya rempah."),
    MakananModel(namaMakanan: "Jenang", hargaMakanan: "15.000", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwJ4llazZfm183hLfhCmrHvNqusJ0uH37O65jJAGbdA&s=10", deskripsiMakanan: "Jenang adalah makanan khas Kudus berupa jajanan manis bertekstur kenyal dan lembut yang terbuat dari tepung beras, gula merah, dan santan."),
    MakananModel(namaMakanan: "Mendoan", hargaMakanan: "5.000", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO3oZkUo_AGoR8h-tU3TNpqAL_HD_Gr0302ocAybFcPA&s=10", deskripsiMakanan: "Mendoan adalah makanan khas Jawa berupa tempe yang dibalut adonan tepung dan digoreng setengah matang, dengan rasa gurih dan tekstur lembut."),
  ];
}