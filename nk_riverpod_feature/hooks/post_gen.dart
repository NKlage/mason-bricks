import 'package:mason/mason.dart';
import 'dart:io';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing Packages');

  await Process.run('flutter', ['pub', 'add', 'flutter_riverpod']);

  progress.complete();
}
