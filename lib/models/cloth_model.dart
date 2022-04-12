class Cloth {
  String? _success;
  String? _message;
  String? _status;
  late List<ClothModel> _cloths;
  List<ClothModel> get cloths => _cloths;

  cloth({required success, required message, required status, required cloths}){
    this._success = success;
    this._message = message;
    this._status = status;
    this._cloths = cloths;
  }

  Cloth.fromJson(Map<String, dynamic> json) {
    _success = json['success'];
    _message = json['message'];
    _status = json['status'];
    if (json['data'] != null) {
      _cloths = <ClothModel>[];
      json['data'].forEach((v) {
        cloths.add(ClothModel.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['success'] = this.success;
  //   data['message'] = this.message;
  //   data['status'] = this.status;
  //   if (this.data != null) {
  //     data['data'] = this.data!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class ClothModel {
  String? sId;
  String? name;
  String? size;
  int? price;
  String? refNo;
  String? color;

  ClothModel(
      {this.sId,
      this.name,
      this.size,
      this.price,
      this.refNo,
      this.color,
      });

  ClothModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    size = json['size'];
    price = json['price'];
    refNo = json['refNo'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    return { 
      '_id' : this.sId,
      'name' : this.name,
      'size' : this.size,
      'price' : this.price,
      'refNo' : this.refNo,
      'color' : this.color,
    };
  }
}