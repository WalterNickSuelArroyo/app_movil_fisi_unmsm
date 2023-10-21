import 'package:app_movil_fisi_unmsm/src/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController con = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => con.signOut(), 
          child: const Text(
            'Cerrar sesion',
            style: TextStyle(
              color: Colors.black
            ),
            ))
      ),
    );
  }
}