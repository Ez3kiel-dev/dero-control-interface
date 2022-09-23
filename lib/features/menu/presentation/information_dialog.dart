import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Information extends StatelessWidget {
  final String _urlGithub =
      'https://github.com/Ez3kiel-dev/dero-control-interface';

  const Information({super.key});

  Future<void> _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;
    return AlertDialog(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'Information',
        style: TextStyle(
            color: AppColors.green, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Disclaimer',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'The developer of this app ',
                      style: textStyle,
                      children: const [
                        TextSpan(
                            text: 'is not responsible for any lost funds',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                            )),
                        TextSpan(
                            text:
                                ', nor for the incorrect use of this tool.\nAlways check the original repo available here:')
                      ])),
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
                      'github.com/Ez3kiel-dev/dero-control-interface',
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'General',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Never trust anyone.\nIf possible, build the executable yourself from the Github repo.\nTest the app on the Testnet/Simulator before switching to the mainnet.\nDo not use your main wallet and always test with a small amount when the transfer feature is used.',
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Explorer',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'The network information is updated each time (≃ 18 secs) a new block appears.\nIt is also possible to search for a block, transaction, smart contract, or even a Dero address name (if registered in the official DERO NameService SC).',
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Wallet',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'The current wallet interface allows you to view the latest available wallet data(address, balance, etc.) and make simple transfers to other addresses/accounts.\nIt is possible to view your history when available (wallet connected to a full dero node required).\nYou can also register a name and consult the data of the official DERO NameService SC.',
                  textAlign: TextAlign.center,
                  style: textStyle),
            ),
          ],
        ),
      ),
    );
  }
}