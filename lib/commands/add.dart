import 'package:args/command_runner.dart';

class AddCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  @override
  final name = 'add';

  @override
  final description = 'Add package SDK Version';

  /// Constructor
  AddCommand();

  @override
  void run() async {
    print('im hereee');
  }
}