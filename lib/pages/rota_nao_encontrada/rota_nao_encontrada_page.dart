import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RotaNaoEncontradaPage extends StatelessWidget {
  const RotaNaoEncontradaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página não encontrada!!!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Erro 404 - Página não encontrada"),
            const Text("Por favor retorne para Home Page"),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: const Text("Home Page"))
          ],
        ),
      ),
    );
  }
}
