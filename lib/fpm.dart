
import 'dart:io';

import 'package:fpm/commands/add.dart';
import 'package:fpm/commands/runner.dart';
import 'package:fpm/commands/top.dart';
import 'package:fpm/utils/logger.dart';
import 'package:io/ansi.dart';

/// Runs FVM
Future<void> fpmRunner(List<String> args) async {
  final runner = buildRunner();

  runner
    ..addCommand(AddCommand())
    ..addCommand(TopCommand());

  return await runner.run(args).catchError((exc, st) {
    if (exc is String) {
      logger.stdout(exc);
    } else {
      logger.stderr('⚠️  ${yellow.wrap(exc?.message as String)}');
      if (args.contains('--verbose')) {
        print(st);
        throw exc;
      }
    }
    exitCode = 1;
  }).whenComplete(() {});
}