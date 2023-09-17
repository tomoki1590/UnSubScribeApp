import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../firebase/repository/basic_repository.dart';

class BasicPageState {
  BasicPageState({required this.isOpen});
  final bool isOpen;

  BasicPageState copyWith({bool? isOpen}) {
    return BasicPageState(
      isOpen: isOpen ?? this.isOpen,
    );
  }
}

final basicPageViewModelProvider =
    StateNotifierProvider<BasicPageViewModel, BasicPageState>(
  (ref) => BasicPageViewModel(
    ref.read(basicRepositoryProvider as ProviderListenable<BasicPageState>),
  ),
);

class BasicPageViewModel extends StateNotifier<BasicPageState> {
  BasicPageViewModel(super.state);
  final bool isOpen = false;
}
