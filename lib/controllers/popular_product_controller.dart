import 'dart:convert';

import 'package:ecomerce/data/repository/popular_product_repo.dart';
import 'package:ecomerce/model/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("got Products");
      // if the response is successful
      _popularProductList = [];
      List<dynamic> values = [];
      values = json.decode(response.body);
      // first model useing iterable need to put data, and need model to convert the respons jsontype data to model
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            _popularProductList.add(Product.fromJson(map));
          }
        }
      }
      update();
      print(_popularProductList.length);
    } else {
      print("no file to get");
    }
  }
}
