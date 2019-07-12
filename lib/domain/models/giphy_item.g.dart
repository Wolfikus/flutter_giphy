// GENERATED CODE - DO NOT MODIFY BY HAND

part of giphy_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GiphyItem> _$giphyItemSerializer = new _$GiphyItemSerializer();

class _$GiphyItemSerializer implements StructuredSerializer<GiphyItem> {
  @override
  final Iterable<Type> types = const [GiphyItem, _$GiphyItem];
  @override
  final String wireName = 'GiphyItem';

  @override
  Iterable serialize(Serializers serializers, GiphyItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'images',
      serializers.serialize(object.images,
          specifiedType: const FullType(Images)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GiphyItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GiphyItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(Images)) as Images);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GiphyItem extends GiphyItem {
  @override
  final String id;
  @override
  final Images images;
  @override
  final String title;

  factory _$GiphyItem([void Function(GiphyItemBuilder) updates]) =>
      (new GiphyItemBuilder()..update(updates)).build();

  _$GiphyItem._({this.id, this.images, this.title}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('GiphyItem', 'id');
    }
    if (images == null) {
      throw new BuiltValueNullFieldError('GiphyItem', 'images');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('GiphyItem', 'title');
    }
  }

  @override
  GiphyItem rebuild(void Function(GiphyItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GiphyItemBuilder toBuilder() => new GiphyItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GiphyItem &&
        id == other.id &&
        images == other.images &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), images.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GiphyItem')
          ..add('id', id)
          ..add('images', images)
          ..add('title', title))
        .toString();
  }
}

class GiphyItemBuilder implements Builder<GiphyItem, GiphyItemBuilder> {
  _$GiphyItem _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ImagesBuilder _images;
  ImagesBuilder get images => _$this._images ??= new ImagesBuilder();
  set images(ImagesBuilder images) => _$this._images = images;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  GiphyItemBuilder();

  GiphyItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _images = _$v.images?.toBuilder();
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GiphyItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GiphyItem;
  }

  @override
  void update(void Function(GiphyItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GiphyItem build() {
    _$GiphyItem _$result;
    try {
      _$result = _$v ??
          new _$GiphyItem._(id: id, images: images.build(), title: title);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        images.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GiphyItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
