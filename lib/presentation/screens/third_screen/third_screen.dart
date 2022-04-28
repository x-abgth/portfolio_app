import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/screens/third_screen/widgets/glass_morphism.dart';

import '../../widgets/app_bar_widget.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xFF2591FB),
          Color(0xFF000780),
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      )),
      child: Column(
        children: [
          const AppBarWidget(),
          GlassMorphism(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "About me ...",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "My name is...",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const Text(
                  "Abhijith A",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text(
                  "From...",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const Text(
                  "Kannur, Kerala, India",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Skills i have...",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const Text(
                  "#Flutter #HTML & CSS #Firebase #PhpMyAdmin #MySQL #AdobeXD",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Experience",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const Text(
                  "Fresher",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Currently learning...",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const Text(
                  "Flutter & Go (Golang)",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Copyright © 2022 by Abhijith. All rights reserved.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
