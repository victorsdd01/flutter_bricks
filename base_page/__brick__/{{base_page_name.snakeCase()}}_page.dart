import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/shared/shared.dart';
import 'package:{{project_name}}/application/application.dart';
{{#include_bloc}}import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/presentation/blocs/{{bloc_name.snakeCase()}}_bloc/{{bloc_name.snakeCase()}}_bloc.dart';{{/include_bloc}}

{{#choose_page_type}}
class {{ base_page_name.pascalCase() }}Page extends BaseLessState<{{#include_bloc}}{{ bloc_name.pascalCase()}}Bloc{{/include_bloc}}{{^include_bloc}}Null{{/include_bloc}}> {
  const {{ base_page_name.pascalCase() }}Page({super.key});

  @override
  {{#include_bloc}}{{ bloc_name.pascalCase()}}Bloc get bloc => Injector.get<{{ bloc_name.pascalCase()}}Bloc>();
  {{/include_bloc}}{{^include_bloc}}Null get bloc => throw UnimplementedError();{{/include_bloc}}

  @override
  Widget bodyWidget(BuildContext context, ThemeData theme, S translation) => BasePage(
    body: Center(
      child: Text(
        'Hello',
        style: theme.textTheme.titleLarge,
      ),
    ),
  );
}
{{/choose_page_type}}

{{^choose_page_type}}
class {{ base_page_name.pascalCase() }}Page extends StatefulWidget {
  const {{ base_page_name.pascalCase() }}Page({super.key});

  @override
  State<{{ base_page_name.pascalCase()}}Page> createState() => _{{base_page_name.pascalCase()}}PageState();
}

class _{{base_page_name.pascalCase()}}PageState extends BasePageState<{{ base_page_name.pascalCase() }}Page, {{#include_bloc}}{{ bloc_name.pascalCase()}}Bloc{{/include_bloc}}{{^include_bloc}}Null{{/include_bloc}}> {
  const _{{ base_page_name.pascalCase()}}PageState();

  @override
  {{#include_bloc}}{{ bloc_name.pascalCase()}}Bloc get bloc => Injector.get<{{ bloc_name.pascalCase()}}Bloc>();
  {{/include_bloc}}{{^include_bloc}}Null get bloc => throw UnimplementedError();{{/include_bloc}}

  @override
  Widget bodyWidget(BuildContext context, ThemeData theme, S translation) => BasePage(
    body: Center(
      child: Text(
        'Hello',
        style: theme.textTheme.titleLarge,
      ),
    ),
  );
}
{{/choose_page_type}}