import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addservice extends StatefulWidget {
  const Addservice({Key? key}) : super(key: key);

  @override
  State<Addservice> createState() => _AddserviceState();
}

class _AddserviceState extends State<Addservice> {
  String _selectedGuest = "Select Guest...";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6E02A0),
        title:Text("Add Services",

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
  height: 8,
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
            SizedBox(height: 10,),
            Row(

              children: [
                Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Room No",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                Flexible(
                    flex: 5,
                    fit:FlexFit.tight,
                    child: Text("109",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),


              ],
            ),


            SizedBox(height: 10,),
            Text("Room Services",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
            SizedBox(height: 10,),
            Row(

              children: [
                Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Product",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                Flexible(
                    flex: 5,
                    fit:FlexFit.tight,
                    child: Text("Orange Juice",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),


              ],
            ),
            SizedBox(height: 8,),
            Row(

              children: [
                Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Quantity",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                Flexible(
                    flex: 5,
                    fit:FlexFit.tight,
                    child: Text("2",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),


              ],
            ),
            SizedBox(height: 8,),
            Row(

              children: [
                Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Unit Price",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                Flexible(
                    flex: 5,
                    fit:FlexFit.tight,
                    child: Text("80",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),


              ],
            ),
            SizedBox(height: 8,),
            Row(

              children: [
                Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Sub Total",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                Flexible(
                    flex: 5,
                    fit:FlexFit.tight,
                    child: Text("160",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),


              ],
            ),
            SizedBox(height: 8,),
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

        ],
        ),
      ),
    );
  }
}
