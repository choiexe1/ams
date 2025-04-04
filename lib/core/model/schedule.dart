import 'package:ams/core/model/student.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';

@freezed
abstract class Schedule with _$Schedule {
  const factory Schedule({
    required int id,
    required Student student,
    required DateTime startTime,
    required DateTime endTime,
  }) = _Schedule;
}
