import 'package:cloth_shopping_app/data/repository/cloth_repo.dart';
import 'package:cloth_shopping_app/models/cloth_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClothController extends GetxController {
  final ClothRepo clothRepo;
  ClothController({required this.clothRepo});

  final _clothList = Cloth().obs; // Intitalizing RxModel 

  List<ClothModel>? get clothList => _clothList.value.clotH; //gets the list which is then used in the GetBuilder

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;

  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;

//API call to update cloth 
  Future<void> getClothList() async {
    Response response = await clothRepo.getClothList();
    if (response.statusCode == 200) {
      debugPrint("got all cloths");
      _clothList.value = Cloth.fromJson(response.body); //Parses the response gotten from the json 
      updateClothDetails(_clothList.value); // Calling the update cloth fuunction
      debugPrint(_clothList.toString());
      _isLoaded = true;
      update();
    } else {
      debugPrint("Can't find any cloths");
    }
  }

  //To Keep updating cloth on each api call 
  void updateClothDetails(Cloth clothModel) {
    var res = Cloth();
    res.getClothes(clothModel);
    _clothList.value = res;
    debugPrint(_clothList.value.toString());
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((_inCartItems + quantity) < 0) {
      Get.snackbar(
        "Item count",
        "You can't reduce more than 0",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      if (_inCartItems > 0) {
        _quantity = -_inCartItems;
        return _quantity;
      }
      return 0;
    } else if ((_inCartItems + quantity) > 20) {
      Get.snackbar(
        "Item count",
        "You can't increase more than 20",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return 20;
    } else {
      return quantity;
    }
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    await getClothList();
    super.onInit();
  }
}
