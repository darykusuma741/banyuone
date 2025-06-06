import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => const ProfileScreen(),
      binding: ProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.PELAYANAN,
      page: () => const PelayananScreen(),
      binding: PelayananControllerBinding(),
    ),
    GetPage(
      name: Routes.INVENTORY,
      page: () => const InventoryScreen(),
      binding: InventoryControllerBinding(),
    ),
    GetPage(
      name: Routes.BANSOS,
      page: () => const BansosScreen(),
      binding: BansosControllerBinding(),
    ),
    GetPage(
      name: Routes.INVENTORY,
      page: () => const InventoryScreen(),
      binding: InventoryControllerBinding(),
    ),
    GetPage(
      name: Routes.INVENTORY_REQUEST,
      page: () => const InventoryRequestScreen(),
      binding: InventoryRequestControllerBinding(),
    ),
    GetPage(
      name: Routes.BANSOS_REQUEST,
      page: () => const BansosRequestScreen(),
      binding: BansosRequestControllerBinding(),
    ),
  ];
}
