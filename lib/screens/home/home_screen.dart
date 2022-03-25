import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widget/w_appbar_action.dart';
import '../../constants/colors.dart';
import '../../constants/size.dart';
import '../../widget/w_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentHero = 0;
  int disc = 10;
  final List<String> imgList = [
    "assets/img/hero0.jpg",
    "assets/img/hero1.jpg",
    "assets/img/hero2.jpg",
  ];

  @override
  void initState() {
    _currentHero = ((imgList.length / 2) - 1).round();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: false,
            pinned: true,
            floating: true,
            centerTitle: false,
            expandedHeight: 40.0,
            backgroundColor: kBGcolor,
            bottom: AppBar(
              backgroundColor: kBGcolor,
              title: Container(
                width: double.infinity,
                height: 40,
                color: kBGcolor,
                child: const Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: 'Cari barang',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF3AB648),
                      ),
                      filled: true,
                      fillColor: Color(0xffF0F0F0),
                    ),
                  ),
                ),
              ),
              actions: [
                AppBarAction(
                  padding: const EdgeInsets.fromLTRB(0.0, 8.0, 3.0, 8.0),
                  onPressed: () {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Options'),
                    ));
                  },
                  bgColor: const Color(0xff64A1F4),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/icons/options.svg",
                    ),
                  ),
                ),
                AppBarAction(
                  padding: const EdgeInsets.fromLTRB(3.0, 8.0, 3.0, 8.0),
                  onPressed: () {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Shoping Bag'),
                    ));
                  },
                  bgColor: const Color(0xffDFAE1D),
                  child: const Icon(
                    Icons.shopping_bag,
                    color: kWhite,
                  ),
                ),
                AppBarAction(
                  padding: const EdgeInsets.fromLTRB(3.0, 8.0, 6.0, 8.0),
                  onPressed: () {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Notification'),
                    ));
                  },
                  bgColor: const Color(0xffFF485A),
                  child: const Icon(
                    Icons.notifications_none,
                    color: kWhite,
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
                        _currentHero = index;
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
          SliverPadding(
            padding: const EdgeInsets.all(15),
            sliver: SliverGrid.count(
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
              children: const [
                ProductCard(
                  name: "Lorem Ipsum",
                  price: "6.000",
                  discPrice: "4.500",
                  currency: "Rp.",
                  discount: 10,
                  image: "assets/img/products/p1.png",
                ),
                ProductCard(
                  bgcolor: Color(0xFF64A1F4),
                  name: "Lorem Ipsum",
                  price: "6.000",
                  discPrice: "4.500",
                  currency: "Rp.",
                  discount: 10,
                  image: "assets/img/products/p2.png",
                ),
                ProductCard(
                  name: "Lorem Ipsum",
                  price: "6.000",
                  discPrice: "4.500",
                  currency: "Rp.",
                  discount: 10,
                  image: "assets/img/products/p3.png",
                ),
                ProductCard(
                  name: "Lorem Ipsum",
                  price: "6.000",
                  discPrice: "4.500",
                  currency: "Rp.",
                  discount: 10,
                  image: "assets/img/products/p4.png",
                ),
                ProductCard(
                  bgcolor: Color(0xFFDFAE1D),
                  name: "Lorem Ipsum",
                  price: "6.000",
                  discPrice: "4.500",
                  currency: "Rp.",
                  discount: 10,
                  image: "assets/img/products/p5.png",
                ),
                ProductCard(
                  name: "Lorem Ipsum",
                  price: "6.000",
                  discPrice: "4.500",
                  currency: "Rp.",
                  discount: 10,
                  image: "assets/img/products/p6.png",
                ),
                ProductCard(
                  name: "Lorem Ipsum",
                  price: "6.000",
                  discPrice: "4.500",
                  currency: "Rp.",
                  discount: 10,
                  image: "assets/img/products/p7.png",
                ),
                ProductCard(
                  name: "Lorem Ipsum",
                  price: "6.000",
                  discPrice: "4.500",
                  currency: "Rp.",
                  discount: 10,
                  image: "assets/img/products/p8.png",
                ),
              ],
            ),
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
      width: _currentHero == index ? 25 : 35,
      decoration: BoxDecoration(
        color: _currentHero == index
            ? const Color(0xFF64A1F4)
            : const Color(0xFF3C7DD9),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
