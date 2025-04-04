import 'data_source.dart';

class FakeInstructorDataSource implements DataSource<Map<String, dynamic>> {
  @override
  Future<List<Map<String, dynamic>>> fetch() async {
    return [
      {
        'id': 1,
        'name': '최준성',
        'schedules': [
          {
            'id': 1,
            'student': {'id': 1, 'name': '김민수'},
            'startTime': '2025-04-01T09:00:00',
            'endTime': '2025-04-01T10:30:00',
          },
          {
            'id': 2,
            'student': {'id': 2, 'name': '이지현'},
            'startTime': '2025-04-02T13:00:00',
            'endTime': '2025-04-02T14:30:00',
          },
          {
            'id': 3,
            'student': {'id': 3, 'name': '박준영'},
            'startTime': '2025-04-04T15:00:00',
            'endTime': '2025-04-04T16:00:00',
          },
        ],
      },
      {
        'id': 2,
        'name': '강태민',
        'schedules': [
          {
            'id': 4,
            'student': {'id': 4, 'name': '정은서'},
            'startTime': '2025-04-04T17:00:00',
            'endTime': '2025-04-04T18:00:00',
          },
        ],
      },
    ];
  }
}
