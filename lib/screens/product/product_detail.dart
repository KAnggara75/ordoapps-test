import '/constants/colors.dart';
import '../../constants/size.dart';
import 'package:flutter/material.dart';
import '/widget/w_product_detail.dart';
import '../../widget/w_appbar_action.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int _currentProduct = 0;
  final List<String> imgList = [
    "assets/img/products/p1.png",
    "assets/img/products/p2.png",
    "assets/img/products/p3.png",
    "assets/img/products/p4.png",
    "assets/img/products/p5.png",
    "assets/img/products/p6.png",
    "assets/img/products/p7.png",
    "assets/img/products/p8.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: false,
            pinned: true,
            elevation: 0,
            floating: true,
            centerTitle: false,
            expandedHeight: 40.0,
            backgroundColor: kBGcolor,
            bottom: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: kBGcolor,
              title: const Text(
                "PRODUK DETAIL",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF64A1F4)),
              ),
              leading: Padding(
                padding: const EdgeInsets.all(12.0),
                child: RawMaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  fillColor: const Color(0xFF64A1F4),
                  child: const Icon(
                    Icons.arrow_back,
                    color: kWhite,
                  ),
                  shape: const CircleBorder(),
                ),
              ),
              actions: [
                ProductAppBarAction(
                  padding: const EdgeInsets.fromLTRB(3.0, 8.0, 3.0, 8.0),
                  onPressed: () {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Shoping Bag'),
                    ));
                  },
                  child: const Icon(
                    Icons.shopping_bag,
                    color: Color(0xFF64A1F4),
                    size: 30,
                  ),
                ),
                ProductAppBarAction(
                  padding: const EdgeInsets.fromLTRB(3.0, 8.0, 20.0, 8.0),
                  onPressed: () {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Notification'),
                    ));
                  },
                  child: const Icon(
                    Icons.notifications,
                    color: Color(0xFFFF485A),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              CarouselSlider(
                items: imgList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                        child: SizedBox(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                    height: getProportionateScreenHeight(185),
                    initialPage: ((imgList.length / 2) - 1).round(),
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentProduct = index;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    imgList.length,
                    (index) => buildIndicator(index: index),
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 35),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 25,
                      offset: Offset(25, 7),
                      color: Color(0xFFFF485A),
                    ),
                    BoxShadow(color: kWhite),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      BasicDetailProduct(),
                      VendorDetail(),
                      ProductDesctiption(),
                      ProductRating(),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildIndicator({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: _currentProduct == index ? 25 : 35,
      decoration: BoxDecoration(
        color: _currentProduct == index
            ? const Color(0xFF64A1F4)
            : const Color(0xFF3C7DD9),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
