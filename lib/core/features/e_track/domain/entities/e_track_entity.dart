class ETrackEntity {
  final List<AttendanceItemEntity> attendanceList;
  final List<LeaveItemEntity> leaveList;
  final List<HolidayItemEntity> holidayList;

  const ETrackEntity({
    required this.attendanceList,
    required this.leaveList,
    required this.holidayList,
  });
}

class AttendanceItemEntity {
  final String attendanceDate;
  final String status;

  const AttendanceItemEntity({
    required this.attendanceDate,
    required this.status,
  });
}

class LeaveItemEntity {
  final String date;
  final String leaveType;
  final String dayType;

  const LeaveItemEntity({
    required this.date,
    required this.leaveType,
    required this.dayType,
  });
}

class HolidayItemEntity {
  final String holidayDate;
  final String description;

  const HolidayItemEntity({
    required this.holidayDate,
    required this.description,
  });
}
