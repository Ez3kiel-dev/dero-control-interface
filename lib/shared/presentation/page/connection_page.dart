import 'package:dero_control_interface/features/connection/application/derod_connection_service.dart';
import 'package:dero_control_interface/features/connection/application/wallet_connection_service.dart';
import 'package:dero_control_interface/features/connection/presentation/connection_form.dart';
import 'package:dero_control_interface/shared/presentation/components/box_decoration.dart';
import 'package:dero_control_interface/shared/presentation/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConnectionPage extends StatelessWidget {
  const ConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Spacer(),
                      Expanded(
                        flex: 4,
                        child: Hero(
                            tag: 'logo',
                            child: SizedBox(
                                height: 150, child: AppResources.logoDero)),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 2,
                      child: Align(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: kBoxDecoration,
                              child: const ConnectionForm(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                Consumer(
                  builder: (context, ref, child) {
                    var derodConnectionError =
                        ref.watch(derodConnectionErrorProvider);
                    var walletConnectionError =
                        ref.watch(walletConnectionErrorProvider);

                    if (derodConnectionError) {
                      return const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('The connection with derod has failed ...'),
                      );
                    }
                    if (walletConnectionError) {
                      return const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                            'The connection with the wallet has failed ...'),
                      );
                    }
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(''),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
