import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/{{feature_name.snakeCase()}}.datasource.dart';
{{#fake_datasource}}import '../data/{{feature_name.snakeCase()}}.fake.datasource.dart';{{/fake_datasource}}
{{#local_datasource}}import '../data/{{feature_name.snakeCase()}}.local.datasource.dart';{{/local_datasource}}
import '../data/{{feature_name.snakeCase()}}.remote.datasource.dart';
import '../data/{{feature_name.snakeCase()}}.repository.impl.dart';
import '../domain/{{feature_name.snakeCase()}}.repository.dart';
import '../presentation/{{feature_name.snakeCase()}}.controller.dart';


class {{feature_name.pascalCase()}}Providers {
  
  // Data
  {{#fake_datasource}}
  static final Provider<{{feature_name.pascalCase()}}Datasource> {{feature_name.lowerCase()}}FakeDatasource =
      Provider((ref) => {{feature_name.pascalCase()}}FakeDatasource());
  {{/fake_datasource}}
  {{#local_datasource}}
  static final Provider<{{feature_name.pascalCase()}}Datasource> {{feature_name.lowerCase()}}LocalDatasource =
      Provider((ref) => {{feature_name.pascalCase()}}LocalDatasource());
  {{/local_datasource}}
  static final Provider<{{feature_name.pascalCase()}}Datasource> {{feature_name.lowerCase()}}RemoteDatasource =
      Provider((ref) => {{feature_name.pascalCase()}}RemoteDatasource());

  // Domain
  static final Provider<{{feature_name.pascalCase()}}Repository> {{feature_name.lowerCase()}}Repository =
      Provider((ref) => {{feature_name.pascalCase()}}RepositoryImpl());

  // Presentation
  static final Provider<{{feature_name.pascalCase()}}Controller> {{feature_name.lowerCase()}}Controller =
      Provider((ref) => {{feature_name.pascalCase()}}Controller());

}