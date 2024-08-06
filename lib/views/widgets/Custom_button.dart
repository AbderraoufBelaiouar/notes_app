import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class customButton extends StatelessWidget {
  customButton(
      {super.key,
      required this.onTapFunction,
      required this.text,
      required this.isLoading});
  Function()? onTapFunction;
  final String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8),
      child: GestureDetector(
        onTap: onTapFunction,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 85, 208, 232),
              borderRadius: BorderRadius.circular(6)),
          height: 60,
          width: double.infinity,
          child: !isLoading
              ? Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontSize: 22),
                )
              : const CircularProgressIndicator(
                  color: Colors.black,
                ),
        ),
      ),
    );
  }
}
