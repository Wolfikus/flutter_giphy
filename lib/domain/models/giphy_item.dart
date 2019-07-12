library giphy_item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'images.dart';

part 'giphy_item.g.dart';

abstract class GiphyItem implements Built<GiphyItem, GiphyItemBuilder> {
  GiphyItem._();

  factory GiphyItem([updates(GiphyItemBuilder b)]) = _$GiphyItem;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'images')
  Images get images;
  @BuiltValueField(wireName: 'title')
  String get title;

  static Serializer<GiphyItem> get serializer => _$giphyItemSerializer;
}