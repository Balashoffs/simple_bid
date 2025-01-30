import 'package:simple_bid/src/data/core/db_client.dart';
import 'package:simple_bid/src/data/core/exceptions.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';
import 'package:uuid/uuid.dart';

abstract class BidDataSource {
  const BidDataSource();

  Future<bool> initialize();

  Future<bool> addBid(Bid bid);

  Future<bool> updateBid(Bid bid);

  Future<List<Bid>> getBids();
}

class BidDataSourceLocal implements BidDataSource {
  static const String _key = 'bids';
  final DBClient _client;

  const BidDataSourceLocal(
    this._client,
  );

  @override
  Future<bool> initialize() async {
    const uuid = Uuid();
    final initBids = [];
    await _client.write(_key, initBids);
    return true;
  }

  @override
  Future<List<Bid>> getBids() async {
    bool isPresent = await _client.isPresent(_key);
    if (isPresent) {
      return _handleBids(_client.read(_key));
    }
    return [];
  }

  @override
  Future<bool> addBid(Bid employee) async {
    bool isPresent = await _client.isPresent(_key);
    List<Bid> currents = [];
    if(isPresent){
      List<Bid> found = await _handleBids(_client.read(_key));
      currents.addAll(found);
    }
    List<Bid> added = [
      employee,
      ...currents,
    ];
    return _update(added);
  }

  Future<bool> _update(List<Bid> forUpdating) async {
    var result = forUpdating.map((e) => e.toJson()).toList();
    try {
      _client.write(_key, result);
      return true;
    } catch (e) {
      throw ResponseException(e.toString());
    }
    return true;
  }

  @override
  Future<bool> updateBid(Bid employee) async {
    List<Bid> currents = _handleBids(_client.read(_key));
    currents.removeWhere((r) => r.id == employee.id);
    List<Bid> added = [
      employee,
      ...currents,
    ];
    return _update(added);
  }

  List<Bid> _handleBids(dynamic response) {
    try {
      List<Bid> result = [];
      for (final employee in response) {
        result.add(Bid.fromJson(employee));
      }
      return result;
    } catch (e) {
      throw ResponseException(e.toString());
    }
  }
}
