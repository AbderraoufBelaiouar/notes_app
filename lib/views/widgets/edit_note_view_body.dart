import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_view_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

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
            title: "Edit",
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
