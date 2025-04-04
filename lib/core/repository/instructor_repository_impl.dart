import 'package:ams/core/data_source/data_source.dart';
import 'package:ams/core/dto/instructor_dto.dart';
import 'package:ams/core/mapper/instructor_mapper.dart';
import 'package:ams/core/model/instructor.dart';
import 'package:ams/core/repository/interfaces/instructor_repository.dart';
import 'package:collection/collection.dart';

class InstructorRepositoryImpl implements InstructorRepository {
  final DataSource _dataSource;

  const InstructorRepositoryImpl(this._dataSource);

  @override
  Future<List<Instructor>> findAll() async {
    final instructors = await _dataSource.fetch();
    return instructors
        .map((e) => InstructorDto.fromJson(e))
        .map((e) => e.toModel())
        .toList();
  }

  @override
  Future<Instructor?> findOne(int id) async {
    final List<Instructor> instructors = await findAll();
    return instructors.firstWhereOrNull((e) => e.id == id);
  }

  @override
  Future<Instructor?> findByWhere(
    bool Function(Instructor predicate) predicate,
  ) async {
    final List<Instructor> instructors = await findAll();
    return instructors.firstWhereOrNull(predicate);
  }
}
