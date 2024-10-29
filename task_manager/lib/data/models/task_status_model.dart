class TaskStatusModel {
  String? sId;
  int? sum;

  TaskStatusModel({this.sId, this.sum});

  TaskStatusModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    sum = json['sum'];
  }
}
