# flutter_bricks

[Mason](https://github.com/felangel/mason) bricks for
[vgv_cli](https://github.com/victorsdd01/vgv_cli) projects — they generate code
in the same conventions the CLI scaffolds: Clean Architecture, BLoC + freezed,
`TStateless` / `TStateful`, `Either<Failure, T>` with dartz, and `get_it`.

## Bricks

| Brick | Generates | Use it when |
|---|---|---|
| [`feature_structure`](feature_structure) | A whole feature: domain + data + presentation | Starting a new feature |
| [`bloc_with_freezed`](bloc_with_freezed) | A `HydratedBloc` with freezed state/events | Adding another bloc to an existing feature |
| [`base_page`](base_page) | One page, `TStateless` or `TStateful` | Adding another page to an existing feature |

Each brick's README documents its variables and what to do after generating.

## Usage

The quickest path is the vgv CLI, which lists the bricks in this repo and
renders the one you pick:

```sh
vgv gen brick --url https://github.com/victorsdd01/flutter_bricks
```

Set it once in your project's `vgv.yaml` and drop the flag:

```yaml
bricks:
  url: https://github.com/victorsdd01/flutter_bricks
  ref: main
```

Or use mason directly:

```sh
mason add -g feature_structure \
  --git-url https://github.com/victorsdd01/flutter_bricks \
  --git-path feature_structure
mason make feature_structure -o lib/features
```

## Requirements

The generated code expects a project created by vgv_cli: `TStateless` /
`TStateful` in `core/states/`, `Injector` in `application/injector.dart`, `S`
in `application/generated/l10n.dart`, `Failure` (with `ServerFailure` /
`CacheFailure`) in `core/errors/failures.dart`, and `dartz`, `hydrated_bloc`
and `freezed_annotation` as dependencies.

After generating anything with freezed, run:

```sh
dart run build_runner build -d
```

## Developing these bricks

```sh
mason get                      # resolve the local bricks in mason.yaml
mason make <brick> -o /tmp/out # render one to inspect it
```

Bump the brick's `version` in its `brick.yaml` and add a `CHANGELOG.md` entry
with every change.
