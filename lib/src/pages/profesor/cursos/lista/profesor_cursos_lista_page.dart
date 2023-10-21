import 'package:app_movil_fisi_unmsm/src/pages/profesor/cursos/lista/profesor_cursos_lista_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ProfesorCursosListaPage extends StatelessWidget {
  ProfesorCursosListaController con = Get.put(ProfesorCursosListaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Lista de cursos del profesor'),
            ElevatedButton(
                onPressed: () => con.signOut(),
                child: const Text(
                  'Cerrar sesion',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
