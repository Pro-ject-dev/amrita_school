// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceUpdateResponse _$AttendanceUpdateResponseFromJson(
  Map<String, dynamic> json,
) => _AttendanceUpdateResponse(
  message: MessageData.fromJson(json['message'] as Map<String, dynamic>),
  serverMessages: json['_server_messages'] as String?,
);

Map<String, dynamic> _$AttendanceUpdateResponseToJson(
  _AttendanceUpdateResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  '_server_messages': instance.serverMessages,
};

_MessageData _$MessageDataFromJson(Map<String, dynamic> json) => _MessageData(
  status: json['status'] as String,
  message: json['message'] as String,
  summary: Summary.fromJson(json['summary'] as Map<String, dynamic>),
  totalCreated: (json['total_created'] as num).toInt(),
);

Map<String, dynamic> _$MessageDataToJson(_MessageData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'summary': instance.summary,
      'total_created': instance.totalCreated,
    };

_Summary _$SummaryFromJson(Map<String, dynamic> json) => _Summary(
  present: SummaryItem.fromJson(json['present'] as Map<String, dynamic>),
  absent: SummaryItem.fromJson(json['absent'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SummaryToJson(_Summary instance) => <String, dynamic>{
  'present': instance.present,
  'absent': instance.absent,
};

_SummaryItem _$SummaryItemFromJson(Map<String, dynamic> json) =>
    _SummaryItem(created: (json['created'] as num).toInt());

Map<String, dynamic> _$SummaryItemToJson(_SummaryItem instance) =>
    <String, dynamic>{'created': instance.created};
