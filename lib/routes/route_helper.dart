import 'package:cloth_shopping_app/pages/cloth/checkout.dart';
import 'package:cloth_shopping_app/pages/cloth/clothes.dart';
import 'package:cloth_shopping_app/pages/home_page.dart';
import 'package:get/get.dart';

class Routes{
  static const String initial = "/";
  static const String cloths = "/cloths";
  static const String order = "/order";

  static String getInitial()=>"$initial";
  static String getCloths(String page)=>"$cloths?page=$page";
  static String goToOrder()=>"$order";

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => HomePage()),
    GetPage(name: cloths, page: (){
      var page = Get.parameters["page"];
      return ClothPage(page: '',);
    }),
    GetPage(name: order, page: () => Checkout()),
  ];
}