import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomViewAppBar extends StatelessWidget {
  const CustomViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
        ),
        Spacer(
          flex: 1,
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
