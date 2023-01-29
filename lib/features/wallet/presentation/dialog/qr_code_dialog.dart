import 'package:dero_control_interface/features/wallet/application/wallet_service.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeDialog extends StatelessWidget {
  const QrCodeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'QR Code',
        style: TextStyle(
            color: AppColors.green, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      content: Consumer(
        builder: (context, ref, child) {
          final address = ref.read(walletProvider).address;
          return SizedBox(
            width: double.minPositive,
            child: Center(
              heightFactor: 1,
              widthFactor: 1,
              child: QrImage(
                data: address,
                foregroundColor: AppColors.text,
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
          );
        },
      ),
    );
  }
}
