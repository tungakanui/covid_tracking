import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);
const DEBUG = true;

class MLogger {
  /// Log a message at level [Level.verbose].
  static void v(dynamic message) {
    if (DEBUG) {
      logger.v(message);
    }
  }

  /// Log a message at level [Level.debug].
  static void d(dynamic message) {
    if (DEBUG) {
      logger.d(message);
    }
  }

  /// Log a message at level [Level.info].
  static void i(dynamic message) {
    if (DEBUG) {
      logger.i(message);
    }
  }

  /// Log a message at level [Level.warning].
  static void w(dynamic message) {
    if (DEBUG) {
      logger.w(message);
    }
  }

  /// Log a message at level [Level.error].
  static void e(dynamic message) {
    if (DEBUG) {
      logger.e(message);
    }
  }

  /// Log a message at level [Level.wtf].
  static void wtf(dynamic message) {
    if (DEBUG) {
      logger.wtf(message);
    }
  }
}
