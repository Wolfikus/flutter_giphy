library flutter_giphy.store;

import 'package:built_redux/built_redux.dart';

import 'package:flutter_giphy/domain/actions/actions.dart';
import 'package:flutter_giphy/domain/states/app_state.dart';

Store<AppState, AppStateBuilder, AppActions> _store;

Store<AppState, AppStateBuilder, AppActions> get store => _store;