import 'package:ams/core/dto/student_dto.dart';
import 'package:ams/core/model/student.dart';

extension StudentMapper on StudentDto {
  Student toModel() => Student(id: id, name: name);
}
