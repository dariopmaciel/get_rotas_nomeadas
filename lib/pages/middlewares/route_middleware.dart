import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/inicial/inicial_page1.dart';

class RouteMiddleware extends GetMiddleware {
  //definicção de prioridades
  RouteMiddleware({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('Executando middleware onPageCalled');
    return super.onPageCalled(page);
    //! O Middleware permite direcinar, mandar, encaminhar para qualquer outro lugar antes mesmo de abrir a informação inicial
    // return GetPage(name: '/inicial/page1', page: () => const InicialPage1());
  }

  @override
  Widget onPageBuilt(Widget page) {
    //! vem depois do GET do page escolhido.
    //!ANTES DA PAGINA
    debugPrint('Executando middleware onPageBuilt');
    // return super.onPageBuilt(page);
    return Theme(
      data: ThemeData.dark(),
      child: page,
    );
  }

  @override
  RouteSettings? redirect(String? route) {
    //!Este  redireciona, é invocado ANTES MESMO DE IR PARA A PÁGINA
    if (route == '/middlewares') {
      return const RouteSettings(name: '/accessDenied');
    }
    return null;
  }
}
