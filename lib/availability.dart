import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'avilabilitytable.dart';


class Availabitiy extends StatefulWidget {
  const Availabitiy({Key? key}) : super(key: key);

  @override
  State<Availabitiy> createState() => _AvailabitiyState();
}

class _AvailabitiyState extends State<Availabitiy> {
  DateTime? _startDate;
  DateTime? _endDate;
  final TextEditingController _dateController = TextEditingController();
  DateTime date = DateTime.now();

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (selectedDate != null) {
      if (isStartDate) {
        setState(() {
          _startDate = selectedDate;
        });
      } else {
        setState(() {
          _endDate = selectedDate;
        });
      }
      _updateDate();
    }
  }

  void _updateDate() {
    String startDateString = '';
    String endDateString = '';
    if (_startDate != null) {
      startDateString = DateFormat('dd/MM/yyyy').format(_startDate!);
    }
    if (_endDate != null) {
      endDateString = DateFormat('dd/MM/yyyy').format(_endDate!);
    }
    _dateController.text = '$startDateString - $endDateString';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6E02A0),
        title:Text("Availability",

          style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
        leading: Icon(Icons.arrow_back_outlined),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text("From",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
            ),

            Padding(
              padding: const EdgeInsets.all(13.0),
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
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text("To",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
            ),

            Padding(
              padding: const EdgeInsets.all(13.0),
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
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.95   ,
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
                  child: Text('Check Availability',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                ),
              ),
            ),
            SizedBox(height: 15,),
            MyTable(),



        ],
    ),
      ),
    );
  }
}
