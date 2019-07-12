import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:built_collection/built_collection.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

import 'package:flutter_giphy/domain/models/giphy_item.dart';

import 'package:flutter_giphy/widgets/showcase_card.dart';

import 'favourites_model.dart';

class FavouritesView extends StatefulWidget {
  final FavouritesModel model;
  final Function fetchFavourites;
  final Function(String) addToFavourites;
  final Function(String) removeFromFavourites;

  FavouritesView(
      {this.model,
      this.fetchFavourites,
      this.addToFavourites,
      this.removeFromFavourites});

  @override
  _FavouritesViewState createState() => _FavouritesViewState();
}

class _FavouritesViewState extends State<FavouritesView> {
  BuiltList<GiphyItem> _images;
  bool isSearching = false;

  @override
  void initState() {
    super.initState();

    widget.fetchFavourites();
  }

  @override
  Widget build(BuildContext context) {
    _images = widget.model.favourites;
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Favourites'),
      ),
      body: Container(
        child: widget.model.loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : LazyLoadScrollView(
                onEndOfPage: () {},
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: _images.length,
                  itemBuilder: (_, index) {
                    GiphyItem item = _images[index];
                    bool itemIsFavourite =
                        widget.model.favouriteIds.contains(item.id);
                    return ShowcaseCard(
                      item: item,
                      itemIsFavourite: itemIsFavourite,
                      onLike: () => widget.addToFavourites(item.id),
                      onDislike: () { 
                        widget.removeFromFavourites(item.id);
                        if(_images.length == 1) Navigator.of(context).pop();
                      }
                    );
                  },
                ),
              ),
      ),
    );
  }
}
