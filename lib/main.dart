import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/envio_parametros_home_page.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/example_page/env_param_page1_args.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/example_page/env_param_page2_path.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/example_page/env_param_page3_querry.dart';
import 'package:get_rotas_nomeadas/pages/home_page.dart';
import 'package:get_rotas_nomeadas/pages/inicial/inicial_page1.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/access_denied.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/middlewares_home_page.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/route_middleware.dart';
import 'package:get_rotas_nomeadas/pages/rota_nao_encontrada/rota_nao_encontrada_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      unknownRoute:
          GetPage(name: '/404', page: () => const RotaNaoEncontradaPage()),
      //!para receber pagina não encontrada é preciso dizer
      //!qual é a pagina home, definindo o initialRoute
      initialRoute: '/home',
      //! É MÉTODO OBSERVABLE GERAL
      // routingCallback: (Routing? routing) {
      routingCallback: (value) {
        // debugPrint(value?.previous);
        // debugPrint(value?.current);
      },
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: Colors.blue,
        useMaterial3: false,
      ),
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/inicial/page1', page: () => const InicialPage1(),
        middlewares: [RouteMiddleware()]),
        GetPage(
          name: '/envio_de_parametros',
          page: () => const EnvioParametrosHomePage(),
          children: [
            GetPage(name: '/argsParams', page: () => const EnvParamPage1Args()),
            GetPage(
                name: '/pathParams/:name/GetX',
                page: () => const EnvParamPage2Path()),
            GetPage(
                name: '/queryParams', page: () => const EnvParamPage3Querry()),
          ],
        ),
        GetPage(
          name: '/middlewares',
          page: () => MiddlewaresHomePage(),
          middlewares: [
            // RouteMiddleware(priority: 1),
            RouteMiddleware(),
          ],
        ),
        GetPage(name: '/accessDenied', page: ()=> const AccessDenied())
      ],
    );
  }
}
