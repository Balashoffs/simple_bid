import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_bid/src/data/client/bid_client.dart';
import 'package:simple_bid/src/data/data_source/bid_data_source.dart';
import 'package:simple_bid/src/presentation/bloc/bid_repository.dart';
import 'package:simple_bid/src/presentation/bloc/core/theme_cubit/theme_cubit.dart';
import 'package:simple_bid/src/presentation/core/services/theme_service.dart';
import 'package:sm_modules/sm_ui_kit.dart';

import '../data/core/db_client.dart';

const di = DependencyInjector();

class DependencyInjector {
  const DependencyInjector();

  static final _getItInstance = GetIt.instance;

  Future<void> init() async {
    await _registerDBClient();
    _registerThemeService();
    _registerDataSources();
    _registerClients();
    _registerBlocs();
    _registerAppTypographyMobile();
  }

  Future<void> _registerDBClient() async {
    final preferences = await SharedPreferences.getInstance();

    _getItInstance
        .registerLazySingleton<DBClient>(() => DBClientImpl(preferences));
  }

  void _registerThemeService() =>
      _getItInstance.registerSingleton<ThemeService>(
          ThemeService(_getItInstance<DBClient>()));

  void _registerAppTypographyMobile() {
    _getItInstance.registerSingleton<AppTypographyTablet>(
      AppTypographyTablet(),
    );
  }

  void _registerDataSources() {
    _getItInstance.registerSingleton<BidDataSource>(BidDataSourceLocal(
      _getItInstance<DBClient>(),
    ));
  }

  void _registerClients() {
    _getItInstance.registerSingleton<BidClient>(BidClientImpl(
      _getItInstance<BidDataSource>(),
    ));
  }

  void _registerBlocs() {
    /// Appearance
    final themeBloc = ThemeCubit()..themeLoad();
    _getItInstance.registerFactory<ThemeCubit>(() => themeBloc);
    _getItInstance.registerSingleton<BidRepository>(
        BidRepository(_getItInstance<BidClient>()));
  }

  /// Core
  ThemeService get themeService => _getItInstance<ThemeService>();

  ThemeCubit get themeBloc => _getItInstance<ThemeCubit>();

  BidRepository get bidRepository => _getItInstance<BidRepository>();

  BidClient get bidClient => _getItInstance<BidClient>();
}
