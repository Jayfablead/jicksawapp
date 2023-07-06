class GameDetailsModal {
  String? status;
  GameDetails? gameDetails;

  GameDetailsModal({this.status, this.gameDetails});

  GameDetailsModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    gameDetails = json['game_details'] != null
        ? new GameDetails.fromJson(json['game_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.gameDetails != null) {
      data['game_details'] = this.gameDetails!.toJson();
    }
    return data;
  }
}

class GameDetails {
  Player1? player1;
  Player1? player2;
  String? gameId;
  String? currentTurn;

  GameDetails({this.player1, this.player2, this.gameId, this.currentTurn});

  GameDetails.fromJson(Map<String, dynamic> json) {
    player1 = json['player_1'] != null
        ? new Player1.fromJson(json['player_1'])
        : null;
    player2 = json['player_2'] != null
        ? new Player1.fromJson(json['player_2'])
        : null;
    gameId = json['game_id'];
    currentTurn = json['current_turn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.player1 != null) {
      data['player_1'] = this.player1!.toJson();
    }
    if (this.player2 != null) {
      data['player_2'] = this.player2!.toJson();
    }
    data['game_id'] = this.gameId;
    data['current_turn'] = this.currentTurn;
    return data;
  }
}

class Player1 {
  String? uid;
  String? name;
  String? gamePoints;
  String? profilePic;
  String? winingPiece;

  Player1(
      {this.uid,
        this.name,
        this.gamePoints,
        this.profilePic,
        this.winingPiece});

  Player1.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    gamePoints = json['game_points'];
    profilePic = json['profile_pic'];
    winingPiece = json['wining-piece'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['game_points'] = this.gamePoints;
    data['profile_pic'] = this.profilePic;
    data['wining-piece'] = this.winingPiece;
    return data;
  }
}
