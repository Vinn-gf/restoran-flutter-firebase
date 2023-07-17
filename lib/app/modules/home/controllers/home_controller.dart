import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> streamData() {
    CollectionReference menu = firestore.collection("menu");
    return menu.orderBy("nama", descending: false).snapshots();
  }

  void deleteMenu(String idMenu) {
    DocumentReference dataMenu = firestore.collection("menu").doc(idMenu);
    try {
      Get.dialog(
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          title: Text(
            "Peringatan",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text(
            "Apakah Anda yakin ingin menghapus data?",
          ),
          actions: [
            TextButton(
              onPressed: () async {
                await dataMenu.delete();
                Get.back();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: Text(
                "Yes",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            TextButton(
              onPressed: Get.back,
              child: Text("No"),
            ),
          ],
        ),
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Data Gagal Dihapus",
        textConfirm: "Baik",
      );
    }
  }
}
