import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsubscribe_app/presentation/view/component/page_viewer.dart';
import 'package:unsubscribe_app/presentation/view_model/root/root_page_view_model.dart';

import '../../view_model/root/loading_state.dart';
import '../component/loading.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelState = ref.watch(rootPageViewModelProvider);
    return switch (viewModelState.loginState) {
      LoginSuccess(user: (final _)) => const PageViewer(),
      LoginFailure() => const Text('ログインが正常にできませんでした'),
      LoginLoading() => const OverlayLoading(),
    };
  }
}
