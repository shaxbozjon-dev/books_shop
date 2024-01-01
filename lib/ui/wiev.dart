import 'package:books_shop/ui/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _sanoq = 0;
  List pagelar = [Homes(), Text("1"), Text("2")];

  //List da pagelarni saqlaymiz nechta page busa shuncha

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pagelar[_sanoq],
        //bunga tushunmadim bodyga  yaratgan uzgaruvchini saqlagan
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _sanoq,
        onTap: (int newsanoq) {
          setState(() {
            newsanoq = _sanoq;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.blue,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Bag",
            icon: Icon(
              Icons.shop_2,
              color: Colors.blue,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profil",
            icon: Icon(
              Icons.person,
              color: Colors.blue,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
