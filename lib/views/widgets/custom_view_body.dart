import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_view_appbar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class CustomViewbody extends StatelessWidget {
  const CustomViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomViewAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
