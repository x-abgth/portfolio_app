import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedGlassEffect extends StatelessWidget {
  const FrostedGlassEffect({
    Key? key,
    this.child = const SizedBox(),
    this.height = 200,
    this.width = 200,
    this.radius = 20,
  }) : super(key: key);

  final Widget child;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.5),
            border:
                Border.all(color: Colors.white.withOpacity(0.6), width: 0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        ),
      ),
    );
  }
}
