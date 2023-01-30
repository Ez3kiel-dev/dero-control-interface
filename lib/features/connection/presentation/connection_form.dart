import 'dart:async';

import 'package:dero_control_interface/features/configuration/application/config_service.dart';
import 'package:dero_control_interface/features/configuration/domain/configuration.dart';
import 'package:dero_control_interface/features/connection/application/derod_connection_service.dart';
import 'package:dero_control_interface/features/connection/application/wallet_connection_service.dart';
import 'package:dero_control_interface/shared/presentation/components/formbuilder_textfield_decoration.dart';
import 'package:dero_control_interface/shared/presentation/components/progress_dialog.dart';
import 'package:dero_control_interface/shared/presentation/components/regular_button_style.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class ConnectionForm extends ConsumerStatefulWidget {
  const ConnectionForm({super.key});

  @override
  ConsumerState createState() => _ConnectionFormState();
}

class _ConnectionFormState extends ConsumerState<ConnectionForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool _walletActivated = false;
  bool _authenticationRequired = false;
  bool _passwordVisible = false;
  bool _switchInitiated = false;

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyLarge;
    AsyncValue<Configuration> config = ref.watch(loadConfigurationProvider);

    return config.when(
      loading: () => const CircularProgressIndicator(color: AppColors.green),
      error: (err, stack) => Text('Error: $err'),
      data: (config) {
        if (!_switchInitiated) {
          setState(() {
            _walletActivated = config.walletAddressRequired;
            _authenticationRequired = config.walletAuthenticationRequired;
            _switchInitiated = true;
          });
        }
        return FormBuilder(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FormBuilderTextField(
                    name: 'daemon',
                    initialValue: config.myDerodAddress.isEmpty
                        ? config.defaultRemoteDaemon
                        : config.myDerodAddress,
                    decoration: kFormBuilderTextFieldDecoration.copyWith(
                      labelText: 'Node RPC Address :',
                      errorStyle: textStyle,
                    ),
                    cursorColor: AppColors.text,
                    style: textStyle,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: 'You must give <address:port>')
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: FormBuilderSwitch(
                    name: 'walletSwitch',
                    initialValue: _walletActivated,
                    activeColor: AppColors.green,
                    title: const Text(
                      'Manage your wallet :',
                      style: TextStyle(color: AppColors.green),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _walletActivated = value!;
                        if (_passwordVisible) {
                          _passwordVisible = !_passwordVisible;
                        }
                      });
                    },
                    decoration: const InputDecoration(border: InputBorder.none),
                  ),
                ),
                Visibility(
                  visible: _walletActivated,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FormBuilderTextField(
                      name: 'wallet',
                      initialValue: config.myWalletAddress.isEmpty
                          ? config.defaultWalletAddress
                          : config.myWalletAddress,
                      decoration: kFormBuilderTextFieldDecoration.copyWith(
                        labelText: 'Wallet RPC Address :',
                        errorStyle: textStyle,
                        suffixIcon: const IconButton(
                          icon: Tooltip(
                            message:
                                'You need to run dero-wallet-cli with \'--rpc-server\' argument',
                            child: FaIcon(
                              FontAwesomeIcons.circleInfo,
                              color: AppColors.green,
                            ),
                          ),
                          onPressed: null,
                        ),
                      ),
                      style: textStyle,
                      cursorColor: AppColors.text,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'You must give <address:port>')
                      ]),
                    ),
                  ),
                ),
                Visibility(
                  visible: _walletActivated,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: FormBuilderSwitch(
                      name: 'loginSwitch',
                      initialValue: _authenticationRequired,
                      activeColor: AppColors.green,
                      title: const Text(
                        'Use wallet authentication :',
                        style: TextStyle(color: AppColors.green),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _authenticationRequired = value!;
                          if (_passwordVisible) {
                            _passwordVisible = !_passwordVisible;
                          }
                        });
                      },
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                Visibility(
                  visible: _authenticationRequired && _walletActivated,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FormBuilderTextField(
                      name: 'username',
                      initialValue: config.username,
                      decoration: kFormBuilderTextFieldDecoration.copyWith(
                          labelText: 'Username :', errorStyle: textStyle),
                      style: textStyle,
                      cursorColor: AppColors.text,
                      validator: _authenticationRequired
                          ? FormBuilderValidators.compose([
                              FormBuilderValidators.required(
                                  errorText: 'You must give a username')
                            ])
                          : FormBuilderValidators.compose([]),
                    ),
                  ),
                ),
                Visibility(
                  visible: _authenticationRequired && _walletActivated,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FormBuilderTextField(
                      name: 'password',
                      obscureText: !_passwordVisible,
                      decoration: kFormBuilderTextFieldDecoration.copyWith(
                          labelText: 'Password :',
                          errorStyle: textStyle,
                          suffixIcon: IconButton(
                            splashColor: AppColors.transparentBackground,
                            hoverColor: AppColors.transparentBackground,
                            icon: _passwordVisible
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
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          )),
                      style: textStyle,
                      cursorColor: AppColors.text,
                      validator: _authenticationRequired
                          ? FormBuilderValidators.compose([
                              FormBuilderValidators.required(
                                  errorText: 'You must give a password')
                            ])
                          : FormBuilderValidators.compose([]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Spacer(),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                            autofocus: true,
                            style: kRegularButtonStyle,
                            onPressed: () async {
                              if (_formKey.currentState!.saveAndValidate()) {
                                //CONFIG
                                Configuration updatedConfig = config.copyWith(
                                  myDerodAddress:
                                      _formKey.currentState?.value['daemon'] ??
                                          '',
                                  myWalletAddress:
                                      _formKey.currentState?.value['wallet'] ??
                                          '',
                                  username: _formKey
                                          .currentState?.value['username'] ??
                                      '',
                                  walletAddressRequired: _walletActivated,
                                  walletAuthenticationRequired:
                                      _authenticationRequired,
                                );

                                ref.read(
                                    updateConfigurationProvider(updatedConfig));

                                unawaited(showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (_) {
                                      return kProgressDialog;
                                    }));

                                // DEROD
                                var derodConnectionOK = await ref
                                    .read(derodConnectionStateProvider.notifier)
                                    .connect(
                                        _formKey.currentState?.value['daemon']);

                                if (!derodConnectionOK) {
                                  ref
                                      .read(
                                          derodConnectionErrorProvider.notifier)
                                      .connectionFailed();
                                }

                                // WALLET
                                if (_walletActivated) {
                                  ref
                                      .read(walletSetConnectionParamsProvider)
                                      .setAddress(_formKey
                                          .currentState?.value['wallet']);

                                  if (_authenticationRequired) {
                                    ref
                                        .read(walletSetConnectionParamsProvider)
                                        .setCredentials(
                                            _formKey.currentState
                                                ?.value['username'],
                                            _formKey.currentState
                                                ?.value['password']);
                                  }

                                  var walletConnectionOK = await ref
                                      .read(walletConnectProvider.future);
                                  if (!walletConnectionOK) {
                                    ref
                                        .read(walletConnectionErrorProvider
                                            .notifier)
                                        .connectionFailed();
                                  }
                                }
                                // Close the progress dialog
                                if (!mounted) return;
                                Navigator.of(context).pop();
                              }
                            },
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Connect',
                                style: textStyle,
                              ),
                            )),
                      )),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }
}
