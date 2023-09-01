import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsubscribe_app/presentation/view/component/page_viewer.dart';
import 'package:unsubscribe_app/presentation/view_model/root/root_page_view_model.dart';

import '../../view_model/root/login_state.dart';
import '../component/loading.dart';

/// [RootPage]はユーザーのログイン状態に基づいて異なるウィジェットを表示する最も根元にある画面。
///
/// - ログインが成功した場合は、[PageViewer]を表示する。
/// - ログインに失敗した場合は、エラーメッセージを表示する。
/// - ログインが進行中の場合は、ローディング画面を表示する。
///
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
