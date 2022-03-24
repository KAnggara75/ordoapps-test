import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 40.0,
            backgroundColor: kBGcolor,
            centerTitle: false,
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
                      // hintText: 'Cari dengan mengetikan barang',
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8.0, 4.0, 8.0),
                  child: Container(
                    width: 35,
                    decoration: const BoxDecoration(
                      color: Color(0xff64A1F4),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/icons/options.svg",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0),
                  child: Container(
                    width: 35,
                    decoration: const BoxDecoration(
                      color: Color(0xffDFAE1D),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.shopping_bag,
                      color: kWhite,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 8.0, 8.0, 8.0),
                  child: Container(
                    width: 35,
                    decoration: const BoxDecoration(
                      color: Color(0xffFF485A),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.notifications_none,
                      color: kWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 400,
                child: Center(
                  child: Text(
                    'This is an awesome shopping platform',
                  ),
                ),
              ),
              Container(
                height: 1000,
                color: Colors.pink,
              ),
              Container(
                height: 1000,
                color: Colors.amber,
              ),
              Container(
                height: 1000,
                color: Colors.pink,
              ),
              Container(
                height: 1000,
                color: Colors.amber,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
