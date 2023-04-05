import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(

      border: TableBorder.all(color: Colors.grey),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(

            decoration: BoxDecoration(color:Color(0xffD9D9D9)),
            children: [
              TableCell(child: Center(child: Text('Room No',
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
              ))),
              TableCell(child: Center(child: Text('31-03-23',
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
              ))),
              TableCell(child: Center(child: Text('1-04-23',
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
              )))
            ]
        ),
        TableRow(
            decoration: BoxDecoration(color: Colors.green,

            ),

            children: [
              TableCell(
                  child: Container(
                      color: Colors.white,
                      child: Center(child: Text('10',
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
                      )))),
              TableCell(child: Center(child: Text('Booked',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              ))),
              TableCell(child: Center(child: Text('Booked',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              )))
            ]
        ),
        TableRow(
            decoration: BoxDecoration(color: Color(0xffB5AE00),

            ),

            children: [
              TableCell(
                  child: Container(
                      color: Colors.white,
                      child: Center(child: Text('64',
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
                      )))),
              TableCell(child: Center(child: Text('Free',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              ))),
              TableCell(child: Center(child: Text('Free',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              )))
            ]
        ),
        TableRow(
            decoration: BoxDecoration(color: Colors.green,

            ),

            children: [
              TableCell(
                  child: Container(
                      color: Colors.white,
                      child: Center(child: Text('33',
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
                      )))),
              TableCell(child: Center(child: Text('Free',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              ))),
              TableCell(child: Center(child: Text('Free',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              )))
            ]
        ),
        TableRow(
            decoration: BoxDecoration(color: Color(0xffB5AE00),

            ),

            children: [
              TableCell(
                  child: Container(
                      color: Colors.white,
                      child: Center(child: Text('59',
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
                      )))),
              TableCell(child: Center(child: Text('Booked',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              ))),
              TableCell(child: Center(child: Text('Booked',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              )))
            ]
        ),
        TableRow(
            decoration: BoxDecoration(color: Colors.green,

            ),

            children: [
              TableCell(
                  child: Container(
                      color: Colors.white,
                      child: Center(child: Text('87',
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
                      )))),
              TableCell(child: Center(child: Text('Free',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              ))),
              TableCell(child: Center(child: Text('Free',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              )))
            ]
        ),
        TableRow(
            decoration: BoxDecoration(color: Colors.green,

            ),

            children: [
              TableCell(
                  child: Container(
                      color: Colors.white,
                      child: Center(child: Text('93',
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
                      )))),
              TableCell(child: Center(child: Text('Free',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              ))),
              TableCell(child: Center(child: Text('Free',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              )))
            ]
        ),
        TableRow(
            decoration: BoxDecoration(color: Colors.green,

            ),

            children: [
              TableCell(
                  child: Container(
                      color: Colors.white,
                      child: Center(child: Text('87',
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
                      )))),
              TableCell(child: Center(child: Text('Free',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              ))),
              TableCell(child: Center(child: Text('Free',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
              )))
            ]
        ),

      ],

    );

  }
}


