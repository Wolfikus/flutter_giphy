// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_actions.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides

class _$ImagesActions extends ImagesActions {
  factory _$ImagesActions() => new _$ImagesActions._();
  _$ImagesActions._() : super._();

  final ActionDispatcher<void> fetchImagesRequest =
      new ActionDispatcher<void>('ImagesActions-fetchImagesRequest');
  final ActionDispatcher<BuiltList<GiphyItem>> fetchImagesSuccess =
      new ActionDispatcher<BuiltList<GiphyItem>>(
          'ImagesActions-fetchImagesSuccess');
  final ActionDispatcher<void> fetchImagesFailure =
      new ActionDispatcher<void>('ImagesActions-fetchImagesFailure');
  final ActionDispatcher<void> fetchTrendingRequest =
      new ActionDispatcher<void>('ImagesActions-fetchTrendingRequest');
  final ActionDispatcher<BuiltList<GiphyItem>> fetchTrendingSuccess =
      new ActionDispatcher<BuiltList<GiphyItem>>(
          'ImagesActions-fetchTrendingSuccess');
  final ActionDispatcher<void> fetchTrendingFailure =
      new ActionDispatcher<void>('ImagesActions-fetchTrendingFailure');
  final ActionDispatcher<void> fetchFavouritesRequest =
      new ActionDispatcher<void>('ImagesActions-fetchFavouritesRequest');
  final ActionDispatcher<BuiltList<GiphyItem>> fetchFavouritesSuccess =
      new ActionDispatcher<BuiltList<GiphyItem>>(
          'ImagesActions-fetchFavouritesSuccess');
  final ActionDispatcher<void> fetchFavouritesFailure =
      new ActionDispatcher<void>('ImagesActions-fetchFavouritesFailure');
  final ActionDispatcher<String> addToFavourites =
      new ActionDispatcher<String>('ImagesActions-addToFavourites');
  final ActionDispatcher<String> removeFromFavourites =
      new ActionDispatcher<String>('ImagesActions-removeFromFavourites');
  final ActionDispatcher<List<String>> setFavourites =
      new ActionDispatcher<List<String>>('ImagesActions-setFavourites');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    fetchImagesRequest.setDispatcher(dispatcher);
    fetchImagesSuccess.setDispatcher(dispatcher);
    fetchImagesFailure.setDispatcher(dispatcher);
    fetchTrendingRequest.setDispatcher(dispatcher);
    fetchTrendingSuccess.setDispatcher(dispatcher);
    fetchTrendingFailure.setDispatcher(dispatcher);
    fetchFavouritesRequest.setDispatcher(dispatcher);
    fetchFavouritesSuccess.setDispatcher(dispatcher);
    fetchFavouritesFailure.setDispatcher(dispatcher);
    addToFavourites.setDispatcher(dispatcher);
    removeFromFavourites.setDispatcher(dispatcher);
    setFavourites.setDispatcher(dispatcher);
  }
}

class ImagesActionsNames {
  static final ActionName<void> fetchImagesRequest =
      new ActionName<void>('ImagesActions-fetchImagesRequest');
  static final ActionName<BuiltList<GiphyItem>> fetchImagesSuccess =
      new ActionName<BuiltList<GiphyItem>>('ImagesActions-fetchImagesSuccess');
  static final ActionName<void> fetchImagesFailure =
      new ActionName<void>('ImagesActions-fetchImagesFailure');
  static final ActionName<void> fetchTrendingRequest =
      new ActionName<void>('ImagesActions-fetchTrendingRequest');
  static final ActionName<BuiltList<GiphyItem>> fetchTrendingSuccess =
      new ActionName<BuiltList<GiphyItem>>(
          'ImagesActions-fetchTrendingSuccess');
  static final ActionName<void> fetchTrendingFailure =
      new ActionName<void>('ImagesActions-fetchTrendingFailure');
  static final ActionName<void> fetchFavouritesRequest =
      new ActionName<void>('ImagesActions-fetchFavouritesRequest');
  static final ActionName<BuiltList<GiphyItem>> fetchFavouritesSuccess =
      new ActionName<BuiltList<GiphyItem>>(
          'ImagesActions-fetchFavouritesSuccess');
  static final ActionName<void> fetchFavouritesFailure =
      new ActionName<void>('ImagesActions-fetchFavouritesFailure');
  static final ActionName<String> addToFavourites =
      new ActionName<String>('ImagesActions-addToFavourites');
  static final ActionName<String> removeFromFavourites =
      new ActionName<String>('ImagesActions-removeFromFavourites');
  static final ActionName<List<String>> setFavourites =
      new ActionName<List<String>>('ImagesActions-setFavourites');
}
