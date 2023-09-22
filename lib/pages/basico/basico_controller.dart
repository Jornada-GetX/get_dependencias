import 'package:flutter/material.dart';

class BasicoController extends ChangeNotifier {
  var nome = 'Sem nome';

  void alteraNome(String newNome) {
    nome = newNome;

    notifyListeners();
  }
}
