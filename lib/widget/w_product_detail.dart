import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/size.dart';

class BasicDetailProduct extends StatelessWidget {
  const BasicDetailProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Tas Gucci",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF47623F),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFDFAE1D),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 20,
                    width: 100,
                    child: Text(
                      "Barang Bekas",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: kWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: getProportionateScreenWidth(10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF64A1F4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 20,
                    width: 75,
                    child: Text(
                      "Stok 100",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: kWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: getProportionateScreenWidth(10),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Rp. 126.000",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Popins",
                      color: Color(0xFF64A1F4),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  // SizedBox(height: 5),
                  Text(
                    "Rp. 100.500",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins",
                      color: Color(0xFF3C7DD9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 22,
                width: 100,
                child: Text(
                  "Diskon 10%",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: kWhite,
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenWidth(13),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class VendorDetail extends StatelessWidget {
  const VendorDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        children: [
          const Divider(color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Vendor",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF47623F),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        backgroundImage: AssetImage(
                          "assets/img/vendor.png",
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Eiger Store",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: kBlack,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: Color(
                      0xFF64A1F4,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "5.0",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF3C7DD9),
                    ),
                  ),
                  Text(
                    " | 200 Terjual",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3C7DD9),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProductDesctiption extends StatelessWidget {
  const ProductDesctiption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Deskripsi",
            style: TextStyle(
              fontSize: 15,
              color: Color(0xFF47623F),
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
            ),
          ),
          SizedBox(height: 5),
          Text(
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF47623F),
              fontFamily: "Poppins",
            ),
          )
        ],
      ),
    );
  }
}

class ProductRating extends StatelessWidget {
  const ProductRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Ulasan dan Penilaian",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFF47623F),
            ),
          ),
          SizedBox(height: 10),
          ProductReview(
            image: "assets/img/review1.png",
            name: "Maude Hall",
          ),
          ProductReview(
            image: "assets/img/review2.png",
            name: "Ester Howard",
          ),
        ],
      ),
    );
  }
}

class ProductReview extends StatelessWidget {
  const ProductReview({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);
  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kWhite,
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(-5, -5),
            color: Color(0xFFF5F5F5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          width: double.infinity,
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white70,
                            foregroundColor: Colors.black,
                            backgroundImage: AssetImage(
                              image,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: kBlack,
                                ),
                              ),
                              const Text(
                                "14 min",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter",
                                  color: Color(0xFFB4BBC6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFA4A0C),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "5.0",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: kBlack,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 9,
                  color: Color(0xFF272727),
                  fontFamily: "Inter",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
