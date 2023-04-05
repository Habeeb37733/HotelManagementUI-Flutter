import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appdrawer extends StatelessWidget {
  const Appdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(


        children: [
          Center(
            child: UserAccountsDrawerHeader(


              accountEmail: Text('admin@gmail.com',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),),
              accountName: Text('admin',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/userpic.png'),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),

            ),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width*0.6,
              child: Divider(thickness: 3,)),


          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: SizedBox(height:18,width:18,child: Icon(Icons.home_outlined,color: Color(0xff4C4A4A),)),
                  title: Text('Home',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: SizedBox(height:18,width:18,child: Icon(Icons.book_outlined,color: Color(0xff4C4A4A),)),
                  title: Text('Reservations',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: SizedBox(height:18,width:18,child: Icon(Icons.reset_tv_rounded,color: Color(0xff4C4A4A),)),
                  title: Text('Check In',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: SizedBox(height:18,width:18,child: Icon(Icons.shopping_cart,color: Color(0xff4C4A4A),)),
                  title: Text('Orders',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: SizedBox(height:18,width:18,child: Icon(Icons.people,color: Color(0xff4C4A4A),)),
                  title: Text('Availability',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: SizedBox(height:18,width:18,child: Icon(Icons.fact_check,color: Color(0xff4C4A4A),)),
                  title: Text('Availability',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: SizedBox(height:18,width:18,child: Icon(Icons.groups,color: Color(0xff4C4A4A),)),
                  title: Text('Folio',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: SizedBox(height:18,width:18,child: Icon(Icons.logout,color: Color(0xff4C4A4A),)),
                  title: Text('Logout',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  onTap: () {

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
