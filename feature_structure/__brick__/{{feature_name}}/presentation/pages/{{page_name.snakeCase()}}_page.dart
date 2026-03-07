{{#add_page}}
import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/shared/shared.dart';
import 'package:{{project_name}}/application/application.dart';
{{#add_bloc_to_page}}import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/presentation/blocs/{{bloc_name.snakeCase()}}_bloc/{{bloc_name.snakeCase()}}_bloc.dart';{{/add_bloc_to_page}}

{{#choose_page_type}}
class {{ page_name.pascalCase()}}Page extends BaseLessState<{{#add_bloc_to_page}}{{ bloc_name.pascalCase()}}Bloc{{/add_bloc_to_page}}{{^add_bloc_to_page}}Null{{/add_bloc_to_page}}> {
  const {{ page_name.pascalCase() }}Page({super.key});

  @override
  {{#add_bloc_to_page}}{{ bloc_name.pascalCase()}}Bloc get bloc => Injector.get<{{ bloc_name.pascalCase()}}Bloc>();
  {{/add_bloc_to_page}}{{^add_bloc_to_page}}Null get bloc => throw UnimplementedError();{{/add_bloc_to_page}}

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
class {{ page_name.pascalCase()}}Page extends StatefulWidget {
  const {{ page_name.pascalCase() }}Page({super.key});

  @override
  State<{{ page_name.pascalCase()}}Page> createState() => _{{ page_name.pascalCase() }}PageState();
}

class _{{ page_name.pascalCase() }}PageState extends BasePageState<{{ page_name.pascalCase()}}Page, {{#add_bloc_to_page}}{{ bloc_name.pascalCase()}}Bloc{{/add_bloc_to_page}}{{^add_bloc_to_page}}Null{{/add_bloc_to_page}}> {
  const _{{ page_name.pascalCase() }}PageState();

  @override
  {{#add_bloc_to_page}}{{ bloc_name.pascalCase()}}Bloc get bloc => Injector.get<{{ bloc_name.pascalCase()}}Bloc>();
  {{/add_bloc_to_page}}{{^add_bloc_to_page}}Null get bloc => throw UnimplementedError();{{/add_bloc_to_page}}

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
{{/add_page}}
