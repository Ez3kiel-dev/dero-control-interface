import 'package:dero_control_interface/features/explorer/application/search_service.dart';
import 'package:dero_control_interface/features/explorer/domain/account.dart';
import 'package:dero_control_interface/features/explorer/domain/block.dart';
import 'package:dero_control_interface/features/explorer/domain/smart_contract.dart';
import 'package:dero_control_interface/features/explorer/domain/transaction.dart';
import 'package:dero_control_interface/features/explorer/presentation/details_dialog/account_details_widget.dart';
import 'package:dero_control_interface/features/explorer/presentation/details_dialog/block_details_widget.dart';
import 'package:dero_control_interface/features/explorer/presentation/details_dialog/smart_contract_details_widget.dart';
import 'package:dero_control_interface/features/explorer/presentation/details_dialog/tx_details_widget.dart';
import 'package:dero_control_interface/shared/presentation/components/not_found_dialog.dart';
import 'package:dero_control_interface/shared/presentation/components/progress_dialog.dart';
import 'package:dero_control_interface/shared/presentation/components/rounded_button_decoration.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class SearchBar extends ConsumerStatefulWidget {
  const SearchBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SearchBar> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool _toggle = false;
  double _searchBarWidth = 0;

  Future<void> _parseInput(String input) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return kProgressDialog;
        });

    var result = await ref.watch(searchProvider(input).future);

    // Close the progress dialog
    if (!mounted) return;
    Navigator.of(context).pop();

    if (result is Transaction) {
      await _showTransactionDetails(result);
    } else if (result is Block) {
      await _showBlockDetails(result);
    } else if (result is Account) {
      await _showAccountDetails(result);
    } else if (result is SmartContract) {
      await _showSmartContractDetails(result);
    } else {
      await showDialog(
          context: context,
          builder: (_) {
            return kNotFoundDialog;
          });
    }
  }

  Future<void> _showTransactionDetails(Transaction tx) async {
    await showDialog(
        context: context,
        builder: (context) {
          return TransactionDetails(
            transaction: tx,
          );
        });
  }

  Future<void> _showBlockDetails(Block block) async {
    await showDialog(
        context: context,
        builder: (context) {
          return BlockDetails(
            block: block,
          );
        });
  }

  Future<void> _showAccountDetails(Account account) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AccountDetails(account: account);
        });
  }

  Future<void> _showSmartContractDetails(SmartContract smartContract) async {
    await showDialog(
        context: context,
        builder: (_) {
          return SmartContractDetails(sc: smartContract);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          curve: Curves.fastOutSlowIn,
          width: _searchBarWidth,
          child: FormBuilder(
            key: _formKey,
            child: FormBuilderTextField(
              name: 'search',
              autocorrect: false,
              onSubmitted: (_) async {
                _formKey.currentState?.saveAndValidate();
                var val = _formKey.currentState?.value['search'];
                await _parseInput(val.toString().trim());
                _formKey.currentState?.reset();
              },
              decoration: InputDecoration(
                  hintText:
                      'block height, block hash, transaction hash, scid ...',
                  errorStyle: Theme.of(context).textTheme.bodyText1,
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.green)),
                  errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedErrorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.green))),
              cursorColor: AppColors.text,
              validator: FormBuilderValidators.maxLength(100,
                  errorText: 'The maximum length is 100 characters'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: kRoundedButtonDecoration,
            child: FloatingActionButton(
                heroTag: 'search',
                backgroundColor: AppColors.transparentBackground,
                onPressed: () {
                  setState(() {
                    _toggle = !_toggle;
                    _formKey.currentState?.reset();
                    if (_toggle) {
                      _searchBarWidth = MediaQuery.of(context).size.width / 2;
                    } else {
                      _searchBarWidth = 0;
                    }
                  });
                },
                child: _toggle
                    ? const FaIcon(
                        FontAwesomeIcons.xmark,
                        color: AppColors.text,
                      )
                    : const FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: AppColors.text,
                      )),
          ),
        )
      ],
    );
  }
}