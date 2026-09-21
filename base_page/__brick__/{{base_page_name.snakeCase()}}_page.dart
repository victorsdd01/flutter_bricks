{{#base_page_type}}
import 'package:flutter/material.dart';
import 'package:{{project_name}}/application/generated/l10n.dart';
import 'package:{{project_name}}/core/states/tstateless.dart';
{{#include_bloc}}import 'package:{{project_name}}/application/injector.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/presentation/blocs/{{bloc_name.snakeCase()}}_bloc/{{bloc_name.snakeCase()}}_bloc.dart';
{{/include_bloc}}
class {{base_page_name.pascalCase()}}Page extends TStateless<{{#include_bloc}}{{bloc_name.pascalCase()}}Bloc{{/include_bloc}}{{^include_bloc}}Null{{/include_bloc}}> {
  const {{base_page_name.pascalCase()}}Page({super.key});

  @override
  {{#include_bloc}}{{bloc_name.pascalCase()}}Bloc get bloc => Injector.get<{{bloc_name.pascalCase()}}Bloc>();{{/include_bloc}}{{^include_bloc}}Null get bloc => null;{{/include_bloc}}

  @override
  Widget bodyWidget(
    BuildContext context,
    ThemeData theme,
    S translation,
  ) => Scaffold(
    appBar: AppBar(
      title: const Text('{{base_page_name.pascalCase()}}'),
      backgroundColor: theme.colorScheme.inversePrimary,
    ),
    body: Center(
      child: Text(
        '{{base_page_name.pascalCase()}}',
        style: theme.textTheme.titleLarge,
      ),
    ),
  );
}
{{/base_page_type}}{{^base_page_type}}
import 'package:flutter/material.dart';
import 'package:{{project_name}}/application/generated/l10n.dart';
import 'package:{{project_name}}/core/states/tstatefull.dart';
{{#include_bloc}}import 'package:{{project_name}}/application/injector.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/presentation/blocs/{{bloc_name.snakeCase()}}_bloc/{{bloc_name.snakeCase()}}_bloc.dart';
{{/include_bloc}}
class {{base_page_name.pascalCase()}}Page extends StatefulWidget {
  const {{base_page_name.pascalCase()}}Page({super.key});

  @override
  State<{{base_page_name.pascalCase()}}Page> createState() => _{{base_page_name.pascalCase()}}PageState();
}

class _{{base_page_name.pascalCase()}}PageState
    extends TStateful<{{base_page_name.pascalCase()}}Page, {{#include_bloc}}{{bloc_name.pascalCase()}}Bloc{{/include_bloc}}{{^include_bloc}}Null{{/include_bloc}}> {
  @override
  {{#include_bloc}}{{bloc_name.pascalCase()}}Bloc get bloc => Injector.get<{{bloc_name.pascalCase()}}Bloc>();{{/include_bloc}}{{^include_bloc}}Null get bloc => null;{{/include_bloc}}

  @override
  Widget bodyWidget(
    BuildContext context,
    ThemeData theme,
    S translation,
  ) => Scaffold(
    appBar: AppBar(
      title: const Text('{{base_page_name.pascalCase()}}'),
      backgroundColor: theme.colorScheme.inversePrimary,
    ),
    body: Center(
      child: Text(
        '{{base_page_name.pascalCase()}}',
        style: theme.textTheme.titleLarge,
      ),
    ),
  );
}
{{/base_page_type}}
