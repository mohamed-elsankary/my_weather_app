import 'package:flutter/material.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBordar(),
        focusedBorder: buildOutlineInputBordar(),
        labelText: 'Search',
        labelStyle: const TextStyle(color: Colors.grey),
        hintText: 'search a new weather ',
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBordar() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
