import 'package:flutter/material.dart';

class AddBidScreen extends StatelessWidget {
  const AddBidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(82, 170, 94, 1.0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Create new bid"),
        centerTitle: true,
      ),
      body: AddBidWidget(),
    );
  }
}

class AddBidWidget extends StatelessWidget {
  const AddBidWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Text("ADD BID"),
      ),
    );
  }

  List<Widget> _generaterateWidgets() {
    return [];
  }
}
