import 'package:dero_control_interface/features/explorer/presentation/blocks_widget.dart';
import 'package:dero_control_interface/features/explorer/presentation/tx_pool_tab.dart';
import 'package:dero_control_interface/features/explorer/presentation/tx_pool_widget.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

class Explorer extends StatelessWidget {
  const Explorer({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(
          height: 50,
          width: double.maxFinite,
          child: AppBar(
            backgroundColor: AppColors.transparentBackground,
            bottom: TabBar(
                isScrollable: true,
                indicatorWeight: 1.2,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: AppColors.green,
                labelStyle: Theme.of(context).textTheme.bodyText1,
                tabs: const [
                  Tooltip(
                    message: 'Queue with the last 100 blocks',
                    child: Tab(
                      child: Text('Blocks',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: AppColors.green, fontSize: 20)),
                    ),
                  ),
                  Tab(child: TxPoolTab()),
                ]),
          ),
        ),
        const Flexible(
          child: TabBarView(
            children: [Blocks(), TxPool()],
          ),
        ),
      ]),
    );
  }
}
