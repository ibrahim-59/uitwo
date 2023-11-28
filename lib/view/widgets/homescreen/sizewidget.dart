import 'package:flutter/material.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({
    super.key,
    required this.text,
    required this.active,
  });
  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: active == true
                ? const Color(0xff8ED586)
                : const Color(0xffEFF9EE),
            borderRadius: const BorderRadius.all(Radius.circular(100))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: active == true ? Colors.black : Colors.grey,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}