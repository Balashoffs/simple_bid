import 'package:flutter/material.dart';
import 'package:simple_bid/src/presentation/modules/add_bid/add_bid_screen.dart';
import 'package:simple_bid/src/presentation/modules/bids_list_screen/main_screen.dart';
import 'package:simple_bid/src/presentation/modules/view_bid_screen/view_bid.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainBidsScreen(),
        '/addBid': (context) => AddBidScreen(),
        '/viewBid': (context) => ViewBidScreen(),
      },
      title: 'BIDs',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
