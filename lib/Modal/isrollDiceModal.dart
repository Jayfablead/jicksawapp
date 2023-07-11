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
  String? id;
  String? gameId;
  String? player1;
  String? player2;
  String? diceResult;
  String? isRollDice;
  String? createdAt;

  Data(
      {this.id,
        this.gameId,
        this.player1,
        this.player2,
        this.diceResult,
        this.isRollDice,
        this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gameId = json['game_id'];
    player1 = json['player_1'];
    player2 = json['player_2'];
    diceResult = json['dice_result'];
    isRollDice = json['is_roll_dice'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['game_id'] = this.gameId;
    data['player_1'] = this.player1;
    data['player_2'] = this.player2;
    data['dice_result'] = this.diceResult;
    data['is_roll_dice'] = this.isRollDice;
    data['created_at'] = this.createdAt;
    return data;
  }
}
