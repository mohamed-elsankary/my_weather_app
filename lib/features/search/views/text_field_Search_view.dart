import 'package:flutter/material.dart';

class TextFieldSearchView extends StatelessWidget {
  const TextFieldSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xff262428),
        enabledBorder: buildOutlineInputBordar(),
        focusedBorder: buildOutlineInputBordar(),
        hintText: 'Search',
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 30, right: 15),
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBordar() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    );
  }
}
