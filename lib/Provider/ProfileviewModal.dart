class ProfileviewModal {
  String? status;
  ProfileViewPlayer? profileViewPlayer;

  ProfileviewModal({this.status, this.profileViewPlayer});

  ProfileviewModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    profileViewPlayer = json['profile_view_player'] != null
        ? new ProfileViewPlayer.fromJson(json['profile_view_player'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.profileViewPlayer != null) {
      data['profile_view_player'] = this.profileViewPlayer!.toJson();
    }
    return data;
  }
}

class ProfileViewPlayer {
  String? name;
  String? eMail;
  String? uid;
  String? about;
  String? age;
  String? profilePic;
  String? gamePoints;
  String? rank;
  int? gameCount;
  int? characterCount;
  String? latestCharacter;

  ProfileViewPlayer(
      {this.name,
        this.eMail,
        this.uid,
        this.about,
        this.age,
        this.profilePic,
        this.gamePoints,
        this.rank,
        this.gameCount,
        this.characterCount,
        this.latestCharacter});

  ProfileViewPlayer.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    eMail = json['e_mail'];
    uid = json['uid'];
    about = json['about'];
    age = json['age'];
    profilePic = json['profile_pic'];
    gamePoints = json['game_points'];
    rank = json['rank'];
    gameCount = json['game_count'];
    characterCount = json['character_count'];
    latestCharacter = json['latest_character'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['e_mail'] = this.eMail;
    data['uid'] = this.uid;
    data['about'] = this.about;
    data['age'] = this.age;
    data['profile_pic'] = this.profilePic;
    data['game_points'] = this.gamePoints;
    data['rank'] = this.rank;
    data['game_count'] = this.gameCount;
    data['character_count'] = this.characterCount;
    data['latest_character'] = this.latestCharacter;
    return data;
  }
}
