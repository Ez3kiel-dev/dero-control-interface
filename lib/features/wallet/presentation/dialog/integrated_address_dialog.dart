import 'package:dero_control_interface/features/wallet/presentation/controller/integrated_address_controller.dart';
import 'package:dero_control_interface/shared/presentation/components/formbuilder_textfield_decoration.dart';
import 'package:dero_control_interface/shared/presentation/components/regular_button_style.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class IntegratedAddressDialog extends StatelessWidget {
  IntegratedAddressDialog({super.key});

  final _formMakeKey = GlobalKey<FormBuilderState>();
  final _formSplitKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyLarge;

    return AlertDialog(
      // elevation: 2,
      scrollable: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'Integrated Address Tools',
        style: TextStyle(
            color: AppColors.green, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FormBuilder(
                      key: _formMakeKey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FormBuilderTextField(
                          name: 'payload',
                          decoration: kFormBuilderTextFieldDecoration.copyWith(
                              labelText: 'Create a integrated address :',
                              errorStyle: textStyle),
                          cursorColor: AppColors.text,
                          style: textStyle,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: 'You must give a payload'),
                          ]),
                        ),
                      )),
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  return OutlinedButton(
                      style: kRegularButtonStyle,
                      onPressed: () {
                        if (_formMakeKey.currentState!.saveAndValidate()) {
                          ref
                              .read(dataIntegratedAddressProvider.notifier)
                              .setData(
                                  _formMakeKey.currentState?.value['payload']);
                        }
                      },
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Make',
                          style: textStyle,
                        ),
                      ));
                },
              ),
            ],
          ),
          Consumer(
            builder: (context, ref, child) {
              return ref.watch(makeIntegratedAddressProvider).when(
                  data: (data) {
                    return SelectableText(
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
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FormBuilder(
                      key: _formSplitKey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FormBuilderTextField(
                          name: 'integrated_address',
                          decoration: kFormBuilderTextFieldDecoration.copyWith(
                              labelText: 'Split a integrated address :',
                              errorStyle: textStyle),
                          cursorColor: AppColors.text,
                          style: textStyle,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText:
                                    'You must give a integrated address'),
                            FormBuilderValidators.match('deroi|detoi',
                                errorText:
                                    'You must give a integrated address'),
                          ]),
                        ),
                      )),
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  return OutlinedButton(
                      style: kRegularButtonStyle,
                      onPressed: () {
                        if (_formSplitKey.currentState!.saveAndValidate()) {
                          ref
                              .read(integratedAddressToSplitProvider.notifier)
                              .setData(_formSplitKey
                                  .currentState?.value['integrated_address']);
                        }
                      },
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Split',
                          style: textStyle,
                        ),
                      ));
                },
              ),
            ],
          ),
          Consumer(
            builder: (context, ref, child) {
              return ref.watch(splitIntegratedAddressProvider).when(
                  data: (data) {
                    return SelectableText(
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
        ],
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
        ),
      ],
    );
  }
}
