import 'package:flutter/material.dart';

class LanguageContainer extends StatelessWidget {
  final String title;
  final Color color;

  const LanguageContainer({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 160,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Center(
          child: Text(
        title,
        style: const TextStyle(fontSize: 22),
      )),
    );
  }
}
