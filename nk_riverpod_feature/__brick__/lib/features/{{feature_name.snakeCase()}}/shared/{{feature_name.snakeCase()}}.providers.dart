import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data.dart';
import '../domain.dart';
import '../presentation.dart';

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