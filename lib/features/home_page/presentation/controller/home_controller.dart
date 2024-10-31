import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtv/core/routes/app_routes.dart';
import 'package:gtv/features/conference/presentation/pages/conference_page.dart';
import 'package:gtv/features/dial_page/presentation/bindings/dial_bindings.dart';
import 'package:gtv/features/dial_page/presentation/pages/dial_screen.dart';
import 'package:gtv/features/messages/presentation/pages/messages.dart';
import 'package:gtv/features/names/presentation/bindings/names_bindings.dart';
import 'package:gtv/features/names/presentation/pages/names.dart';
import 'package:gtv/features/settings/presentation/pages/settings_screen.dart';

class HomeController extends GetxController {
  List<String> bottomNavigationBarRoutes = [
    Routes.namesPage,
    Routes.conferencePage,
    Routes.dialPage,
    Routes.messagePage,
    Routes.settingsPage
  ];

  int currentIndex = 0;

  void onBottomNavigationBarItemTapped(int index) {
    if (currentIndex != index) {
      currentIndex = index;
      Get.offAndToNamed(bottomNavigationBarRoutes[currentIndex], id: 1);
      update();
    }
  }

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.namesPage:
        return GetPageRoute(
          routeName: Routes.namesPage,
          settings: settings,
          page: () => const NamesScreen(),
          binding: NamesBindings(),
          transition: Transition.noTransition,
        );
      case Routes.conferencePage:
        return GetPageRoute(
          routeName: Routes.conferencePage,
          settings: settings,
          page: () => const ConferencePage(),
          // binding: ConferenceBindings(),
          transition: Transition.noTransition,
        );
      case Routes.dialPage:
        return GetPageRoute(
          routeName: Routes.dialPage,
          settings: settings,
          page: () => const DialScreen(),
          binding: DialBindings(),
          transition: Transition.noTransition,
        );
      case Routes.messagePage:
        return GetPageRoute(
          routeName: Routes.messagePage,
          settings: settings,
          page: () => const MessagesScreen(),
          // binding: MessageBindings(),
          transition: Transition.noTransition,
        );
      case Routes.settingsPage:
        return GetPageRoute(
          routeName: Routes.settingsPage,
          settings: settings,
          page: () => const SettingsScreen(),
          // binding: SettingsBindings(),
          transition: Transition.noTransition,
        );
      default:
        return null;
    }
  }
}
