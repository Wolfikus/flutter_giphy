library fetch_images;

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

Observable fetchImagesEpic(Observable<Action<dynamic>> stream,
    MiddlewareApi<AppState, AppStateBuilder, AppActions> api) {
  return stream
      .where(
          (action) => action.name == ImagesActionsNames.fetchImagesRequest.name)
      .debounce(Duration(seconds: 2))
      .asyncMap((action) async {
    print('Get Images Epic: Request');

    var response = await http.get(fetchImagesUrl.replace(queryParameters: {
      'api_key': API_KEY,
      'q': action.payload,
      'limit': '25',
      'offset': '0'
    }));
    switch (response.statusCode) {
      case statusCodeOK:
        {
          print('Get Images Epic: Success');
          var responseMap = json.decode(response.body)['data'] as List<dynamic>;
          BuiltList<GiphyItem> images = BuiltList.from(responseMap
              .map((map) =>
                  serializers.deserializeWith(GiphyItem.serializer, map))
              .toList());
          api.actions.images.fetchImagesSuccess(images);
          break;
        }
      default:
        print('Get Images Epic: Unexpected Response ${response.body}');
        api.actions.images.fetchImagesFailure();
        break;
    }
    return response;
  }).handleError((e) {
    print('Get Images Epic Error "${e.toString()}"');
    api.actions.images.fetchImagesFailure();
  });
}
