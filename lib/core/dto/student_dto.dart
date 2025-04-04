import 'package:json_annotation/json_annotation.dart';

part 'student_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class StudentDto {
  final int id;
  final String name;

  const StudentDto({required this.id, required this.name});

  factory StudentDto.fromJson(Map<String, dynamic> json) =>
      _$StudentDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StudentDtoToJson(this);
}
