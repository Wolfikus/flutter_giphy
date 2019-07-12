library fetch_favorites;

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';

import 'package:flutter_giphy/domain/states/app_state.dart';
import 'package:flutter_giphy/domain/actions/actions.dart';
import 'package:flutter_giphy/domain/models/giphy_item.dart';
import 'package:flutter_giphy/domain/models/serializers.dart';

import 'uri.dart';
import 'status_codes.dart';

Observable fetchFavouritesEpic(Observable<Action<dynamic>> stream,
        MiddlewareApi<AppState, AppStateBuilder, AppActions> api) {
  return stream
      .where((action) => action.name == ImagesActionsNames.fetchFavouritesRequest.name)
      .asyncMap((action) async {
        print('Get Favourites Epic: Request');
        
        BuiltList<String> ids = api.state.imagesState.favouriteIds;

        var response = await http.get(
          fetchFavouritesUrl.replace(
            queryParameters: {
              'api_key': API_KEY,
              'ids': ids.join(',')
            }
          )
        );
        switch (response.statusCode) {
          case statusCodeOK:
            {
              print('Get Favourites Epic: Success');
              var responseMap = json.decode(response.body)['data'] as List<dynamic>;
              BuiltList<GiphyItem> images = BuiltList.from(
                  responseMap.map((map) => serializers.deserializeWith(GiphyItem.serializer, map)).toList()
              );
              // api.actions.images.fetchImagesSuccess(images);
              api.actions.images.fetchFavouritesSuccess(images);
              break;
            }
          default:
            print('Get Favourites Epic: Unexpected Response ${response.body}');
            api.actions.images.fetchFavouritesFailure();
            break;
        }
        return response;
      }).handleError((e) {
          print('Get Favourites Epic Error "${e.toString()}"');
          api.actions.images.fetchFavouritesFailure();
      });

}
