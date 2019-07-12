import 'package:flutter/material.dart';

import 'package:flutter_giphy/presentation/presenters.dart';

Map<String, WidgetBuilder> routes = {
  '/showcase': (BuildContext context) => Showcase(),
  '/favourites': (BuildContext context) => Favourites(),
};