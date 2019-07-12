import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

import 'package:flutter_giphy/domain/actions/actions.dart';
import 'package:flutter_giphy/domain/states/app_state.dart';

import 'showcase_model.dart';
import 'showcase_view.dart';

class Showcase extends StoreConnector<AppState, AppActions, ShowcaseModel> {
  Showcase();

  @override
  ShowcaseModel connect(AppState state) => ShowcaseModel(state);

  @override
  Widget build(BuildContext context, ShowcaseModel model, AppActions actions) {
    return ShowcaseView(
      model: model,
      fetchTrending: () {
        actions.images.fetchTrendingRequest();
      },
      searchImages: (query) {
        actions.images.fetchImagesRequest(query);
      },
      addToFavourites: (id) {
        actions.images.addToFavourites(id);
      },
      removeFromFavourites: (id) {
        actions.images.removeFromFavourites(id);
      },
      setFavourites: (data) {
        actions.images.setFavourites(data);
      }
    );
  }
}
