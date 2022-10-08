import 'package:dero_control_interface/features/explorer/domain/block.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class BlockDetails extends StatelessWidget {
  final Block block;

  final String _url = 'https://explorer.dero.io/block/';

  Future<void> _launchURL() async {
    var blockUrl = _url + block.hash.toString();
    if (!await launchUrl(Uri.parse(blockUrl))) {
      throw 'Could not launch $blockUrl';
    }
  }

  const BlockDetails({super.key, required this.block});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'Block Details (explorer.dero.io)',
        style: TextStyle(
            color: AppColors.green, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Spacer(),
              InkWell(
                onTap: _launchURL,
                hoverColor: AppColors.green,
                borderRadius: BorderRadius.circular(4),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        // blockHash,
                        block.hash.toString(),
                        textAlign: TextAlign.center,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: FaIcon(FontAwesomeIcons.link),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            title: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Height',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.green),
                      ),
                    )),
                    Expanded(
                        flex: 8,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Hash',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.green),
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Difficulty',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.green),
                          ),
                        )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'TX count',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.green),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Reward',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.green),
                      ),
                    )),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Timestamp',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.green),
                          ),
                        )),
                  ],
                ),
                SelectionArea(
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        block.height.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: AppColors.text),
                      )),
                      Expanded(
                          flex: 8,
                          child: Text(
                            block.hash.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: AppColors.text),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            block.difficulty.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: AppColors.text),
                          )),
                      Expanded(
                          child: Text(
                        block.txcount.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: AppColors.text),
                      )),
                      Expanded(
                          child: Text(
                        (block.reward / 100000).toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: AppColors.text),
                      )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            DateFormat('HH:mm:ss').format(
                                DateTime.fromMillisecondsSinceEpoch(
                                    block.timestamp)),
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: AppColors.text),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            // dense: true,
          ),
        ),
      ],
    );
  }
}