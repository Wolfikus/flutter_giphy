import 'package:built_redux/built_redux.dart';

import 'package:flutter_giphy/domain/states/app_state.dart';

import 'images_reducer.dart';

var reducers = ReducerBuilder<AppState, AppStateBuilder>()
  ..combineNested(createImagesReducer());

var reducerBuilder = reducers.build();
