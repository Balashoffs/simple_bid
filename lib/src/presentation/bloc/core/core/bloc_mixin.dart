import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:collection/collection.dart';
import 'package:simple_bid/src/domain/core/failure/failure.dart';
import 'package:simple_bid/src/presentation/bloc/core/core/repository_state.dart';

mixin StateMixin<T> on Cubit<RepositoryState<T>> {
  bool get isUninitializedState => state is UninitializedState;
  bool get isLoadingState => state is LoadingState;
  bool get isFailureState => state is FailureState;
  bool get isSuccessState => state is SuccessState;
  bool get isCompletedState => state is CompletedState;
  T? get model => state.model;

  T combineModelsWithoutDuplicates(T data) {
    if (model == null) return data;

    return ((model as List) +
        (data as List)
            .where((item) => !(model as List).contains(item))
            .toList()) as T;
  }

  S? modelWhere<S>(bool Function(S) matcher) {
    if (model == null) return null;

    return (model as Iterable<S>).firstWhereOrNull(matcher) as S;
  }

  void setFailureState(Failure failure) {
    if (isUninitializedState) return emit(FailureState(failure));
    emit(FailureState(failure, model));
  }

  void setLoadingState() {
    if (isUninitializedState) return emit(const LoadingState());
    emit(LoadingState(model));
  }
}

mixin StateRestorationMixin<T> on HydratedCubit<RepositoryState<T>> {
  @override
  RepositoryState<T> fromJson(Map<String, dynamic> json) =>
      json.isEmpty ? UninitializedState<T>() : SuccessState<T>.fromJson(json);

  @override
  Map<String, dynamic> toJson(RepositoryState state) =>
      state.model == null ? const {} : SuccessState<T>(state.model).toJson();
}

abstract class Repository<T> extends Cubit<RepositoryState<T>>
    with StateMixin<T> {
  Repository(super.state);
}

abstract class HydratedRepository<T> extends HydratedCubit<RepositoryState<T>>
    with StateMixin<T>, StateRestorationMixin<T> {
  HydratedRepository(super.state);
}
