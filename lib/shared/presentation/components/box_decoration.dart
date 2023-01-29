import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/widgets.dart';

final kBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(18),
  color: AppColors.background,
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
