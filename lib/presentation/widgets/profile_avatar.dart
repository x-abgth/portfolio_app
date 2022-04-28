import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    this.height = 230,
    this.width = 230,
    this.needLike = false,
  }) : super(key: key);
  final double width;
  final double height;
  final bool needLike;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/abgth.jpg"),
                fit: BoxFit.cover),
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
        ),
        needLike
            ? const Positioned(
                bottom: 0,
                right: 20,
                child: LikeButton(
                  size: 40,
                  bubblesSize: 200,
                  circleSize: 50,
                  animationDuration: Duration(milliseconds: 1500),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
