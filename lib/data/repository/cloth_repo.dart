import 'package:cloth_shopping_app/data/api/api_client.dart';
import 'package:cloth_shopping_app/utils/app_constants.dart';
import 'package:get/get.dart';

class ClothRepo extends GetxService{
  final ApiClient apiClient;
  ClothRepo({required this.apiClient});

  Future<Response> getClothList() async{
    return await apiClient.getData(AppConstants.CLOTH_URI);
  }
}