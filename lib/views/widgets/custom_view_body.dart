import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_view_appbar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class CustomViewbody extends StatefulWidget {
  const CustomViewbody({super.key});

  @override
  State<CustomViewbody> createState() => _CustomViewbodyState();
}

class _CustomViewbodyState extends State<CustomViewbody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomViewAppBar(
            onPressed: () {},
            title: "Notes",
            icon: Icons.search,
          ),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
