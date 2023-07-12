class RollDiceModal {
  String? status;
  int? diceNumber;

  RollDiceModal({this.status, this.diceNumber});

  RollDiceModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    diceNumber = json['dice_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['dice_number'] = this.diceNumber;
    return data;
  }
}
