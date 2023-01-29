import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

final kBlocksHeaderListTile = ListTile(
  title: Row(
    children: const [
      Expanded(
          child: Text(
        'Height',
        textAlign: TextAlign.center,
        style: TextStyle(color: AppColors.green),
      )),
      Expanded(
          flex: 8,
          child: Text(
            'Hash',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.green),
          )),
      Expanded(
          flex: 2,
          child: Text(
            'Difficulty',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.green),
          )),
      Expanded(
          child: Text(
        'TX count',
        textAlign: TextAlign.center,
        style: TextStyle(color: AppColors.green),
      )),
      Expanded(
          child: Text(
        'Reward',
        textAlign: TextAlign.center,
        style: TextStyle(color: AppColors.green),
      )),
      Expanded(
          flex: 2,
          child: Text(
            'Timestamp',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.green),
          )),
    ],
  ),
  dense: true,
);
