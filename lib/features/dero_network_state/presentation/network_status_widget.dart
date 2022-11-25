import 'package:dero_control_interface/features/dero_network_state/application/dero_network_status_service.dart';
import 'package:dero_control_interface/features/dero_network_state/domain/dero_network.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NetworkWidget extends ConsumerStatefulWidget {
  const NetworkWidget({
    super.key,
  });

  @override
  ConsumerState createState() => _NetworkWidgetState();
}

class _NetworkWidgetState extends ConsumerState<NetworkWidget> {
  final PageController _pageController = PageController();
  DerodInfo _previousValue = DerodInfo(
    testnet: false,
    rawHeight: 0,
    rawStableHeight: 0,
    rawHashrate: 0,
    rawAverageBlockTime50: 0,
    rawTotalSupply: 0,
    miniblocksInMemory: '',
    rawHashrate1d: '0',
    connectedMiners: '',
    rawHashrate7d: '0',
    incomingConnections: '',
    miniblocksRejected: '',
    rawMiningVelocity: '0',
    rawUpTime: 0,
    rawHashrate1hr: '0',
    miniblocksAccepted: '',
    blocksCount: '',
    outgoingConnections: '',
  );
  String _derodVersion = '';

  @override
  Widget build(BuildContext context) {
    var derodNetwork = ref.watch(derodInfoProvider);
    derodNetwork.when(
        data: (value) {
          _previousValue = value;
        },
        error: (err, stack) => debugPrint('Error: $err'),
        loading: () {});

    var derodVersion = ref.watch(derodVersionProvider);
    derodVersion.when(
        data: (value) => _derodVersion = value.version,
        error: (err, stack) => debugPrint('Error: $err'),
        loading: () {});

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SmoothPageIndicator(
          controller: _pageController,
          count: 2,
          axisDirection: Axis.vertical,
          effect: const SlideEffect(
            dotColor: AppColors.green,
            activeDotColor: AppColors.green,
            strokeWidth: 1.2,
            paintStyle: PaintingStyle.stroke,
          ),
          onDotClicked: (value) {
            _pageController.animateToPage(value,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn);
          },
        ),
        Expanded(
          child: SizedBox(
            width: double.maxFinite,
            child: PageView(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Spacer(),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Network',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        _previousValue.network,
                                        key: ValueKey<String>(
                                            _previousValue.network),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Height',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        _previousValue.height,
                                        key: ValueKey<String>(
                                            _previousValue.height),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Stable Height',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        _previousValue.stableHeight,
                                        key: ValueKey<String>(
                                            _previousValue.stableHeight),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  const Text(
                                    'Hashrate (Hz/s)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: AppColors.green),
                                  ),
                                  AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 600),
                                    child: Text(
                                      _previousValue.hashrate,
                                      key: ValueKey<String>(
                                          _previousValue.hashrate),
                                    ),
                                  ),
                                ],
                              )),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Average Block Time (sec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        _previousValue.averageBlockTime50,
                                        key: ValueKey<String>(
                                            _previousValue.averageBlockTime50),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Total Supply',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        _previousValue.totalSupply,
                                        key: ValueKey<String>(
                                            _previousValue.totalSupply),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Version',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        _derodVersion,
                                        key: ValueKey<String>(_derodVersion),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Spacer(),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Connected Miners',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        _previousValue.connectedMiners,
                                        key: ValueKey<String>(
                                            _previousValue.connectedMiners),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Uptime',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        _previousValue.upTime,
                                        key: ValueKey<String>(
                                            _previousValue.upTime),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Incoming/Outgoing Connections',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        '${_previousValue.incomingConnections}/${_previousValue.outgoingConnections}',
                                        key:
                                            ValueKey<DerodInfo>(_previousValue),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  const Text(
                                    'Miniblocks In Memory',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: AppColors.green),
                                  ),
                                  AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 600),
                                    child: Text(
                                      _previousValue.miniblocksInMemory,
                                      key: ValueKey<String>(
                                          _previousValue.miniblocksInMemory),
                                    ),
                                  ),
                                ],
                              )),
                              const Spacer(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Integrator Blocks',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        _previousValue.blocksCount,
                                        key: ValueKey<String>(
                                            _previousValue.blocksCount),
                                      ),
                                    ),
                                    // const Spacer(),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Miniblocks Accepted/Rejected',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        '${_previousValue.miniblocksAccepted}/${_previousValue.miniblocksRejected}',
                                        key:
                                            ValueKey<DerodInfo>(_previousValue),
                                      ),
                                    ),
                                    // const Spacer(),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Mining Velocity',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        _previousValue.miningVelocity,
                                        key: ValueKey<String>(
                                            _previousValue.miningVelocity),
                                      ),
                                    ),
                                    // const Spacer(),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Hashrate 1hr/1d/7d',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: AppColors.green),
                                    ),
                                    AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      child: Text(
                                        '${_previousValue.hashrate1hr}/${_previousValue.hashrate1d}/${_previousValue.hashrate7d}',
                                        key:
                                            ValueKey<DerodInfo>(_previousValue),
                                      ),
                                    ),
                                    // const Spacer(),
                                  ],
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}