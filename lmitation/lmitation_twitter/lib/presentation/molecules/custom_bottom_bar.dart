import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  @override
  State createState() => _CustomBottomBar();
}

class _CustomBottomBar extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: <BottomNavigationBarItem>[
      buildBarItem(Icons.home, 'Home',(){Navigator.pushNamed(context,'/');}),
      buildBarItem(Icons.search, 'Search',(){Navigator.pushNamed(context,'/');}),
      buildBarItem(Icons.info, 'Info',(){Navigator.pushNamed(context,'/');}),
      buildBarItem(Icons.mail, 'DM',(){Navigator.pushNamed(context,'/mail');}),
    ],
    showUnselectedLabels: true,
    iconSize: 20.0,
    selectedFontSize: 10.0,
    unselectedFontSize: 9.0,
    selectedItemColor: Colors.blue[500],);
  }

  BottomNavigationBarItem buildBarItem(IconData data, String text,VoidCallback onPressed) {
    return BottomNavigationBarItem(
        icon: IconButton(
            icon: Icon(
              data,
              color: Colors.grey[400],
            ),
            onPressed: onPressed),
        title: Text(
          text,
          style: TextStyle(color: Colors.grey[400]),
        ));
  }
}
