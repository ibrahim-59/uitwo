// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/core/constants/assets_manager.dart';
import 'package:uitwo/core/constants/route_names.dart';

class HomeScreenthree extends StatelessWidget {
  const HomeScreenthree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: ClipPath(
        // clipper: Container2Clipper(),
        child: Container(
          color: const Color(0xff1D1C1A),
          width: double.infinity,
          height: Get.width / 4.5,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.category_outlined,
                color: Colors.white,
                size: 35,
              ),
              Icon(
                Icons.home_filled,
                color: Color(0xff5DFF96),
                size: 35,
              ),
              Icon(
                Icons.search,
                color: Colors.white,
                size: 35,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            height: Get.width / 1.8,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    AssetsManager.hote2,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.category_outlined,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Hi Anna ,",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const Text(
                    "Find Your Favourite Hotel",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        suffixIcon: const Icon(
                          Icons.format_align_center_rounded,
                          color: Colors.white,
                        ),
                        hintText: "Search Here ......",
                        hintStyle: const TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: const Color(0xff292929).withAlpha(190),
                        border: fieldborder(),
                        errorBorder: fieldborder(),
                        enabledBorder: fieldborder(),
                        focusedBorder: fieldborder(),
                        disabledBorder: fieldborder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CategoriesWidget(
                  title: "Best Offers 🤑",
                  isActive: true,
                ),
                CategoriesWidget(
                  title: "Top Rated",
                  isActive: false,
                ),
                CategoriesWidget(
                  title: "Popular",
                  isActive: false,
                ),
                CategoriesWidget(
                  title: "Best salles",
                  isActive: false,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.screen4);
                  },
                  child: const ItemWidget(
                    image: AssetsManager.hotel,
                    title: "Hotel Jardim Atlantico",
                    isActive: true,
                  ),
                ),
                const ItemWidget(
                  image: AssetsManager.hotel3,
                  title: "Moradia car Atlantico",
                  isActive: false,
                ),
                const ItemWidget(
                  image: AssetsManager.hotel4,
                  title: "San Stefano Hotel",
                  isActive: false,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  OutlineInputBorder fieldborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none);
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.image,
    required this.isActive,
    required this.title,
  });
  final String title;
  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: Get.width / 2,
              height: Get.width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: isActive == true
                        ? const Icon(
                            Icons.favorite,
                            color: Color(0xff5DFF96),
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                  ),
                ),
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Color(0xff5DFF96),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Cairo",
                style: TextStyle(color: Color(0xff5DFF96)),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
    required this.title,
    required this.isActive,
  });

  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Get.width / 2.5,
        decoration: BoxDecoration(
            color: isActive == true ? const Color(0xff5DFF96) : null,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: isActive == false
                    ? const Color(0xff5DFF96)
                    : Colors.transparent)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: isActive == true ? Colors.black : Colors.white),
          ),
        ),
      ),
    );
  }
}
