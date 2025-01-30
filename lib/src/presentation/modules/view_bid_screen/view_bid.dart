import 'package:flutter/material.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';
import 'package:sm_modules/sm_ui_kit.dart';

class ViewBidScreen extends StatelessWidget {
  const ViewBidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bid = ModalRoute.of(context)!.settings.arguments as Bid;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Bid #${bid.id}", style: AT.t.h2.white(context),
          textAlign: TextAlign.start,),
        centerTitle: true,
      ),
      body: ViewBidWidget(bid: bid),
    );
  }
}

class ViewBidWidget extends StatelessWidget {
  const ViewBidWidget({super.key, required this.bid});

  final Bid bid;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Text("BID VIEW #${bid.id}"),
      ),
    );
  }

  List<Widget> _generaterateWidgets(Bid bid) {
    return [];
  }
}
