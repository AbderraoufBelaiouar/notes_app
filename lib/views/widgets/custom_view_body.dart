import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
import 'package:notes_app/views/widgets/custom_view_appbar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class CustomViewbody extends StatelessWidget {
  const CustomViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomViewAppBar(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
