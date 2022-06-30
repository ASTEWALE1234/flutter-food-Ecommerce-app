import 'package:ecomerce/data/api/api_client.dart';
import 'package:ecomerce/widgets/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants
        .POPULAR_PRODUCT_URL); //repo call metod from api client url is lik "https://www.dbestech.com/api/product/-"
  }
}
