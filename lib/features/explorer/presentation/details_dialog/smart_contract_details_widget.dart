import 'dart:convert';

import 'package:dero_control_interface/features/explorer/domain/smart_contract.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartContractDetails extends StatefulWidget {
  final SmartContract sc;

  const SmartContractDetails({super.key, required this.sc});

  @override
  State<SmartContractDetails> createState() => _SmartContractDetailsState();
}

class _SmartContractDetailsState extends State<SmartContractDetails> {
  bool _showVariables = false;
  bool _showCode = false;

  @override
  Widget build(BuildContext context) {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');

    return SimpleDialog(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'Smart Contract',
        style: TextStyle(
            color: AppColors.green, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Scid',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.green),
                      ),
                    ),
                    SelectableText(
                      widget.sc.scid!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: AppColors.text),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Balance',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.green),
                      ),
                    ),
                    SelectableText(
                      (widget.sc.balance / 100000).toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: AppColors.text),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'String Keys',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppColors.green),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _showVariables = !_showVariables;
                                });
                              },
                              child: _showVariables
                                  ? const FaIcon(
                                      FontAwesomeIcons.squareMinus,
                                      color: AppColors.text,
                                    )
                                  : const FaIcon(
                                      FontAwesomeIcons.squarePlus,
                                      color: AppColors.text,
                                    ),
                            ),
                          )
                        ],
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      key: const Key('showVariables'),
                      child: _showVariables
                          ? SelectableText(
                              encoder.convert(widget.sc.stringkeys))
                          : const SizedBox.shrink(),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Code',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppColors.green),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _showCode = !_showCode;
                                });
                              },
                              child: _showCode
                                  ? const FaIcon(
                                      FontAwesomeIcons.squareMinus,
                                      color: AppColors.text,
                                    )
                                  : const FaIcon(
                                      FontAwesomeIcons.squarePlus,
                                      color: AppColors.text,
                                    ),
                            ),
                          )
                        ],
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      key: const Key('showCode'),
                      child: _showCode
                          ? SelectableText(
                              widget.sc.code,
                              style: const TextStyle(color: AppColors.text),
                            )
                          : const SizedBox.shrink(),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}