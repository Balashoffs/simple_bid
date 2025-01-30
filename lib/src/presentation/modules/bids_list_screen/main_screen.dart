import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';
import 'package:simple_bid/src/presentation/bloc/bid_repository.dart';
import 'package:sm_modules/sm_ui_kit.dart';

class MainBidsScreen extends StatelessWidget {
  const MainBidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Список заявок",
          style: AT.t.h2.white(context),
          textAlign: TextAlign.start,
        ),
        centerTitle: true,
      ),
      body: BidViewerWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        tooltip: 'Создать заявку',
        onPressed: () {
          Navigator.pushNamed(context, '/addBid');
        },
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}

class BidViewerWidget extends StatelessWidget {
  const BidViewerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BidRepository, BidRepositoryState>(
      builder: (context, state) {
        return BidListWidget(
          bids: state.model ?? [],
          onLoad: () => _bidRepository(context).load(),
        );
      },
    );
  }

  static BidRepository _bidRepository(BuildContext context) =>
      BlocProvider.of<BidRepository>(context);
}

class BidListWidget extends StatefulWidget {
  final List<Bid> bids;
  final VoidCallback onLoad;

  const BidListWidget({super.key, required this.bids, required this.onLoad});

  @override
  State<BidListWidget> createState() => _BidListWidgetState();
}

class _BidListWidgetState extends State<BidListWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.bids.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: Text(
            'Заявок нет',
            style: AT.t.title1,
            textAlign: TextAlign.start,
          ),
        ),
      );
    }
    return Center(
      child: ListView.builder(
        itemCount: widget.bids.length,
        itemBuilder: (context, index) {
          final bid = widget.bids[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppElevatedButton(
              text: 'Заявка №${bid.id}',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/viewBid',
                  arguments: bid,
                );
              },
            ),
          );
          // return Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //   child: DecoratedBox(
          //     decoration: BoxDecoration(
          //       border: Border.all(),
          //       borderRadius: BorderRadius.circular(4),
          //     ),
          //     child: Flexible(
          //       // flex: 4,
          //       fit: FlexFit.tight,
          //       child: Padding(
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //         child: Text(
          //
          //           style: AT.t.h2,
          //           textAlign: TextAlign.start,
          //         ),
          //       ),
          //     ),
          //   ),
          // );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    widget.onLoad();
  }
}
