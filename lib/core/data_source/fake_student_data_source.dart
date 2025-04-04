import 'data_source.dart';

class FakeStudentDataSource implements DataSource<Map<String, dynamic>> {
  @override
  Future<List<Map<String, dynamic>>> fetch() async {
    return [
      {'id': 1, 'name': '김민수'},
      {'id': 2, 'name': '이지현'},
      {'id': 3, 'name': '박준영'},
      {'id': 4, 'name': '정은서'},
      {'id': 5, 'name': '최동현'},
      {'id': 6, 'name': '강지원'},
      {'id': 7, 'name': '윤서연'},
      {'id': 8, 'name': '임지훈'},
      {'id': 9, 'name': '한미나'},
      {'id': 10, 'name': '오승현'},
      {'id': 11, 'name': '서윤아'},
      {'id': 12, 'name': '노현우'},
      {'id': 13, 'name': '송지은'},
      {'id': 14, 'name': '황민준'},
      {'id': 15, 'name': '조수빈'},
      {'id': 16, 'name': '유준호'},
      {'id': 17, 'name': '신하은'},
      {'id': 18, 'name': '권도윤'},
      {'id': 19, 'name': '백서영'},
      {'id': 20, 'name': '홍재현'},
      {'id': 21, 'name': '장민지'},
      {'id': 22, 'name': '문수현'},
      {'id': 23, 'name': '남도현'},
      {'id': 24, 'name': '고은지'},
      {'id': 25, 'name': '구민재'},
    ];
  }
}
