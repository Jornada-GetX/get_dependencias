import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({super.key}) {
    Get.lazyPut(() => LazyPutController());
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  String nome = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazy Put Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Nome: $nome'), ElevatedButton(onPressed: () {}, child: const Text('data'))],
        ),
      ),
    );
  }
}


lazyPut, factory e fenix => -10:37