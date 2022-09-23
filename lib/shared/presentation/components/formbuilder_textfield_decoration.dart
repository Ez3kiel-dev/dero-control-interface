import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

const kFormBuilderTextFieldDecoration = InputDecoration(
    labelStyle: TextStyle(color: AppColors.green),
    enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: AppColors.green)),
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: AppColors.text)),
    errorBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: AppColors.green)),
    focusedErrorBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: AppColors.text)));