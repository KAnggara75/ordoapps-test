import './screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import './constants/colors.dart';
import './constants/text.dart';
import './constants/size.dart';
import './configs/routers.dart';
import './configs/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: theme(),
      initialRoute: NavBar.routeName,
      routes: routes,
    );
  }
}

class NavBar extends StatefulWidget {
  static const String routeName = '/navbar';
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: navBarWidget(),
    );
  }

  final List<Widget> screen = [
    const Center(child: Text("Coming Soon")),
    const Center(child: Text("Coming Soon")),
    const HomeScreen(),
    const Center(child: Text("Coming Soon")),
    const Center(child: Text("Coming Soon")),
  ];

  BottomNavigationBar navBarWidget() {
    return BottomNavigationBar(
      iconSize: 35,
      elevation: 0,
      onTap: _onItemTapped,
      backgroundColor: kWhite,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF47623F),
      unselectedItemColor: const Color(0xFFC6C4C4),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'Assignment',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.swap_horiz),
          label: 'Swap',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assessment),
          label: 'Assessment',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Person',
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
