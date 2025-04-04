class ScheduleManager {
  static final ScheduleManager _instance = ScheduleManager._internal();

  factory ScheduleManager() {
    return _instance;
  }

  ScheduleManager._internal();
}
