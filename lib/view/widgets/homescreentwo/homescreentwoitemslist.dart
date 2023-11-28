import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/view/widgets/homescreentwo/homescreentwoitemwidget.dart';

class HomeScreenTwoItemsList extends StatelessWidget {
  const HomeScreenTwoItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.width / 1.6,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ListView.builder(
          itemCount: 2,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const HomeScreenTwoItemWidget();
          },
        ),
      ),
    );
  }
}