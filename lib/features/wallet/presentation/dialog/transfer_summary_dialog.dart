import 'package:dero_control_interface/features/wallet/application/transfer_service.dart';
import 'package:dero_control_interface/features/wallet/domain/basic_transfer.dart';
import 'package:dero_control_interface/features/wallet/domain/transfer_result.dart';
import 'package:dero_control_interface/shared/presentation/components/regular_button_style.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransferSummary extends StatefulWidget {
  final Transfer transfer;

  const TransferSummary({super.key, required this.transfer});

  @override
  State<TransferSummary> createState() => _TransferSummaryState();
}

class _TransferSummaryState extends State<TransferSummary> {
  bool _isButtonDisabled = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'Transfer Summary',
        style: TextStyle(
            color: AppColors.green, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Consumer(builder: (context, ref, child) {
            var transferResult = ref.watch(transferResultProvider);

            switch (transferResult.transferState) {
              case TransferState.pending:
                return const SizedBox.shrink();
              case TransferState.submitted:
                return const CircularProgressIndicator(
                  color: AppColors.green,
                );
              case TransferState.successful:
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.circleCheck,
                        color: AppColors.green,
                      ),
                    ),
                    const Text(
                      'Txid :',
                      textAlign: TextAlign.center,
                    ),
                    SelectableText(
                      transferResult.data,
                      textAlign: TextAlign.center,
                    ),
                    const Divider(),
                  ],
                );
              case TransferState.failure:
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.circleExclamation,
                        color: AppColors.green,
                      ),
                    ),
                    const Text(
                      'Transaction failure :',
                      textAlign: TextAlign.center,
                    ),
                    SelectableText(
                      transferResult.data,
                      textAlign: TextAlign.center,
                    ),
                    const Divider(),
                  ],
                );
              default:
                return const SizedBox.shrink();
            }
          }),
          Column(
            children: [
              const Text(
                'Destination',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.green),
              ),
              Text(widget.transfer.destination)
            ],
          ),
          Column(
            children: [
              const Text(
                'Amount',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.green),
              ),
              Text('${(widget.transfer.amount / 100000).toString()} dero')
            ],
          ),
          Column(
            children: [
              const Text(
                'Ringsize',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.green),
              ),
              Text(widget.transfer.ringsize.toString())
            ],
          ),
          Column(
            children: [
              const Text(
                'Comment',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.green),
              ),
              Text(widget.transfer.comment.isEmpty
                  ? '/'
                  : widget.transfer.comment)
            ],
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
                style: kRegularButtonStyle,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Back',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )),
            Consumer(
              builder: (context, ref, child) {
                return OutlinedButton(
                    style: kRegularButtonStyle,
                    onPressed: _isButtonDisabled
                        ? null
                        : () {
                            ref
                                .read(transferResultProvider.notifier)
                                .sendDero(widget.transfer);

                            setState(() {
                              _isButtonDisabled = true;
                            });
                          },
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Confirm',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ));
              },
            ),
          ],
        ),
      ],
    );
  }
}
