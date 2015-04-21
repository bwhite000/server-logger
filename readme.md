ServerLogger
============

A basic Dart language server-side logging helper. Includes a timestamp prefix in
the output, and can be switched on or off programmatically. *For __client-side
logging__ like this, please try out my [Logger package](https://github.com/bwhite000/logger).*

Calling:

````Dart
ServerLogger.log('Hello, world!');
````

will appear in the console as:

````plain
[20XX-4-25 4:00:33.875] Hello, world!
````

Getting Started
---------------

Follow these layouts for your server-side Dart project.

__pubspec.yaml__ - Add the dependency.

````yaml
...
dependencies:
  server_logger:
    git: git://github.com/bwhite000/server_logger.git
````

__main.dart__ - Begin logging!

````Dart
import "package:server_logger/server_logger.dart" as ServerLogger;

void main() {
  // Logs - regular style
  ServerLogger.log('This is a basic log.');  // Strings,
  ServerLogger.log({"name": "Jerry"});       // Maps,
  ServerLogger.log(new DateTime.now());      // Objects, etc.

  // Errors - red console output
  ServerLogger.error('Something broke!');

  // Warnings - yellow console text
  ServerLogger.warn('The JSON response was missing a parameter.');

  // Info - blue console text
  ServerLogger.info('All servers are connected.');

  // Switch off
  ServerLogger.isEnabled = false;
  ServerLogger.log('You will never see this log.');
  ServerLogger.isEnabled = true; // Switch back on
}
````
