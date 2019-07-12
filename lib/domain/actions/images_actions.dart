import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_giphy/domain/models/giphy_item.dart';

part 'images_actions.g.dart';

abstract class ImagesActions extends ReduxActions {
  ImagesActions._();

  ActionDispatcher<void> get fetchImagesRequest;
  ActionDispatcher<BuiltList<GiphyItem>> get fetchImagesSuccess;
  ActionDispatcher<void> get fetchImagesFailure;

  ActionDispatcher<void> get fetchTrendingRequest;
  ActionDispatcher<BuiltList<GiphyItem>> get fetchTrendingSuccess;
  ActionDispatcher<void> get fetchTrendingFailure;

  ActionDispatcher<void> get fetchFavouritesRequest;
  ActionDispatcher<BuiltList<GiphyItem>> get fetchFavouritesSuccess;
  ActionDispatcher<void> get fetchFavouritesFailure;

  ActionDispatcher<String> get addToFavourites;
  ActionDispatcher<String> get removeFromFavourites;
  ActionDispatcher<List<String>> get setFavourites;

  factory ImagesActions() => new _$ImagesActions();
}
