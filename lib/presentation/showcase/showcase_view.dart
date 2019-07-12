import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:built_collection/built_collection.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_giphy/presentation/favourites/favourites.dart';

import 'package:flutter_giphy/domain/models/giphy_item.dart';
import 'package:flutter_giphy/utils/latin_input_formatter.dart';

import 'package:flutter_giphy/widgets/showcase_card.dart';

import 'showcase_model.dart';

class ShowcaseView extends StatefulWidget {
  final ShowcaseModel model;
  final Function fetchTrending;
  final Function(String) searchImages;
  final Function(String) addToFavourites;
  final Function(String) removeFromFavourites;
  final Function(List<String>) setFavourites;

  ShowcaseView(
      {this.model,
      this.fetchTrending,
      this.searchImages,
      this.addToFavourites,
      this.removeFromFavourites,
      this.setFavourites});

  @override
  _ShowcaseViewState createState() => _ShowcaseViewState();
}

class _ShowcaseViewState extends State<ShowcaseView> {
  BuiltList<GiphyItem> _images;
  TextEditingController _queryController = TextEditingController();
  bool isSearching = false;

  @override
  void initState() {
    super.initState();

    _getFavourites();
    widget.fetchTrending();
  }

  void _getFavourites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favourites = prefs.getStringList('favourites');
    if(favourites != null) widget.setFavourites(favourites);
  }

  Widget _searchField() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: TextField(
          onChanged: (value) {
            if (value.length >= 3) {
              setState(() {
                isSearching = true;
              });
              widget.searchImages(value);
            } else if (value.length == 0) {
              setState(() {
                isSearching = false;
              });
              widget.fetchTrending();
            }
          },
          controller: _queryController,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(CupertinoIcons.search),
            hintText: 'Search by GIPHY',
          ),
          inputFormatters: [
            LatinInputFormatter(),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool hasFavourites = widget.model.favourites.length != 0;
    _images = widget.model.images;
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(!isSearching ? 'Trending' : 'Search Results'),
        trailing: GestureDetector(
          onTap: () => {
            if(hasFavourites) Navigator.of(context).push(MaterialPageRoute(builder: (_) => Favourites()))
          },
          child: Stack(
            children: <Widget>[
              Icon(CupertinoIcons.heart),
              if (hasFavourites)
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6.0)),
                    constraints:
                        BoxConstraints(minHeight: 12.0, minWidth: 12.0),
                    child: Text(
                      widget.model.favourites.length.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _searchField(),
            widget.model.loading
                ? Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Expanded(
                    child: LazyLoadScrollView(
                      onEndOfPage: () {},
                      child: GridView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: _images.length,
                        itemBuilder: (_, index) {
                          GiphyItem item = _images[index];
                          bool itemIsFavourite =
                              widget.model.favourites.contains(item.id);
                          return ShowcaseCard(
                            item: item,
                            itemIsFavourite: itemIsFavourite,
                            onLike: () => widget.addToFavourites(item.id),
                            onDislike: () =>
                                widget.removeFromFavourites(item.id),
                          );
                        },
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
