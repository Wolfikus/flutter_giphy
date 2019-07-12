import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:share/share.dart';

import 'package:flutter_giphy/domain/models/giphy_item.dart';

import 'cached_network_image.dart';

class ShowcaseCard extends StatelessWidget {
  final GiphyItem item;
  final bool itemIsFavourite;
  final Function onLike;
  final Function onDislike;

  ShowcaseCard(
      {@required this.item, this.itemIsFavourite, this.onLike, this.onDislike});

  _showPopup(BuildContext ctx, String url) {
    showCupertinoModalPopup(
      context: ctx,
      builder: (_) => CupertinoActionSheet(
        actions: <Widget>[
          CupertinoActionSheetAction(
            onPressed: () => Share.share(
                'Check out this cool gif out of FLUTTER_GIPHY - $url'),
            child: Text('Share this GIF'),
          )
        ],
        cancelButton: CupertinoActionSheetAction(
          isDestructiveAction: true,
          child: Text('Cancel'),
          onPressed: () => Navigator.of(ctx).pop(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String url = item.images.original['url'];
    return Card(
      child: Column(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () => _showPopup(context, url),
              child: CachedNetworkImage(
                url: url,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Text(
                    item.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (!itemIsFavourite) {
                      HapticFeedback.selectionClick();
                      onLike();
                    } else {
                      HapticFeedback.mediumImpact();
                      onDislike();
                    }
                  },
                  child: Icon(CupertinoIcons.heart_solid,
                      color: itemIsFavourite ? Colors.red : Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
