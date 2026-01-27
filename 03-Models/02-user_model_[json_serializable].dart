import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;
  final String email;

  User({
    required this.id,
    required this.name,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

//>>>>>>>>>>>>>>>>>>>>>  pubspec.yaml
// dependencies:
//   json_annotation: ^4.9.0

// dev_dependencies:
//   build_runner: ^2.4.9
//   json_serializable: ^6.8.0

