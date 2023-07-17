import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddProductController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController hargaC;
  late TextEditingController tipeC;
  late TextEditingController imgC;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void add(String nama, String harga, String tipe, String img_url) async {
    CollectionReference menu = firestore.collection("menu");

    try {
      String dateAdd = DateTime.now().toIso8601String();
      await menu.add({
        "nama": nama,
        "harga": harga,
        "tipe": tipe,
        "img_url": img_url,
        "time": dateAdd
      });
      Get.defaultDialog(
          title: "Berhasil",
          middleText: "Data Berhasil Ditambahkan",
          onConfirm: () {
            nameC.clear();
            hargaC.clear();
            tipeC.clear();
            imgC.clear();
            Get.back();
            Get.back();
          },
          textConfirm: "OK");
    } catch (e) {
      print(e);
      Get.defaultDialog(
          title: "Terjadi Kesalahan", middleText: "Data Gagal Ditambahkan");
    }
  }

  @override
  void onInit() {
    nameC = TextEditingController();
    hargaC = TextEditingController();
    tipeC = TextEditingController();
    imgC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nameC.dispose();
    hargaC.dispose();
    tipeC.dispose();
    imgC.dispose();
    super.onClose();
  }
}
