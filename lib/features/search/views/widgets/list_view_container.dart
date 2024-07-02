import 'package:flutter/material.dart';

class ListViewContainer extends StatelessWidget {
  const ListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
        ),
      ),
    ));
  }
}
