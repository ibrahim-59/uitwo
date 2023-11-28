import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/core/constants/route_names.dart';

class BottomItemsWidget extends StatelessWidget {
  const BottomItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.elliptical(400, 280))),
                child: const Center(child: Icon(Icons.arrow_back_ios_new)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.homeScreen2);
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.elliptical(400, 280))),
                child:
                    const Center(child: Icon(Icons.arrow_forward_ios_outlined)),
              ),
            ),
          ],
        ),
        Container(
          height: 40,
          width: 60,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100))),
          child: const Center(child: Icon(Icons.lock)),
        ),
      ],
    );
  }
}
