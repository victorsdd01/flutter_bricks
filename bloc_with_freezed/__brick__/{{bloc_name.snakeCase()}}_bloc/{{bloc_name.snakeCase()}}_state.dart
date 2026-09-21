// ignore_for_file: invalid_annotation_target

part of '{{bloc_name.snakeCase()}}_bloc.dart';

enum {{bloc_name.pascalCase()}}Status { none }

@freezed
abstract class {{bloc_name.pascalCase()}}State with _${{bloc_name.pascalCase()}}State {
  const factory {{bloc_name.pascalCase()}}State({
    @Default({{bloc_name.pascalCase()}}Status.none) {{bloc_name.pascalCase()}}Status status,
    @JsonKey(includeFromJson: false, includeToJson: false) Failure? failure,
  }) = _{{bloc_name.pascalCase()}}State;

  factory {{bloc_name.pascalCase()}}State.fromJson(Map<String, dynamic> json) =>
      _${{bloc_name.pascalCase()}}StateFromJson(json);
}
