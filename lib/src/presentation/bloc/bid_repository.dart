import 'package:simple_bid/src/data/client/bid_client.dart';
import 'package:simple_bid/src/domain/models/bid/bid.dart';
import 'package:simple_bid/src/presentation/bloc/core/core/bloc_mixin.dart';
import 'package:simple_bid/src/presentation/bloc/core/core/repository_state.dart';
import 'package:simple_bid/src/presentation/services/toasts.dart';

typedef BidRepositoryState = RepositoryState<List<Bid>>;

class BidRepository extends Repository<List<Bid>> with StateMixin {
  final BidClient _bidClient;

  BidRepository(this._bidClient):super(const UninitializedState());

  void load() async {
    setLoadingState();
    _bidClient.getBids().then(
          (successOrFailure) => successOrFailure.fold(
            (failure) {
              showErrorToast(
                  'Произошла ошибка${failure.description == null ? '' : ':\n${failure.description}'}');
              setFailureState(failure);
            },
            (bids) {
              emit(SuccessState(bids));
            },
          ),
        );
  }

  Future<void> add(Bid newBid, Function func ) async {
    _bidClient.addBid(newBid).then(
          (successOrFailure) => successOrFailure.fold(
            (failure) {
              showErrorToast(
                  'Произошла ошибка${failure.description == null ? '' : ':\n${failure.description}'}');
              setFailureState(failure);
            },
            (bids) {
              func();
            },
          ),
        );
  }

  void update(Bid newBid) async {
    setLoadingState();
    _bidClient.updateBid(newBid).then(
          (successOrFailure) => successOrFailure.fold(
            (failure) {
          showErrorToast(
              'Произошла ошибка${failure.description == null ? '' : ':\n${failure.description}'}');
          setFailureState(failure);
        },
            (bids) {
          emit(SuccessState([]));
        },
      ),
    );
  }
}
