class startModal {
  String? status;
  String? img;

  startModal({this.status, this.img});

  startModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['img'] = this.img;
    return data;
  }
}