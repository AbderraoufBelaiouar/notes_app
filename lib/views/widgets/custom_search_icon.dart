import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.white.withOpacity(.2)),
      child: const Icon(
        Icons.search,
        size: 30,
      ),
    );
  }
}
