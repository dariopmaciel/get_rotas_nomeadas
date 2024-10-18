import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvParamPage1Args extends StatelessWidget {
  const EnvParamPage1Args({super.key});

  @override
  Widget build(BuildContext context) {

    //! Quando add um MAP para envio
    Map<String, String >arguments = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio Arguments Params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(Get.arguments),
            //!OU ASSIM QUANDO ENVIIO DE MAP
            Text(arguments['name']?? 'Nome não encontrado'),
            Text(arguments['curso']?? 'Curso não encontrado')
          ],
        ),
      ),
    );
  }
}
