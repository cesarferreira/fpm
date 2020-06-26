import 'package:ansicolor/ansicolor.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';

parseWebsite(String url) async {
  var response = await http.get(url);
  var body = response.body;

  var doc = parse(body);
  var lis = doc.getElementsByClassName('list-item -full');

  lis.forEach((li) {
    var score = li.getElementsByTagName('a')[0].text.trim();
    var title = li.getElementsByTagName('h3 a')[0].text.trim();
    var description = li.getElementsByClassName('description')[0].text.trim();
    var version = li.getElementsByTagName('p a')[0].text.trim();
    var updatedAt = li.getElementsByTagName('p span')[0].text.trim();
    // print("$title: $description");

    var pen = AnsiPen()..green(bold: true);

    print(pen('$title:') + '($version) (updated at: $updatedAt) $description');

    // print('--------------------------------------------------------');
  });
}
