import 'package:intl/intl.dart';

extension FormatterExtension on double {
  String get currencyPTBR {
    final currencyFormat = NumberFormat.currency(
      locale: 'pt_BR',
      // "r" se chama row String e ele informa que a String é uma String literal,
      // com isso o dart não vai analisar se precisa de colocar algum código dart
      symbol: r'R$',
    );
    return currencyFormat.format(this);
  }
}
