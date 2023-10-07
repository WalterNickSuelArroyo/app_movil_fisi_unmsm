import 'package:app_movil_fisi_unmsm/src/environment/environment.dart';
import 'package:app_movil_fisi_unmsm/src/models/user.dart';
//import 'package:flutter_app_delivery/src/models/response_api.dart';
import 'package:get/get.dart';

class UsersProvider extends GetConnect {
  String url = Enviroment.API_URL + 'api/users';

  Future<Response> create(User user) async {
    Response response = await post(
      '$url/create', 
      user.toJson(),
      headers: {
        'Content-Type': 'application/json'
      }
    );
    return response;
  }
  /*Future<ResponseApi> login(String email, String password) async {
    Response response = await post(
      '$url/login', 
      {
        'email': email,
        'password': password
      },
      headers: {
        'Content-Type': 'application/json'
      }
    );
    if (response.body == null) {
      Get.snackbar('Error', 'No se pudo ejecutar la peticion');
      return ResponseApi();
    }
    ResponseApi responseApi = ResponseApi.fromJson(response.body);
    return responseApi;
  }*/
}