class UiResponseModel {
  final bool? isSuccess;
  final int? presentCount;
  final int? absentCount;
  final int? totalCount;
  final String message;

  UiResponseModel({required this.isSuccess,  this.presentCount,  this.absentCount,  this.totalCount, required this.message});
}