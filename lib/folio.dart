import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Folio extends StatefulWidget {
  const Folio({Key? key}) : super(key: key);

  @override
  State<Folio> createState() => _FolioState();
}

class _FolioState extends State<Folio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6E02A0),
        title:Text("Folio",

          style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
        leading: Icon(Icons.arrow_back_outlined),

      ),
      body:Padding(
        padding: const EdgeInsets.all(18.0),
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
            Text("Room Lines",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
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
            SizedBox(height: 5,),
            Row(

              children: [
                Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Check in ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
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
                    child: Text("Check out",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
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
                    child: Text("Unit Price",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                Flexible(
                    flex: 5,
                    fit:FlexFit.tight,
                    child: Text("1500",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
              ],
            ),
            SizedBox(height: 5,),
            Row(

              children: [
                Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Sub Total",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff4C027A)),)),
                Flexible(
                    flex: 5,
                    fit:FlexFit.tight,
                    child: Text("Rs 1500.00",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
              ],
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.8,
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
                child: Text('Make Payment',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
