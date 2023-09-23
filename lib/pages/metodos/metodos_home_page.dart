import 'package:flutter/material.dart';

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Métodos Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/put');
              },
              child: const Text('Put'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/lazyput');
              },
              child: const Text('LazyPut'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/putAsync');
              },
              child: const Text('Put Async'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/create');
              },
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }
}
