import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvParamPage2Path extends StatelessWidget {
  const EnvParamPage2Path({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio Path Params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.parameters['name']!),
          ],
        ),
      ),
    );
  }
}
