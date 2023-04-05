import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'addservice.dart';
import 'folio.dart';

class Folio2 extends StatefulWidget {
  const Folio2({Key? key}) : super(key: key);

  @override
  State<Folio2> createState() => _Folio2State();
}

class _Folio2State extends State<Folio2> {
  String _selectedGuest = "Select Guest...";
  String _selectedGuest1 = "Orange Juice";
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6E02A0),
        title:Text("Folio",

          style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
        leading: Icon(Icons.menu),

      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 3.0,  // bottom border width
                      color: Colors.grey,
                    ),
                    left: BorderSide(
                      width: 2.0,  // left border width
                      color: Colors.grey,
                    ),
                    right: BorderSide(
                      width: 2.0,  // right border width
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Folio/0045",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      SizedBox(height: 10,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Guest",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("Selvan",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check in Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check out Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Rooms",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("1",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Services",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("2",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return _buildAlertDialog1(context);
                                  }
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xffD9D9D9)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.add, color: Color(0xff4C027A)),
                                SizedBox(width: 4),
                                Text(
                                  "Add Service",
                                  style: TextStyle(
                                    color: Color(0xff4C027A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                return _buildAlertDialog(context);
                              }
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff4C027A)),
                            ),
                            child: Row(

                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.check_box_rounded, color: Colors.white),
                                SizedBox(width: 4),
                                Text(
                                  "Check out",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 15,),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Card(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 3.0,  // bottom border width
                      color: Colors.grey,
                    ),
                    left: BorderSide(
                      width: 2.0,  // left border width
                      color: Colors.grey,
                    ),
                    right: BorderSide(
                      width: 2.0,  // right border width
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Folio/0045",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      SizedBox(height: 10,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Guest",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("Selvan",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check in Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check out Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Rooms",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("1",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Services",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("2",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return _buildAlertDialog1(context);
                                  }
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xffD9D9D9)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.add, color: Color(0xff4C027A)),
                                SizedBox(width: 4),
                                Text(
                                  "Add Service",
                                  style: TextStyle(
                                    color: Color(0xff4C027A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return _buildAlertDialog(context);
                                  }
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff4C027A)),
                            ),
                            child: Row(

                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.check_box_rounded, color: Colors.white),
                                SizedBox(width: 4),
                                Text(
                                  "Check out",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 15,),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Card(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 3.0,  // bottom border width
                      color: Colors.grey,
                    ),
                    left: BorderSide(
                      width: 2.0,  // left border width
                      color: Colors.grey,
                    ),
                    right: BorderSide(
                      width: 2.0,  // right border width
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Folio/0045",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      SizedBox(height: 10,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Guest",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("Selvan",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check in Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check out Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Rooms",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("1",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Services",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("2",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Add your code here
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xffD9D9D9)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.add, color: Color(0xff4C027A)),
                                SizedBox(width: 4),
                                Text(
                                  "Add Service",
                                  style: TextStyle(
                                    color: Color(0xff4C027A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Add your code here
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff4C027A)),
                            ),
                            child: Row(

                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.check_box_rounded, color: Colors.white),
                                SizedBox(width: 4),
                                Text(
                                  "Check out",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 15,),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Card(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 3.0,  // bottom border width
                      color: Colors.grey,
                    ),
                    left: BorderSide(
                      width: 2.0,  // left border width
                      color: Colors.grey,
                    ),
                    right: BorderSide(
                      width: 2.0,  // right border width
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Folio/0045",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      SizedBox(height: 10,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Guest",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("Selvan",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check in Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check out Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Rooms",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("1",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Services",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("2",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {

                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xffD9D9D9)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.add, color: Color(0xff4C027A)),
                                SizedBox(width: 4),
                                Text(
                                  "Add Service",
                                  style: TextStyle(
                                    color: Color(0xff4C027A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {

                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff4C027A)),
                            ),
                            child: Row(

                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.check_box_rounded, color: Colors.white),
                                SizedBox(width: 4),
                                Text(
                                  "Check out",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 15,),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Card(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 3.0,  // bottom border width
                      color: Colors.grey,
                    ),
                    left: BorderSide(
                      width: 2.0,  // left border width
                      color: Colors.grey,
                    ),
                    right: BorderSide(
                      width: 2.0,  // right border width
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Folio/0045",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      SizedBox(height: 10,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Guest",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("Selvan",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check in Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check out Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Rooms",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("1",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Services",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("2",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Add your code here
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xffD9D9D9)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.add, color: Color(0xff4C027A)),
                                SizedBox(width: 4),
                                Text(
                                  "Add Service",
                                  style: TextStyle(
                                    color: Color(0xff4C027A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Add your code here
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff4C027A)),
                            ),
                            child: Row(

                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.check_box_rounded, color: Colors.white),
                                SizedBox(width: 4),
                                Text(
                                  "Check out",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 15,),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Card(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 3.0,  // bottom border width
                      color: Colors.grey,
                    ),
                    left: BorderSide(
                      width: 2.0,  // left border width
                      color: Colors.grey,
                    ),
                    right: BorderSide(
                      width: 2.0,  // right border width
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Folio/0045",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      SizedBox(height: 10,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Guest",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("Selvan",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check in Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("Check out Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("11:23 2023-06-23",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Rooms",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("1",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(

                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text("No.of Services",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                          Flexible(
                              flex: 5,
                              fit:FlexFit.tight,
                              child: Text("2",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return _buildAlertDialog(context);
                                  }
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xffD9D9D9)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.add, color: Color(0xff4C027A)),
                                SizedBox(width: 4),
                                Text(
                                  "Add Service",
                                  style: TextStyle(
                                    color: Color(0xff4C027A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return _buildAlertDialog(context);
                                  }
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff4C027A)),
                            ),
                            child: Row(

                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.check_box_rounded, color: Colors.white),
                                SizedBox(width: 4),
                                Text(
                                  "Check out",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 15,),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
  Widget _buildAlertDialog(BuildContext context) {
    return AlertDialog(

      actions: [
        Center(
          child: Text("Folio/0045",
            textAlign: TextAlign.start,

            style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
        ),
        Column(


          children: [


            SizedBox(height: 6,),
            Row(

              children: [
                Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Guest",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                Flexible(
                    flex: 5,
                    fit:FlexFit.tight,
                    child: Text("Selvan",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
              ],
            ),
            SizedBox(height: 5,),
            Text("CheckOut",

              style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
            SizedBox(height: 5,),
            Container(
                height: 36,

                decoration: BoxDecoration(
                  color: Color(0xffEAEAEA),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: () async{
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));

                      if (newDate == null) return;

                      setState(() => date= newDate);
                    },
                        child: Text('${date.day}/${date.month}/${date.year}',
                          style: TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize: 14),)
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.date_range,color: Color(0xff4C027A),),
                  ],
                )),
            SizedBox(height: 7,),
            Container(
              height: 36,
              decoration: BoxDecoration(
                color: Color(0xffEAEAEA),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () async {
                      TimeOfDay? newTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay(hour: 19, minute: 55),
                      );

                      if (newTime == null) return;

                      setState(() {
                        date = DateTime(date.year, date.month, date.day, newTime.hour, newTime.minute);
                      });
                    },
                    child: Text(
                      '${DateFormat('hh:mm a').format(date)}',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.access_time, color: Color(0xff4C027A)),
                ],
              ),
            ),
            SizedBox(height: 7,),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Folio()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xff4C027A)),
              ),
              child: Row(

                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.check_box_rounded, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    "Check out",
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
          ],
        )
        // Close button

      ],
    );
  }
  Widget _buildAlertDialog1(BuildContext context) {
    return AlertDialog(

      actions: [
       Column(
         children: [
           Row(
             children: [
               Expanded(
                 child: Container(

                   color:Color(0xff6E02A0),
                 child: Column(
                   children: [
                     Center(child: Text("Product/Service",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)),
                    SizedBox(height: 15,),
                     Center(child: Text("Quantity",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)),
                     SizedBox(height: 5,),
                     Center(child: Text("Unit Price",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)),
                     SizedBox(height: 5,),
                     Center(child: Text("Tax",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)),
                     SizedBox(height: 5,),
                     Center(child: Text("Sub Total",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)),
                     SizedBox(height: 5,),
                   ],
                 ),
                 ),
               ),
               Expanded(
                 child: Container(


                   child: Column(
                     children: [
                       Container(
   height: 18,
                         decoration: BoxDecoration(
                           color: Color(0xffEAEAEA),
                           border: Border.all(
                             color: Colors.grey,
                             width: 1,
                           ),
                           borderRadius: BorderRadius.circular(8),
                         ),
                         child: DropdownButton(
                           value: _selectedGuest1,


                           items: [
                             DropdownMenuItem(
                               child: Text("TIPS"),
                               value: "TIPS",
                             ),
                             DropdownMenuItem(
                               child: Text("Discount"),
                               value: "Discount",
                             ),
                             DropdownMenuItem(
                               child: Text("101"),
                               value: "101",
                             ),
                             DropdownMenuItem(
                               child: Text("102"),
                               value: "102",
                             ),
                             DropdownMenuItem(
                               child: Text("103"),
                               value: "103",
                             ),
                             DropdownMenuItem(
                               child: Text("104"),
                               value: "104",
                             ),
                             DropdownMenuItem(
                               child: Text("Orange Juice"),
                               value: "Orange Juice",
                             ),
                             DropdownMenuItem(
                               child: Text("B1A"),
                               value: "B1A",
                             ),
                             DropdownMenuItem(
                               child: Text("B1B"),
                               value: "B1B",
                             ),
                             DropdownMenuItem(
                               child: Text("SAUNA"),
                               value: "SAUNA",
                             ),
                             DropdownMenuItem(
                               child: Text("LAUNDRY"),
                               value: "LAUNDRY",
                             ),
                             DropdownMenuItem(
                               child: Text("SPA"),
                               value: "SPA",
                             ),
                             DropdownMenuItem(
                               child: Text("GYM"),
                               value: "GYM",
                             ),
                           ],
                           onChanged: (value) {
                             setState(() {
                               _selectedGuest = value!;
                             });
                           },
                           icon: Icon(Icons.arrow_drop_down),
                           iconSize: 24,
                           elevation: 16,
                           style: TextStyle(color: Colors.black),
                           underline: SizedBox(),
                           isExpanded: true,

                         ),

                       ),
                       SizedBox(height: 15,),
                       Center(child: Text("2",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
                       SizedBox(height: 5,),
                       Center(child: Text("2",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
                       SizedBox(height: 5,),
                       Center(child: Text("2",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
                       SizedBox(height: 5,),
                       Center(child: Text("2",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
                       SizedBox(height: 5,),
                     ],
                   ),
                 ),
               ),

             ],
           ),
           SizedBox(height: 15,),
           Center(
             child: TextButton(
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Addservice()),
                 );
               },
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all<Color>(Color(0xffD9D9D9)),
               ),
               child: Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Icon(Icons.add, color: Color(0xff4C027A)),
                   SizedBox(width: 4),
                   Text(
                     "Add Service",
                     style: TextStyle(
                       color: Color(0xff4C027A),
                       fontSize: 14,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ],
               ),
             ),
           ),

         ],
       )
        // Close button

      ],
    );
  }

}
