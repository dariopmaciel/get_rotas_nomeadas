import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvParamPage3Querry extends StatelessWidget {

  const EnvParamPage3Querry({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Envio Querry Params'),),
           body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.parameters['name']?? ""),
            Text(Get.parameters['id']?? ""),
            Text(Get.parameters['curso']?? ""),
          ],
        ),
      ),
       );
  }
}