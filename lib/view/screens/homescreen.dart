import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/controller/homescreen_controller.dart';
import 'package:uitwo/view/widgets/homescreen/bottomsection.dart';
import 'package:uitwo/view/widgets/homescreen/itemdec.dart';
import 'package:uitwo/view/widgets/homescreen/quantitypart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  HomeScreenController controller =   Get.put(HomeScreenController());
    return Scaffold(
      backgroundColor: const Color(0xff166A0A),
      bottomNavigationBar: const BottomSection(),
      body: Stack(
        children: [
          const QuantityPart(),
          ItemDesc(
            itemModel: controller.itemModel!,
          ),
        ],
      ),
    );
  }
}
