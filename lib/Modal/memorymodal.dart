class memoryModal {
  String? status;
  List<String>? allImages;

  memoryModal({this.status, this.allImages});

  memoryModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    allImages = json['all_images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['all_images'] = this.allImages;
    return data;
  }
}
