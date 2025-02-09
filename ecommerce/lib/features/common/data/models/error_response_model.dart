class ErrorResponseModel {
  int code;
  String status;
  String msg;

  ErrorResponseModel({
    required this.code,
    required this.status,
    required this.msg,
  });

  factory ErrorResponseModel.fromJson(Map<String, dynamic> json) {
    return ErrorResponseModel(
      code: json['code'],
      status: json['status'],
      msg: json['msg'] ?? 'Something went wrong',
    );
  }
}
