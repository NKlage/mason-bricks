import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

Future<void> run(HookContext context) async {
  final pubspec = await File('./pubspec.yaml').readAsString();
  print(pubspec);
  final yaml = loadYaml(pubspec);

  if (null == yaml['dependencies']['flutter_riverpod']) {
    return;
  }

  final progress = context.logger.progress('Installing Packages');

  await Process.run('flutter', ['pub', 'add', 'flutter_riverpod']);

  progress.complete();
}
