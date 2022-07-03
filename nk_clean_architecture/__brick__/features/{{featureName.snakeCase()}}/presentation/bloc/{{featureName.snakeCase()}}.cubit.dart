import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '{{featureName.snakeCase()}}.state.dart';

class {{featureName.pascalCase()}}Cubit extends Cubit<{{featureName.pascalCase()}}State> {
  {{featureName.pascalCase()}}Cubit() : super({{featureName.pascalCase()}}Initial());
}