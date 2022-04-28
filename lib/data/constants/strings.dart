import 'package:flutter/material.dart';

const coffeeUrl = "https://www.buymeacoffee.com/abgth";
const resumeUrl = "https://abgth-dev.web.app";

final List<Widget> gridCards = [
  ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.asset(
      "assets/images/new-bike-selling.webp",
      fit: BoxFit.cover,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.asset(
      "assets/images/lite-chat-thumb.webp",
      fit: BoxFit.cover,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.asset(
      "assets/images/two-dos-thumb.webp",
      fit: BoxFit.cover,
    ),
  ),
];

final List<String> projectUrl = [
  "https://github.com/x-abgth/new-bike-selling",
  "https://github.com/x-abgth/lite_chat",
  "https://github.com/x-abgth/two-dos",
];
