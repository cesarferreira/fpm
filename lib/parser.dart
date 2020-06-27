import 'package:ansicolor/ansicolor.dart';
import 'package:fpm/package.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';

Future<List<Package>> parseWebsite(String url) async {
  var response = await http.get(url);
  var body = response.body;

  var doc = parse(body);
  var lis = doc.getElementsByClassName('list-item -full');

  var packages = <Package>[];

  lis.forEach((li) {
    var title = li.getElementsByTagName('h3 a')[0].text.trim();
    var description = li.getElementsByClassName('description')[0].text.trim();
    var version = li.getElementsByTagName('p a')[0].text.trim();
    var url = 'https://pub.dev' +
        li.getElementsByTagName('p a')[0].attributes['href'];
    var updatedAt = li.getElementsByTagName('p span')[0].text.trim();
    var scoreRaw = li.getElementsByTagName('a')[0].text.trim();

    var score = -1;
    try {
      score = int.parse(scoreRaw);
    } catch (e) {
      // scoreRaw;
    }

    var p = Package(
      title: title,
      description: description,
      url: url,
      version: version,
      updatedAt: updatedAt,
      score: score,
    );

    packages.add(p);
  });

  return packages;
}

printLongVersion(List<Package> packages) {
  var pen = AnsiPen()..green(bold: true);
  var gr = AnsiPen()..gray();
  var blackBold = AnsiPen()..gray();

  packages.forEach((it) {
    print(pen('-> ${it.title} (${it.version})'));
    print('    ${it.description}');
    print('    - Homepage: ${it.url}');
    print('\n');
    print(gr('    dependencies:'));
    print(gr('      ${it.title}: ${it.version}'));
    print('\n');
    // print('--------------------------------------------------------');
  });
}

printShortVersion(List<Package> packages) {
  var pen = AnsiPen()..green(bold: true);

  packages.forEach((it) {
    print(pen('${it.title}:') +
        ' (${it.version}) ${it.description}. (updated at: ${it.updatedAt})');
  });
}
