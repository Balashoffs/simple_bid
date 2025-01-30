import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bid/src/presentation/bloc/core/theme_cubit/theme_cubit.dart';
import 'package:simple_bid/src/presentation/bloc/core/theme_cubit/theme_state.dart';
import 'package:simple_bid/src/presentation/modules/add_bid/add_bid_screen.dart';
import 'package:simple_bid/src/presentation/modules/bids_list_screen/main_screen.dart';
import 'package:simple_bid/src/presentation/modules/view_bid_screen/view_bid.dart';
import 'package:sm_modules/sm_ui_kit.dart';

import 'di/di.dart';

abstract class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  void initAndRun() => runZoned<void>(
        () => _init().whenComplete(_run),
        zoneSpecification: ZoneSpecification(print: _print),
      );

  Future<void> _init() async {
    _ensureWidgetsInitialized();
    await _initAppComponents();
  }

  void _run() => runApp(this);

  void _ensureWidgetsInitialized() => WidgetsFlutterBinding.ensureInitialized();

  Future<void> _initAppComponents() async {
    await di.init();
  }

  void _print(Zone self, ZoneDelegate parent, Zone zone, String message) {
    if (!kReleaseMode) parent.print(zone, "Intercepted: $message");
  }
}

class BidViewer extends App {
  const BidViewer({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      bloc: di.themeBloc,
      builder: (BuildContext context, themeState) => MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => MainBidsScreen(),
          '/addBid': (context) => AddBidScreen(),
          '/viewBid': (context) => ViewBidScreen(),
        },
        title: 'BIDs',
        themeMode: themeState.themeMode,
        theme: AppThemes.lightThemeMobile(),
      ),
    );
  }
}
