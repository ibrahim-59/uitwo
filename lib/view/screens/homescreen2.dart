import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/core/constants/route_names.dart';
import 'package:uitwo/view/widgets/homescreentwo/homescreentwoappbar.dart';
import 'package:uitwo/view/widgets/homescreentwo/homescreentwobottom.dart';
import 'package:uitwo/view/widgets/homescreentwo/homescreentwoitemslist.dart';
import 'package:uitwo/view/widgets/homescreentwo/offersitems.dart';

class HomeScreenTwo extends StatelessWidget {
  const HomeScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2A2E2E),
      bottomNavigationBar: const HomeScreenTwoBottomSection(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const HomeScreenTwoAppBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Exotic Fruits",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See More",
                      style: TextStyle(
                          color: Color(0xff80A16C),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ))
              ],
            ),
            GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.itemsScreen2);
                },
                child: const HomeScreenTwoItemsList()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Offers",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See More",
                      style: TextStyle(
                          color: Color(0xff80A16C),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ))
              ],
            ),
            const HomeScreenTwoOffersItems(),
          ],
        ),
      ),
    );
  }
}
