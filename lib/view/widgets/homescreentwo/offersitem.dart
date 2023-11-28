import 'package:flutter/material.dart';
import 'package:uitwo/core/constants/assets_manager.dart';

class HomeScreenTwoOffersItem extends StatelessWidget {
  const HomeScreenTwoOffersItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color(0xff646464),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(50))),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(AssetsManager.papaya),
              ),
              const Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        "Papaya",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Premium",
                        style: TextStyle(
                            color: Color(0xff8ED686),
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                    ],
                  )),
              const Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        "\$ 2.75",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 20),
                      ),
                      Text(
                        "\$ 2.50",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 20),
                      ),
                    ],
                  ))
            ],
          ),
        ),
        const Positioned(
            right: 0,
            bottom: 0,
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
