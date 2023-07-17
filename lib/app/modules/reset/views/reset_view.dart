import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resto_firebase/app/controllers/auth_controller.dart';

import '../controllers/reset_controller.dart';

class ResetView extends GetView<ResetController> {
  final emailC = TextEditingController();
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade700,
        title: Text('Reset Password',
            style: GoogleFonts.montserrat(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
              child: TextField(
                controller: emailC,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email), // Logo email
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "example@gmail.com",
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent.shade700),
              onPressed: () => authC.reset(emailC.text),
              child: Text(
                "Reset",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sudah Punya Akun?",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                  ),
                ),
                TextButton(
                    onPressed: () => Get.back(),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 17),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
