import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

Future<void> run(HookContext context) async {
  final riverpodPackageName = 'flutter_riverpod';
  
  try {
    final pubspec = await File('./pubspec.yaml').readAsString();
    final yaml = loadYaml(pubspec);
  
    if(true == yaml['dependencies']?.containsKey(riverpodPackageName)) {
      return;
    } 
  } catch (e) {
    context.logger.err('$e');
  }

  final progress = context.logger.progress('Installing $riverpodPackageName Package');
  await Process.run('flutter', ['pub', 'add', riverpodPackageName]);
  progress.complete();
}
