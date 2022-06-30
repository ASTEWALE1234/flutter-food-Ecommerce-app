import 'package:ecomerce/controllers/popular_product_controller.dart';
import 'package:ecomerce/data/api/api_client.dart';
import 'package:ecomerce/data/repository/popular_product_repo.dart';
import 'package:ecomerce/widgets/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // init body to call api class
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

//repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
