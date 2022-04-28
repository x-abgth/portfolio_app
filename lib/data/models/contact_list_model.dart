import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactListModel {
  List<Widget> contactCards() {
    return [
      contactCardContent(
        title: "Portfolio Website",
        subTitle: "Visit my website",
        icon: FontAwesomeIcons.globe,
        url: "https://abgth-dev.web.app/",
      ),
      contactCardContent(
        title: "Github profile",
        subTitle: "Follow me on github",
        icon: FontAwesomeIcons.github,
        url: "https://github.com/x-abgth",
      ),
      contactCardContent(
        title: "LinkedIn",
        subTitle: "Connect with me in linkedin",
        icon: FontAwesomeIcons.linkedinIn,
        url: "https://www.linkedin.com/in/abhijith-a-356850192/",
      ),
      contactCardContent(
        title: "Instagram",
        subTitle: "Follow me on instagram",
        icon: FontAwesomeIcons.instagram,
        url: "https://www.instagram.com/__abgth/",
      ),
      contactCardContent(
        title: "HashNode (Blogs)",
        subTitle: "See my latest blogs",
        icon: FontAwesomeIcons.hashnode,
        url: "https://abgthblog.hashnode.dev/",
      ),
    ];
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

  Widget contactCardContent(
      {required String title,
      required String subTitle,
      String url = "",
      required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: ListTile(
        leading: FaIcon(icon, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          subTitle,
          style: const TextStyle(color: Colors.white70, fontSize: 14),
        ),
        trailing:
            const FaIcon(FontAwesomeIcons.chevronRight, color: Colors.white70),
        onTap: () => _launchUrl(url),
      ),
    );
  }
}
