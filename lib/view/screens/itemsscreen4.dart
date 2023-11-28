// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/core/class/containerclipper.dart';
import 'package:uitwo/core/constants/assets_manager.dart';

class ItemScreen4 extends StatelessWidget {
  const ItemScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Text(
                "Total   379 \$",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Spacer(),
              SizedBox(
                width: Get.width / 2.5,
                height: 40,
                child: MaterialButton(
                  color: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  child: Text(
                    "Rent This Car >",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: Container2Clipper(),
                  child: Container(
                    height: Get.width / 1.4,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AssetsManager.offroad),
                            fit: BoxFit.cover)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                          const Spacer(),
                          Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 131, 33, 243),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Text(
                      "Foard F - 150",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: Get.width / 1.3,
                      child: Text(
                        "Nicely tailored cabin , wide range of avilable terms",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 150,
                      width: Get.width / 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Swiper(
                          onTap: (index) {},
                          itemBuilder: (BuildContext context, int index) {
                            return Image.asset(
                              AssetsManager.offroad,
                              fit: BoxFit.cover,
                            );
                          },
                          autoplay: true,
                          curve: Curves.easeInCirc,
                          itemCount: 1,
                          pagination: const SwiperPagination(
                              builder: DotSwiperPaginationBuilder(
                                  color: Colors.grey,
                                  activeColor: Colors.blue)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Specification",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            SizedBox(
              child: DynamicHeightGridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                crossAxisCount: 3,
                builder: (context, index) {
                  return SizedBox(
                    width: Get.width / 2.8,
                    height: 80,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.electric_bolt_outlined,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "Horse Power",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            Text(
                              "400",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Price",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: Get.width / 3.5,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: Get.width / 2.5,
                      height: 80,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Per Day Rate",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "400 \$",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
