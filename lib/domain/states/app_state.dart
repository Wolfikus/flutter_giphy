import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'images_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  static Serializer<AppState> get serializer => _$appStateSerializer;

  ImagesState get imagesState;

  AppState._();

  factory AppState([updates(AppStateBuilder b)]) => _$AppState((b) => b
    ..imagesState = ImagesState().toBuilder());
}
