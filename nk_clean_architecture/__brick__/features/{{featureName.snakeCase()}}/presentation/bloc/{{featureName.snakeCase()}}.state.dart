{{#useCubit}}part of '{{featureName.snakeCase()}}.cubit.dart';{{/useCubit}}{{^useCubit}}part of '{{featureName.snakeCase()}}.bloc.dart';{{/useCubit}}

@immutable
abstract class {{featureName.pascalCase()}}State {}

class {{featureName.pascalCase()}}Initial extends {{featureName.pascalCase()}}State {}
