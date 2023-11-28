import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/core/constants/route_names.dart';
import 'package:uitwo/data/models/itemmodel.dart';
import 'package:uitwo/view/widgets/homescreen/sizewidget.dart';

class ItemDesc extends StatelessWidget {
  const ItemDesc({
    super.key,
    required this.itemModel,
  });
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Get.height / 1.3,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizeWidget(
                        text: "M",
                        active: true,
                      ),
                      SizeWidget(
                        text: "L",
                        active: false,
                      ),
                      SizeWidget(
                        text: "XL",
                        active: false,
                      ),
                    ],
                  ),
                  Center(
                    child: Image.asset(
                      itemModel.image,
                      height: Get.width / 1.2,
                      width: Get.width / 1.2,
                    ),
                  ),
                  IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Get.toNamed(AppRoutes.itemsScreen);
                      },
                      icon: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              color: Color(0xff72A96D),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                          )))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        itemModel.itemName,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 33),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        itemModel.subTitle,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${itemModel.price} \$",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 33),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
