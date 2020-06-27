import 'package:args/command_runner.dart';
import 'package:fpm/parser.dart' as parser;

class TopCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  @override
  final name = 'top';

  @override
  final description = 'list the top used dart packages';

  /// Constructor
  TopCommand();

  @override
  void run() async {
    var packages = await parser.parseWebsite('https://pub.dev/packages');
    parser.printShortVersion(packages);
  }
}
