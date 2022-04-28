import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/screens/loading_screen/loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ABGTH",
      theme: ThemeData(
        fontFamily: 'Nunito',
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: const Scaffold(body: LoadingScreen()),
    );
  }
}
