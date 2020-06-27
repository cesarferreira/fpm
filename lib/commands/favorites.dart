import 'package:args/command_runner.dart';
import 'package:fpm/parser.dart';
import 'package:fpm/pretty.printer.dart';

class FavoritesCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  @override
  final name = 'favorites';

  @override
  final description = 'List of the flutter favorite packages';

  /// Constructor
  FavoritesCommand();

  @override
  void run() async {
    var packages = await Parser.parseWebsite('https://pub.dev/flutter/favorites');
    PrettyPrinter.printShortVersion(packages);
  }
}
