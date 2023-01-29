import 'package:dero_control_interface/shared/presentation/components/rounded_button_decoration.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: kRoundedButtonDecoration,
        child: FloatingActionButton(
          heroTag: 'menu',
          backgroundColor: AppColors.transparentBackground,
          onPressed: () {
            ZoomDrawer.of(context)?.open();
          },
          child: const FaIcon(
            FontAwesomeIcons.bars,
            color: AppColors.text,
          ),
        ),
      ),
    );
  }
}
