import 'package:dero_control_interface/features/connection/application/logout_service.dart';
import 'package:dero_control_interface/features/menu/presentation/about_dialog.dart';
import 'package:dero_control_interface/features/menu/presentation/information_dialog.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool _isHelpButtonHovered = false;
  bool _isAboutButtonHovered = false;
  bool _isLogoutButtonHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 2,
        ),
        InkWell(
          splashColor: AppColors.transparentBackground,
          highlightColor: AppColors.transparentBackground,
          hoverColor: AppColors.transparentBackground,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Info',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.green,
                fontSize: 20,
                shadows: _isHelpButtonHovered
                    ? [
                        const Shadow(
                          color: AppColors.green,
                          blurRadius: 6.0,
                          offset: Offset(
                            1.0,
                            -1.0,
                          ),
                        )
                      ]
                    : [],
              ),
            ),
          ),
          onHover: (value) {
            setState(() {
              _isHelpButtonHovered = value;
            });
          },
          onTap: () {
            ZoomDrawer.of(context)?.close();
            showDialog(
                context: context,
                builder: (context) {
                  return const Information();
                });
          },
        ),
        const Spacer(),
        InkWell(
          splashColor: AppColors.transparentBackground,
          highlightColor: AppColors.transparentBackground,
          hoverColor: AppColors.transparentBackground,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'About',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.green,
                fontSize: 20,
                shadows: _isAboutButtonHovered
                    ? [
                        const Shadow(
                          color: AppColors.green,
                          blurRadius: 6.0,
                          offset: Offset(
                            1.0,
                            -1.0,
                          ),
                        )
                      ]
                    : [],
              ),
            ),
          ),
          onHover: (value) {
            setState(() {
              _isAboutButtonHovered = value;
            });
          },
          onTap: () {
            ZoomDrawer.of(context)?.close();
            showDialog(
                context: context,
                builder: (context) {
                  // return const AboutDialog(); // Flutter About Dialog with licences
                  return const About();
                });
          },
        ),
        const Spacer(),
        Consumer(builder: (context, ref, child) {
          return InkWell(
            splashColor: AppColors.transparentBackground,
            highlightColor: AppColors.transparentBackground,
            hoverColor: AppColors.transparentBackground,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Logout',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.green,
                  fontSize: 20,
                  shadows: _isLogoutButtonHovered
                      ? [
                          const Shadow(
                            color: AppColors.green,
                            blurRadius: 6.0,
                            offset: Offset(
                              1.0,
                              -1.0,
                            ),
                          )
                        ]
                      : [],
                ),
              ),
            ),
            onHover: (value) {
              setState(() {
                _isLogoutButtonHovered = value;
              });
            },
            onTap: () {
              ref.read(logoutProvider.notifier).logout();
            },
          );
        }),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
