import 'package:args/command_runner.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:fpm/utils/logger.dart';

/// Builds FVM Runner
CommandRunner buildRunner() {
  final runner = CommandRunner(
      'fpm', 'Flutter Version Management: A cli to manage Flutter packages.');

  runner.argParser.addFlag('verbose',
      help: 'Print verbose output.', negatable: false, callback: (verbose) {
    if (verbose) {
      logger = Logger.verbose();
    } else {
      logger = Logger.standard();
    }
  });

  return runner;
}
