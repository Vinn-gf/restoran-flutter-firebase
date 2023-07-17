import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resto_firebase/app/modules/home/views/home_view.dart';

class EditProductController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController hargaC;
  late TextEditingController tipeC;
  late TextEditingController imgC;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>> getData(String idMenu) async {
    DocumentReference docRef = firestore.collection("menu").doc(idMenu);
    return docRef.get();
  }

  void edit(String nama, String harga, String tipe, String img_url,
      String idMenu) async {
    DocumentReference dataMenu = firestore.collection("menu").doc(idMenu);

    try {
      await dataMenu.update({
        "nama": nama,
        "harga": harga,
        "tipe": tipe,
        "img_url": img_url,
      });

      nameC.clear();
      hargaC.clear();
      tipeC.clear();
      imgC.clear();
      Get.offAll(() => HomeView());
    } catch (e) {
      print(e);
      Get.defaultDialog(
          title: "Terjadi Kesalahan", middleText: "Data Gagal Diubah");
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
