import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

final kProgressDialog = Dialog(
  elevation: 2,
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(18.0))),
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        CircularProgressIndicator(
          color: AppColors.green,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Loading...')
      ],
    ),
  ),
);