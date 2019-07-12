import 'package:shared_preferences/shared_preferences.dart';

import 'package:built_redux/built_redux.dart';

import 'package:flutter_giphy/domain/states/app_state.dart';
import 'package:flutter_giphy/domain/actions/actions.dart';

MiddlewareBuilder<AppState, AppStateBuilder, AppActions>
    createStorageMiddleware() =>
        MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()
          ..add<String>(ImagesActionsNames.addToFavourites, _addToFavourites)
          ..add<String>(
              ImagesActionsNames.removeFromFavourites, _removeFromFavourites);

void _addToFavourites(MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
    ActionHandler next, Action action) async {
  next(action);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setStringList('favourites', api.state.imagesState.favouriteIds.toList());
}

void _removeFromFavourites(
    MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
    ActionHandler next,
    Action action) async {
  next(action);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setStringList('favourites', api.state.imagesState.favouriteIds.toList());
}