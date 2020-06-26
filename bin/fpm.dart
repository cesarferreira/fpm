import 'package:args/args.dart';
import 'package:fpm/fpm.dart' as fpm;
import 'package:http/http.dart' as http;
// import 'dart:html';
import 'package:html/parser.dart';

_topCommand() async {
  // print("TOPPPPP");

  var url = 'https://pub.dev/packages';
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  // print('Response body: ${response.body}');

  parseWebsite(response.body);
}

parseWebsite(String body) {
  var doc = parse(body);
  var lis = doc.getElementsByClassName('list-item -full');

  lis.forEach((li) {
    print('---------------------');
    var score = li.getElementsByTagName('a')[0].text.trim();
    var title = li.getElementsByTagName('h3 a')[0].text.trim();
    var description = li.getElementsByClassName('description')[0].text.trim();
    print("$title: $description");
  });
}

void main(List<String> arguments) {
  // print('Hello world: ${fpm.calculate()}!');

  var parser = ArgParser();

  // parser..addOption('add', abbr: 'a')..addOption('top', abbr: 't');

  // parser.addFlag('verbose', defaultsTo: true);
  // var results = parser.parse(['--mode', 'debug', 'something', 'else']);

  // print(results['mode']); // debug
  // print(results['verbose']); // true

  if (arguments.isEmpty) {
    print(parser.usage);
  } else {
    print(arguments);

    switch (arguments[0]) {
      case 'add':
        break;
      case 'top':
        _topCommand();
        break;
      default:
    }
  }
}
