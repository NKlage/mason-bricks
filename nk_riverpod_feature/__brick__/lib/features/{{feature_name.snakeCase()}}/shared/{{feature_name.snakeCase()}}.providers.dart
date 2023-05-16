import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data.dart';
import '../domain.dart';
import '../presentation.dart';

/// {{feature_name.pascalCase()}} Feature Providers
class {{feature_name.pascalCase()}}Providers {
  
  // Data
  {{#fake_datasource}}
  /// Fake Datasource
  static final Provider<{{feature_name.pascalCase()}}Datasource> {{feature_name.camelCase()}}FakeDatasource =
      Provider((ref) => {{feature_name.pascalCase()}}FakeDatasource());
  {{/fake_datasource}}
  {{#local_datasource}}
  /// Local Datasource
  static final Provider<{{feature_name.pascalCase()}}Datasource> {{feature_name.camelCase()}}LocalDatasource =
      Provider((ref) => {{feature_name.pascalCase()}}LocalDatasource());
  {{/local_datasource}}
  /// Remote Datasource
  static final Provider<{{feature_name.pascalCase()}}Datasource> {{feature_name.camelCase()}}RemoteDatasource =
      Provider((ref) => {{feature_name.pascalCase()}}RemoteDatasource());

  // Domain
  /// Repository
  static final Provider<{{feature_name.pascalCase()}}Repository> {{feature_name.camelCase()}}Repository =
      Provider((ref) => {{feature_name.pascalCase()}}RepositoryImpl());

  // Presentation
  /// Controller
  static final Provider<{{feature_name.pascalCase()}}Controller> {{feature_name.camelCase()}}Controller =
      Provider((ref) => {{feature_name.pascalCase()}}Controller());

}
