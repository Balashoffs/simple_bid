import 'package:flutter/material.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';

class MainBidsScreen extends StatelessWidget {
  const MainBidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(82, 170, 94, 1.0),
        title: Text("List of BIDs"),
        centerTitle: true,
      ),
      body: BidListWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
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
      child: TextButton(onPressed: () {
        Navigator.pushNamed(
          context,
          '/viewBid',
          arguments: bid
        );
      }, child: Text(bid.id)),
    );
  }
}
