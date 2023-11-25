
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_movil_fisi_unmsm/src/pages/administrador/asignaciones/lista/administrador_asignaciones_lista_controller.dart';

// ignore: must_be_immutable
class AdministradorAsignacionesListaPage extends StatelessWidget {
  AdministradorAsignacionesListaController con =
      Get.put(AdministradorAsignacionesListaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Obx(
        () => SingleChildScrollView(
          
          child: Column(
            children: [
              SizedBox(height: 100.0),
              _tituloAsignacion(), // Espacio adicional al principio
              ...List<Widget>.generate(
                con.asignaciones.length,
                (index) {

                  final asignacion = con.asignaciones[index];

                  return Container(
                    width: 430,
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(16, 54, 95, 1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Curso: ${asignacion.curso ?? ''}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hora Inicio: ${asignacion.hora_inicio ?? ''}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hora fin: ${asignacion.hora_fin ?? ''}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Pabellon: ${asignacion.pabellon ?? ''}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Aula: ${asignacion.aula ?? ''}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _tituloAsignacion() {
    return Container(
      child: Column(
        children: const [
          Text('Mis asignaciones',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(16, 54, 95, 1)
          ),)
        ],
      ),
    );
  }

}