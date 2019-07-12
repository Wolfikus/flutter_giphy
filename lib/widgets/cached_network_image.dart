import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:flutter_advanced_networkimage/zoomable.dart';

class CachedNetworkImage extends StatelessWidget {
  final String url;

  CachedNetworkImage({@required this.url});

  @override
  Widget build(BuildContext context) {
    return ZoomableWidget(
      minScale: 0.4,
      maxScale: 1.8,
      panLimit: 0.8,
      child: Container(
        child: TransitionToImage(
          image: AdvancedNetworkImage(
            url,
            timeoutDuration: Duration(seconds: 10),
            useDiskCache: true,
            cacheRule: CacheRule(
              maxAge: const Duration(minutes: 30),
            ),
          ),
          placeholder: CircularProgressIndicator(),
          duration: Duration(milliseconds: 300),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
