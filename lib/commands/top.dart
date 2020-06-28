import 'package:args/command_runner.dart';
import 'package:fpm/parser.dart';
import 'package:fpm/pretty.printer.dart';

class TopCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  @override
  final name = 'top';

  @override
  final description = 'List the top used dart packages';

  /// Constructor
  TopCommand();

  @override
  void run() async {
    var packages = await Parser.parseWebsite('https://pub.dev/packages');
      PrettyPrinter.displayPackages(packages, argResults.arguments.contains('--verbose'));
  }
}
