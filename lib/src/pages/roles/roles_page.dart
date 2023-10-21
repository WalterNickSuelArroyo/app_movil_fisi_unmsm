import 'package:app_movil_fisi_unmsm/src/models/Rol.dart';
import 'package:app_movil_fisi_unmsm/src/pages/roles/roles_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RolesPage extends StatelessWidget {

  RolesController con = Get.put(RolesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Seleccionar el rol',
          style: TextStyle(
            color: Color.fromRGBO(12, 41, 71, 1),
          ),),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.15),
        child: ListView(
          children: con.user.roles != null ? con.user.roles!.map((Rol rol) {
            return _cardRol(rol);
          }).toList() : [],
        ),
      ),
    );
  }
  Widget _cardRol(Rol rol) {
    return GestureDetector(
      onTap: () => con.goToPageRol(rol),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 130,
            child: FadeInImage(
              image: NetworkImage(rol.image!),
              fit: BoxFit.contain,
              fadeInDuration: const Duration(milliseconds: 50),
              placeholder: const AssetImage('assets/img/no-image.png'),
            ),             
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              rol.name ?? '',
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(12, 41, 71, 1),
                fontWeight: FontWeight.w800
              ),
              
            ),
          )
        ],
      ),
    );
  }
}