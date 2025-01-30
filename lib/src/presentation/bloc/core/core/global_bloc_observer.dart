import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as dev;

class GlobalBlocObserver extends BlocObserver {
  final int maxMessageLength;

  GlobalBlocObserver([this.maxMessageLength = 5000]);

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    _log('${bloc.runtimeType}.onCreate ${bloc.state}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _log('${bloc.runtimeType}.onEvent $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _log('${bloc.runtimeType}.onChange $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _log('${bloc.runtimeType}.onTransition $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _log('${bloc.runtimeType}.onError $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }

  void _log(String message) => dev.log(
      message.length < maxMessageLength
          ? message
          : '${message.substring(0, maxMessageLength)} ...',
      name: '$runtimeType');
}
