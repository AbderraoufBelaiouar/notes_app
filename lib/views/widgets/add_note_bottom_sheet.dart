import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(
              hintText: "title",
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hintText: "Content",
              maxLines: 5,
            ),
            const SizedBox(
              height: 40,
            ),
            Custom_button(onTapFunction: () {}, text: "add"),
          ],
        ),
      ),
    );
  }
}
