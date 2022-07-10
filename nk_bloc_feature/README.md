# Flutter BloC Feature

## Getting Started 🚀

```
mason make nk_bloc_feature --featureName auth --useCubit false
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `featureName` | The name of the feature | new_feature | `string` |
| `useCubit` | use Cubit or BloC | true | `boolean` |

## Requirements

- [flutter_bloc](https://pub.dev/packages/flutter_bloc)

## Outputs 📦

```
lib/features
└── auth
    ├── README.md
    ├── data
    │   ├── data_sources
    │   │   ├── auth.datasource.dart
    │   │   └── auth_local.datasource.dart
    │   ├── models
    │   │   └── auth.model.dart
    │   └── repositories
    │       └── auth.repository.impl.dart
    ├── domain
    │   ├── entities
    │   │   └── auth.entity.dart
    │   ├── exceptions
    │   ├── repositories
    │   │   └── auth.repository.dart
    │   └── use_cases
    │       ├── auth.params.dart
    │       └── auth.use_case.dart
    └── presentation
        ├── bloc
        │   ├── auth.bloc.dart
        │   ├── auth.event.dart
        │   └── auth.state.dart
        ├── pages
        │   └── auth.page.dart
        └── widgets
```
