import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

import 'package:flutter_giphy/domain/actions/actions.dart';
import 'package:flutter_giphy/domain/states/app_state.dart';

import 'favourites_model.dart';
import 'favourites_view.dart';

class Favourites extends StoreConnector<AppState, AppActions, FavouritesModel> {
  Favourites();

  @override
  FavouritesModel connect(AppState state) => FavouritesModel(state);

  @override
  Widget build(
      BuildContext context, FavouritesModel model, AppActions actions) {
    return FavouritesView(
      model: model,
      fetchFavourites: () {
        actions.images.fetchFavouritesRequest();
      },
      addToFavourites: (id) {
        actions.images.addToFavourites(id);
      },
      removeFromFavourites: (id) {
        actions.images.removeFromFavourites(id);
      },
    );
  }
}
