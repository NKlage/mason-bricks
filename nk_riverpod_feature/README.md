# Flutter Riverpod feature

## Getting Started 🚀

```
mason make nk_riverpod_feature --featureName auth
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `featureName` | The name of the feature | new_feature | `string` |

## Requirements

- [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)

## Outputs 📦

```
lib/features
└── auth
    ├── README.md
    ├── data
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
        └── providers.dart
```