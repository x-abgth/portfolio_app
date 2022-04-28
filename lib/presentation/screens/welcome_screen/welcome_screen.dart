import 'package:flutter/material.dart';
import 'package:portfolio_app/data/constants/colors.dart';
import 'package:portfolio_app/presentation/animations/circle_transition_clipper.dart';
import 'package:portfolio_app/presentation/animations/main_bg_animation.dart';
import 'package:portfolio_app/presentation/screens/home_screen/home_screen.dart';
import 'package:portfolio_app/presentation/widgets/profile_avatar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MainBgAnimation(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ProfileAvatar(needLike: true),
                const Text(
                  "ABGTH's Portfolio",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid),
                ),
                const Text(
                  "Fresher software developer with technically sound knowledge in Flutter, HTML & CSS, Firebase and more with the ability to be adept at developing softwares based on customer specifications, recommending application changes to make more efficient programs and always look for ways to upgrade and improve upon existing apps by making them more useful and having a strong eye for detail.",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        pageRoute(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        enableFeedback: true,
                        primary: darkBlue,
                        onPrimary: Colors.white,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("CONTINUE"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Route pageRoute() {
    return PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 600),
        reverseTransitionDuration: const Duration(milliseconds: 600),
        transitionsBuilder: (context, animation, animationTime, child) {
          var screenSize = MediaQuery.of(context).size;
          var bottomCircleClipper =
              Offset(screenSize.width / 2, screenSize.height * 0.9);

          double beginRadius = 0.0;
          double endRadius = screenSize.height * 1.2;

          var radiusTween = Tween(begin: beginRadius, end: endRadius);
          var radiusTweenAnimation = animation.drive(radiusTween);

          return ClipPath(
            child: child,
            clipper: CircleTransitionClipper(
                center: bottomCircleClipper,
                radius: radiusTweenAnimation.value),
          );
        },
        pageBuilder: (context, animation, animationTime) => const HomeScreen());
  }
}
