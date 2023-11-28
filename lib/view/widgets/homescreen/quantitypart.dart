import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/core/class/containerclipper.dart';

class QuantityPart extends StatelessWidget {
  const QuantityPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height / 1.4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipPath(
              // clipper: Container2Clipper(),
              child: Container(
                height: 80,
                width: 60,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.elliptical(400, 280))),
                child: const Center(child: Icon(Icons.lock)),
              ),
            ),
            ClipPath(
              clipper: ContainerClipper(),
              child: Container(
                height: 100,
                width: 120,
                margin: const EdgeInsets.only(bottom: 0),
                decoration: const BoxDecoration(
                    color: Color(0xff8ED586),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "X2",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )),
              ),
            ),
            Container(
              height: 80,
              width: 60,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.elliptical(400, 280))),
              child: const Center(child: Icon(Icons.home_filled)),
            ),
          ],
        ),
      ],
    );
  }
}
