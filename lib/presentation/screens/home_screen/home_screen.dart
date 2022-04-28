import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/screens/home_screen/widgets/home_screen_content.dart';
import 'package:portfolio_app/presentation/screens/second_screen/second_screen.dart';
import 'package:portfolio_app/presentation/screens/third_screen/third_screen.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LiquidSwipe(
          fullTransitionValue: 300,
          positionSlideIcon: 0.5,
          slideIconWidget: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          pages: [
            const HomeScreenContent(),
            SecondScreen(),
            const ThirdScreen(),
          ],
        ),
      ),
    );
  }
}
