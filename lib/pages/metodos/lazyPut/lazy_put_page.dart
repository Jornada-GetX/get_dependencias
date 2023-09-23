import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_controller.dart';

import 'lazy_put_fenix_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({super.key}) {
    Get.lazyPut(() => LazyPutController());
    // Fenix: Mata a instancia, porem mantem a factory ativa dentro do Get, fazendo com
    // que tenha a possibilidade de acessa-la de qq lugar dentro do Get.
    // --
    // Permanent: mantem a instancia dentro do Get, sendo assim qdo vc pedir a classe
    // ele retornara a msm instancia anterior!!!!
    Get.lazyPut(() => LazyPutFenixController(), fenix: true);
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  String nome = '';
  String nomeFenix = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazy Put Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            Text('Nome Fenix: $nomeFenix'),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                setState(() {
                  nome = controller.nome;
                });
              },
              child: const Text('Buscar nome'),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutController>();

                controller.nome = 'Jornada GetX';
              },
              child: const Text('Alterar nome'),
            ),
            // Fenix
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                setState(() {
                  nomeFenix = controller.nome;
                });
              },
              child: const Text('Buscar nome Fenix'),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();

                controller.nome = 'Jornada GetX Fenix';
              },
              child: const Text('Alterar nome Fenix'),
            ),
          ],
        ),
      ),
    );
  }
}
