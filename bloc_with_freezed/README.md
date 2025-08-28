# Bloc with Freezed Brick

This brick generates a complete Bloc implementation with Freezed for state and events management, including a status enum for tracking the bloc's current state.

## Features

- ✅ Freezed integration for immutable state and events
- ✅ Status enum for tracking bloc operations
- ✅ Optional HydratedBloc support for state persistence
- ✅ Proper error handling with Failure objects
- ✅ Template with examples and TODO comments
- ✅ Follows the project's architectural patterns

## Usage

```bash
mason make bloc_with_freezed
```

## Variables

- **bloc_name**: Name of the Bloc (e.g., UserBloc, ProductBloc) - this will be used for all generated files
- **feature_name**: Name of the feature (e.g., auth, user, product)
- **include_hydrated**: Whether to include HydratedBloc for state persistence

## Generated Files

1. `{{bloc_name.snakeCase()}}_bloc.dart` - Main bloc implementation
2. `{{bloc_name.snakeCase()}}_state.dart` - State definition with status enum
3. `{{bloc_name.snakeCase()}}_event.dart` - Event definitions

## Example Output

When you run the brick with `bloc_name: UserBloc` and `feature_name: user`, it will generate:

- `user_bloc.dart` (class: UserBloc)
- `user_state.dart` (class: UserBlocState, enum: UserBlocStatus)
- `user_event.dart` (class: UserBlocEvent)
- Uses `UserBlocUseCases` for dependency injection

## Next Steps

After generation:

1. Add your specific status values to the enum
2. Define your state properties
3. Create your events
4. Implement event handlers in the bloc
5. Run code generation: `flutter packages pub run build_runner build`

## Status Enum Pattern

The generated status enum follows this pattern:
- `NONE` - Initial state
- `GETTING_*` - Loading state
- `*_LOADED` - Success state
- `ERROR_*` - Error state
- `CREATING_*` - Creating state
- `*_CREATED` - Created state
- `UPDATING_*` - Updating state
- `*_UPDATED` - Updated state
- `DELETING_*` - Deleting state
- `*_DELETED` - Deleted state 