import 'package:ams/core/dto/instructor_dto.dart';
import 'package:ams/core/model/instructor.dart';
import 'package:ams/core/repository/interfaces/repository.dart';

abstract interface class InstructorRepository
    implements Repository<Instructor, int, InstructorDto> {}
