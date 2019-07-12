library fetch_trending;

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

Observable fetchTrendingEpic(Observable<Action<dynamic>> stream,
    MiddlewareApi<AppState, AppStateBuilder, AppActions> api) {
  return stream
      .where((action) =>
          action.name == ImagesActionsNames.fetchTrendingRequest.name)
      .asyncMap((action) async {
    print('Get Trending Epic: Request');

    var response = await http.get(fetchTrendingUrl.replace(
        queryParameters: {'api_key': API_KEY, 'limit': '25', 'offset': '0'}));
    switch (response.statusCode) {
      case statusCodeOK:
        {
          print('Get Trending Epic: Success');
          var responseMap = json.decode(response.body)['data'] as List<dynamic>;
          BuiltList<GiphyItem> images = BuiltList.from(responseMap
              .map((map) =>
                  serializers.deserializeWith(GiphyItem.serializer, map))
              .toList());
          api.actions.images.fetchTrendingSuccess(images);
          break;
        }
      default:
        print('Get Trending Epic: Unexpected Response ${response.body}');
        api.actions.images.fetchTrendingFailure();
        break;
    }
    return response;
  }).handleError((e) {
    print('Get Trending Epic: Error "${e.toString()}"');
    api.actions.images.fetchTrendingFailure();
  });
}
