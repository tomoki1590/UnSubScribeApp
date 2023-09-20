import 'package:flutter_riverpod/flutter_riverpod.dart';

class BasicPageState {
  BasicPageState();

  BasicPageState copyWith() {
    return BasicPageState();
  }
}

class BasicPageViewModel extends StateNotifier<BasicPageState> {
  BasicPageViewModel(super.state);
}
