import 'package:app_movil_fisi_unmsm/src/models/curso.dart';
import 'package:app_movil_fisi_unmsm/src/providers/cursos_provider.dart';
import 'package:get/get.dart';

class AlumnoCursosListaController extends GetxController {
  final cursosProvider = CursosProvider();
  var cursos = <Curso>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Llamar a la función que carga las asignaciones al iniciar el controlador
    getCursos();
  }

  Future<void> getCursos() async {
    try {
      final result = await cursosProvider.getAll();
      cursos.assignAll(result);
      update();
    } catch (error) {
      print("Error al obtener los cursos: $error");
    }
  }
}
