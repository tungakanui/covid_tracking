import 'package:intl/intl.dart';

extension CurrencyProperty on String {
  String get formatNoSymbolCurrency {
    final money = num.parse(this);
    final format =
        NumberFormat.currency(locale: "en", decimalDigits: 0, symbol: "");
    return format.format(money).replaceAll(" ", "");
    ; //.replaceAll(".", ",");
  }

  String get removeCurrency {
    return this.replaceAll(".", "").replaceAll(" ", "");
  }

  String get compactNumber{
    final money = num.parse(this);
    final format =
    NumberFormat.compact(locale: "en");
    return format.format(money).replaceAll(" ", "");
  }
}
