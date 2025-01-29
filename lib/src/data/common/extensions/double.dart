import 'package:intl/intl.dart';

extension DoubleX on double? {
  String get toCurrency {
    final formatter = NumberFormat.currency(
      locale: 'ru_RU',
      decimalDigits: 2,
      symbol: '',
    );
    if (this == null) return '';
    return formatter.format(this);
  }
}