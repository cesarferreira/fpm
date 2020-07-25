import 'package:ansicolor/ansicolor.dart';
import 'package:args/command_runner.dart';
import 'package:fpm/parser.dart';

class AddCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  @override
  final name = 'add';

  @override
  final description = 'Add package to your pubspec.yaml';

  /// Constructor
  AddCommand();

  @override
  void run() async {
    if (argResults.rest.isEmpty) {
      throw Exception('Please provide a search term. search <query>');
    } else {
      var q = argResults.rest[0].toLowerCase();

      final packages =
          await Parser.parseWebsite('https://pub.dev/packages?q=$q');

      try {
        final found = packages.firstWhere((element) => element.title == q);

        print('${found.title}: ${found.description}');
      } catch (e) {
        var green = AnsiPen()..green(bold: true);
        var yellow = AnsiPen()..yellow(bold: true);

        final suggestions =
            packages.getRange(0, 4).map((it) => green(it.title)).join(', ');

        print("Couldn't find '${yellow(q)}', did you mean: ${suggestions}");
      }
    }
  }


  void asd() {

  }
}
