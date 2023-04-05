import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reservations extends StatefulWidget {
  const Reservations({Key? key}) : super(key: key);

  @override
  State<Reservations> createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  String _selectedGuest = "Select Guest...";
  String _selectedGuest1 = "Select Rooms...";
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6E02A0),
        title:Text("Reservations",

          style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
        leading: Icon(Icons.arrow_back_outlined),

      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Guest’s Name",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),

            SizedBox(
              height: 5,
            ),
            Container(height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffEAEAEA),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton(
                value: _selectedGuest,


                items: [
                  DropdownMenuItem(
                    child: Text("Select Guest..."),
                    value: "Select Guest...",
                  ),
                  DropdownMenuItem(
                    child: Text("Guest 1"),
                    value: "Guest 1",
                  ),
                  DropdownMenuItem(
                    child: Text("Guest 2"),
                    value: "Guest 2",
                  ),
                  DropdownMenuItem(
                    child: Text("Guest 3"),
                    value: "Guest 3",
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Check In",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                Text("Check Out",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
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
                ),
                SizedBox(width: 7,),

                Expanded(
                  child: Container(
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
                ),

              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ADULTS",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                Text("CHILDREN",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                        //height: 28.61,
                        decoration: BoxDecoration(
                       //   color: Color(0xFFECEBEB), // set the background color
                          borderRadius: BorderRadius.circular(8.0), // set the shape
                        ),
                        child: IconButton(
                          icon: Center(child: Icon(Icons.remove)),
                          onPressed: _decrementCounter,
                        ),
                      ),


                      Expanded(
                        child: Container(

 height: 28.61,
                          decoration: BoxDecoration(
                            color: Color(0xFFEAEAEA), // set the background color
                            borderRadius: BorderRadius.circular(8.0), // set the shape
                          ),
                          child: Center(child: Text(
                            '$_counter',
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                          ),),
                        ),
                      ),
                      Container(
                      //  width: 50,
                       // height: 28.61,
                        decoration: BoxDecoration(
                         // color: Color(0xFFEAEAEA),// set the background color
                          borderRadius: BorderRadius.circular(8.0), // set the shape
                        ),
                        child: Center(
                          child: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: _incrementCounter,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
               height: 10, // adjust height of the divider
                  thickness: 2, // adjust thickness of the divider
                  color: Colors.black, // set color of the divider
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                        //height: 28.61,
                        decoration: BoxDecoration(
                          //   color: Color(0xFFECEBEB), // set the background color
                          borderRadius: BorderRadius.circular(8.0), // set the shape
                        ),
                        child: IconButton(
                          icon: Center(child: Icon(Icons.remove)),
                          onPressed: _decrementCounter,
                        ),
                      ),


                      Expanded(
                        child: Container(

                          height: 28.61,
                          decoration: BoxDecoration(
                            color: Color(0xFFEAEAEA), // set the background color
                            borderRadius: BorderRadius.circular(8.0), // set the shape
                          ),
                          child: Center(child: Text(
                            '$_counter',
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                          ),),
                        ),
                      ),
                      Container(
                        //  width: 50,
                        // height: 28.61,
                        decoration: BoxDecoration(
                          // color: Color(0xFFEAEAEA),// set the background color
                          borderRadius: BorderRadius.circular(8.0), // set the shape
                        ),
                        child: Center(
                          child: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: _incrementCounter,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text("Rooms",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),

            SizedBox(
              height: 5,
            ),
            Container(height: 36.84,
              width: double.infinity,
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
                    child: Text("Select Rooms..."),
                    value: "Select Rooms...",
                  ),
                  DropdownMenuItem(
                    child: Text("Room 1"),
                    value: "Room 1",
                  ),
                  DropdownMenuItem(
                    child: Text("Room 2"),
                    value: "Room 2",
                  ),
                  DropdownMenuItem(
                    child: Text("Room 3"),
                    value: "Room 3",
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
            SizedBox(height: 100,),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.95,
              child: ElevatedButton(
                onPressed: () {
                  // action to perform when the button is pressed
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4C027A),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                child: Text('Reserve',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              ),
            ),





          ],
        ),
      ),
    );
  }
}
