import 'package:dero_control_interface/features/explorer/application/last_100_blocks_service.dart';
import 'package:dero_control_interface/features/explorer/domain/block.dart';
import 'package:dero_control_interface/features/explorer/presentation/blocks_components.dart';
import 'package:dero_control_interface/features/explorer/presentation/details_dialog/block_details_widget.dart';
import 'package:dero_control_interface/shared/application/derod_queries_service.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class Blocks extends ConsumerStatefulWidget {
  const Blocks({
    super.key,
  });

  @override
  ConsumerState createState() => _BlocksState();
}

class _BlocksState extends ConsumerState<Blocks>
    with AutomaticKeepAliveClientMixin<Blocks> {
  final List<Block> _blocks = [];

  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem(Block block) {
    _blocks.insert(0, block);
    _key.currentState!
        .insertItem(0, duration: const Duration(milliseconds: 600));
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
        sizeFactor: animation,
      );
    }, duration: const Duration(milliseconds: 600));

    _blocks.removeLast();
  }

  Future<void> _showBlockDetails(BuildContext context, String blockHash) async {
    try {
      var block = await ref.watch(getBlockProvider(blockHash).future);

      await showDialog(
          context: context,
          builder: (context) {
            return BlockDetails(
              block: block,
            );
          });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    var blockList = ref.watch(blocksListProvider);
    blockList.when(
        data: (list) {
          if (_blocks.isEmpty) {
            _addItem(list.first);
          } else {
            if (_blocks.first != list.first) _addItem(list.first);
          }
          if (_blocks.length > 100) {
            _removeItem(_blocks.length - 1);
          }
        },
        error: (err, stack) => {debugPrint(err.toString())},
        loading: () {});

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          kBlocksHeaderListTile,
          Expanded(
            child: Material(
              type: MaterialType.transparency,
              child: AnimatedList(
                  key: _key,
                  initialItemCount: _blocks.length,
                  itemBuilder: (context, index, animation) {
                    return SizeTransition(
                      key: UniqueKey(),
                      sizeFactor: animation,
                      child: InkWell(
                        onTap: () async {
                          await _showBlockDetails(context, _blocks[index].hash);
                        },
                        hoverColor: AppColors.green,
                        customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        child: Card(
                          elevation: 0,
                          child: ListTile(
                            title: Row(
                              children: [
                                Expanded(child: Builder(builder: (context) {
                                  var height = _blocks[index].height;
                                  return SelectableText(
                                    height.toString(),
                                    textAlign: TextAlign.center,
                                  );
                                })),
                                Expanded(
                                    flex: 8,
                                    child: Builder(builder: (context) {
                                      var hash = _blocks[index].hash;
                                      return SelectableText(
                                        hash.toString(),
                                        textAlign: TextAlign.center,
                                        style: _blocks[index].topoheight !=
                                                _blocks[index].height
                                            ? const TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough)
                                            : null,
                                      );
                                    })),
                                Expanded(
                                    flex: 2,
                                    child: Builder(builder: (context) {
                                      var difficulty =
                                          _blocks[index].difficulty;
                                      return Text(
                                        difficulty.toString(),
                                        textAlign: TextAlign.center,
                                      );
                                    })),
                                Expanded(child: Builder(builder: (context) {
                                  var txCount = _blocks[index].txcount;
                                  return Text(
                                    txCount.toString(),
                                    textAlign: TextAlign.center,
                                  );
                                })),
                                Expanded(child: Builder(builder: (context) {
                                  var reward = _blocks[index].reward;
                                  reward = reward / 100000;
                                  return Text(
                                    reward.toString(),
                                    textAlign: TextAlign.center,
                                  );
                                })),
                                Expanded(
                                    flex: 2,
                                    child: Builder(builder: (context) {
                                      var dt =
                                          DateTime.fromMillisecondsSinceEpoch(
                                              _blocks[index].timestamp);
                                      // var fdt= DateFormat.yMd().add_Hms().format(dt);
                                      var fdt = DateFormat('dd/MM/yy\nHH:mm:ss')
                                          .format(dt);
                                      return Text(
                                        fdt.toString(),
                                        textAlign: TextAlign.center,
                                      );
                                    })),
                              ],
                            ),
                            dense: true,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}