// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

{{#include_bloc}}

part of '{{feature_name.snakeCase()}}_bloc.dart';

@freezed
sealed class {{bloc_name.pascalCase()}}Event with _${{bloc_name.pascalCase()}}Event {
  const factory {{bloc_name.pascalCase()}}Event.someEvent() = _SomeEvent;
}

{{/include_bloc}}