class gameModal {
  String? status;
  GameData? gameData;

  gameModal({this.status, this.gameData});

  gameModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    gameData = json['game_data'] != null
        ? new GameData.fromJson(json['game_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.gameData != null) {
      data['game_data'] = this.gameData!.toJson();
    }
    return data;
  }
}

class GameData {
  String? gameId;
  String? userId;
  String? gameStatus;
  String? steps;
  String? challenges;
  String? pieceWins;
  String? startTime;
  String? endTime;
  String? createdAt;

  GameData(
      {this.gameId,
        this.userId,
        this.gameStatus,
        this.steps,
        this.challenges,
        this.pieceWins,
        this.startTime,
        this.endTime,
        this.createdAt});

  GameData.fromJson(Map<String, dynamic> json) {
    gameId = json['game_id'];
    userId = json['user_id'];
    gameStatus = json['game_status'];
    steps = json['steps'];
    challenges = json['challenges'];
    pieceWins = json['piece_wins'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['game_id'] = this.gameId;
    data['user_id'] = this.userId;
    data['game_status'] = this.gameStatus;
    data['steps'] = this.steps;
    data['challenges'] = this.challenges;
    data['piece_wins'] = this.pieceWins;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['created_at'] = this.createdAt;
    return data;
  }
}
