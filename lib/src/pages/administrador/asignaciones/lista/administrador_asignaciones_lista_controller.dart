import 'package:app_movil_fisi_unmsm/src/models/asignacion.dart';
import 'package:app_movil_fisi_unmsm/src/providers/asignaciones_provider.dart';
import 'package:get/get.dart';

class AdministradorAsignacionesListaController extends GetxController {
  final asignacionesProvider = AsignacionesProvider();
  var asignaciones = <Asignacion>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Llamar a la función que carga las asignaciones al iniciar el controlador
    getAsignaciones();
  }

  Future<void> getAsignaciones() async {
    try {
      final result = await asignacionesProvider.getAll();
      asignaciones.assignAll(result);
      update();
    } catch (error) {
      print("Error al obtener las asignaciones: $error");
    }
  }
}
