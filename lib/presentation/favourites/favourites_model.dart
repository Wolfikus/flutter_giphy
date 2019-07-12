import 'package:built_collection/built_collection.dart';

import 'package:flutter_giphy/domain/states/app_state.dart';
import 'package:flutter_giphy/domain/models/giphy_item.dart';

class FavouritesModel {
  final AppState appState;

  FavouritesModel(this.appState);

  bool get loading => appState.imagesState.loading;
  BuiltList<GiphyItem> get favourites => appState.imagesState.favourites;
  BuiltList<String> get favouriteIds => appState.imagesState.favouriteIds;
}
