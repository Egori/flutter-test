import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class NawBar extends StatefulWidget {

  Function(dynamic) _callback;

  int selectedItemPosition;

  NawBar(this.selectedItemPosition, this._callback);

  @override
  _NawBarState createState() => _NawBarState();
}

class _NawBarState extends State<NawBar> {
  var _selectedItemPosition;

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.circle,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      padding: EdgeInsets.all(6),
      shadowColor: Colors.black,
      elevation: 11,

      ///configuration for SnakeNavigationBar.color
//snakeViewColor: Colors.black12,
   //   selectedItemColor: Colors.blue,
// unselectedItemColor: Colors.blueGrey,

      ///configuration for SnakeNavigationBar.gradient
// snakeViewGradient: selectedGradient,
// selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
// unselectedItemGradient: unselectedGradient,

// showUnselectedLabels: showUnselectedLabels,
// showSelectedLabels: showSelectedLabels,
//

      currentIndex: _selectedItemPosition,


      onTap: (index) =>  {
        _selectedItemPosition = index,
        widget._callback(index)
      },

     // onTap: (index) => setState(() => _selectedItemPosition = index),

      items: [
        const BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline), label: 'mail'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.list_alt), label: 'list1'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.send), label: 'send'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.send), label: 'list2'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'account'),
      ],
      selectedLabelStyle: const TextStyle(fontSize: 14),
      unselectedLabelStyle: const TextStyle(fontSize: 10),
    );
  }
}

Widget navBar() => SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.circle,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      padding: EdgeInsets.all(6),
      shadowColor: Colors.black,
      elevation: 11,

      ///configuration for SnakeNavigationBar.color
//snakeViewColor: Colors.black12,
// selectedItemColor: Colors.blue,
// unselectedItemColor: Colors.blueGrey,

      ///configuration for SnakeNavigationBar.gradient
// snakeViewGradient: selectedGradient,
// selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
// unselectedItemGradient: unselectedGradient,

// showUnselectedLabels: showUnselectedLabels,
// showSelectedLabels: showSelectedLabels,
//
// currentIndex: _selectedItemPosition,

      //onTap: (index) =>

      items: [
        const BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline), label: 'tickets'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.list_alt), label: 'calendar'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_outlined), label: 'home'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.control_point_duplicate_rounded),
            label: 'microphone'),
      ],
      selectedLabelStyle: const TextStyle(fontSize: 14),
      unselectedLabelStyle: const TextStyle(fontSize: 10),
    );
