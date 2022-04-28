import 'package:flutter/material.dart';

import '../../data/constants/colors.dart';

class MainBgAnimation extends StatefulWidget {
  const MainBgAnimation({
    Key? key,
    this.child = const SizedBox(),
  }) : super(key: key);
  final Widget child;

  @override
  State<MainBgAnimation> createState() => _MainBgAnimationState();
}

class _MainBgAnimationState extends State<MainBgAnimation> {
  int index = 0;
  Color bottomColor = appBgColors[1];
  Color topColor = appBgColors[0];
  Alignment begin = Alignment.topLeft;
  Alignment end = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          bottomColor = appBgColors[index % appBgColors.length];
        });
      }
    });
    return Stack(
      children: [
        AnimatedContainer(
          width: MediaQuery.of(context).size.width,
          duration: const Duration(seconds: 2),
          onEnd: () {
            setState(() {
              index = index + 1;
              // animate the color
              bottomColor = appBgColors[index % appBgColors.length];
              topColor = appBgColors[(index + 1) % appBgColors.length];
            });
          },
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: begin, end: end, colors: [bottomColor, topColor])),
        ),
        Positioned.fill(child: widget.child),
      ],
    );
  }
}
