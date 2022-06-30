import 'package:ecomerce/controllers/popular_product_controller.dart';
import 'package:ecomerce/dimensions.dart';
import 'package:ecomerce/widgets/app_column.dart';
import 'package:ecomerce/widgets/big_text.dart';
import 'package:ecomerce/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';
import 'icon_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currentPage = 0.0;
  var _scaleFactor = 0.8;
  double _height = Dimensions.container200;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print("device size is: " + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.height50,
                left: Dimensions.width10,
                right: Dimensions.height20),
            child: Row(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    child: BigText(
                  text: "Ethiopa",
                  color: Color(0xFF89dad0),
                  size: Dimensions.font25,
                )),
                Row(children: [
                  Container(
                      child: SmallText(
                    text: "Addis Ababa",
                    size: Dimensions.font18,
                  )),
                  SizedBox(
                    width: Dimensions.width3,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: Dimensions.iconSize20,
                  )
                ]),
              ]),
              Expanded(child: Container()),
              Container(
                height: Dimensions.height50,
                width: Dimensions.height50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                  color: Color(0xFF89dad0),
                ),
                child: Icon(
                  Icons.search,
                  size: Dimensions.iconSize20,
                  color: Colors.white,
                ),
              )
            ]),
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
          GetBuilder<PopularProductController>(builder: (popularProducts) {
            return Container(
              height: Dimensions.height300,
              child: PageView.builder(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return _listViewBuilder(index);
                  }),
            );
          }),
          SizedBox(
            height: Dimensions.height20,
          ),
          GetBuilder<PopularProductController>(builder: (popularProducts) {
            return DotsIndicator(
              dotsCount: 5,
              position: _currentPage,
              mainAxisAlignment: MainAxisAlignment.center,
              decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            );
          }),
          SizedBox(
            height: Dimensions.height20,
          ),
          Container(
            margin: EdgeInsets.only(bottom: Dimensions.width5),
            child: Row(
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: Dimensions.width10,
                ),
                Text(
                  ".",
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade300),
                ),
                SizedBox(
                  width: Dimensions.width10,
                ),
                Text(
                  "Food Pairing",
                  style: TextStyle(
                      fontSize: Dimensions.font15, color: Colors.grey.shade300),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        debugPrint(index.toString());
                      },
                      child: Container(
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.only(
                                bottom: Dimensions.width5,
                                left: Dimensions.width10,
                                top: Dimensions.height10),
                            height: Dimensions.height80,
                            width: Dimensions.height80,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius8),
                                image: DecorationImage(
                                    image: AssetImage("assets/vid6.JPG"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: Dimensions.width5,
                                top: Dimensions.height10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BigText(
                                    text: "Nutritious fruit meal",
                                  ),
                                  SizedBox(
                                    height: Dimensions.width5,
                                  ),
                                  Text(
                                    "with chineses chair eat your naty",
                                    style: TextStyle(
                                        fontSize: Dimensions.font12,
                                        color: Colors.grey.shade400),
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      IconPage(
                                        icon: Icons.circle_sharp,
                                        label: "Normal",
                                        color: Colors.orangeAccent.shade100,
                                      ),
                                      SizedBox(
                                        width: Dimensions.width5,
                                      ),
                                      IconPage(
                                        icon: Icons.location_on,
                                        label: "1.7km",
                                        color: Colors.blueAccent.shade100,
                                      ),
                                      SizedBox(
                                        width: Dimensions.width5,
                                      ),
                                      IconPage(
                                        icon: Icons.access_time_rounded,
                                        label: "32min",
                                        color: Colors.brown.shade100,
                                      )
                                    ],
                                  )
                                ]),
                          )
                        ]),
                      ),
                    );
                  }))
        ]),
      ),
    );
  }

  _listViewBuilder(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPage.floor()) {
      var curScale = 1 - (_currentPage - index) * (1 - _scaleFactor);
      var curTrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curTrans, 0);
    } else if (index == _currentPage.floor() + 1) {
      var curScale =
          _scaleFactor + (_currentPage - index + 1) * (1 - _scaleFactor);
      var curTrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curTrans, 0);
    } else if (index == _currentPage.floor() - 1) {
      var curScale = 1 - (_currentPage - index) * (1 - _scaleFactor);
      var curTrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curTrans, 0);
    } else {
      var curScale = 0.8;
      var curTrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curTrans, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(children: [
        Container(
          margin: EdgeInsets.only(
              left: Dimensions.width10, right: Dimensions.width10),
          height: Dimensions.container200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/vid6.JPG"), fit: BoxFit.cover),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(Dimensions.radius20)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: Dimensions.height5),
            height: Dimensions.height150,
            width: Dimensions.width280,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(4, 4), blurRadius: 5, color: Colors.grey)
                ]),
            child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width15, top: Dimensions.height15),
                child: AppColumn()),
          ),
        )
      ]),
    );
  }
}
