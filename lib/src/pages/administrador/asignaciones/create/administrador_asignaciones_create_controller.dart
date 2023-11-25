import 'package:app_movil_fisi_unmsm/src/models/asignacion.dart';
import 'package:app_movil_fisi_unmsm/src/models/response_api.dart';
import 'package:app_movil_fisi_unmsm/src/providers/asignaciones_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AdministradorAsignacionesCreateController extends GetxController {
  TextEditingController pabellonController = TextEditingController();
  TextEditingController aulaController = TextEditingController();
  TextEditingController cursoController = TextEditingController();
  TextEditingController profesorController = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  TextEditingController horaInicioController = TextEditingController();
  TextEditingController horaFinController = TextEditingController();
  AsignacionesProvider asignacionesProvider = AsignacionesProvider();

  void createAsignacion() async {
    String pabellon = pabellonController.text;
    String aula = aulaController.text;
    String curso = cursoController.text;
    String profesor = profesorController.text;
    String fecha = fechaController.text;
    String horaInicio = horaInicioController.text;
    String horaFin = horaFinController.text;

    if (pabellon.isNotEmpty && aula.isNotEmpty && curso.isNotEmpty && profesor.isNotEmpty && fecha.isNotEmpty && horaInicio.isNotEmpty && horaFin.isNotEmpty) {
      Asignacion asignacion = Asignacion(
        pabellon: pabellon,
        aula: aula,
        curso: curso,
        profesor: profesor,
        fecha: fecha,
        hora_inicio: horaInicio,
        hora_fin: horaFin
      );
      ResponseApi responseApi = await asignacionesProvider.create(asignacion);
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
    pabellonController.text = '';
    aulaController.text = '';
    cursoController.text = '';
    profesorController.text = '';
    fechaController.text = '';
    horaInicioController.text = '';
    horaFinController.text = '';
  }
}