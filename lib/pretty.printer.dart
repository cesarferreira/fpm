import 'package:ansicolor/ansicolor.dart';
import 'package:fpm/package.dart';

class PrettyPrinter {
  static printLongVersion(List<Package> packages) {
    var pen = AnsiPen()..green(bold: true);
    var gr = AnsiPen()..gray();

    packages.forEach((it) {
      print(pen('-> ${it.title} (${it.version})'));
      print('    ${it.description}');
      print('    - Homepage: ${it.url}');
      print('\n');
      print(gr('    dependencies:'));
      print(gr('      ${it.title}: ${it.version}'));
      print('\n');
    });
  }

  static printShortVersion(List<Package> packages) {
    var pen = AnsiPen()..green(bold: true);

    packages.forEach((it) {
      print(pen('${it.title}:') +
          ' (${it.version}) ${it.description}. (updated at: ${it.updatedAt})');
    });
  }
}
