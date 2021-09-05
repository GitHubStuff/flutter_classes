library simple_bloc_observer;

// Copyright 2021 LTMM. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Custom [BlocObserver] which observes all bloc and cubit instances.
/// NOTE: [Bloc.observer = SimpleBlocObserver();] before the call to [runApp] in [main.dart]

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('⚡ $event');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase cubit, Change change) {
    debugPrint('🦺$change');
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('⚙️ $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase cubit, Object error, StackTrace stackTrace) {
    debugPrint('🏮 $error');
    super.onError(cubit, error, stackTrace);
  }
}
