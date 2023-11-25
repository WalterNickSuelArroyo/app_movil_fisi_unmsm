import 'package:app_movil_fisi_unmsm/src/environment/environment.dart';
import 'package:app_movil_fisi_unmsm/src/models/asignacion.dart';
import 'package:app_movil_fisi_unmsm/src/models/response_api.dart';
import 'package:app_movil_fisi_unmsm/src/models/user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AsignacionesProvider extends GetConnect {
  String url = Environment.API_URL + 'api/asignaciones';

    User userSession = User.fromJson(GetStorage().read('user') ?? {});

    Future<List<Asignacion>> getAll() async {
      Response response = await get(
        '$url/getAll', 
        headers: {
          'Content-Type': 'application/json',
          'Authorization': userSession.sessionToken ?? ''
        }
      );
      if (response.statusCode == 401) {
        Get.snackbar('Peticion denegada', 'Tu usuario no tiene permitido leer esta informacion');
        return [];
      }
      List<Asignacion> asignaciones = Asignacion.fromJsonList(response.body);
      return asignaciones;
    }

    Future<ResponseApi> create(Asignacion asignacion) async {
      Response response = await post(
        '$url/create', 
        asignacion.toJson(),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': userSession.sessionToken ?? ''
        }
      );

      ResponseApi responseApi = ResponseApi.fromJson(response.body);
      return responseApi;
    }
}

