import 'package:flutter/material.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';

class ViewBidScreen extends StatelessWidget {
  const ViewBidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bid = ModalRoute.of(context)!.settings.arguments as Bid;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(82, 170, 94, 1.0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Bid #${bid.id}"),
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
