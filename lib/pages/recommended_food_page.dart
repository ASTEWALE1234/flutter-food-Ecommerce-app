import 'package:ecomerce/dimensions.dart';
import 'package:ecomerce/expand_text.dart';
import 'package:ecomerce/icon_button.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Container(
            margin: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButtons(
                  icon: Icons.clear,
                  iconSize: Dimensions.iconSize20,
                  conClr: Colors.white,
                  size: Dimensions.contSize50,
                  iconClr: Colors.black,
                ),
                IconButtons(
                  icon: Icons.shopping_cart,
                  iconSize: Dimensions.iconSize20,
                  conClr: Colors.white,
                  size: Dimensions.contSize50,
                  iconClr: Colors.black,
                )
              ],
            ),
          ),
          toolbarHeight: 80,
          expandedHeight: 300,
          pinned: true,
          backgroundColor: Colors.yellow,
          bottom: PreferredSize(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                      top: Dimensions.height5, bottom: Dimensions.height10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius20),
                          topRight: Radius.circular(Dimensions.radius20))),
                  child: Center(child: Text("Astewale"))),
              preferredSize: Size.fromHeight(20)),
          flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
            "assets/vid6.JPG",
            fit: BoxFit.cover,
            width: double.maxFinite,
          )),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(
                left: Dimensions.width10,
                right: Dimensions.width10,
                top: Dimensions.height10),
            child: ExpandableText(
              text:
                  "This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error  on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error  on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error  almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error  on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error  on This error is almost certainly caused by depending on This error is almost certainly caused by depending on This error is almost certainly caused by depending on nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error nly caused by depending on This error is almost certainly caused by depending on This error",
              textClr: Colors.black87,
            ),
          ),
        )
      ]),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          margin: EdgeInsets.only(
              bottom: Dimensions.height10, top: Dimensions.height10),
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButtons(
                icon: Icons.remove,
                iconClr: Colors.white,
                iconSize: Dimensions.iconSize30,
                conClr: AppColor.mainClr,
                size: Dimensions.contSize50,
              ),
              Text(
                "\$12.88 X 0",
                style: TextStyle(
                    fontSize: Dimensions.font25, fontWeight: FontWeight.bold),
              ),
              IconButtons(
                icon: Icons.add,
                iconClr: Colors.white,
                iconSize: Dimensions.iconSize30,
                conClr: AppColor.mainClr,
                size: Dimensions.contSize50,
              )
            ],
          ),
        ),
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
