import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelmngmentui/reservation.dart';

import 'availability.dart';
import 'checkin.dart';
import 'folio2.dart';
import 'home.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    // add your widgets here for each tab
    Home(),
    Reservations(),
    Checkin(),
    Availabitiy() ,
    Folio2(),
  ];

  Widget _fab = FloatingActionButton(

    backgroundColor: Color(0xff4C027A),
    child: Icon(Icons.home_outlined),
    onPressed: () {},
  );

  bool _isFabDocked = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        _fab = FloatingActionButton(
          backgroundColor: Color(0xff4C027A),
          onPressed: () {
            setState(() {
              _isFabDocked = !_isFabDocked;
            });
          },
          child: Icon(Icons.home),
        );
      } else if (_selectedIndex == 1) {
        _fab = FloatingActionButton(
          backgroundColor: Color(0xff4C027A),
          onPressed: () {
            setState(() {
              _isFabDocked = !_isFabDocked;
            });
          },
          child: Icon(Icons.book_outlined),
        );
      } else if (_selectedIndex == 2) {
        _fab = FloatingActionButton(
          backgroundColor: Color(0xff4C027A),
          onPressed: () {
            setState(() {
              _isFabDocked = !_isFabDocked;
            });
          },
          child: Icon(Icons.reset_tv_rounded),
        );
      } else if (_selectedIndex ==3){
        _fab = FloatingActionButton(
          backgroundColor: Color(0xff4C027A),
          onPressed: () {
            setState(() {
              _isFabDocked = !_isFabDocked;
            });
          },
          child: Icon(Icons.fact_check),
        );
      } else {
        _fab = FloatingActionButton(
          backgroundColor: Color(0xff4C027A),
          onPressed: () {
            setState(() {
              _isFabDocked = !_isFabDocked;
            });
          },
          child: Icon(Icons.groups),
        );
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.home_outlined,color: Color(0xff575555),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined,color: Color(0xff575555)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reset_tv_rounded,color: Color(0xff575555)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check,color: Color(0xff575555)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups,color: Color(0xff575555)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: _fab, backgroundColor: Color(0xff4C027A),
      floatingActionButtonLocation: _isFabDocked
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.centerFloat,
    );
  }

}
