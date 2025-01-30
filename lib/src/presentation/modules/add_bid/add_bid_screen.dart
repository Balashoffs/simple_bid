import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';
import 'package:simple_bid/src/presentation/bloc/bid_repository.dart';
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
          "Создать заявку",
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
    int id = DateTime.now().millisecondsSinceEpoch;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                labelText: 'Номер заявки',
                initialValue: '${id}',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppElevatedButton(
                text: "Создать",
                onTap: () {
                  Bid bid = Bid(
                    state: 'Created',
                    objectPlace: 'Room',
                    objectName: 'Stage',
                    finishedDate: '10.10.2020',
                    createdDate: '10.10.2019',
                    id: '${id}',
                    taskList: [],
                  );
                  _getRepository(context).add(
                      bid,
                      () => Navigator.pushNamedAndRemoveUntil(
                          context, '/', (_) => false));
                },
              ),
            )
          ],
        )),
      ),
    );
  }

  static BidRepository _getRepository(BuildContext context) =>
      BlocProvider.of<BidRepository>(context);

  List<Widget> _generaterateWidgets() {
    return [];
  }
}
