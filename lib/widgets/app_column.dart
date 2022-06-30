import 'package:ecomerce/dimensions.dart';
import 'package:ecomerce/icon_page.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.only(top: Dimensions.height10),
        child: Text(
          "Ethiopains Side",
          style: TextStyle(
              fontSize: Dimensions.font25,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
      SizedBox(
        height: Dimensions.height10,
      ),
      Row(
        children: [
          Wrap(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      size: Dimensions.iconSize20,
                      color: Colors.teal.shade600,
                    )),
          ),
          SizedBox(
            width: 5,
          ),
          Text("4.6",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: Dimensions.font15, color: Colors.grey[400])),
          SizedBox(
            width: 5,
          ),
          Text(
            "1287 comments",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: Dimensions.font15, color: Colors.grey[400]),
          ),
        ],
      ),
      SizedBox(
        height: Dimensions.height20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconPage(
            icon: Icons.circle_sharp,
            label: "Normal",
            color: Colors.orangeAccent.shade100,
            size: Dimensions.iconSize30,
          ),
          SizedBox(
            width: Dimensions.width5,
          ),
          IconPage(
            icon: Icons.location_on,
            label: "1.7km",
            color: Colors.blueAccent.shade100,
            size: Dimensions.iconSize30,
          ),
          SizedBox(
            width: Dimensions.width5,
          ),
          IconPage(
            icon: Icons.access_time_rounded,
            label: "32min",
            color: Colors.brown.shade100,
            size: Dimensions.iconSize30,
          )
        ],
      )
    ]);
  }
}
