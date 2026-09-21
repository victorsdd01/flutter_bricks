# 0.2.0

Fixed the generated code so it compiles in a vgv_cli project.

- Imports now point at real paths instead of barrel files that do not exist
  (`core/core.dart`, `shared/shared.dart`, `application/application.dart`).
  They are built from `project_name`, so they follow the project.
- Use the project's own base classes: `TStateless` / `TStateful`
  (were `BaseLessState` / `BasePageState`).
- Without a bloc, `bloc` returns `null` instead of throwing
  `UnimplementedError` at runtime.
- Dropped the invalid `const` constructor on the `State` subclass.
- Added the missing `package:flutter/material.dart` import and replaced the
  non-existent `BasePage` widget with a `Scaffold`.

# 0.1.0+1

- Initial release.
