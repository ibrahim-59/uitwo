import 'package:get/get.dart';
import 'package:uitwo/data/datasource/static/itemsdata.dart';
import 'package:uitwo/data/models/itemmodel.dart';

class HomeScreenController extends GetxController {
  ItemModel? itemModel;
  @override
  void onInit() {
    if (itemModel == null) {
      itemModel = ItemsData.items[0];
    } else {
      itemModel = Get.arguments['item'];
    }

    super.onInit();
  }
}
