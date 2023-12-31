import 'package:app_movil_fisi_unmsm/src/pages/asignacionAula/asignacionAula_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/login/login_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/pabellon/pabellon_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/perfil/editar_perfil.dart';
import 'package:app_movil_fisi_unmsm/src/pages/piso/piso_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/perfil/usuario_perfil.dart';


import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fisi Help',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage(),),
        GetPage(name : '/perfil',page : ()=>ProfileApp(),),
        GetPage(name : '/editarperfil',page : ()=>EditProfileApp(),),

        GetPage(name: '/pabellon', page: () => const PabellonPage(),),
        GetPage(name: '/piso', page: () => const PisoPage(),),
        GetPage(name: '/asignacionaula', page: () => AsignacionAulaPage(),),
     
  
      ],
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(252, 147, 64, 1),
        colorScheme: const ColorScheme(
          brightness: Brightness.light, 
          primary: Color.fromRGBO(252, 147, 64, 1),
          onPrimary: Colors.grey, 
          secondary: Color.fromRGBO(252, 147, 64, 0.6), 
          onSecondary: Colors.grey, 
          error: Colors.grey, 
          onError: Colors.grey, 
          background: Colors.grey, 
          onBackground: Colors.grey, 
          surface: Colors.grey, 
          onSurface: Colors.grey)
      ),
      navigatorKey: Get.key,
    );
  }
}