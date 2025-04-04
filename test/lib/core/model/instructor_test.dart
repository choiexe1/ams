import 'package:ams/core/data_source/data_source.dart';
import 'package:ams/core/data_source/fake_instructor_data_source.dart';
import 'package:ams/core/model/instructor.dart';
import 'package:ams/core/model/schedule.dart';
import 'package:ams/core/model/student.dart';
import 'package:ams/core/repository/instructor_repository_impl.dart';
import 'package:ams/core/repository/interfaces/instructor_repository.dart';
import 'package:test/test.dart';

void main() {
  late DataSource dataSource;
  late InstructorRepository repository;
  late Instructor? instructor;

  setUp(() async {
    dataSource = FakeInstructorDataSource();
    repository = InstructorRepositoryImpl(dataSource);
    instructor = await repository.findOne(1);
  });

  test('강사의 스케쥴을 취소할 수 있어야한다.', () {
    // GIVE
    final Schedule schedule = instructor!.schedules[0];

    // WHEN
    instructor = instructor!.cancel(schedule);

    // THEN
    expect(instructor!.schedules.length, 2);
  });

  test('강사 스케쥴을 예약할 수 있어야한다.', () {
    // Given
    const int expectLength = 4;
    const int expectId = 10000;
    final Schedule schedule = Schedule(
      id: expectId,
      student: Student(id: 100, name: '테스터'),
      startTime: DateTime.parse('2025-04-04').add(Duration(hours: 14)),
      endTime: DateTime.parse('2025-04-04').add(Duration(hours: 15)),
    );

    // When
    instructor = instructor!.book(schedule);

    // Then
    expect(instructor!.schedules.length, expectLength);
    expect(instructor!.schedules.last.id, expectId);
  });
}
