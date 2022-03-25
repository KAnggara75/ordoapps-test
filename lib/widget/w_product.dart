import '../constants/size.dart';
import '../constants/colors.dart';
import 'package:flutter/material.dart';
import '../screens/product/product_detail.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.name,
    required this.price,
    required this.discPrice,
    required this.image,
    this.currency = "Rp.",
    this.discount = 0,
    this.bgcolor = const Color(0xFFE1F3D9),
    this.cardcolor = Colors.white,
  }) : super(key: key);
  final Color bgcolor, cardcolor;
  final String currency, price, name, discPrice, image;
  final int discount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ProductDetail();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: kGrey,
              offset: Offset(-2, 2),
              blurRadius: 5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: bgcolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fitWidth,
                      height: 135,
                    ),
                  ),
                  Container(
                    height: 15,
                    width: 75,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFFDFAE1D),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kGrey,
                          offset: Offset(1, 1),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 5, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.star,
                            color: kWhite,
                            size: 6,
                          ),
                          Text(
                            "5.0 | 200+ Ratting",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.white,
                              fontSize: 6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "$currency $price",
                            style: const TextStyle(
                              fontFamily: "Inter",
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          const SizedBox(height: 1),
                          Text(
                            "$currency $discPrice",
                            style: const TextStyle(
                              fontFamily: "Inter",
                              color: Colors.blue,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      (discount >= 1)
                          ? Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 10,
                              width: 50,
                              child: Text(
                                "Diskon $discount%",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: kWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getProportionateScreenWidth(6),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    name,
                    style: TextStyle(
                      color: kBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(10),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
