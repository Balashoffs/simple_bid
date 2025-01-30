import 'package:simple_bid/src/data/data_source/bid_data_source.dart';
import 'package:simple_bid/src/domain/core/failure/failure.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';
import 'package:dartz/dartz.dart';

import 'base_client.dart';

abstract class BidClient{
  const BidClient();
  Future<Either<Failure, List<Bid>>> getBids();
  Future<Either<Failure, bool>> updateBid(Bid updated);
  Future<Either<Failure, bool>> addBid(Bid newed);
}

class BidClientImpl with BaseClient implements BidClient {
  final BidDataSource _dataSource;

  const BidClientImpl(this._dataSource);


  @override
  Future<Either<Failure, List<Bid>>> getBids() =>
      handleData(() => _dataSource.getBids());

  @override
  Future<Either<Failure, bool>> addBid(Bid newed) {
    return handleData(() => _dataSource.addBid(newed));
  }

  @override
  Future<Either<Failure, bool>> updateBid(Bid updated) {
    return handleData(() => _dataSource.updateBid(updated));

  }

}