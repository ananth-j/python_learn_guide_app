import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/colors.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: const Color.fromARGB(255, 9, 223, 187),
      ),
      body: Container(
        color: const Color.fromARGB(255, 247, 255, 255),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text("Dark Mode"),
              trailing: Switch(
                  value: darkMode,
                  activeColor: const Color.fromARGB(255, 0, 0, 0),
                  inactiveTrackColor: Colors.white12,
                  onChanged: (value) {
                    return setState(() {
                      darkMode = !darkMode;
                    });
                  }),
            ),
            _buildListTile("Reset Saved", Icons.refresh_sharp, () {}),
            _buildListTile("Share App", Icons.share, () {
              _launchURL(
                  'https://play.google.com/store/apps/details?id=your.package.name');
            }),
            _buildListTile("Rate Us", Icons.star_rate, () {
              _launchURL(
                  'https://play.google.com/store/apps/details?id=your.package.name');
            }),
            _buildListTile("Other Apps", Icons.apps, () {
              _launchURL(
                  'https://play.google.com/store/apps/developer?id=yourDeveloperId');
            }),
            _buildListTile("Send Feedback", Icons.feedback, () {
              _launchEmail('support@yourapp.com');
            }),
            _buildListTile("Privacy Policy", Icons.privacy_tip, () {
              _launchURL('https://yourwebsite.com/privacy-policy');
            }),
            _buildListTile("App Version", Icons.info, () {
              _showAppVersion(context, "1.0.0");
            }),
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }

  void _launchURL(String url) async {
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  void _launchEmail(String email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=Feedback&body=Your message here',
    );
    final String url = params.toString();
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  void _showAppVersion(BuildContext context, String version) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("App Version"),
          content: Text("Current version: $version"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
