import 'package:cli_util/cli_logging.dart';

main(List<String> args) async {
  bool verbose = args.contains('-v');
  Logger logger = verbose ? new Logger.verbose() : new Logger.standard();

  logger.stdout('Hello world!');
  logger.trace('message 1');
  await new Future.delayed(new Duration(milliseconds: 200));
  logger.trace('message 2');
  logger.trace('message 3');

  Progress progress = logger.progress('doing some work');
  await new Future.delayed(new Duration(seconds: 5));
  progress.finish(showTiming: true);

  logger.stdout('All ${logger.ansi.emphasized('done')}.');
  logger.flush();
}