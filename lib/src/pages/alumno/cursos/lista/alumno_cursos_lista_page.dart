
import 'package:app_movil_fisi_unmsm/src/pages/alumno/cursos/lista/alumno_cursos_lista_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: must_be_immutable
class AlumnoCursosListaPage extends StatelessWidget {
  AlumnoCursosListaController con =
      Get.put(AlumnoCursosListaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Obx(
        () => SingleChildScrollView(
          
          child: Column(
            children: [
              SizedBox(height: 100.0),
              _tituloCurso(), // Espacio adicional al principio
              ...List<Widget>.generate(
                con.cursos.length,
                (index) {

                  final curso = con.cursos[index];

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
                          'Escuel: ${curso.escuela ?? ''}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Ciclo: ${curso.ciclo ?? ''}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Materia: ${curso.materia ?? ''}',
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
  Widget _tituloCurso() {
    return Container(
      child: Column(
        children: const [
          Text('Mis cursos',
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