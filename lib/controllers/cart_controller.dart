import 'package:cloth_shopping_app/data/repository/cart_repo.dart';
import 'package:cloth_shopping_app/models/cart_model.dart';
import 'package:cloth_shopping_app/models/cloth_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});

  Map<int, CartModel> _items={};
  Map<int, CartModel> get items => _items;

  List<CartModel> storageItems = [];

  void addItem(ClothModel cloth, int quantity){
    var totalQuantity = 0;
    
  }
}