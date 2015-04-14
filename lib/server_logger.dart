library ServerLogger;

/**
 * ServerLogger
 *
 * Log a message and timestamp to the console.
 *
 * e.g. "[2015-3-18 1:58:04.721] This is my log message in the console."
 */

/// Controls if logging should occur. This is often false in Production.
bool isEnabled = true;

/// Log the parameter to the console.
void log(final dynamic message) {
  if (isEnabled) {
    print('[${_generateTimestamp()}] $message');
  }
}

/// Log with blue colored info text.
void info(final dynamic infoMessage) {
  if (isEnabled) {
    // Uses ANSI Bash color setting
    print('\x1B[38;5;18m[${_generateTimestamp()}] $infoMessage\x1B[0m');
  }
}

/// Log with yellow colored warning text.
void warn(final dynamic warnMessage) {
  if (isEnabled) {
    // Uses ANSI Bash color setting
    print('\x1B[38;5;136m[${_generateTimestamp()}] $warnMessage\x1B[0m');
  }
}

/// Log with red colored error text.
void error(final dynamic errMessage) {
  if (isEnabled) {
    // Uses ANSI Bash color setting
    print('\x1B[38;5;124m[${_generateTimestamp()}] $errMessage\x1B[0m');
  }
}

/// Generate a timestamp for the log.
String _generateTimestamp() {
  final DateTime timestamp = new DateTime.now();

  return '${timestamp.year}-${timestamp.month}-${timestamp.day} ' +
      '${(timestamp.hour > 12) ? (timestamp.hour - 12) : timestamp.hour}:' +
      '${(timestamp.minute < 10) ? '0${timestamp.minute}' : timestamp.minute}:' +
      '${(timestamp.second < 10) ? '0${timestamp.second}' : timestamp.second}.' +
      '${(timestamp.millisecond < 100) ? (timestamp.millisecond < 10) ? '00${timestamp.millisecond}' : '0${timestamp.millisecond}' : timestamp.millisecond}';
}