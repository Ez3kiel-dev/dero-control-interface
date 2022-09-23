import 'package:dero_control_interface/features/explorer/domain/block.dart';
import 'package:dero_control_interface/shared/application/derod_queries_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlocksNotifier extends StateNotifier<List<Block>> {
  BlocksNotifier() : super([]);

  void addBlock(Block block) {
    if (state.isNotEmpty && state[0] == block) return;
    if (state.length > 100) {
      state = [block, ...state.sublist(0, 99)];
    } else {
      state = [block, ...state];
    }
  }
}

final blocksProvider =
    StateNotifierProvider<BlocksNotifier, List<Block>>((ref) {
  return BlocksNotifier();
});

final blocksListProvider = FutureProvider.autoDispose<List<Block>>((ref) async {
  var result = await ref.watch(newBlockProvider.future);
  var content = result['block_header'] as Map<String, dynamic>;

  final block = Block.fromJson(content);
  ref.watch(blocksProvider.notifier).addBlock(block);

  return ref.watch(blocksProvider);
});