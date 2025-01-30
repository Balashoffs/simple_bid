import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    _registerBlocs();
    _registerAppTypographyMobile();
  }



  Future<void> _registerDBClient() async {
    final preferences = await SharedPreferences.getInstance();

    _getItInstance.registerLazySingleton<DBClient>(() => DBClientImpl(preferences));
  }

  void _registerThemeService() =>
      _getItInstance.registerSingleton<ThemeService>(ThemeService(_getItInstance<DBClient>()));


  void _registerAppTypographyMobile() {
    _getItInstance.registerSingleton<AppTypographyTablet>(
      AppTypographyTablet(),
    );
  }

  void _registerBlocs() {
    /// Appearance
    final themeBloc = ThemeCubit()..themeLoad();
    _getItInstance.registerFactory<ThemeCubit>(() => themeBloc);
  }

  /// Core
  ThemeService get themeService => _getItInstance<ThemeService>();

  ThemeCubit get themeBloc => _getItInstance<ThemeCubit>();

}
