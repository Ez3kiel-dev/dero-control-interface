import 'package:dero_control_interface/features/wallet/application/transfer_service.dart';
import 'package:dero_control_interface/features/wallet/domain/transfer_result.dart';
import 'package:dero_control_interface/features/wallet/presentation/controller/address_book_controller.dart';
import 'package:dero_control_interface/shared/presentation/components/formbuilder_textfield_decoration.dart';
import 'package:dero_control_interface/shared/presentation/components/regular_button_style.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegisterNameDialog extends StatefulWidget {
  const RegisterNameDialog({super.key});

  @override
  State<RegisterNameDialog> createState() => _RegisterNameDialogState();
}

class _RegisterNameDialogState extends State<RegisterNameDialog> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool _isButtonDisabled = false;

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;

    return AlertDialog(
      elevation: 2,
      scrollable: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'Register Name',
        style: TextStyle(
            color: AppColors.green, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer(builder: (context, ref, child) {
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
                      Text(
                        'Result :',
                        textAlign: TextAlign.center,
                        style: textStyle,
                      ),
                      SelectableText(
                        transferResult.data,
                        textAlign: TextAlign.center,
                        style: textStyle,
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
                      Text(
                        'Registration failure :',
                        textAlign: TextAlign.center,
                        style: textStyle,
                      ),
                      SelectableText(
                        transferResult.data,
                        textAlign: TextAlign.center,
                        style: textStyle,
                      ),
                      const Divider(),
                    ],
                  );
                default:
                  return const SizedBox.shrink();
              }
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Name(s) already registered : ',
                  style: textStyle,
                ),
                Expanded(
                  child: Consumer(
                    builder: (context, ref, child) {
                      return ref.watch(loadAlreadyRegisterNamesProvider).when(
                          data: (data) {
                            return Text(
                              data,
                              style: textStyle,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FormBuilder(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FormBuilderTextField(
                    name: 'name',
                    decoration: kFormBuilderTextFieldDecoration.copyWith(
                        labelText: 'New name :', errorStyle: textStyle),
                    cursorColor: AppColors.text,
                    style: textStyle,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: 'You must give a name'),
                      FormBuilderValidators.maxLength(100,
                          errorText: 'max 100 characters'),
                    ]),
                  ),
                )),
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
                    style: textStyle,
                  ),
                )),
            Consumer(
              builder: (context, ref, child) {
                return OutlinedButton(
                    style: kRegularButtonStyle,
                    onPressed: _isButtonDisabled
                        ? null
                        : () {
                            if (_formKey.currentState!.saveAndValidate()) {
                              ref
                                  .read(transferResultProvider.notifier)
                                  .registerName(
                                      _formKey.currentState?.value['name']);
                            }
                            setState(() {
                              _isButtonDisabled = true;
                            });
                          },
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Confirm',
                        style: textStyle,
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
