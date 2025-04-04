import 'package:ams/core/data_source/data_source.dart';
import 'package:ams/core/data_source/fake_instructor_data_source.dart';
import 'package:ams/core/repository/instructor_repository_impl.dart';
import 'package:ams/core/repository/interfaces/instructor_repository.dart';
import 'package:test/test.dart';

void main() {
  late DataSource dataSource;
  late InstructorRepository repository = InstructorRepositoryImpl(dataSource);

  setUp(() {
    dataSource = FakeInstructorDataSource();
    repository = InstructorRepositoryImpl(dataSource);
  });
}
