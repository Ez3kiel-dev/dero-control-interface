import 'package:dero_control_interface/features/configuration/application/config_service.dart';
import 'package:dero_control_interface/features/dero_network_state/presentation/network_status_widget.dart';
import 'package:dero_control_interface/features/explorer/presentation/explorer_widget.dart';
import 'package:dero_control_interface/features/explorer/presentation/searchbar_widget.dart';
import 'package:dero_control_interface/features/menu/presentation/menu.dart';
import 'package:dero_control_interface/features/menu/presentation/menu_button.dart';
import 'package:dero_control_interface/features/wallet/presentation/wallet_widget.dart';
import 'package:dero_control_interface/shared/presentation/components/box_decoration.dart';
import 'package:dero_control_interface/shared/presentation/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Hub extends StatelessWidget {
  final _drawerController = ZoomDrawerController();

  Hub({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        controller: _drawerController,
        borderRadius: 24.0,
        showShadow: false,
        angle: 0.0,
        mainScreenScale: 0.1,
        slideWidth: MediaQuery.of(context).size.width * 0.15,
        mainScreenTapClose: true,
        menuScreen: const Menu(),
        mainScreen: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: Row(
                      children: [
                        const MenuButton(),
                        Expanded(
                          flex: 2,
                          child: Hero(
                              tag: 'logo',
                              child: SizedBox(
                                  height: 100, child: AppResources.logoDero)),
                        ),
                        const SearchBar(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Container(
                      height: 150,
                      decoration: kBoxDecoration,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: NetworkWidget(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Consumer(
                          builder: (context, ref, child) {
                            var config =
                                ref.watch(configurationNotifierProvider);
                            if (config.walletAddressRequired) {
                              return Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    // height: MediaQuery.of(context).size.height * 0.75,
                                    // height: MediaQuery.of(context).size.height * 2/3,
                                    height: 600,
                                    decoration: kBoxDecoration,
                                    child: const WalletWidget(),
                                  ),
                                ),
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              // height: MediaQuery.of(context).size.height * 0.75,
                              // height: MediaQuery.of(context).size.height * 2/3,
                              height: 600,
                              decoration: kBoxDecoration,
                              child: const Explorer(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
