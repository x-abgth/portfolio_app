import 'package:flutter/material.dart';
import 'package:portfolio_app/data/models/contact_list_model.dart';
import 'package:portfolio_app/presentation/screens/second_screen/widgets/frosted_glass_effect.dart';
import 'package:portfolio_app/presentation/widgets/app_bar_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SecondScreen extends StatelessWidget {
  final ContactListModel contact = ContactListModel();
  SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xFFF01E5C),
          Color(0xFFF4314A),
          Color(0xFFF94B25),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: AppBarWidget(),
          ),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              initialPage: 1,
              autoPlay: true,
            ),
            items: [
              buildServiceCard(
                  size: _size,
                  title: "UI/UX Design",
                  subTitle: "Mobile application / web designing"),
              buildServiceCard(
                  size: _size,
                  title: "Application Development",
                  subTitle: "Mobile application development"),
              buildServiceCard(
                  size: _size,
                  title: "Web Development",
                  subTitle: "Website development"),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 25, 20, 10),
            child: Text(
              "Find me on ...",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: contact.contactCards().length,
                itemBuilder: (context, index) => contact.contactCards()[index]),
          ),
        ],
      ),
    );
  }

  FrostedGlassEffect buildServiceCard(
      {required Size size, String title = "", String subTitle = ""}) {
    return FrostedGlassEffect(
      height: 100,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "SERVICES",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Valid thru",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.95),
                    ),
                  ),
                  Text(
                    "05/28",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.95),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
