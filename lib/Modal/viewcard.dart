class viewcardModal {
  String? status;
  CardDetails? cardDetails;

  viewcardModal({this.status, this.cardDetails});

  viewcardModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    cardDetails = json['card_details'] != null
        ? new CardDetails.fromJson(json['card_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.cardDetails != null) {
      data['card_details'] = this.cardDetails!.toJson();
    }
    return data;
  }
}

class CardDetails {
  String? cardId;
  String? uid;
  String? cardNumber;
  String? cardName;
  String? cardExpM;
  String? cardExpY;
  String? cardCvv;
  String? createdDate;
  String? showCardNumber;

  CardDetails(
      {this.cardId,
        this.uid,
        this.cardNumber,
        this.cardName,
        this.cardExpM,
        this.cardExpY,
        this.cardCvv,
        this.createdDate,
        this.showCardNumber});

  CardDetails.fromJson(Map<String, dynamic> json) {
    cardId = json['card_id'];
    uid = json['uid'];
    cardNumber = json['card_number'];
    cardName = json['card_name'];
    cardExpM = json['card_exp_m'];
    cardExpY = json['card_exp_y'];
    cardCvv = json['card_cvv'];
    createdDate = json['created_date'];
    showCardNumber = json['show_card_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['card_id'] = this.cardId;
    data['uid'] = this.uid;
    data['card_number'] = this.cardNumber;
    data['card_name'] = this.cardName;
    data['card_exp_m'] = this.cardExpM;
    data['card_exp_y'] = this.cardExpY;
    data['card_cvv'] = this.cardCvv;
    data['created_date'] = this.createdDate;
    data['show_card_number'] = this.showCardNumber;
    return data;
  }
}
