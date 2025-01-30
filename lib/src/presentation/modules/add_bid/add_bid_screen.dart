import 'package:flutter/material.dart';
import 'package:sm_modules/sm_ui_kit.dart';

class AddBidScreen extends StatelessWidget {
  const AddBidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Create new bid",
          style: AT.t.h2.white(context),
          textAlign: TextAlign.start,
        ),
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
        child: Text(
          "ADD BID",
          style: AT.t.h2.grey1(context),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  List<Widget> _generaterateWidgets() {
    return [];
  }
}
