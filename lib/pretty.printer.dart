import 'package:ansicolor/ansicolor.dart';
import 'package:fpm/package.dart';

class PrettyPrinter {
  static void printLongVersion(List<Package> packages) {
    var pen = AnsiPen()..green(bold: true);
    var gr = AnsiPen()..gray();

    packages.forEach((it) {
      print(pen('-> ${it.title} (${it.version})'));
      print('    ${it.description}');
      print('    - Score: ${it.score}');
      print('    - Homepage: ${it.url}');
      print('    - Last updated: ${it.updatedAt}');
      // print('\n');
      print(gr('    dependencies:'));
      print(gr('      ${it.title}: ${it.version}'));
      print('\n');
    });
  }

  static void printShortVersion(List<Package> packages) {
    var pen = AnsiPen()..green(bold: true);

    packages.forEach((it) {
      print(pen('${it.title}:') +
          ' (${it.version}) - ${it.description}'); //  (updated at: ${it.updatedAt})
    });
  }

  static void displayPackages(List<Package> packages, bool isVerbose) {
    if (isVerbose) {
      printLongVersion(packages);
    } else {
      printShortVersion(packages);
    }
  }
}
