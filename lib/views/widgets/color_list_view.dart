import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: isSelected
          ? CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
    );
  }
}

class ColorsLitView extends StatefulWidget {
  const ColorsLitView({super.key});

  @override
  State<ColorsLitView> createState() => _ColorsLitViewState();
}

class _ColorsLitViewState extends State<ColorsLitView> {
  int currentIndex = 0;
  List<Color> color = [
    Colors.blue,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.brown,
    Colors.lightGreen
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: color.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            BlocProvider.of<AddNoteCubit>(context).color = color[index];
            setState(() {});
          },
          child: ColorItem(
            color: color[index],
            isSelected: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
