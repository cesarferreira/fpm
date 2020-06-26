import 'package:ansicolor/ansicolor.dart';
import 'package:args/command_runner.dart';
import 'package:args/args.dart';
import 'package:fpm/fpm.dart' as fpm;
import 'package:fpm/utils/logger.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';
import 'package:io/ansi.dart';

/// Installs Flutter SDK
class TopCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  @override
  final name = 'top';

  @override
  final description = 'list the top used dart packages';

  /// Constructor
  TopCommand() {
    // argParser
    //   ..addFlag(
    //     'skip-setup',
    //     help: 'Skips Flutter setup after install',
    //     negatable: false,
    //   );
  }

  @override
  void run() async {

    var url = 'https://pub.dev/packages';
    var response = await http.get(url);

    _parseWebsite(response.body);
  }

  _parseWebsite(String body) async {
    var doc = parse(body);
    var lis = doc.getElementsByClassName('list-item -full');

    lis.forEach((li) {
      var score = li.getElementsByTagName('a')[0].text.trim();
      var title = li.getElementsByTagName('h3 a')[0].text.trim();
      var description = li.getElementsByClassName('description')[0].text.trim();
      // print("$title: $description");

      var pen = AnsiPen()..green(bold: true);

      print(pen('$title:') + ' $description');

      // print('--------------------------------------------------------');
    });
  }
}
