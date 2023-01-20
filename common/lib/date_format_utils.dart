import 'package:easy_localization/easy_localization.dart';

class DateFormatUtils {
  String formatDate({required DateTime date}) {
    return DateFormat("dd.MM.yyyy").format(date).toString();
  }
}
