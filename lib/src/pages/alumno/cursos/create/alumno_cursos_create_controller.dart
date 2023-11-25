import 'package:app_movil_fisi_unmsm/src/models/curso.dart';
import 'package:app_movil_fisi_unmsm/src/models/response_api.dart';
import 'package:app_movil_fisi_unmsm/src/providers/cursos_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AlumnoCursoCreateController extends GetxController {
  TextEditingController escuelaController = TextEditingController();
  TextEditingController cicloController = TextEditingController();
  TextEditingController materiaController = TextEditingController();
  CursosProvider cursosProvider = CursosProvider();

  void createAsignacion() async {
    String escuela = escuelaController.text;
    String ciclo = cicloController.text;
    String materia = materiaController.text;


    if (escuela.isNotEmpty && ciclo.isNotEmpty && materia.isNotEmpty) {
      Curso curso = Curso(
        escuela: escuela,
        ciclo: ciclo,
        materia: materia
      );
      ResponseApi responseApi = await cursosProvider.create(curso);
      Get.snackbar('Proceso terminado', responseApi.message ?? '');
      if (responseApi.success == true) {
        clearForm();
      }
    }
    else {
      Get.snackbar('Formulario no valido', 'Ingrese todos los campos para crear la asignacion');
    }
  }
  void clearForm() {
    escuelaController.text = '';
    cicloController.text = '';
    materiaController.text = '';
  }
}