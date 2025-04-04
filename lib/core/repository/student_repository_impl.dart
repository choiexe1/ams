import 'package:ams/core/data_source/data_source.dart';
import 'package:ams/core/dto/student_dto.dart';
import 'package:ams/core/mapper/student_mapper.dart';
import 'package:ams/core/model/student.dart';
import 'package:ams/core/repository/interfaces/student_repository.dart';
import 'package:collection/collection.dart';

class StudentRepositoryImpl implements StudentRepository {
  final DataSource<Map<String, dynamic>> _dataSource;

  const StudentRepositoryImpl(this._dataSource);

  @override
  Future<List<Student>> findAll() async {
    final students = await _dataSource.fetch();
    return students
        .map((e) => StudentDto.fromJson(e))
        .map((e) => e.toModel())
        .toList();
  }

  @override
  Future<Student?> findByWhere(bool Function(Student e) predicate) async {
    final List<Student> students = await findAll();
    return students.firstWhereOrNull(predicate);
  }

  @override
  Future<Student?> findOne(int id) async {
    final List<Student> students = await findAll();
    return students.firstWhereOrNull((e) => e.id == id);
  }
}
