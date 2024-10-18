import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/nested_navigation/example_pages/android_page.dart';
import 'package:get_rotas_nomeadas/pages/nested_navigation/example_pages/apple_page.dart';

class NestedNavigationHomePage extends StatelessWidget {
  final currentBottonIndex = 0.obs;

  NestedNavigationHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NESTED NAVIGATION PAGE'),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: currentBottonIndex.value,
          onTap: (value) {
            print(value);
            currentBottonIndex(value);
            switch (value) {
              case 0:
                Get.offNamed('/apple', id: 1);
                break;
              case 1:
                Get.offNamed('/android', id: 1);
                break;
              default:
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.apple),
              label: 'Apple',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.android),
              label: 'Android',
            ),
          ],
        );
      }),
      body: Navigator(
        key: Get.nestedKey(1), //!Linked esta navegação com o GET
        initialRoute: '/',
        onGenerateRoute: (settings) {
          Widget page;
          Transition transition;
          //
          if (settings.name == '/apple') {
            page = const ApplePage();
            transition = Transition.leftToRight;
          } else if (settings.name == '/android') {
            page = const AndroidPage();
            transition = Transition.rightToLeft;
          } else {
            page = const Center(child: Text("Escolha um icone"));
            transition = Transition.fade;
          }
          // return GetPageRoute(
          //   page: () => const Center(
          //     child: Text("Pagina principal"),
          //   ),
          // );

          return GetPageRoute(
            page: () => page,
            transition: transition,
          );
        },
      ),
    );
  }
}
