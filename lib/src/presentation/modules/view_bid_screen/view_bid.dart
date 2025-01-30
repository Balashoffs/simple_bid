import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';
import 'package:simple_bid/src/presentation/bloc/bid_repository.dart';
import 'package:simple_bid/src/presentation/core/widget/custom_dropdown_button.dart';
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
        title: Text(
          "Заявка #${bid.id}",
          style: AT.t.h2.white(context),
          textAlign: TextAlign.start,
        ),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        primary: true,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    child: AppTextField(
                      labelText: 'Номер заявки',
                      initialValue: '${bid.id}',
                      enabled: false,

                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomDropdownButton(),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                labelText: 'Имя объекта',
                initialValue: '${bid.objectName}',
                enabled: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                labelText: 'Место расположение',
                initialValue: '${bid.objectPlace}',
                enabled: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                labelText: 'Дата создания',
                initialValue: '${bid.createdDate}',
                enabled: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                labelText: 'Дата завершения',
                initialValue: '${bid.finishedDate}',
                enabled: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                labelText: 'Описание заявки',
                initialValue: '${bid.taskList}',
                enabled: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppElevatedButton(
                text: "Обновить",
                onTap: () {
                  _getRepository(context).update(
                      bid,
                      () => Navigator.pushNamedAndRemoveUntil(
                          context, '/', (_) => false));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  static BidRepository _getRepository(BuildContext context) =>
      BlocProvider.of<BidRepository>(context);
}
