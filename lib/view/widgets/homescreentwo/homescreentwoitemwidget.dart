import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/core/constants/assets_manager.dart';

class HomeScreenTwoItemWidget extends StatelessWidget {
  const HomeScreenTwoItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Container(
            width: Get.width / 2.5,
            height: Get.width / 3,
            decoration: const BoxDecoration(
                color: Color(0xff646464),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(50))),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Pitaya",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Priumium",
                    style: TextStyle(
                        color: Color(0xff80A16C),
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "\$ 4.95",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 110,
          child: Image.asset(
            AssetsManager.pitaya,
            height: 130,
            width: 130,
          ),
        ),
        const Positioned(
            right: 10,
            bottom: 5,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            ))
      ],
    );
  }
}
