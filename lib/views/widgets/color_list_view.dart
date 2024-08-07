import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0, right: 8.0),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class ColorsLitView extends StatelessWidget {
  const ColorsLitView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 9,
        itemBuilder: (context, index) => const ColorItem(),
      ),
    );
  }
}
