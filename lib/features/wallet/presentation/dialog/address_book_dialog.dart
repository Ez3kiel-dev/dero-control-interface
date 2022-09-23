import 'package:dero_control_interface/features/wallet/presentation/controller/address_book_controller.dart';
import 'package:dero_control_interface/shared/presentation/components/regular_button_style.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddressBookDialog extends StatefulWidget {
  const AddressBookDialog({super.key});

  @override
  State<AddressBookDialog> createState() => _AddressBookDialogState();
}

class _AddressBookDialogState extends State<AddressBookDialog> {
  bool _sortButtonPushed = false;

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;
    return AlertDialog(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          const Text(
            'Name Service Address Book',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FloatingActionButton(
                backgroundColor: AppColors.background,
                tooltip: 'Process Data',
                onPressed: () {
                  setState(() {
                    _sortButtonPushed = !_sortButtonPushed;
                  });
                },
                child: const FaIcon(FontAwesomeIcons.wandMagicSparkles,
                    color: AppColors.green)),
          )
        ],
      ),
      content: Center(
        child: Consumer(
          builder: (context, ref, child) {
            return ref.watch(loadAddressBookProvider).when(
                data: (addressBook) {
                  return SizedBox(
                    width: double.maxFinite,
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 600),
                      transitionBuilder: (child, animation) {
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                        );
                      },
                      child: _sortButtonPushed
                          ? Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  title: Row(
                                    children: const [
                                      Expanded(
                                          child: Text(
                                        'Address',
                                        textAlign: TextAlign.center,
                                        style:
                                            TextStyle(color: AppColors.green),
                                      )),
                                      Expanded(
                                          // flex: 2,
                                          child: Text(
                                        'Names',
                                        textAlign: TextAlign.center,
                                        style:
                                            TextStyle(color: AppColors.green),
                                      ))
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: addressBook
                                          .sortedNameToAddressMap.keys.length,
                                      itemBuilder: (context, index) {
                                        var address = addressBook
                                            .sortedNameToAddressMap.keys
                                            .toList()[index]
                                            .toString();
                                        var names = addressBook
                                            .sortedNameToAddressMap.values
                                            .toList()[index]
                                            .toString();
                                        return ListTile(
                                          title: Row(
                                            children: [
                                              Expanded(
                                                  child: SelectableText(
                                                address,
                                                textAlign: TextAlign.center,
                                              )),
                                              Expanded(
                                                  // flex: 2,
                                                  child: SelectableText(
                                                names,
                                                textAlign: TextAlign.center,
                                              )),
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            )
                          : Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  title: Row(
                                    children: const [
                                      Expanded(
                                          child: Text(
                                        'Name',
                                        textAlign: TextAlign.center,
                                        style:
                                            TextStyle(color: AppColors.green),
                                      )),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            'Compressed Keys',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: AppColors.green),
                                          ))
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: addressBook
                                          .originalNameToAddressMap.keys.length,
                                      itemBuilder: (context, index) {
                                        var keys = addressBook
                                            .originalNameToAddressMap.keys
                                            .toList()[index]
                                            .toString();
                                        var values = addressBook
                                            .originalNameToAddressMap.values
                                            .toList()[index]
                                            .toString();
                                        return ListTile(
                                          title: Row(
                                            children: [
                                              Expanded(
                                                  child: SelectableText(
                                                keys,
                                                textAlign: TextAlign.center,
                                              )),
                                              Expanded(
                                                  flex: 2,
                                                  child: SelectableText(
                                                    values,
                                                    textAlign: TextAlign.center,
                                                  )),
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            ),
                    ),
                  );
                },
                error: (err, stacktrace) => Text(
                      err.toString(),
                      style: textStyle,
                    ),
                loading: () => const CircularProgressIndicator(
                      color: AppColors.green,
                    ));
          },
        ),
      ),
      actions: [
        Center(
          child: OutlinedButton(
              style: kRegularButtonStyle,
              onPressed: () {
                Navigator.pop(context);
              },
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Back',
                  style: textStyle,
                ),
              )),
        )
      ],
    );
  }
}