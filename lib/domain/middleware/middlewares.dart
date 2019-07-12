import 'package:built_redux_rx/built_redux_rx.dart';

import './epics/images_epic.dart';
import './epics/trending_epic.dart';
import './epics/favourites_epic.dart';

import 'favourites_storage.dart';

final middlewares = [
  createEpicMiddleware([
    fetchImagesEpic,
    fetchTrendingEpic,
    fetchFavouritesEpic,
  ]),
  createStorageMiddleware().build(),
];