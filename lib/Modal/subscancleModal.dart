class SubscancleModal {
  String? status;
  String? cancelSubs;

  SubscancleModal({this.status, this.cancelSubs});

  SubscancleModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    cancelSubs = json['cancel_subs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['cancel_subs'] = this.cancelSubs;
    return data;
  }
}