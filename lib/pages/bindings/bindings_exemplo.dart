import 'package:get/get.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';

class BindingsExemplo extends Bindings {
  BindingsExemplo() {
    print('Iniciando BindingsExemplo...');
  }

  @override
  void dependencies() {
    print('Carregando as instâncias...');
    Get.put(
      BindingsController(nome: 'Inicicializado dentro do Binding.'),
    );
  }
}
