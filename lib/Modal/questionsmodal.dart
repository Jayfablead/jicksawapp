class QuestionsModal {
  String? status;
  List<GetQuestionRandom>? getQuestionRandom;

  QuestionsModal({this.status, this.getQuestionRandom});

  QuestionsModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['get_question_random'] != null) {
      getQuestionRandom = <GetQuestionRandom>[];
      json['get_question_random'].forEach((v) {
        getQuestionRandom!.add(new GetQuestionRandom.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.getQuestionRandom != null) {
      data['get_question_random'] =
          this.getQuestionRandom!.map((v) => v.toJson()).toList();
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
  String? createdAt;
  List<QuetionsOptions>? quetionsOptions;

  GetQuestionRandom(
      {this.id,
        this.colorId,
        this.catagoryId,
        this.age,
        this.questionTitle,
        this.createdAt,
        this.quetionsOptions});

  GetQuestionRandom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    colorId = json['color_id'];
    catagoryId = json['catagory_id'];
    age = json['age'];
    questionTitle = json['question_title'];
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
