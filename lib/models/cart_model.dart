import 'package:cloth_shopping_app/models/cloth_model.dart';

class CartModel{
  String? sId;
  String? name;
  String? price;
  int? quantity;
  bool? isExist;
  String? time;
  ClothModel? cloth;

  CartModel(
    {
      this.sId,
      this.name,
      this.price,
      this.quantity,
      this.isExist,
      this.time,
      this.cloth,
    }
  );

  CartModel.fromJson(Map<String, dynamic> json){
    sId = json['_id'];
    name = json['name'];
    price = json['price'];
    quantity = json['quantity'];
    isExist = json['isExist'];
    time = json['time'];
    cloth = ClothModel.fromJson(json['cloth']);
  }
  Map<String, dynamic> toJson(){
    return { 
      "id": this.sId,
      "name": this.name,
      "price": this.price,
      "quantity": this.quantity,
      "isExist": this.isExist,
      "time": this.time,
      "cloth": this.cloth!.toJson( )
    };
  }

}