import 'dart:io';

import 'package:fpm/commands/add.dart';
import 'package:fpm/commands/favorites.dart';
import 'package:fpm/commands/search.dart';
import 'package:fpm/commands/top.dart';
import 'package:fpm/utils/runner.dart';

/// Runs FVM
Future<void> main(List<String> args) async {
  final runner = buildRunner();

  runner
    ..addCommand(AddCommand())
    ..addCommand(SearchCommand())
    ..addCommand(FavoritesCommand())
    ..addCommand(TopCommand());

  return await runner.run(args).catchError((exc, st) {
    if (exc is String) {
      print(exc);
    } else {
      print('⚠️  ${exc?.message as String}');
      if (args.contains('--verbose')) {
        print(st);
        throw exc;
      }
    }
    exitCode = 1;
  }).whenComplete(() {});
}
