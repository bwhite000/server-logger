import "package:server_logger/server_logger.dart" as ServerLogger;

void main() {
  //--------------------------------------//
  // [2015-1-6 2:262.1.322] Hello, log!
  //--------------------------------------//
  ServerLogger.log('Hello, log!'); // Plain text in terminal

  ServerLogger.error('Hello, error!'); // Red text in terminal

  ServerLogger.warn('Hello, warning!'); // Yellow text in terminal

  ServerLogger.info('Hello, info!'); // Blue text in terminal
}