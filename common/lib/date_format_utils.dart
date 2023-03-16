import 'package:easy_localization/easy_localization.dart';

class DateFormatUtils {
  final DateTime date;

  DateFormatUtils({required this.date});

  String formatDate() {
    return DateFormat("dd.MM.yyyy").format(date).toString();
  }

  String formatDateMonthYear() {
    return DateFormat("MMM yyyy").format(date).toString();
  }

  String formatYear() {
    return DateFormat("yyyy").format(date).toString();
  }
}
