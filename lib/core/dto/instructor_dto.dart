import 'package:ams/core/dto/schedule_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'instructor_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class InstructorDto {
  final int id;
  final String name;
  final List<ScheduleDto> schedules;

  const InstructorDto({
    required this.id,
    required this.name,
    required this.schedules,
  });

  factory InstructorDto.fromJson(Map<String, dynamic> json) =>
      _$InstructorDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InstructorDtoToJson(this);
}
