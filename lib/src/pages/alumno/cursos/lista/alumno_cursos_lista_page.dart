import 'package:app_movil_fisi_unmsm/src/pages/administrador/asignaciones/lista/administrador_asignaciones_lista_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/alumno/cursos/lista/alumno_cursos_lista_controller.dart';
import 'package:app_movil_fisi_unmsm/src/pages/alumno/profile/info/alumno_profile_info_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/profesor/cursos/lista/profesor_cursos_lista_page.dart';
import 'package:app_movil_fisi_unmsm/src/utils/custom_animated_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AlumnoCursosListaPage extends StatelessWidget {
  AlumnoCursosListaController con = Get.put(AlumnoCursosListaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomBar(),
      body: Obx(() =>  IndexedStack(
        index: con.indexTab.value,
        children: [
          AdministradorAsignacionesListaPage(),
          ProfesorCursosListaPage(),
          AlumnoProfileInfoPage(),
        ],
      ))
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
          icon: Icon(Icons.apps), 
          title: Text('Home'),
          activeColor: Colors.white,
          inactiveColor: Color.fromRGBO(20, 68, 119, 1)
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.list), 
          title: Text('Mis pedidos'),
          activeColor: Colors.white,
          inactiveColor: Color.fromRGBO(20, 68, 119, 1)
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person), 
          title: Text('Perfil'),
          activeColor: Colors.white,
          inactiveColor: Color.fromRGBO(20, 68, 119, 1)
        ),
      ],
    ));
  }
}
