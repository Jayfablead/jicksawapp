class randomQuestionApiModal {
  String? status;
  GetQuestionRandom? getQuestionRandom;

  randomQuestionApiModal({this.status, this.getQuestionRandom});

  randomQuestionApiModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    getQuestionRandom = json['get_question_random'] != null
        ? new GetQuestionRandom.fromJson(json['get_question_random'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.getQuestionRandom != null) {
      data['get_question_random'] = this.getQuestionRandom!.toJson();
    }
    return data;
  }
}

class GetQuestionRandom {
  String? id;
  String? colorId;
  String? catagoryId;
  String? age;
  String? questionTitle;
  String? questionFile;
  String? questionSound;
  String? createdAt;
  List<QuetionsOptions>? quetionsOptions;

  GetQuestionRandom(
      {this.id,
        this.colorId,
        this.catagoryId,
        this.age,
        this.questionTitle,
        this.questionFile,
        this.questionSound,
        this.createdAt,
        this.quetionsOptions});

  GetQuestionRandom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    colorId = json['color_id'];
    catagoryId = json['catagory_id'];
    age = json['age'];
    questionTitle = json['question_title'];
    questionFile = json['question_file'];
    questionSound = json['question_sound'];
    createdAt = json['created_at'];
    if (json['quetions_options'] != null) {
      quetionsOptions = <QuetionsOptions>[];
      json['quetions_options'].forEach((v) {
        quetionsOptions!.add(new QuetionsOptions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['color_id'] = this.colorId;
    data['catagory_id'] = this.catagoryId;
    data['age'] = this.age;
    data['question_title'] = this.questionTitle;
    data['question_file'] = this.questionFile;
    data['question_sound'] = this.questionSound;
    data['created_at'] = this.createdAt;
    if (this.quetionsOptions != null) {
      data['quetions_options'] =
          this.quetionsOptions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QuetionsOptions {
  String? id;
  String? questionId;
  String? optionText;
  String? isChecked;
  String? createdAt;

  QuetionsOptions(
      {this.id,
        this.questionId,
        this.optionText,
        this.isChecked,
        this.createdAt});

  QuetionsOptions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    questionId = json['question_id'];
    optionText = json['option_text'];
    isChecked = json['is_checked'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question_id'] = this.questionId;
    data['option_text'] = this.optionText;
    data['is_checked'] = this.isChecked;
    data['created_at'] = this.createdAt;
    return data;
  }
}
