import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/routes.dart';
import 'package:uitwo/view/screens/homescreen2.dart';
import 'package:uitwo/view/screens/screen3.dart';
import 'package:uitwo/view/screens/screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'UI Task Two',

      getPages: routes,
      locale: const Locale("en"),
      // translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      home: HomeScreenTwo(),
    );
  }
}
