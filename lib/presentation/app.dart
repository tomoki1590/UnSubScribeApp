import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsbscribe_app/presentation/screen/home_screen.dart';
import 'package:unsbscribe_app/presentation/theme.dart';

import '../application/state/overlay_loading_provider.dart';
import 'component/loading.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'サブスク管理',
      debugShowCheckedModeBanner: false,
      theme: ref.read(themeProvider),
      home: const HomeScreen(),
      builder: (context, child) {
        return Consumer(
          builder: (context, ref, _) {
            final isLoading = ref.watch(overlayLoadingProvider);
            return Stack(
              children: [
                child!,
                // ローディング表示
                if (isLoading) const OverlayLoading()
              ],
            );
          },
        );
      },
    );
  }
}
