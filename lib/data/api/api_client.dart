import 'package:ecomerce/widgets/app_constants.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String
      token; //when you tok toserver you should have tokn and should intialize
  final String appBaseUrl; //app that tok to server,server url
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl; //constructor body
    timeout = Duration(
        seconds:
            30); //each time u make request to getx, howlong the request shld try,after wthercontinu ornot
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type':
          'application/json; charset=UTF-8', //charset=UTF-8 format to decode and encode, not that much impo but good to have it
      'Authorization': 'Bearer $token'
    }; //token type is Bearer and to mntion thetyp there Bearer is used autontication
  }

  Future<Response> getData(String uri) async {
    //response is from getx package
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
