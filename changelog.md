ServerLogger
============

v1.0.0 (11.23.2015)
-------------------
* Changed the print() statements to using Dart IO's asynchronous and better organized methods of
  stdout and stderr for logging.
* Stored some properties in a variable to lower the repeated property access which is less efficient
  in repeated use versus a single variable; in this case, the code that generates the output timestamps.
* __Pubspec:__ Changed the homepage to my Google Plus account Url to make it easier to be able to get in
  contact with me.

v0.1.1 (4.29.2015)
------------------
* Added better ReadMe documentation.

v0.1.0 (4.14.2015)
------------------
* Took the method out of a redundant class container; prefer namespacing on the import;
  e.g. "import 'package:server_logger/server_logger.dart' as ServerLogger;".
* Switched the "const" "ENABLED" to a modifiable "isEnabled".

v0.0.2 (4.11.2015)
------------------
* Removed the words "Info", "Error", and "Warning" text from being a prefix to the message
  in the logs.

v0.0.1
------
* Base functionality and structure.