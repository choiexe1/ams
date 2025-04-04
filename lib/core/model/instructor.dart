import 'package:ams/core/model/schedule.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instructor.freezed.dart';

@freezed
abstract class Instructor with _$Instructor {
  const Instructor._();

  const factory Instructor({
    required int id,
    required String name,
    required List<Schedule> schedules,
  }) = _Instructor;

  Instructor book(Schedule schedule) {
    return copyWith(schedules: [...schedules, schedule]);
  }

  Instructor cancel(Schedule schedule) {
    return copyWith(schedules: schedules.where((s) => s != schedule).toList());
  }
}
