# Flutter Riverpod Feature

## Getting Started 🚀

```
mason make nk_riverpod_feature --feature_name auth --local_datasource true --fake_datasource true
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `feature_name` | The name of the feature | new_feature | `string` |
| `local_datasource` | create local data source | false | `boolean` |
| `fake_datasource` | create fake data source | false | `boolean` |

## Requirements 💞

- [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)

## Outputs 📦

```
lib/features
└── auth
    ├── README.md
    ├── data
    │   ├── auth.datasource.dart
    │   ├── auth.fake.datasource.dart
    │   ├── auth.local.datasource.dart
    │   ├── auth.remote.datasource.dart
    │   ├── auth.repository.impl.dart
    │   └── auth.response.dart
    ├── domain
    │   ├── auth.entity.dart
    │   └── auth.repository.dart
    ├── presentation
    │   ├── auth.controller.dart
    │   ├── auth.page.dart
    │   └── widgets
    └── shared
        └── auth.providers.dart
```

```
test/features
└── auth
    ├── data
    │   ├── auth.fake.datasource_test.dart
    │   ├── auth.local.datasource_test.dart
    │   ├── auth.remote.datasource_test.dart
    │   └── auth.repository.impl_test.dart
    ├── domain
    └── presentation
        ├── auth.controller_test.dart
        ├── auth.page_test.dart
        └── widgets
```