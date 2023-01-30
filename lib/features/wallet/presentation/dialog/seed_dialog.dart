import 'package:dero_control_interface/features/wallet/presentation/controller/seed_controller.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeedDialog extends StatelessWidget {
  const SeedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyLarge;

    return AlertDialog(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'My Seed',
        style: TextStyle(
            color: AppColors.green, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      content: Consumer(
        builder: (context, ref, child) {
          return ref.watch(getSeedProvider).when(
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
    );
  }
}
