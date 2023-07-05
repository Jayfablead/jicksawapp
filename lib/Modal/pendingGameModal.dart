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
  String? oponentUserId;
  String? oponentName;
  String? profilePic;

  GameStartRequests(
      {this.gameId, this.oponentUserId, this.oponentName, this.profilePic});

  GameStartRequests.fromJson(Map<String, dynamic> json) {
    gameId = json['game_id'];
    oponentUserId = json['oponent_user_id'];
    oponentName = json['oponent_name'];
    profilePic = json['profile_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['game_id'] = this.gameId;
    data['oponent_user_id'] = this.oponentUserId;
    data['oponent_name'] = this.oponentName;
    data['profile_pic'] = this.profilePic;
    return data;
  }
}
