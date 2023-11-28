import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:uitwo/core/constants/route_names.dart';
import 'package:uitwo/view/screens/homescreen.dart';
import 'package:uitwo/view/screens/homescreen2.dart';
import 'package:uitwo/view/screens/homescreen3.dart';
import 'package:uitwo/view/screens/itemscreen2.dart';
import 'package:uitwo/view/screens/itemsscreen.dart';
import 'package:uitwo/view/screens/itemsscreen4.dart';
import 'package:uitwo/view/screens/screen3.dart';
import 'package:uitwo/view/screens/screen4.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const HomeScreen(),
  ),
  GetPage(name: AppRoutes.itemsScreen, page: () => const ItemsScreen()),
  GetPage(name: AppRoutes.homeScreen, page: () => const HomeScreen()),
  GetPage(name: AppRoutes.homeScreen2, page: () => const HomeScreenTwo()),
  GetPage(name: AppRoutes.homeScreen3, page: () => const HomeScreenthree()),
  GetPage(name: AppRoutes.itemScreen4, page: () => const ItemScreen4()),
  GetPage(name: AppRoutes.itemsScreen2, page: () => const ItemScreenTwo()),
  GetPage(name: AppRoutes.screen3, page: () => const ScreenThree()),
  GetPage(name: AppRoutes.screen4, page: () => const Screen4()),
];
