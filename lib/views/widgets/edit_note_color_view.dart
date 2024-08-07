import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_list_view.dart';

class EditNotesColorView extends StatefulWidget {
  const EditNotesColorView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotesColorView> createState() => _EditNotesColorViewState();
}

class _EditNotesColorViewState extends State<EditNotesColorView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = KColor.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: KColor.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            widget.note.color = KColor[index].value;
            setState(() {});
          },
          child: ColorItem(
            color: KColor[index],
            isSelected: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
