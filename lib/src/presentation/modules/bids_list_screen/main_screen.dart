import 'package:flutter/material.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';
import 'package:sm_modules/sm_ui_kit.dart';

class MainBidsScreen extends StatelessWidget {
  const MainBidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "List of BIDs",
          style: AT.t.h2.white(context),
          textAlign: TextAlign.start,
        ),
        centerTitle: true,
      ),
      body: BidListWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        tooltip: 'Add Bid',
        onPressed: () {
          Navigator.pushNamed(context, '/addBid');
        },
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}

class BidListWidget extends StatelessWidget {
  const BidListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Bid bid = Bid(
        createdDate: "",
        finishedDate: "",
        id: "${DateTime.now().microsecondsSinceEpoch}",
        objectName: "",
        objectPlace: "",
        state: "",
        taskList: []);
    return Center(
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/viewBid', arguments: bid);
          },
          child: Text(bid.id)),
    );
  }
}
