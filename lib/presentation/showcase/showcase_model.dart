import 'package:built_collection/built_collection.dart';

import 'package:flutter_giphy/domain/states/app_state.dart';
import 'package:flutter_giphy/domain/models/giphy_item.dart';

class ShowcaseModel {
  final AppState appState;

  ShowcaseModel(this.appState);

  bool get loading => appState.imagesState.loading;
  BuiltList<GiphyItem> get images => appState.imagesState.images;
  BuiltList<String> get favourites => appState.imagesState.favouriteIds;
}
