# 0.2.0

Fixed the generated code so it compiles in a vgv_cli project.

- Imports now point at real paths instead of the `core/core.dart` /
  `shared/shared.dart` / `application/application.dart` barrels, which do not
  exist: `dartz` for `Either`, the project's `core/errors/failures.dart` for
  `Failure`, and relative paths within the feature.
- `ServerFailure` / `CacheFailure` replace `ExampleFailure`, which is not a
  class the project defines.
- Pages use `TStateless` / `TStateful` (were `BaseLessState` /
  `BasePageState`), return `null` for `bloc` when there is none instead of
  throwing, and drop the invalid `const` constructor on the `State` subclass.
- `part of` in the bloc's state/event references the bloc file by `bloc_name`
  rather than `feature_name`.
- State is `abstract class` and the event union `sealed class` (freezed 3).
- Enum value renamed `NONE` -> `none` to follow Dart naming.

# 0.1.0+1

- Initial release.
