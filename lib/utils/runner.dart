import 'package:args/command_runner.dart';

/// Builds FVM Runner
CommandRunner buildRunner() {
  final runner = CommandRunner(
      'fpm', 'Flutter Version Management: A cli to manage Flutter packages.');

  runner.argParser.addFlag('verbose',
      help: 'Print verbose output.', negatable: false, callback: (verbose) {});

  return runner;
}
