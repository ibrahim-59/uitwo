  import 'package:flutter/material.dart';

AppBar appBarItemsScreen(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded))
      ],
      title: const Text("Decorative Flowers"),
      centerTitle: true,
    );
  }
