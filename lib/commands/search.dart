import 'package:args/command_runner.dart';
import 'package:fpm/parser.dart';
import 'package:fpm/pretty.printer.dart';

class SearchCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  @override
  final name = 'search';

  @override
  final description = 'Search dart packages';

  /// Constructor
  SearchCommand() {}

  @override
  void run() async {
    if (argResults.arguments.isEmpty) {
      print("You're MISSING ARGS");
    } else {
      var q = argResults.arguments[0].toLowerCase();

      var packages = await Parser.parseWebsite('https://pub.dev/packages?q=$q');
      PrettyPrinter.printShortVersion(packages);
    }
  }
}
