import 'package:flutter/material.dart';
import 'package:uitwo/view/widgets/homescreentwo/offersitem.dart';

class HomeScreenTwoOffersItems extends StatelessWidget {
  const HomeScreenTwoOffersItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: HomeScreenTwoOffersItem(),
          );
        },
      ),
    );
  }
}