import 'package:clone_traveloka/pages/awal.dart';
import 'package:clone_traveloka/pages/inbox.dart';
import 'package:clone_traveloka/pages/pesanan.dart';
import 'package:clone_traveloka/pages/profile.dart';
import 'package:clone_traveloka/pages/simpan.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveloka',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Traveloka'),
    );
  }

  void setState(Null Function() param0) {}
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _layoutPage = [Awal(), Simpan(), Pesanan(), Inbox(), Profile()];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory), title: Text("Awal")),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note), title: Text("Simpan")),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), title: Text("Pesanan")),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("Inbox")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Akun Saya")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
