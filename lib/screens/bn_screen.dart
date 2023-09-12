import 'package:azkar2_app/screens/home_screen.dart';
import 'package:azkar2_app/screens/products_screen.dart';
import 'package:azkar2_app/screens/settings_screen.dart';
import 'package:azkar2_app/screens/users_screen.dart';
import 'package:flutter/material.dart';

import '../models/bn_ietm.dart';

class BnScreen extends StatefulWidget {
  const BnScreen({super.key});

  @override
  State<BnScreen> createState() => _BnScreenState();
}

class _BnScreenState extends State<BnScreen> {

  int  _currentIndex = 0 ;

  final List<BnItem> _item = <BnItem>[
    const BnItem('Home',HomeScreen()),
    const BnItem('Users',UsersScreen()),
    const BnItem('Categories',ProductScreen()),
    const BnItem('Settings',SettingScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(_item[_currentIndex].title),
      ),
      drawer: Drawer(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
             UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGibcROhk8A0DUjShbK1qCuiAkO26_muavlw&usqp=CAU')),
              accountName: Text('Nezar Nassar'),
              accountEmail: Text('nsarmhnd2@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Info'),
              subtitle: Text('Know more!'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('Return to login!'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
          ],
        ),

      ),
      body: _item[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() => _currentIndex = index);
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,

        elevation: 20,

        //**************************************
        fixedColor: Colors.orange,
        //**************************************
        // selectedItemColor: Colors.blue.shade700,
        unselectedItemColor: Colors.grey.shade400,
        //**************************************
        selectedIconTheme: IconThemeData(color: Colors.pink.shade400),
        unselectedIconTheme: IconThemeData(color: Colors.grey.shade400),
        //**************************************
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
        //**************************************
        selectedFontSize: 14,
        unselectedFontSize: 12,
        //**************************************
        iconSize: 24,
        //**************************************
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.pink.shade100,
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home'
          ),

          BottomNavigationBarItem(
              backgroundColor: Colors.blue.shade100,
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: 'Useres'
          ),


          BottomNavigationBarItem(
              backgroundColor: Colors.deepOrange.shade100,
              icon: Icon(Icons.category_outlined),
              activeIcon: Icon(Icons.category),
              label: 'Categories'
          ),


          BottomNavigationBarItem(
              backgroundColor: Colors.purple.shade100,
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: 'Settings'
          ),


        ],
      ),
    );
  }
}
