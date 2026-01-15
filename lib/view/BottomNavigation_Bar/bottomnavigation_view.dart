import 'package:bachatgat/view/Gat_Nirmati/gat_nirmati.dart';
import 'package:bachatgat/view/Home/home_view.dart';
import 'package:bachatgat/view/More/more.dart';
import 'package:bachatgat/view/Nondani/nondani.dart';
import 'package:bachatgat/view/Websites/websites.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bottom Nav Example",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const BottomNavPage(),
    );
  }
}

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    GatNirmitiPage(),
    WebsitePage(),
    NonadniPage(),
    MeroPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 171, 153, 153),
          border: const Border(top: BorderSide(color: Colors.green, width: 2)),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: SizedBox(
            height: 80,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              iconSize: 30,
              selectedFontSize: 16,
              unselectedFontSize: 16,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "मुखपृष्ठ",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.group),
                  label: "फायदे",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.language),
                  label: "वेब",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.note_alt),
                  label: "नोंदनी",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz),
                  label: "अधिक",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
