import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Redux
import 'package:built_redux/built_redux.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

//Store
import 'package:flutter_giphy/domain/actions/actions.dart';
import 'package:flutter_giphy/domain/reducers/reducers.dart';
import 'package:flutter_giphy/domain/states/app_state.dart';

//Middleware
import 'package:flutter_giphy/domain/middleware/middlewares.dart';

//Navigation
import 'package:flutter_giphy/navigation/routes.dart';
import 'package:flutter_giphy/presentation/showcase/showcase.dart';

class GiphyApp extends StatefulWidget {
  final store = Store<AppState, AppStateBuilder, AppActions>(
    reducerBuilder,
    AppState(),
    AppActions(),
    middleware: middlewares,
  );

  @override
  _GiphyAppState createState() => _GiphyAppState();
}

class _GiphyAppState extends State<GiphyApp> {
  @override
  Widget build(BuildContext context) {
    return ReduxProvider(
      store: widget.store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FlutterGiphy',
        routes: routes,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.blueGrey,
          accentColor: Color.fromRGBO(233, 233, 240, 1.0),
        ),
        home: Showcase(),
      ),
    );
  }
}
