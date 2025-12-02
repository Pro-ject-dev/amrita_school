import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_attendance_model.freezed.dart';
part 'post_attendance_model.g.dart';

@freezed
abstract class AttendanceUpdateResponse with _$AttendanceUpdateResponse {
  const factory AttendanceUpdateResponse({
    required MessageData message,

    // Optional -> only present when failed
    @JsonKey(name: '_server_messages') String? serverMessages,
  }) = _AttendanceUpdateResponse;

  factory AttendanceUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendanceUpdateResponseFromJson(json);
}

@freezed
abstract class MessageData with _$MessageData {
  const factory MessageData({
    required String status,
    required String message,
    required Summary summary,
    @JsonKey(name: 'total_created') required int totalCreated,
  }) = _MessageData;

  factory MessageData.fromJson(Map<String, dynamic> json) =>
      _$MessageDataFromJson(json);
}

@freezed
abstract class Summary with _$Summary {
  const factory Summary({
    required SummaryItem present,
    required SummaryItem absent,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}

@freezed
abstract class SummaryItem with _$SummaryItem {
  const factory SummaryItem({
    required int created,
  }) = _SummaryItem;

  factory SummaryItem.fromJson(Map<String, dynamic> json) =>
      _$SummaryItemFromJson(json);
}
