import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  final String _urlGithub = 'https://github.com/Ez3kiel-dev';
  final String _urlDiscord = 'https://discordapp.com/users/Ez3kiel#8951';

  const About({super.key});

  Future<void> _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyLarge;
    return AlertDialog(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'About',
        style: TextStyle(
            color: AppColors.green, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'This desktop application is a graphical interface to visualize and interact with the DERO network.\nIt uses the RPC API provided by the deamon(derod) and the wallet when enabled.\nYou can control and query the official DERO binaries remotely.',
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'For any feedback you can contact me here :',
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              hoverColor: AppColors.green,
              borderRadius: BorderRadius.circular(4),
              onTap: () => _launchURL(_urlDiscord),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FaIcon(FontAwesomeIcons.discord),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Ez3kiel#8951',
                      textAlign: TextAlign.center,
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              hoverColor: AppColors.green,
              borderRadius: BorderRadius.circular(4),
              onTap: () => _launchURL(_urlGithub),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FaIcon(FontAwesomeIcons.github),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Ez3kiel-dev',
                      textAlign: TextAlign.center,
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'If this application is useful to you and you want to support me,',
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'my dero address :',
                    textAlign: TextAlign.center,
                    style: textStyle,
                  ),
                  SelectableText(
                    'Ez3kiel',
                    textAlign: TextAlign.center,
                    style: textStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Thank you ! 😋',
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
