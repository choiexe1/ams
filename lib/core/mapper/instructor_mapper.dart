import 'package:ams/core/dto/instructor_dto.dart';
import 'package:ams/core/mapper/schedule_mapper.dart';
import 'package:ams/core/model/instructor.dart';

extension InstructorMapper on InstructorDto {
  Instructor toModel() => Instructor(
    id: id,
    name: name,
    schedules: schedules.map((e) => e.toModel()).toList(),
  );
}
