import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "EditNoteView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomViewbody(),
    );
  }
}
