class isrollDiceModal {
  String? status;
  Data? data;

  isrollDiceModal({this.status, this.data});

  isrollDiceModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? diceResult;

  Data({this.diceResult});

  Data.fromJson(Map<String, dynamic> json) {
    diceResult = json['dice_result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dice_result'] = this.diceResult;
    return data;
  }
}
