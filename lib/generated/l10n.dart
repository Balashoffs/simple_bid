// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Dict {
  Dict();

  static Dict? _current;

  static Dict get current {
    assert(_current != null,
        'No instance of Dict was loaded. Try to initialize the Dict delegate before accessing Dict.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Dict> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Dict();
      Dict._current = instance;

      return instance;
    });
  }

  static Dict of(BuildContext context) {
    final instance = Dict.maybeOf(context);
    assert(instance != null,
        'No instance of Dict present in the widget tree. Did you add Dict.delegate in localizationsDelegates?');
    return instance!;
  }

  static Dict? maybeOf(BuildContext context) {
    return Localizations.of<Dict>(context, Dict);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Dict> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Dict> load(Locale locale) => Dict.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
