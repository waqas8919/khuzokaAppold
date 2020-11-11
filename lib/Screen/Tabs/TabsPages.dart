import 'package:flutter/material.dart';
import 'tab_navigation_item.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _currentIndex,

        children: <Widget>[
          // ignore: sdk_version_ui_as_code
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar:new Theme(
        data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.white,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Color(0xFF75ECA2),
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.yellow))), // sets the inactive color of the `BottomNavigationBar`


     child: BottomNavigationBar(
//        fixedColor: Color(0xFF75ECA2),
        showSelectedLabels: true,
        currentIndex: _currentIndex,
      backgroundColor: Colors.white,
        onTap: (int index) => setState(() => _currentIndex = index),

//        fixedColor: Color(0xFF75ECA2),
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(

            icon: ImageIcon(

              AssetImage('assets/home.png',),
              color: Color(0xFF92278F),
            ),
            title: Text('Home',style: TextStyle(color: Color(0xFF02D69B),fontSize:12.0,fontWeight: FontWeight.w600, fontFamily: "circular", ),),
          ),
          new BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/profile.png"),
              color: Color(0xFF92278F),
            ),
            title: Text('Profile',style:TextStyle(color: Color(0xFF02D69B),fontSize:12.0,fontWeight: FontWeight.w600, fontFamily: "circular",),),
          ),

        ]
      )
      ),
    );
  }
}
