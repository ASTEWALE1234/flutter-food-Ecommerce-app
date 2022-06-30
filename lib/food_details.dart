import 'package:ecomerce/app_colors.dart';
import 'package:ecomerce/dimensions.dart';
import 'package:ecomerce/expand_text.dart';
import 'package:ecomerce/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: Dimensions.width350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/vid6.JPG"), fit: BoxFit.cover)),
            ),
            Positioned(
                top: Dimensions.height60,
                left: Dimensions.width20,
                right: Dimensions.width20,
                child: Container(
                  child: Row(
                    children: [
                      IconButtons(
                        icon: Icons.clear,
                        iconClr: Colors.black,
                        iconSize: Dimensions.iconSize28,
                        conClr: Colors.white,
                      ),
                      Spacer(),
                      IconButtons(
                        icon: Icons.shopping_cart,
                        iconClr: Colors.black,
                        iconSize: Dimensions.iconSize28,
                        conClr: Colors.white,
                      )
                    ],
                  ),
                )),
          ]),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(
                top: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(bottom: Dimensions.height10),
                  child: Text(
                    "Nutritious Fruit meal in Ethiopia",
                    style: TextStyle(
                        fontSize: Dimensions.font25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ExpandableText(
                  text:
                      "This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error  on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error  on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error",
                  textClr: Colors.black,
                ),
              ]),
            ),
          )),
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          height: Dimensions.height40,
          margin: EdgeInsets.only(bottom: Dimensions.height5),
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButtons(
                  icon: Icons.remove,
                  iconClr: Colors.white,
                  iconSize: Dimensions.iconSize30,
                  conClr: AppColor.mainClr),
              Text(
                "\$12.88 X 0",
                style: TextStyle(
                    fontSize: Dimensions.font25, fontWeight: FontWeight.bold),
              ),
              IconButtons(
                  icon: Icons.add,
                  iconClr: Colors.white,
                  iconSize: Dimensions.iconSize30,
                  conClr: AppColor.mainClr)
            ],
          ),
        ),
        Container(
          height: Dimensions.height120,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 + 10),
                  topRight: Radius.circular(Dimensions.radius20 + 10))),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: Dimensions.width20),
                height: Dimensions.height60,
                width: Dimensions.height60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white),
                child: Icon(
                  Icons.favorite,
                  color: AppColor.mainClr,
                  size: 30,
                ),
              ),
              Spacer(),
              Container(
                  margin: EdgeInsets.only(right: Dimensions.height20),
                  height: Dimensions.height70,
                  width: Dimensions.width220 - 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColor.mainClr),
                  child: Center(
                      child: Text(
                    "\$ 28 | Add to cart",
                    style: TextStyle(
                        fontSize: Dimensions.font20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )))
            ],
          ),
        ),
      ]),
    );
  }
}
