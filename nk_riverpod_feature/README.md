# Flutter Riverpod Feature

## Getting Started 🚀

```
mason make nk_riverpod_feature --feature_name auth
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `feature_name` | The name of the feature | new_feature | `string` |

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