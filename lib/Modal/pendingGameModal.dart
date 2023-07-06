
class pendingGameModal {
  String? status;
  List<GameStartRequests>? gameStartRequests;

  pendingGameModal({this.status, this.gameStartRequests});

  pendingGameModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['game_start_requests'] != null) {
      gameStartRequests = <GameStartRequests>[];
      json['game_start_requests'].forEach((v) {
        gameStartRequests!.add(new GameStartRequests.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.gameStartRequests != null) {
      data['game_start_requests'] =
          this.gameStartRequests!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GameStartRequests {
  String? gameId;
  String? opponentUserId;
  String? opponentName;
  String? profilePic;

  GameStartRequests(
      {this.gameId, this.opponentUserId, this.opponentName, this.profilePic});

  GameStartRequests.fromJson(Map<String, dynamic> json) {
    gameId = json['game_id'];
    opponentUserId = json['opponent_user_id'];
    opponentName = json['opponent_name'];
    profilePic = json['profile_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['game_id'] = this.gameId;
    data['opponent_user_id'] = this.opponentUserId;
    data['opponent_name'] = this.opponentName;
    data['profile_pic'] = this.profilePic;
    return data;
  }
}
