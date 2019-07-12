import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';

import 'package:flutter_giphy/domain/models/giphy_item.dart';
import 'package:flutter_giphy/domain/states/app_state.dart';
import 'package:flutter_giphy/domain/states/images_state.dart';

import 'package:flutter_giphy/domain/actions/images_actions.dart';

NestedReducerBuilder<AppState, AppStateBuilder, ImagesState,
    ImagesStateBuilder> createImagesReducer() => new NestedReducerBuilder<
        AppState, AppStateBuilder, ImagesState, ImagesStateBuilder>(
    (state) => state.imagesState, (builder) => builder.imagesState)
  ..add<void>(ImagesActionsNames.fetchImagesRequest, _fetchImagesRequest)
  ..add<BuiltList<GiphyItem>>(
      ImagesActionsNames.fetchImagesSuccess, _fetchImagesSuccess)
  ..add<void>(ImagesActionsNames.fetchImagesFailure, _fetchImagesFailure)
  ..add<void>(ImagesActionsNames.fetchTrendingRequest, _fetchTrendingRequest)
  ..add<BuiltList<GiphyItem>>(
      ImagesActionsNames.fetchTrendingSuccess, _fetchTrendingSuccess)
  ..add<void>(ImagesActionsNames.fetchTrendingFailure, _fetchTrendingFailure)
  ..add<void>(
      ImagesActionsNames.fetchFavouritesRequest, _fetchFavouritesRequest)
  ..add<BuiltList<GiphyItem>>(
      ImagesActionsNames.fetchFavouritesSuccess, _fetchFavouritesSuccess)
  ..add<void>(ImagesActionsNames.fetchFavouritesFailure, _fetchFavouritesFailure)
  ..add<String>(ImagesActionsNames.addToFavourites, _addToFavourite)
  ..add<String>(ImagesActionsNames.removeFromFavourites, _removeFromFavorite)
  ..add<List<String>>(ImagesActionsNames.setFavourites, _setFavourites);

void _fetchImagesRequest(
    ImagesState state, Action action, ImagesStateBuilder builder) {
  builder.loading = true;
}

void _fetchImagesSuccess(ImagesState state, Action<BuiltList<GiphyItem>> action,
    ImagesStateBuilder builder) {
  builder.images = action.payload.toBuilder();
  builder.loading = false;
}

void _fetchImagesFailure(
    ImagesState state, Action action, ImagesStateBuilder builder) {
  builder.loading = false;
}

void _fetchTrendingRequest(
    ImagesState state, Action action, ImagesStateBuilder builder) {
  builder.loading = true;
}

void _fetchTrendingSuccess(ImagesState state,
    Action<BuiltList<GiphyItem>> action, ImagesStateBuilder builder) {
  builder.images = action.payload.toBuilder();
  builder.loading = false;
}

void _fetchTrendingFailure(
    ImagesState state, Action action, ImagesStateBuilder builder) {
  builder.loading = false;
}

void _fetchFavouritesRequest(
    ImagesState state, Action action, ImagesStateBuilder builder) {
  builder.loading = true;
}

void _fetchFavouritesSuccess(ImagesState state,
    Action<BuiltList<GiphyItem>> action, ImagesStateBuilder builder) {
  builder.favourites = action.payload.toBuilder();
  builder.loading = false;
}

void _fetchFavouritesFailure(
    ImagesState state, Action action, ImagesStateBuilder builder) {
  builder.loading = false;
}

void _addToFavourite(
    ImagesState state, Action action, ImagesStateBuilder builder) {
  builder.favouriteIds.add(action.payload);
}

void _removeFromFavorite(
    ImagesState state, Action action, ImagesStateBuilder builder) {
  builder.favouriteIds.remove(action.payload);
  builder.favourites.removeWhere((el) => el.id == action.payload);
}

void _setFavourites(
    ImagesState state, Action action, ImagesStateBuilder builder) {
  builder.favouriteIds.replace(action.payload);
}
