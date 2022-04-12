import 'package:cloth_shopping_app/data/repository/cloth_repo.dart';
import 'package:cloth_shopping_app/models/cloth_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClothController extends GetxController{
  final ClothRepo clothRepo;
  ClothController({required this.clothRepo});
  List<ClothModel> _clothList = [];
  List<ClothModel> get clothList => _clothList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;

  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;

  Future<void> getClothList() async{
    Response response = await clothRepo.getClothList(); 
    if(response.statusCode==200){
      //print("got all products");
      _clothList=[];
      _clothList.addAll(Cloth.fromJson(response.body).cloths);
      //print(_popularProductList);
      _isLoaded = true;
      update(); 
    }else {
      
    }
  }

  void setQuantity(bool isIncrement){
    if(isIncrement){
      _quantity = checkQuantity(_quantity + 1);
    }else{
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity){
    if((_inCartItems + quantity) < 0){
      Get.snackbar("Item count", "You can't reduce more than 0",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      if(_inCartItems > 0) {
        _quantity = -_inCartItems;
        return _quantity;
      }
      return 0;
    }else if((_inCartItems + quantity) > 20){
      Get.snackbar("Item count", "You can't increase more than 20",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return 20;
    }else {
      return quantity;
    }
  }
}