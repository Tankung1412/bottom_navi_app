import 'package:bottom_navi_app/help.dart';
import 'package:bottom_navi_app/home.dart';
import 'package:bottom_navi_app/member.dart';
import 'package:bottom_navi_app/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage()
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _naviItemIndex = 0; ///ลำดับของปุ่มที่เลือก
  var pages = <Widget> [const HomePage(), const Product(), const Member(), const Help()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomNavigationBar'),centerTitle: true,),
      body: pages[_naviItemIndex],
      bottomNavigationBar: BottomNavigationBar(
        /*type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple,
        fixedColor: Colors.white, */ //สีปุ่มที่ถูกเลือก

        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        
        showSelectedLabels: true, //แสดงข้อวามบนปุ่มที่ถูกเลือก
        showUnselectedLabels: true, //แสดงข้อวามบนปุ่มที่ไม่ถูกเลือก
        currentIndex: _naviItemIndex,

        items: btnNavItem(),
        onTap: (index){
          setState(() {
            _naviItemIndex = index;
          });
        },
        ),
    );
  }

  List<BottomNavigationBarItem> btnNavItem(){
    var iconItem = [Icons.home, Icons.shopping_cart, Icons.person, Icons.help];
    var LabelItem = ['Home', 'Product', 'Member', 'Help'];
    var bgColorItem = [Colors.deepPurple, Colors.indigo, Colors.teal, Colors.brown];

    List<BottomNavigationBarItem> mybtn;

    BottomNavigationBarItem createItem(index){
      return BottomNavigationBarItem(
        icon: Icon(iconItem[index]),
        label: LabelItem[index],
        backgroundColor: bgColorItem[index]
      );
    }
    mybtn = List.generate(iconItem.length, createItem);
    
    return mybtn;
  }
}