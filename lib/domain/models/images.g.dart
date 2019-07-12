// GENERATED CODE - DO NOT MODIFY BY HAND

part of images;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Images> _$imagesSerializer = new _$ImagesSerializer();

class _$ImagesSerializer implements StructuredSerializer<Images> {
  @override
  final Iterable<Type> types = const [Images, _$Images];
  @override
  final String wireName = 'Images';

  @override
  Iterable serialize(Serializers serializers, Images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'original',
      serializers.serialize(object.original,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
      'preview_gif',
      serializers.serialize(object.previewGif,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
    ];

    return result;
  }

  @override
  Images deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'original':
          result.original.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String)
              ])) as BuiltMap);
          break;
        case 'preview_gif':
          result.previewGif.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String)
              ])) as BuiltMap);
          break;
      }
    }

    return result.build();
  }
}

class _$Images extends Images {
  @override
  final BuiltMap<String, String> original;
  @override
  final BuiltMap<String, String> previewGif;

  factory _$Images([void Function(ImagesBuilder) updates]) =>
      (new ImagesBuilder()..update(updates)).build();

  _$Images._({this.original, this.previewGif}) : super._() {
    if (original == null) {
      throw new BuiltValueNullFieldError('Images', 'original');
    }
    if (previewGif == null) {
      throw new BuiltValueNullFieldError('Images', 'previewGif');
    }
  }

  @override
  Images rebuild(void Function(ImagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagesBuilder toBuilder() => new ImagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Images &&
        original == other.original &&
        previewGif == other.previewGif;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, original.hashCode), previewGif.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Images')
          ..add('original', original)
          ..add('previewGif', previewGif))
        .toString();
  }
}

class ImagesBuilder implements Builder<Images, ImagesBuilder> {
  _$Images _$v;

  MapBuilder<String, String> _original;
  MapBuilder<String, String> get original =>
      _$this._original ??= new MapBuilder<String, String>();
  set original(MapBuilder<String, String> original) =>
      _$this._original = original;

  MapBuilder<String, String> _previewGif;
  MapBuilder<String, String> get previewGif =>
      _$this._previewGif ??= new MapBuilder<String, String>();
  set previewGif(MapBuilder<String, String> previewGif) =>
      _$this._previewGif = previewGif;

  ImagesBuilder();

  ImagesBuilder get _$this {
    if (_$v != null) {
      _original = _$v.original?.toBuilder();
      _previewGif = _$v.previewGif?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Images other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Images;
  }

  @override
  void update(void Function(ImagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Images build() {
    _$Images _$result;
    try {
      _$result = _$v ??
          new _$Images._(
              original: original.build(), previewGif: previewGif.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'original';
        original.build();
        _$failedField = 'previewGif';
        previewGif.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Images', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
