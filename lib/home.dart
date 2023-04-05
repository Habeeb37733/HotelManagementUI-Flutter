import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appdrawer.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Appdrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff6E02A0),
        title:Text("Home",

        style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),


      ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(8),
                    child: Text("Today’s plan",

                      style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),),
                  ),
                  Row(

                    children: [
                  Expanded(
                    child: SizedBox(
                      height: 120,
                      child: Card(
                          color: Color(0xffB2E9E9),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                SizedBox(
                               height: 50,
                                    child: Image.asset('images/card1.png')),
                                SizedBox(height: 5,),
                                Text("ArrivingGuest",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                SizedBox(height: 5,),
                                Text("12",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                              ],
                            ),

                        ),
                      ),
                    ),
                  ),
                 Expanded(
                   child: SizedBox(
                       height: 120,
                       child:Card(
                           color: Color(0xffFFE1A6),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               children: [
                                 SizedBox(
                                     height: 50,
                                     child: Image.asset('images/card2.png')),
                                 SizedBox(height: 5,),

                                 Text("Departing Guest",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                 SizedBox(
                                   height: 5,
                                 ),
                                 Text("9",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                               ],
                             ),
                         ),
                       )),
                 ) ,
                    ],
                  ),
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(8),
                    child: Text("Up-To-Date ",

                      style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),),
                  ),
                  Row(

                    children: [
                      Expanded(
                        child: SizedBox(

                          height: 120,
                          child: Card(
                            color: Color(0xffB2E9E9),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: 50,
                                      child: Image.asset('images/card3.png')),
                                  SizedBox(height: 5,),
                                  Text("In House Guests",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                  SizedBox(height: 5,),
                                  Text("12",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(

                           height: 120,
                          child: Card(
                            color: Color(0xffDCDBDB),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: Image.asset('images/card4.png'),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Departing Guest",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "3",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )


                    ],
                  ),
                ],
                ) ,
                  Padding(
                    padding:  EdgeInsets.all(8),
                    child: Text("Available Rooms",

                      style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),),
                  ),
                  Row(

                    children: [
                      Expanded(
                        child: Container(

                          child:
                          Column(
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                      flex: 5,
                                      fit: FlexFit.tight,
                                      child: Text("Single",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
                               Flexible(

                                 child:
                               Text("23",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),),

                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Flexible(
                                      flex: 5,
                                      fit: FlexFit.tight,
                                      child: Text("Double",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
                                  Flexible(

                                    child:
                                    Text("12",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),),

                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                     Expanded(child:Container(
                        child:
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12.0),
                                        child: LinearProgressIndicator(
                                          value: 0.6,
                                          backgroundColor: Color(0xffD9D9D9),
                                          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6E02A0)),
                                          minHeight: 12.0,
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            '60%',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                ),



                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12.0),
                                        child: LinearProgressIndicator(
                                          value: 0.12,
                                          backgroundColor: Color(0xffD9D9D9),
                                          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6E02A0)),
                                          minHeight: 12.0,
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            '12%',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                ),



                              ],
                            ),
                          ],
                        ),
                      ),),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.all(8),
                    child: Text("Occupied Rooms",

                      style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),),
                  ),
                  Row(

                    children: [
                      Expanded(
                        child: Container(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                        flex: 5,
                                        fit: FlexFit.tight,
                                        child: Text("Single",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
                                    Flexible(

                                      child:
                                      Text("23",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),),

                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Flexible(
                                        flex: 5,
                                        fit: FlexFit.tight,
                                        child: Text("Double",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
                                    Flexible(

                                      child:
                                      Text("12",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),),

                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Flexible(
                                        flex: 5,
                                        fit: FlexFit.tight,
                                        child: Text("Total Rooms",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
                                    Flexible(

                                      child:
                                      Text("60",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),),

                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
  'Occupancy',
  style: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  ),
),
                              SizedBox(height: 10,),
                              Stack(
                                children: [
                                  Center(
                                    child: SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: CircularProgressIndicator(
                                        value: 0.6,
                                        strokeWidth: 10,
                                        backgroundColor: Color(0xffD9D9D9),
                                        valueColor: AlwaysStoppedAnimation<Color>(
                                          Color(0xff4C027A),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Center(
                                      child: Text(
                                        '60%',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),

                ],
              ),
          ),
        ),

      );
    
  }



}
