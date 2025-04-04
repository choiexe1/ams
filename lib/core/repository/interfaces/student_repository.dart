import 'package:ams/core/dto/student_dto.dart';
import 'package:ams/core/model/student.dart';
import 'package:ams/core/repository/interfaces/repository.dart';

abstract interface class StudentRepository
    implements Repository<Student, int, StudentDto> {}
