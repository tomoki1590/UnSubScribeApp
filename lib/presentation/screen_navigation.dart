import 'package:flutter/material.dart';

/// Navigator を扱いやすく Wrap したクラス
class ScreenNavigation {
  const ScreenNavigation._();

  /// 指定したページに遷移
  ///
  /// [context] - BuildContext を指定
  /// [page] - 遷移先のウィジェットを指定
  /// [rootNavigator] - true の場合、最上位の Navigator を使用
  /// [fullscreenDialog] - true の場合、遷移先をモーダルのフルスクリーンダイアログとして表示
  static Future<dynamic> push(
    BuildContext context,
    Widget page, {
    bool rootNavigator = false,
    bool fullscreenDialog = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator).push(
      MaterialPageRoute(
        builder: (_) => page,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  /// 現在のページを新しいページに置換え
  ///
  /// [context] - BuildContext を指定
  /// [page] - 遷移先のウィジェットを指定
  /// [rootNavigator] - true の場合、最上位の Navigator を使用
  /// [fullscreenDialog] - true の場合、遷移先をモーダルのフルスクリーンダイアログとして表示
  static Future<dynamic> pushReplacement(
    BuildContext context,
    Widget page, {
    bool rootNavigator = false,
    bool fullscreenDialog = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator).pushReplacement(
      MaterialPageRoute(
        builder: (_) => page,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  /// 指定したページまで遷移し、それ以前のすべてのページを削除
  ///
  /// [context] - BuildContext を指定
  /// [page] - 遷移先のウィジェットを指定
  /// [rootNavigator] - true の場合、最上位の Navigator を使用
  /// [fullscreenDialog] - true の場合、遷移先をモーダルのフルスクリーンダイアログとして表示
  static Future<dynamic> pushAndRemoveUntil(
    BuildContext context,
    Widget page, {
    bool rootNavigator = false,
    bool fullscreenDialog = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator)
        .pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (_) => page,
        fullscreenDialog: fullscreenDialog,
      ),
      (_) => false,
    );
  }

  /// 現在のページをポップして前のページに戻る
  ///
  /// [context] - BuildContext を指定
  /// [rootNavigator] - true の場合、最上位の Navigator を使用
  static Future<dynamic> pop(
    BuildContext context, {
    bool rootNavigator = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator).pop();
  }

  /// 指定した条件が満たされるまでページをポップ
  ///
  /// [context] - BuildContext を指定
  /// [predicate] - ポップが停止する条件を指定する関数を指定
  /// [rootNavigator] - true の場合、最上位の Navigator を使用
  static Future<dynamic> popUntil(
    BuildContext context, {
    required RoutePredicate predicate,
    bool rootNavigator = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator)
        .popUntil(predicate);
  }

  /// ナビゲーションスタックの最初のページまでページをポップ
  ///
  /// [context] - BuildContext を指定
  /// [rootNavigator] - true の場合、最上位の Navigator を使用
  static Future<dynamic> popUntilRoot(
    BuildContext context, {
    bool rootNavigator = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator)
        .popUntil((route) => route.isFirst);
  }
}
