import 'package:get/get.dart';
import 'package:get_dependencias/pages/initial_binding/auth_model.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthModel(name: 'Renato Pereira', email: 'renatorv@gmail.com', curso: 'Jornada GetX'),
      permanent: true,
    );
  }
}
