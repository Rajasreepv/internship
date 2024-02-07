import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

int indexx = 0;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> pages = [
    PageWidget(
      color: Colors.red,
      content: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
      ),
    ),
    PageWidget(
      color: Colors.red,
      content: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("UserName"),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    PageWidget(
      color: Colors.red,
      content: Scaffold(
        body: Center(
          child: Column(
            children: [Text(("No Earnings till today"))],
          ),
        ),
      ),
    ),
    PageWidget(
      color: Colors.red,
      content: Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
      ),
    ),
    PageWidget(
      color: Colors.red,
      content: Scaffold(
        appBar: AppBar(
          title: Text("Help"),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 185, 205, 214),
          title: Text(
            "Drawer Assign",
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.brown,
              ),
              label: "Home",
              backgroundColor: const Color.fromARGB(255, 185, 205, 214)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.brown),
              label: "Profile",
              backgroundColor: const Color.fromARGB(255, 185, 205, 214)),
          BottomNavigationBarItem(
              icon: Icon(Icons.money, color: Colors.brown), label: "Earnings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.brown),
              label: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.help, color: Colors.brown), label: "Help"),
        ],
        currentIndex: indexx,
        onTap: (int index) {
          setState(() {
            indexx = index;
          });
        },
        iconSize: 18,
        selectedFontSize: 19,
      ),
      body: pages[indexx],
    );
  }
}

class PageWidget extends StatelessWidget {
  final Color color;
  final Widget content;

  const PageWidget({Key? key, required this.color, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: content,
      ),
    );
  }
}
