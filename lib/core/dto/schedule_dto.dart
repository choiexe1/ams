import 'package:ams/core/dto/student_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schedule_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ScheduleDto {
  final int id;
  final StudentDto student;
  final DateTime startTime;
  final DateTime endTime;

  const ScheduleDto({
    required this.id,
    required this.student,
    required this.startTime,
    required this.endTime,
  });

  factory ScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleDtoToJson(this);
}
