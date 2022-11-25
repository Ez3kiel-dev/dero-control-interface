import 'package:intl/intl.dart';

class DerodVersion {
  final String version;

  DerodVersion({required this.version});
}

class DerodInfo {
  final String network;
  final String height;
  final String stableHeight;
  final String hashrate;
  final String averageBlockTime50;
  final String totalSupply;
  final String upTime;
  final String incomingConnections;
  final String outgoingConnections;
  final String miniblocksInMemory;
  final String connectedMiners;
  final String blocksCount;
  final String miniblocksAccepted;
  final String miniblocksRejected;
  final String miningVelocity;
  final String hashrate1hr;
  final String hashrate1d;
  final String hashrate7d;

  DerodInfo(
      {required testnet,
      required rawHeight,
      required rawStableHeight,
      required rawHashrate,
      required rawAverageBlockTime50,
      required rawTotalSupply,
      required rawUpTime,
      required this.incomingConnections,
      required this.outgoingConnections,
      required this.miniblocksInMemory,
      required this.connectedMiners,
      required this.blocksCount,
      required this.miniblocksAccepted,
      required this.miniblocksRejected,
      required rawMiningVelocity,
      required rawHashrate1hr,
      required rawHashrate1d,
      required rawHashrate7d})
      : height = NumberFormat().format(rawHeight),
        stableHeight = NumberFormat().format(rawStableHeight),
        network = testnet ? 'Testnet' : 'Mainnet',
        hashrate = NumberFormat().format(rawHashrate),
        averageBlockTime50 =
            NumberFormat('##.0#').format(rawAverageBlockTime50),
        totalSupply = NumberFormat.decimalPattern().format(rawTotalSupply),
        upTime = Duration(seconds: rawUpTime)
            .toString()
            .split('.')
            .first
            .padLeft(8, '0'),
        miningVelocity = rawMiningVelocity,
        hashrate1hr = rawHashrate1hr,
        hashrate1d = rawHashrate1d,
        hashrate7d = rawHashrate7d;
}