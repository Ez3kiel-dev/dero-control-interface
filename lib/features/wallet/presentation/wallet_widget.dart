import 'dart:convert';
import 'dart:ui';

import 'package:dero_control_interface/features/connection/application/wallet_connection_service.dart';
import 'package:dero_control_interface/features/wallet/application/wallet_service.dart';
import 'package:dero_control_interface/features/wallet/domain/basic_transfer.dart';
import 'package:dero_control_interface/features/wallet/domain/wallet.dart';
import 'package:dero_control_interface/features/wallet/presentation/controller/balance_controller.dart';
import 'package:dero_control_interface/features/wallet/presentation/dialog/address_book_dialog.dart';
import 'package:dero_control_interface/features/wallet/presentation/dialog/history_dialog.dart';
import 'package:dero_control_interface/features/wallet/presentation/dialog/integrated_address_dialog.dart';
import 'package:dero_control_interface/features/wallet/presentation/dialog/qr_code_dialog.dart';
import 'package:dero_control_interface/features/wallet/presentation/dialog/register_name_dialog.dart';
import 'package:dero_control_interface/features/wallet/presentation/dialog/seed_dialog.dart';
import 'package:dero_control_interface/features/wallet/presentation/dialog/transfer_summary_dialog.dart';
import 'package:dero_control_interface/shared/presentation/components/formbuilder_textfield_decoration.dart';
import 'package:dero_control_interface/shared/presentation/components/regular_button_style.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class WalletWidget extends StatefulWidget {
  const WalletWidget({super.key});

  @override
  State<WalletWidget> createState() => _WalletState();
}

class _WalletState extends State<WalletWidget> {
  final _formKey = GlobalKey<FormBuilderState>();
  Wallet _previousValue = const Wallet();
  bool _showTransfer = false;
  bool _showBalance = false;

  void _showTransferSummaryDialog() {
    showDialog(
        context: context,
        builder: (context) {
          var destination = _formKey.currentState?.value['destination'];
          var amount = double.tryParse(_formKey.currentState?.value['amount']);
          var ringsize = _formKey.currentState?.value['ringsize'];
          var comment = _formKey.currentState?.value['comment'] ?? '';
          return TransferSummary(
            transfer: Transfer(
              destination: destination,
              // back to dero atomic unit
              amount: ((amount ?? 0) * 100000).toInt(),
              ringsize: ringsize,
              comment: comment,
            ),
          );
        });
  }

  void _showRegisterNameDialog() {
    showDialog(
        context: context, builder: (context) => const RegisterNameDialog());
  }

  void _showAddressBook() {
    showDialog(
        context: context, builder: (context) => const AddressBookDialog());
  }

  void _showHistoryDialog() {
    showDialog(context: context, builder: (context) => const History());
  }

  void _showQrCodeDialog() {
    showDialog(context: context, builder: (context) => const QrCodeDialog());
  }

  void _showIntegratedAddressDialog() {
    showDialog(
        context: context, builder: (context) => IntegratedAddressDialog());
  }

  void _showSeedDialog() {
    showDialog(context: context, builder: (context) => const SeedDialog());
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;
    return Scaffold(
      body: Column(
        children: [
          Consumer(
            builder: (context, ref, child) {
              return Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      tooltip: 'Register new name (DERO NameService SC)',
                      onPressed: () {
                        _showRegisterNameDialog();
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.plus,
                        color: AppColors.green,
                      ),
                    ),
                  ),
                  const Text(
                    'Wallet',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.green, fontSize: 20),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton(
                        backgroundColor: AppColors.background,
                        tooltip: 'Address book for DERO NameService SC',
                        mini: true,
                        onPressed: () {
                          _showAddressBook();
                        },
                        child: const FaIcon(FontAwesomeIcons.addressBook,
                            color: AppColors.green)),
                  )
                ],
              );
            },
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              transitionBuilder: (child, animation) {
                final offsetAnimation = Tween<Offset>(
                        // begin: Offset(_showTransfer ? -1.0 : 1.0, 0.0),
                        begin: const Offset(-1.0, 0.0),
                        end: const Offset(0.0, 0.0))
                    .animate(animation);
                return ClipRect(
                    child: SlideTransition(
                        position: offsetAnimation, child: child));
              },
              child: _showTransfer
                  ? Padding(
                      key: UniqueKey(),
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    'Current Balance :',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: AppColors.green),
                                  ),
                                  Consumer(
                                    builder: (context, ref, child) {
                                      var balance = ref.watch(walletProvider
                                          .select((wallet) => wallet.balance));
                                      return SelectableText(
                                        (balance / 100000).toString(),
                                        textAlign: TextAlign.center,
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'Estimated Fees :',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: AppColors.green),
                                  ),
                                  Consumer(
                                    builder: (context, ref, child) {
                                      var fees =
                                          ref.watch(estimatedFeesProvider);
                                      return SelectableText(
                                        (fees / 100000).toString(),
                                        textAlign: TextAlign.center,
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'Future Balance :',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: AppColors.green),
                                  ),
                                  Consumer(
                                    builder: (context, ref, child) {
                                      var futureBalance =
                                          ref.watch(futureBalanceProvider);
                                      return SelectableText(
                                        (futureBalance / 100000).toString(),
                                        textAlign: TextAlign.center,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          FormBuilder(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FormBuilderTextField(
                                      name: 'destination',
                                      decoration:
                                          kFormBuilderTextFieldDecoration
                                              .copyWith(
                                                  labelText:
                                                      'Destination address :',
                                                  errorStyle: textStyle),
                                      cursorColor: AppColors.text,
                                      style: textStyle,
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(
                                            errorText:
                                                'You must give a Dero address'),
                                        FormBuilderValidators.maxLength(100,
                                            errorText:
                                                'You must give a valid Dero address'),
                                      ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Consumer(
                                      builder: (context, ref, child) {
                                        return FormBuilderTextField(
                                          name: 'amount',
                                          decoration:
                                              kFormBuilderTextFieldDecoration
                                                  .copyWith(
                                            labelText: 'Amount :',
                                            errorStyle: textStyle,
                                          ),
                                          keyboardType: TextInputType.number,
                                          cursorColor: AppColors.text,
                                          style: textStyle,
                                          onChanged: (value) {
                                            double input = double.tryParse(
                                                    value.toString()) ??
                                                0.0;
                                            int amount =
                                                (input * 100000).toInt();

                                            ref
                                                .read(amountProvider.notifier)
                                                .update((state) => (amount));
                                          },
                                          validator:
                                              FormBuilderValidators.compose([
                                            FormBuilderValidators.required(
                                                errorText:
                                                    'You must give a amount'),
                                            FormBuilderValidators.numeric(
                                                errorText:
                                                    'only numerical value'),
                                            FormBuilderValidators.min(0,
                                                errorText:
                                                    'only positive value'),
                                          ]),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Consumer(
                                      builder: (context, ref, child) {
                                        return FormBuilderChoiceChip(
                                          name: 'ringsize',
                                          initialValue: 16,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              labelText: 'RingSize :',
                                              labelStyle: TextStyle(
                                                  color: AppColors.green)),
                                          alignment: WrapAlignment.spaceEvenly,
                                          selectedColor: AppColors.green,
                                          onChanged: (dynamic value) {
                                            ref
                                                .read(estimatedFeesProvider
                                                    .notifier)
                                                .estimateFees(value as int);
                                          },
                                          options: const [
                                            FormBuilderChipOption(
                                                value: 2, child: Text('2')),
                                            FormBuilderChipOption(
                                                value: 4, child: Text('4')),
                                            FormBuilderChipOption(
                                                value: 8, child: Text('8')),
                                            FormBuilderChipOption(
                                                value: 16, child: Text('16')),
                                            FormBuilderChipOption(
                                                value: 32, child: Text('32')),
                                            FormBuilderChipOption(
                                                value: 64, child: Text('64')),
                                            FormBuilderChipOption(
                                                value: 128, child: Text('128')),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FormBuilderTextField(
                                      name: 'comment',
                                      decoration:
                                          kFormBuilderTextFieldDecoration
                                              .copyWith(
                                                  labelText:
                                                      'Message (optional) :',
                                                  errorStyle: textStyle),
                                      cursorColor: AppColors.text,
                                      style: textStyle,
                                      validator: FormBuilderValidators.compose([
                                        // FormBuilderValidators.maxLength(128),
                                        // TODO : 144 bytes tx max length ?
                                        (data) {
                                          if (data == null) return null;
                                          if (utf8.encode(data).length > 138) {
                                            return 'maximum size reached';
                                          }
                                          return null;
                                        }
                                      ]),
                                    ),
                                  ),
                                ],
                              )),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Consumer(
                                    builder: (context, ref, child) {
                                      return OutlinedButton(
                                          style: kRegularButtonStyle,
                                          onPressed: () {
                                            ref.invalidate(
                                                futureBalanceProvider);
                                            ref.invalidate(
                                                estimatedFeesProvider);

                                            setState(() {
                                              _showTransfer = false;
                                            });
                                          },
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'Back',
                                              style: textStyle,
                                            ),
                                          ));
                                    },
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: OutlinedButton(
                                      style: kRegularButtonStyle,
                                      onPressed: () {
                                        if (_formKey.currentState!
                                            .saveAndValidate()) {
                                          _showTransferSummaryDialog();
                                        }
                                      },
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          'Send',
                                          style: textStyle,
                                        ),
                                      )),
                                ),
                              ),
                              const Spacer(),
                            ],
                          )
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Consumer(builder: (context, ref, child) {
                        ref.watch(walletTickUpdateProvider).when(
                            data: (_) {
                              var value = ref.read(walletProvider);
                              if (_previousValue != value) {
                                _previousValue = value;
                              }
                            },
                            error: (err, stack) async {
                              debugPrint('WalletWidget Error: $err');
                              ref.invalidate(initWalletClientProvider);
                            },
                            loading: () {});
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: Column(
                                children: [
                                  Flexible(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: IconButton(
                                            tooltip: 'Show QR code',
                                            icon: const FaIcon(
                                              FontAwesomeIcons.qrcode,
                                              color: AppColors.green,
                                            ),
                                            onPressed: () {
                                              _showQrCodeDialog();
                                            },
                                          ),
                                        ),
                                        const Expanded(
                                          // flex: 2,
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'My Address',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: AppColors.green),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: IconButton(
                                            tooltip: 'Integrated Address Tools',
                                            icon: const FaIcon(
                                              FontAwesomeIcons.toolbox,
                                              color: AppColors.green,
                                            ),
                                            onPressed: () {
                                              _showIntegratedAddressDialog();
                                            },
                                          ),
                                        ),
                                        Flexible(
                                          child: IconButton(
                                            tooltip: 'Show Seed',
                                            icon: const FaIcon(
                                              FontAwesomeIcons.key,
                                              color: AppColors.green,
                                            ),
                                            onPressed: () {
                                              _showSeedDialog();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: SelectableText(
                                        _previousValue.address,
                                        key: ValueKey<String>(
                                            _previousValue.address),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Sync Height',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: AppColors.green),
                                  ),
                                  AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 600),
                                    child: Text(
                                      _previousValue.height.toString(),
                                      key: ValueKey<int>(_previousValue.height),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Flexible(
                                        // flex: 2,
                                        child: Text(
                                          'My Balance',
                                          textAlign: TextAlign.center,
                                          style:
                                              TextStyle(color: AppColors.green),
                                        ),
                                      ),
                                      Flexible(
                                        child: IconButton(
                                          splashColor:
                                              AppColors.transparentBackground,
                                          hoverColor:
                                              AppColors.transparentBackground,
                                          tooltip: 'Show/Hide balance',
                                          icon: _showBalance
                                              ? const Icon(
                                                  Icons.visibility_off,
                                                  color: Colors.grey,
                                                )
                                              : const Icon(
                                                  Icons.visibility,
                                                  color: AppColors.green,
                                                ),
                                          onPressed: () {
                                            setState(() {
                                              _showBalance = !_showBalance;
                                            });
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 600),
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                          sigmaX: _showBalance ? 0 : 4,
                                          sigmaY: _showBalance ? 0 : 4),
                                      child: Text(
                                        (_previousValue.balance / 100000)
                                            .toString(),
                                        key: ValueKey<int>(
                                            _previousValue.balance),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Row(
                                children: [
                                  const Spacer(),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlinedButton(
                                          style: kRegularButtonStyle,
                                          onPressed: () {
                                            setState(() {
                                              _showTransfer = true;
                                            });
                                          },
                                          child: Text(
                                            'Transfer',
                                            style: textStyle,
                                          )),
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlinedButton(
                                          style: kRegularButtonStyle,
                                          onPressed: () async {
                                            _showHistoryDialog();
                                          },
                                          child: Text(
                                            'History',
                                            style: textStyle,
                                          )),
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}