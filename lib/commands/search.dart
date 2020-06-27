import 'package:args/command_runner.dart';
import 'package:fpm/parser.dart' as parser;

class SearchCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  @override
  final name = 'search';

  @override
  final description = 'Search dart packages';

  /// Constructor
  SearchCommand() {
    argParser
      ..addFlag(
        's',
        help: 'search',
        negatable: false,
      );
  }

  @override
  void run() async {
    if (argResults.arguments.isEmpty) {
      print("You're MISSING ARGS");
    } else {
      var q = argResults.arguments[0].toLowerCase();

      var packages = await parser.parseWebsite('https://pub.dev/packages?q=$q');
      parser.printShortVersion(packages);
    }
  }
}
