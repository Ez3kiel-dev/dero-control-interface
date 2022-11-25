import 'package:dero_control_interface/features/explorer/domain/transaction.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TransactionDetails extends StatelessWidget {
  final Transaction transaction;

  final String _url = 'https://explorer.dero.io/tx/';

  const TransactionDetails({super.key, required this.transaction});

  Future<void> _launchURL() async {
    var blockUrl = _url + transaction.hash;
    if (!await launchUrl(Uri.parse(blockUrl))) {
      throw 'Could not launch $blockUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'Transaction Details (explorer.dero.io)',
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
                        transaction.hash,
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
                  children: [
                    const Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Block Height',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.green),
                          ),
                        )),
                    const Expanded(
                        flex: 7,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Block Hash',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.green),
                          ),
                        )),
                    const Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Ring Size',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.green),
                          ),
                        )),
                    Expanded(
                        flex: transaction.signer.toString().length > 2 ? 7 : 1,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Signer',
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
                          flex: 2,
                          child: Text(
                            transaction.height.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: AppColors.text),
                          )),
                      Expanded(
                          flex: 7,
                          child: Text(
                            transaction.blockHash.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: AppColors.text),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            transaction.ringSize.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: AppColors.text),
                          )),
                      Expanded(
                          flex:
                              transaction.signer.toString().length > 2 ? 7 : 1,
                          child: Text(
                            transaction.signer.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: AppColors.text),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            title: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Ring',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AppColors.green),
                        ),
                      ),
                    ],
                  ),
                  SelectionArea(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: (transaction.ring as List).length,
                        itemBuilder: (context, index) {
                          final item = transaction.ring?[index] ?? '';
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item,
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: AppColors.text)),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}