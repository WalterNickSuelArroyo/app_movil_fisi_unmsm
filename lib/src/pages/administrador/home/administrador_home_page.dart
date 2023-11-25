import 'package:app_movil_fisi_unmsm/src/pages/administrador/asignaciones/create/administrador_asignaciones_create_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/administrador/asignaciones/lista/administrador_asignaciones_lista_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/administrador/home/administrador_home_controller.dart';
import 'package:app_movil_fisi_unmsm/src/pages/alumno/profile/info/alumno_profile_info_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/profesor/cursos/lista/profesor_cursos_lista_page.dart';
import 'package:app_movil_fisi_unmsm/src/utils/custom_animated_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AdministradorHomePage extends StatelessWidget {
  AdministradorHomeController con = Get.put(AdministradorHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomBar(),
      body: Obx(() => IndexedStack(
        index: con.indexTab.value,
        children: [
          AdministradorAsignacionesListaPage(),
          AdministradorAsignacionesCreatePage(),
          AlumnoProfileInfoPage(),
        ],
      )),
    );
  }
  Widget _bottomBar() {
    return Obx(() =>  CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.amber,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      selectedIndex: con.indexTab.value,
      onItemSelected: (index) => con.changeTab(index),
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.list), 
          title: Text('Lista de Asig.'),
          activeColor: Colors.white,
          inactiveColor: Colors.black
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.category), 
          title: Text('Asignacion'),
          activeColor: Colors.white,
          inactiveColor: Colors.black
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person), 
          title: Text('Perfil'),
          activeColor: Colors.white,
          inactiveColor: Colors.black
        ),
      ],
    ));
  }
}