import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:simple_bid/generated/l10n.dart';

class L10nCubit extends HydratedCubit<Locale> {
  L10nCubit() : super(const Locale('ru'));

  void changeLocale(Locale locale) {
    Dict.load(locale);
    emit(locale);
  }

  @override
  Locale fromJson(Map<String, dynamic> json) =>
      Locale(json['locale_lan'] as String);

  @override
  Map<String, dynamic> toJson(Locale state) =>
      {'locale_lan': state.languageCode};
}
