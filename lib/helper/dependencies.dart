import 'package:cloth_shopping_app/controllers/cloth_controller.dart';
import 'package:cloth_shopping_app/data/api/api_client.dart';
import 'package:cloth_shopping_app/data/repository/cloth_repo.dart';
import 'package:cloth_shopping_app/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async{

  //API CLIENT
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URI));

  //REPOSITORIES
  Get.lazyPut(() => ClothRepo(apiClient: Get.find()));

  //Controllers
  Get.lazyPut(() => ClothController(clothRepo: Get.find()));
}