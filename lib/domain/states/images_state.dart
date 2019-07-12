import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:flutter_giphy/domain/models/giphy_item.dart';

part 'images_state.g.dart';

abstract class ImagesState implements Built<ImagesState, ImagesStateBuilder> {
  BuiltList<GiphyItem> get images;
  BuiltList<GiphyItem> get favourites;
  BuiltList<String> get favouriteIds;
  bool get loading;

  ImagesState._();

  static Serializer<ImagesState> get serializer => _$imagesStateSerializer;

  factory ImagesState([updates(ImagesStateBuilder b)]) => _$ImagesState((b) => b
    ..loading = false
    ..favouriteIds = ListBuilder([])
    ..favourites = ListBuilder([])
    ..images = ListBuilder([]));
}
