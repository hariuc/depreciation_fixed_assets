import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

class LoggerUtils {
  static void info({required String message}) {
    final logger = GetIt.instance.get<Logger>();
    logger.i(message);
  }

  static void error({required String message}) {
    final logger = GetIt.instance.get<Logger>();
    logger.e(message);
  }
}