import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/core/constants/assets_manager.dart';
import 'package:uitwo/core/constants/route_names.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      AssetsManager.hote2,
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        AssetsManager.logo,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text(
                          "STAYZ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        subtitle: Text(
                          "book eazy",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                      text: const TextSpan(
                          text: "Book Your Hotels \nFast and Easly \nWith ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                          children: [
                        TextSpan(
                            text: " STYAZ",
                            style: TextStyle(
                              color: Color(0xff80A16C),
                            )),
                      ])),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "find your hotels easy and travel any where you want with us",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: const Color(0xff80A16C),
                      onPressed: () {
                        Get.toNamed(AppRoutes.homeScreen3);
                      },
                      child: const Text(
                        "Sign Up >",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Already have an accout ? Login",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
