
import 'package:app_movil_fisi_unmsm/src/models/Rol.dart';
import 'package:app_movil_fisi_unmsm/src/models/user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RolesController extends GetxController {
  User user = User.fromJson(GetStorage().read('user') ?? {});

  void goToPageRol (Rol rol) {
    Get.offNamedUntil(rol.route ?? '', (route) => false);
  }
}