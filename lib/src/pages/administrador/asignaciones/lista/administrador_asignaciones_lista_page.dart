import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_movil_fisi_unmsm/src/pages/administrador/asignaciones/lista/administrador_asignaciones_lista_controller.dart';

// ignore: must_be_immutable
class AdministradorAsignacionesListaPage extends StatelessWidget {
  AdministradorAsignacionesListaController con = Get.put(AdministradorAsignacionesListaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Lista de asignaciones del administrador'),
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
