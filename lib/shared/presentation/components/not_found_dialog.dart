import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final kNotFoundDialog = AlertDialog(
  elevation: 2,
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(18.0))),
  title: const Text(
    'Not Found',
    textAlign: TextAlign.center,
    style: TextStyle(color: AppColors.green, fontWeight: FontWeight.bold),
  ),
  content: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      FaIcon(FontAwesomeIcons.circleExclamation, color: AppColors.text),
    ],
  ),
);
