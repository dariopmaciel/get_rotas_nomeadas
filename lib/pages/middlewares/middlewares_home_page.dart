import 'package:flutter/material.dart';

class MiddlewaresHomePage extends StatelessWidget {
  MiddlewaresHomePage({super.key}){
    debugPrint('Criando pagina MiddlewaHomePage');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Criando PÁGINA Middlewares Home Page');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Middlewares Home Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              //!
            },
            child: const Text("Botão"),
          ),
        ],
      )),
    );
  }
}
