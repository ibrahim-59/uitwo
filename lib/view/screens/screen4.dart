import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/core/class/containerclipper.dart';
import 'package:uitwo/core/constants/assets_manager.dart';
import 'package:uitwo/core/constants/route_names.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: Get.height / 2,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.itemScreen4);
                        },
                        child: ClipPath(
                          child: Container(
                            height: Get.height / 2,
                            decoration: const BoxDecoration(
                              color: Colors.yellow,
                              image: DecorationImage(
                                  image: AssetImage(
                                    AssetsManager.classe,
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: const Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Classy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    "Cars",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: (Get.height / 5),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.itemScreen4);
                        },
                        child: ClipPath(
                          clipper: Container2Clipper(),
                          child: Container(
                            height: Get.height / 2,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage(
                                    AssetsManager.fast,
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: const Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Fast",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    "Cars",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.itemScreen4);
                    },
                    child: ClipPath(
                      clipper: Container2Clipper(),
                      child: Container(
                          height: Get.height / 2.5,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(
                                  image: AssetImage(AssetsManager.offroad),
                                  fit: BoxFit.cover)),
                          child: const Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Off - road",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                Text(
                                  "Cars",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.route_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15),
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  ),
                ),
                const Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 35,
                    ))
              ],
            ),
          ),
          const BottomNavBar(),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedidex = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: SizedBox(
        width: Get.width,
        child: CurvedNavigationBar(
          color: Colors.black,
          buttonBackgroundColor: Colors.white,
          index: selectedidex,
          height: 50,
          items: [
            Icon(
              Icons.home,
              color: selectedidex == 0 ? Colors.black : Colors.white,
            ),
            Icon(
              Icons.add,
              color: selectedidex == 1 ? Colors.black : Colors.white,
            ),
            Icon(
              Icons.favorite,
              color: selectedidex == 2 ? Colors.black : Colors.white,
            ),
          ],
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              selectedidex = index;
            });
          },
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
