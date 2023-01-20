import 'package:easy_localization/easy_localization.dart';

class DateFormatUtils {
  String formatDate({required DateTime date}) {
    return DateFormat("dd.MM.yyyy").format(date).toString();
  }

  String formatDateMonthYear({required DateTime date}) {
    return DateFormat("MMM yyyy").format(date).toString();
  }

  String formatYear({required DateTime date}) {
    return DateFormat("yyyy").format(date).toString();
  }
}
