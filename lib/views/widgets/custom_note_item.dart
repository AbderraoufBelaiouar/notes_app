import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 241, 196, 128),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text(
              "Flutter tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Text(
                "build your carrer with tharwat say",
                style: TextStyle(
                    color: Colors.black.withOpacity(.5), fontSize: 18),
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                FontAwesomeIcons.trash,
                color: Colors.black.withOpacity(.4),
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              "may,27,2024",
              style: TextStyle(
                color: Colors.black.withOpacity(.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
