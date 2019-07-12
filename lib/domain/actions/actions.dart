library actions;

import 'package:built_redux/built_redux.dart';

import 'images_actions.dart';
export 'images_actions.dart';

part 'actions.g.dart';

abstract class AppActions extends ReduxActions {
  AppActions._();

  ImagesActions get images;

  factory AppActions() => _$AppActions();
}