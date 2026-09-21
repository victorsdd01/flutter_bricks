{{#add_page}}{{#choose_page_type}}
import 'package:flutter/material.dart';
import 'package:{{project_name}}/application/generated/l10n.dart';
import 'package:{{project_name}}/core/states/tstateless.dart';
{{#add_bloc_to_page}}import 'package:{{project_name}}/application/injector.dart';
import '../blocs/{{feature_name.snakeCase()}}_bloc/{{bloc_name.snakeCase()}}_bloc.dart';
{{/add_bloc_to_page}}
class {{page_name.pascalCase()}}Page extends TStateless<{{#add_bloc_to_page}}{{bloc_name.pascalCase()}}Bloc{{/add_bloc_to_page}}{{^add_bloc_to_page}}Null{{/add_bloc_to_page}}> {
  const {{page_name.pascalCase()}}Page({super.key});

  @override
  {{#add_bloc_to_page}}{{bloc_name.pascalCase()}}Bloc get bloc => Injector.get<{{bloc_name.pascalCase()}}Bloc>();{{/add_bloc_to_page}}{{^add_bloc_to_page}}Null get bloc => null;{{/add_bloc_to_page}}

  @override
  Widget bodyWidget(
    BuildContext context,
    ThemeData theme,
    S translation,
  ) => Scaffold(
    appBar: AppBar(
      title: const Text('{{page_name.pascalCase()}}'),
      backgroundColor: theme.colorScheme.inversePrimary,
    ),
    body: Center(
      child: Text(
        '{{page_name.pascalCase()}}',
        style: theme.textTheme.titleLarge,
      ),
    ),
  );
}
{{/choose_page_type}}{{^choose_page_type}}
import 'package:flutter/material.dart';
import 'package:{{project_name}}/application/generated/l10n.dart';
import 'package:{{project_name}}/core/states/tstatefull.dart';
{{#add_bloc_to_page}}import 'package:{{project_name}}/application/injector.dart';
import '../blocs/{{feature_name.snakeCase()}}_bloc/{{bloc_name.snakeCase()}}_bloc.dart';
{{/add_bloc_to_page}}
class {{page_name.pascalCase()}}Page extends StatefulWidget {
  const {{page_name.pascalCase()}}Page({super.key});

  @override
  State<{{page_name.pascalCase()}}Page> createState() => _{{page_name.pascalCase()}}PageState();
}

class _{{page_name.pascalCase()}}PageState
    extends TStateful<{{page_name.pascalCase()}}Page, {{#add_bloc_to_page}}{{bloc_name.pascalCase()}}Bloc{{/add_bloc_to_page}}{{^add_bloc_to_page}}Null{{/add_bloc_to_page}}> {
  @override
  {{#add_bloc_to_page}}{{bloc_name.pascalCase()}}Bloc get bloc => Injector.get<{{bloc_name.pascalCase()}}Bloc>();{{/add_bloc_to_page}}{{^add_bloc_to_page}}Null get bloc => null;{{/add_bloc_to_page}}

  @override
  Widget bodyWidget(
    BuildContext context,
    ThemeData theme,
    S translation,
  ) => Scaffold(
    appBar: AppBar(
      title: const Text('{{page_name.pascalCase()}}'),
      backgroundColor: theme.colorScheme.inversePrimary,
    ),
    body: Center(
      child: Text(
        '{{page_name.pascalCase()}}',
        style: theme.textTheme.titleLarge,
      ),
    ),
  );
}
{{/choose_page_type}}{{/add_page}}
