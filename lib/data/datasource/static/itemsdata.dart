import 'package:uitwo/core/constants/assets_manager.dart';
import 'package:uitwo/data/models/itemmodel.dart';

class ItemsData {
  static List items = [
    ItemModel(itemName: "Banana Tree", subTitle: "Banana Tree", price: "78", image: AssetsManager.banana),
    ItemModel(itemName: "Peperomia", subTitle: "Peperomia", price: "35", image: AssetsManager.peper),
    ItemModel(itemName: "Sanseveria", subTitle: "Sanseveria", price: "15", image: AssetsManager.sanseveria),
    ItemModel(itemName: "Streltzia", subTitle: "Streltzia", price: "100", image: AssetsManager.image1),
  ];
}
