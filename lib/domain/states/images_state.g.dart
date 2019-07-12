// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImagesState> _$imagesStateSerializer = new _$ImagesStateSerializer();

class _$ImagesStateSerializer implements StructuredSerializer<ImagesState> {
  @override
  final Iterable<Type> types = const [ImagesState, _$ImagesState];
  @override
  final String wireName = 'ImagesState';

  @override
  Iterable serialize(Serializers serializers, ImagesState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'images',
      serializers.serialize(object.images,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GiphyItem)])),
      'favourites',
      serializers.serialize(object.favourites,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GiphyItem)])),
      'favouriteIds',
      serializers.serialize(object.favouriteIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'loading',
      serializers.serialize(object.loading,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  ImagesState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagesStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(GiphyItem)])) as BuiltList);
          break;
        case 'favourites':
          result.favourites.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(GiphyItem)])) as BuiltList);
          break;
        case 'favouriteIds':
          result.favouriteIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'loading':
          result.loading = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ImagesState extends ImagesState {
  @override
  final BuiltList<GiphyItem> images;
  @override
  final BuiltList<GiphyItem> favourites;
  @override
  final BuiltList<String> favouriteIds;
  @override
  final bool loading;

  factory _$ImagesState([void Function(ImagesStateBuilder) updates]) =>
      (new ImagesStateBuilder()..update(updates)).build();

  _$ImagesState._(
      {this.images, this.favourites, this.favouriteIds, this.loading})
      : super._() {
    if (images == null) {
      throw new BuiltValueNullFieldError('ImagesState', 'images');
    }
    if (favourites == null) {
      throw new BuiltValueNullFieldError('ImagesState', 'favourites');
    }
    if (favouriteIds == null) {
      throw new BuiltValueNullFieldError('ImagesState', 'favouriteIds');
    }
    if (loading == null) {
      throw new BuiltValueNullFieldError('ImagesState', 'loading');
    }
  }

  @override
  ImagesState rebuild(void Function(ImagesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagesStateBuilder toBuilder() => new ImagesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagesState &&
        images == other.images &&
        favourites == other.favourites &&
        favouriteIds == other.favouriteIds &&
        loading == other.loading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, images.hashCode), favourites.hashCode),
            favouriteIds.hashCode),
        loading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImagesState')
          ..add('images', images)
          ..add('favourites', favourites)
          ..add('favouriteIds', favouriteIds)
          ..add('loading', loading))
        .toString();
  }
}

class ImagesStateBuilder implements Builder<ImagesState, ImagesStateBuilder> {
  _$ImagesState _$v;

  ListBuilder<GiphyItem> _images;
  ListBuilder<GiphyItem> get images =>
      _$this._images ??= new ListBuilder<GiphyItem>();
  set images(ListBuilder<GiphyItem> images) => _$this._images = images;

  ListBuilder<GiphyItem> _favourites;
  ListBuilder<GiphyItem> get favourites =>
      _$this._favourites ??= new ListBuilder<GiphyItem>();
  set favourites(ListBuilder<GiphyItem> favourites) =>
      _$this._favourites = favourites;

  ListBuilder<String> _favouriteIds;
  ListBuilder<String> get favouriteIds =>
      _$this._favouriteIds ??= new ListBuilder<String>();
  set favouriteIds(ListBuilder<String> favouriteIds) =>
      _$this._favouriteIds = favouriteIds;

  bool _loading;
  bool get loading => _$this._loading;
  set loading(bool loading) => _$this._loading = loading;

  ImagesStateBuilder();

  ImagesStateBuilder get _$this {
    if (_$v != null) {
      _images = _$v.images?.toBuilder();
      _favourites = _$v.favourites?.toBuilder();
      _favouriteIds = _$v.favouriteIds?.toBuilder();
      _loading = _$v.loading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagesState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ImagesState;
  }

  @override
  void update(void Function(ImagesStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImagesState build() {
    _$ImagesState _$result;
    try {
      _$result = _$v ??
          new _$ImagesState._(
              images: images.build(),
              favourites: favourites.build(),
              favouriteIds: favouriteIds.build(),
              loading: loading);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        images.build();
        _$failedField = 'favourites';
        favourites.build();
        _$failedField = 'favouriteIds';
        favouriteIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ImagesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
