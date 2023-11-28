import 'package:flutter/material.dart';
import 'package:uitwo/core/constants/const.dart';
import 'package:uitwo/data/datasource/static/itemsdata.dart';
import 'package:uitwo/view/widgets/itemsscreen/bottomitemswidget.dart';
import 'package:uitwo/view/widgets/itemsscreen/itemwidget.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomItemsWidget(),
      appBar: appBarItemsScreen(context),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ItemsData.items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ItemWidget(
                      itemModel: ItemsData.items[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
