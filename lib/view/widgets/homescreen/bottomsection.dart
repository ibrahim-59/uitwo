import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              padding: const EdgeInsets.only(bottom: 10),
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 40,
              )),
          Container(
            height: 50,
            width: 80,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100))),
            child: const Center(child: Icon(Icons.lock)),
          ),
          IconButton(
              padding: const EdgeInsets.only(bottom: 10),
              onPressed: () {},
              icon: const Icon(
                Icons.remove,
                size: 40,
              )),
        ],
      ),
    );
  }
}
