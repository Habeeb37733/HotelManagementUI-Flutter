import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Checkin extends StatefulWidget {
  const Checkin({Key? key}) : super(key: key);

  @override
  State<Checkin> createState() => _CheckinState();
}

class _CheckinState extends State<Checkin> {
  String _selectedGuest = "Select Guest...";
  String _selectedGuest1 = "Address...";
  String _selectedGuest2 = "Select";
  String _selectedGuest3 = "Select Rooms";
  int _counter = 0;
  DateTime date = DateTime.now();

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6E02A0),
        title:Text("Check In",

          style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
        leading: Icon(Icons.arrow_back_outlined),

      ),
      body: SingleChildScrollView(
        child: Padding(
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
              Text("Invoice Address",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),

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
                      child: Text("Address..."),
                      value: "Address...",
                    ),
                    DropdownMenuItem(
                      child: Text("Address 1"),
                      value: "Address 1",
                    ),
                    DropdownMenuItem(
                      child: Text("Address 2"),
                      value: "Address 2",
                    ),
                    DropdownMenuItem(
                      child: Text("Address 3"),
                      value: "Address 3",
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
            height: 5,),
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
                  SizedBox(width: 10,),

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
                height: 10,
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
                  ),

                  SizedBox(width: 10,),

                  Expanded(
                    child: Container(
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
                  ),


                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("ID Proofs",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),

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
                  value: _selectedGuest2,


                  items: [
                    DropdownMenuItem(
                      child: Text("Select"),
                      value: "Select",
                    ),
                    DropdownMenuItem(
                      child: Text("Select 1"),
                      value: "Select 1",
                    ),
                    DropdownMenuItem(
                      child: Text("Select 2"),
                      value: "Select 2",
                    ),
                    DropdownMenuItem(
                      child: Text("Select 3"),
                      value: "Select 3",
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedGuest2 = value!;
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
                  value: _selectedGuest3,


                  items: [
                    DropdownMenuItem(
                      child: Text("Select Rooms"),
                      value: "Select Rooms",
                    ),
                    DropdownMenuItem(
                      child: Text("Select Rooms 1"),
                      value: "Select Rooms 1",
                    ),
                    DropdownMenuItem(
                      child: Text("Select Rooms 2"),
                      value: "Select Rooms 2",
                    ),
                    DropdownMenuItem(
                      child: Text("Select Rooms 3"),
                      value: "Select Rooms 3",
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedGuest3 = value!;
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
              SizedBox(height: 50,),
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
                  child: Text('Check In',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
