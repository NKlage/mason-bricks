export 'data/{{feature_name.snakeCase()}}.datasource.dart';
export 'data/{{feature_name.snakeCase()}}.remote.datasource.dart';
export 'data/{{feature_name.snakeCase()}}.repository.impl.dart';
export 'data/{{feature_name.snakeCase()}}.response.dart';
{{#local_datasource}}export 'data/{{feature_name.snakeCase()}}.local.datasource.dart';{{/local_datasource}}
{{#fake_datasource}}export 'data/{{feature_name.snakeCase()}}.fake.datasource.dart';{{/fake_datasource}}
