import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

final kRoundedButtonDecoration = BoxDecoration(
  color: AppColors.background,
  shape: BoxShape.circle,
  border: Border.all(
    color: AppColors.green,
    width: 1.2,
  ),
  boxShadow: const [
    BoxShadow(
      color: AppColors.green,
      blurRadius: 8.0,
    ),
  ],
);
