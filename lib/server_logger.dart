library ServerLogger;

import "dart:io";

/**
 * ServerLogger
 *
 * Log a message and timestamp to the console.
 *
 * e.g. "[2015-3-18 1:58:04.721] This is my log message in the console."
 */

/// Controls if logging should occur. This can be set to false for libraries in Production.
bool isEnabled = true;

/// Log the parameter to the console.
void log(final dynamic message) {
  if (isEnabled) {
    stdout.writeln('[${_generateTimestamp()}] $message');
  }
}

/// Log with blue colored info text.
void info(final dynamic infoMessage) {
  if (isEnabled) {
    // Uses ANSI Bash color setting
    stdout.writeln('\x1B[38;5;18m[${_generateTimestamp()}] $infoMessage\x1B[0m');
  }
}

/// Log with yellow colored warning text.
void warn(final dynamic warnMessage) {
  if (isEnabled) {
    // Uses ANSI Bash color setting
    stdout.writeln('\x1B[38;5;136m[${_generateTimestamp()}] $warnMessage\x1B[0m');
  }
}

/// Log with red colored error text.
void error(final dynamic errMessage) {
  if (isEnabled) {
    // Uses ANSI Bash color setting
    stderr.writeln('\x1B[38;5;124m[${_generateTimestamp()}] $errMessage\x1B[0m');
  }
}

/// Generate a timestamp for the log.
String _generateTimestamp() {
  final DateTime timestamp = new DateTime.now();
  final int hour = timestamp.hour;
  final int minute = timestamp.minute;
  final int second = timestamp.second;
  final int millisecond = timestamp.millisecond;

  return '${timestamp.year}-${timestamp.month}-${timestamp.day} ' +
      '${(hour > 12) ? (hour - 12) : hour}:' +
      '${(minute < 10) ? '0$minute' : minute}:' +
      '${(second < 10) ? '0$second' : second}.' +
      '${(millisecond < 100) ? (millisecond < 10) ? '00$millisecond' : '0$millisecond' : millisecond}';
}