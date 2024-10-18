import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametrosHomePage extends StatelessWidget {
  const EnvioParametrosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio de Parametros'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/envio_de_parametros/argsParams',
                  //!ENVIO DE UM ARG
                  // arguments: "Parametro enviado por argumento");
                  //! OU ENVIO DE UM MAP
                  arguments: {
                    'name': 'Dario de Paula Maciel',
                    'curso': 'GetX',
                  });
            },
            child: const Text("Arguments"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              //!Não envio parametros com ESPAÇO NO MEIO DO PARAMETRO
              // Get.toNamed('/envio_de_parametros/pathParams/DARIO-P-Maciel/GetX');
              //!PAra resolvei isto é feito um URL ENCODE
              final params = Uri.encodeFull('Dario de Paula Maciel');
              Get.toNamed('/envio_de_parametros/pathParams/$params/GetX');
            },
            child: const Text("Path Param"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(
                  '/envio_de_parametros/queryParams?name=Dario de Paula Maciel&id=1&curso=Curso GetX');
            },
            child: const Text("Query Param"),
          ),
          //!OU ENVIO  DE PARAMETROS POR QUERY
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/envio_de_parametros/queryParams', parameters: {
                'name': 'Dario de Paula MAciel',
                'id': '1',
                'curso': 'Jornada GetX',
              });
            },
            child: const Text("Query Param (Parametros)"),
          ),
        ],
      )),
    );
  }
}
