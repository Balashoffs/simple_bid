import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bid/src/data/common/utils/date_utils.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';
import 'package:simple_bid/src/presentation/bloc/bid_repository.dart';
import 'package:sm_modules/sm_ui_kit.dart';

import 'custom_date_picker.dart';

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
    String dateTime = dateTimeNow();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          primary: true,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppTextField(
                    labelText: 'Номер заявки',
                    initialValue: '${id}',
                    enabled: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppTextField(
                    labelText: 'Объект',
                    helperText: 'Фанкойл 3.2',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppTextField(
                    labelText: 'Место расположения',
                    helperText: 'Комната 1.2',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppTextField(
                    multiline: true,
                    labelText: 'Описание задачи',
                    helperText: 'Заменить датчик давления ',
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildCalendarDialogButton(context)
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppElevatedButton(
                    text: "Создать",
                    onTap: () {
                      Bid bid = Bid(
                        state: 'Создано',
                        objectPlace: 'Команата',
                        objectName: 'Фанкойли',
                        finishedDate: '10.10.2020',
                        createdDate: '10.10.2019',
                        id: '${id}',
                        taskList: 'Заменить датчик давления',
                      );
                      _getRepository(context).add(
                          bid,
                              () => Navigator.pushNamedAndRemoveUntil(
                              context, '/', (_) => false));
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  static BidRepository _getRepository(BuildContext context) =>
      BlocProvider.of<BidRepository>(context);

}


