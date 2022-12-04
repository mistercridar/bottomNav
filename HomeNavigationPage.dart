import 'package:flutter/material.dart';

class HomeNavigationPage extends StatefulWidget {
  const HomeNavigationPage({Key? key}) : super(key: key);

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabPages = <Widget>[
      const Center(child: Icon(Icons.home_filled, size: 64.0,color: Colors.black)),
      const Center(child: Icon(Icons.search, size: 64.0,color: Colors.black)),
      const Center(child: Icon(Icons.favorite, size: 64.0,color: Colors.black)),
      const Center(child: Icon(Icons.person, size: 64.0,color: Colors.black)),
    ];

    final navBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "home"),
      const BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
      const BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "fav"),
      const BottomNavigationBarItem(icon: Icon(Icons.person),label: "user"),
    ];

    assert(tabPages.length == navBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      showSelectedLabels: false,
        showUnselectedLabels: false,
        items: navBarItems,
    currentIndex:  currentTabIndex,
    type: BottomNavigationBarType.fixed,
    onTap: (int index){
          setState(() {
            currentTabIndex = index;
          });
    },
    );
    return Scaffold(
      body: tabPages[currentTabIndex],
      bottomNavigationBar: bottomNavBar,

    );
  }
}
