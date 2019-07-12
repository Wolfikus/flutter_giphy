library images;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'images.g.dart';

abstract class Images implements Built<Images, ImagesBuilder> {
  Images._();

  factory Images([updates(ImagesBuilder b)]) = _$Images;

  @BuiltValueField(wireName: 'original')
  BuiltMap<String, String> get original;
  @BuiltValueField(wireName: 'preview_gif')
  BuiltMap<String, String> get previewGif;

  static Serializer<Images> get serializer => _$imagesSerializer;
}