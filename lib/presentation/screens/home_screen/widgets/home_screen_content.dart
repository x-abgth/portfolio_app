import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_app/data/constants/colors.dart';
import 'package:portfolio_app/presentation/widgets/app_bar_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../data/constants/strings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xFF965DE9),
          Color(0xFF6358EE),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const AppBarWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              onPressed: () {
                _launchUrl(coffeeUrl);
              },
              icon: Image.asset(
                'assets/images/bmc-logo.png',
                fit: BoxFit.contain,
                width: 30,
                height: 30,
              ),
              label: const Text(
                "Buy me a coffee",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(
                elevation: 10,
                padding: const EdgeInsets.all(10),
                backgroundColor: bmcBrandColor,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {
                  _launchUrl(resumeUrl);
                },
                icon: const FaIcon(FontAwesomeIcons.fileArrowDown),
                label: const Text(
                  "Resume",
                  style: TextStyle(
                      color: Color(0xFF965DE9), fontWeight: FontWeight.bold),
                ),
                style: OutlinedButton.styleFrom(
                  elevation: 10,
                  padding: const EdgeInsets.all(12.5),
                  side: const BorderSide(color: Colors.white),
                  backgroundColor: Colors.white,
                  primary: const Color(0xFF965DE9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 24.0),
          child: Text(
            "Latest projects...",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(height: 15),
        Flexible(
          child: StaggeredGridView.countBuilder(
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 2,
            itemCount: gridCards.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _launchUrl(projectUrl[index]),
                child: gridCards[index],
              );
            },
            staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
        ),
      ]),
    );
  }

  void _launchUrl(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    )) {
      throw 'Could not launch url';
    }
  }
}
