import 'package:ams/core/dto/schedule_dto.dart';
import 'package:ams/core/mapper/student_mapper.dart';
import 'package:ams/core/model/schedule.dart';

extension ScheduleMapper on ScheduleDto {
  Schedule toModel() => Schedule(
    id: id,
    student: student.toModel(),
    startTime: startTime,
    endTime: endTime,
  );
}
