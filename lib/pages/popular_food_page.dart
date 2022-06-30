import 'package:ecomerce/dimensions.dart';
import 'package:ecomerce/expand_text.dart';
import 'package:ecomerce/icon_button.dart';
import 'package:ecomerce/widgets/app_column.dart';
import 'package:ecomerce/widgets/big_text.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class PopularFoodPage extends StatelessWidget {
  const PopularFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: Dimensions.contimgSize350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/vid6.JPG"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtons(
                    icon: Icons.clear,
                    iconSize: Dimensions.iconSize30,
                    conClr: Colors.white,
                    iconClr: Colors.black,
                    size: Dimensions.contSize50,
                  ),
                  IconButtons(
                    icon: Icons.shopping_cart,
                    iconSize: Dimensions.iconSize30,
                    conClr: Colors.white,
                    iconClr: Colors.black,
                    size: Dimensions.contSize50,
                  ),
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              top: Dimensions.contimgSize350 - 20,
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AppColumn(),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      Container(child: BigText(text: "Introduction")),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      Container(
                        height: Dimensions.height180,
                        width: double.maxFinite,
                        child: Expanded(
                          child: SingleChildScrollView(
                            child: ExpandableText(
                              text:
                                  "This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error  on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error  on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error",
                              textClr: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ]),
              ))
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          height: Dimensions.height100,
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
                  width: Dimensions.height100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Icon(
                        Icons.remove,
                        size: Dimensions.iconSize30,
                      ),
                      SizedBox(
                        width: Dimensions.width5,
                      ),
                      BigText(
                        text: "0",
                        size: Dimensions.font30,
                      ),
                      SizedBox(
                        width: Dimensions.width5,
                      ),
                      Icon(
                        Icons.add,
                        size: Dimensions.iconSize30,
                      )
                    ],
                  )),
              Spacer(),
              Container(
                  margin: EdgeInsets.only(right: Dimensions.height20),
                  height: Dimensions.height70,
                  width: Dimensions.container200 * 0.75,
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
