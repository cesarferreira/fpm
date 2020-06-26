import 'package:args/command_runner.dart';
// import 'package:fvm/exceptions.dart';
// import 'package:fvm/utils/guards.dart';
// import 'package:fvm/utils/helpers.dart';
// import 'package:fvm/utils/project_config.dart';
// import 'package:fvm/utils/version_installer.dart';

/// Installs Flutter SDK
class AddCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  @override
  final name = 'add';

  @override
  final description = 'add Flutter SDK Version';

  /// Constructor
  AddCommand() {
    argParser
      ..addFlag(
        'skip-setup',
        help: 'Skips Flutter setup after install',
        negatable: false,
      );
  }

  @override
  void run() async {
    print("im hereee");
    // Guards.isGitInstalled();

    // String version;
    // var hasConfig = false;
    // if (argResults.arguments.isEmpty) {
    //   final configVersion = getConfigFlutterVersion();
    //   if (configVersion == null) {
    //     throw ExceptionMissingChannelVersion();
    //   }
    //   hasConfig = true;
    //   version = configVersion;
    // } else {
    //   version = argResults.arguments[0].toLowerCase();
    // }

    // final skipSetup = argResults['skip-setup'] == true;

    // final flutterVersion = await inferFlutterVersion(version);

    // await installFlutterVersion(flutterVersion, skipSetup: skipSetup);
    // if (hasConfig) {
    //   setAsProjectVersion(version);
    // }
  }
}