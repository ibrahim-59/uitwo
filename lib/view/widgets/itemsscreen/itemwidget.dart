import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitwo/core/constants/route_names.dart';
import 'package:uitwo/data/models/itemmodel.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.itemModel,
  });
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(AppRoutes.homeScreen, arguments: {'item': itemModel});
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                itemModel.image,
              ),
            ),
            Expanded(
                flex: 3,
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  title: Text(
                    itemModel.itemName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          return const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          );
                        }),
                      ),
                      Text(
                        "${itemModel.price} \$",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: 70,
                    height: 30,
                    decoration: const BoxDecoration(
                        color: Color(0xff8ED686),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
