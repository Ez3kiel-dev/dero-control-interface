import 'package:dero_control_interface/features/explorer/domain/account.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

class AccountDetails extends StatelessWidget {
  final Account account;

  const AccountDetails({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'Dero Account Found',
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
                    flex: 2,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Name',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.green),
                          ),
                        ),
                        SelectableText(
                          account.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: AppColors.text),
                        )
                      ],
                    )),
                Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Address',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.green),
                          ),
                        ),
                        SelectableText(
                          account.address,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: AppColors.text),
                        )
                      ],
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}