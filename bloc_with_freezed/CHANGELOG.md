# 0.2.0

Fixed the generated code so it compiles in a vgv_cli project.

- Imports now point at real packages and paths (`hydrated_bloc`,
  `freezed_annotation`, `dartz`, and the project's `core/errors/failures.dart`)
  instead of barrel files that do not exist.
- `part of` now references the bloc file by `bloc_name`; it pointed at
  `feature_name`, so any bloc not named after its feature failed to compile.
- The feature's use-case import is `snakeCase`d, so a camelCase feature name
  no longer produces a broken path.
- State is `abstract class` (single constructor) and the event union stays
  `sealed class`, as freezed 3 requires; added the
  `invalid_annotation_target` ignore the `@JsonKey` usage needs.
- The event handler is registered per variant (`on<_SomeEvent>`) instead of
  switching over the union inside a single catch-all handler.
- Enum value renamed `NONE` -> `none` to follow Dart naming.

# 0.1.0+1

- Initial release.
