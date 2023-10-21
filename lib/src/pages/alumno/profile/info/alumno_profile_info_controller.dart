import 'package:app_movil_fisi_unmsm/src/models/user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AlumnoProfileInfoController extends GetxController {
  
  var user = User.fromJson(GetStorage().read('user') ?? {}).obs;

  void signOut() {
    GetStorage().remove('user');
    Get.offNamedUntil('/', (route) => false);
  }

  void goToProfileUpdate () {
    Get.toNamed('/alumno/profile/update');
  }
}