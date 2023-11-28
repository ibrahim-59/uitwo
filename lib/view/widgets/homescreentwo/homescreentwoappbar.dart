import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenTwoAppBar extends StatelessWidget {
  const HomeScreenTwoAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SizedBox(
        height: Get.width / 2.5,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.yellow)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.person_2_outlined),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 90,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    "10 Products",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                ),
                const Positioned(
                  bottom: 70,
                  left: 20,
                  right: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
