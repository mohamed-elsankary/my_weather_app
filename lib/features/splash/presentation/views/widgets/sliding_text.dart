import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidinganimation,
  });

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidinganimation,
          child: const Text(
            'Read Free Books',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
