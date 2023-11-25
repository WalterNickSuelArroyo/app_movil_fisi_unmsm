import 'package:app_movil_fisi_unmsm/src/pages/alumno/cursos/create/alumno_cursos_create_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/alumno/cursos/lista/alumno_cursos_lista_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/alumno/fisichat/alumno_fisiChat_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/alumno/home/alumno_home_controller.dart';
import 'package:app_movil_fisi_unmsm/src/pages/alumno/profile/info/alumno_profile_info_page.dart';
import 'package:app_movil_fisi_unmsm/src/utils/custom_animated_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AlumnoHomePage extends StatelessWidget {
  AlumnoHomeController con = Get.put(AlumnoHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomBar(),
      body: Obx(() => IndexedStack(
        index: con.indexTab.value,
        children: [
          AlumnoCursosListaPage(),
          AlumnoCursosCreatePage(),
          AlumnoFisiChatPage(),
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
          title: Text('Inicio'),
          activeColor: Colors.white,
          inactiveColor: Colors.black
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.category), 
          title: Text('Crear cursos'),
          activeColor: Colors.white,
          inactiveColor: Colors.black
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.chat), 
          title: Text('FisiChat'),
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