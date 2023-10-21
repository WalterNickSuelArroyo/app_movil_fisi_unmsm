import 'package:app_movil_fisi_unmsm/src/models/user.dart';
import 'package:app_movil_fisi_unmsm/src/pages/administrador/asignaciones/lista/administrador_asignaciones_lista_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/alumno/cursos/lista/alumno_cursos_lista_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/alumno/profile/info/alumno_profile_info_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/alumno/profile/update/alumno_profile_update_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/home/home_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/login/login_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/profesor/cursos/lista/profesor_cursos_lista_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/register/register_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/roles/roles_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

User userSession = User.fromJson(GetStorage().read('user') ?? {});

void main() async{
  await GetStorage.init();
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fisi Help',
      initialRoute: userSession.id != null ? userSession.roles!.length > 1 ? '/roles' : '/alumno/cursos/lista' : '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage(),),
        GetPage(name: '/register', page: () => RegisterPage(),),
        GetPage(name: '/home', page: () => HomePage(),),
        GetPage(name: '/roles', page: () => RolesPage(),),
        GetPage(name: '/administrador/asignaciones/lista', page: () => AdministradorAsignacionesListaPage(),),
        GetPage(name: '/profesor/cursos/lista', page: () => ProfesorCursosListaPage(),),
        GetPage(name: '/alumno/cursos/lista', page: () => AlumnoCursosListaPage(),),
        GetPage(name: '/alumno/profile/info', page: () => AlumnoProfileInfoPage(),),
        GetPage(name: '/alumno/profile/update', page: () => AlumnoProfileUpdatePage(),),
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