import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProjectShimmerEffect extends StatelessWidget {
  const ProjectShimmerEffect(
      {Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: SizedBox(
        height: height,
        width: width,
      ),
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[300]!,
    );
  }
}
