import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  final String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}){
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 45);
    _mainHeaders = {
      "Content-type": "application/json; charset UTF-8",
      "Authorization": "Bearer"
    };
  }

  Future<Response> getData(String uri, {Map<String, String> ? headers}) async {
    try{
      Response response = await get(uri, 
      headers: headers??_mainHeaders
      );
      return response;
    }catch(e) {
      return Response(
        statusCode: 1,
        statusText: e.toString()
      );
    }
  }
}