import 'package:flutter/material.dart';

class ShowPassbook extends StatefulWidget {
  const ShowPassbook({super.key});

  @override
  State<ShowPassbook> createState() => _ShowPassbookState();
}

class _ShowPassbookState extends State<ShowPassbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Passbook"),
        actions: [Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all()
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.airplane_ticket),
              Text("Help")
            ],
          ),
        )],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.payment),
                Column(
                  children: [
                    Text("Debit",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    Text("QRPay"),
                    Text("01 Jan 24,06.00 PM")
                  ],
                ),
                Text("-\u{20B9}50.00",style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Divider(thickness: 1,endIndent: 1,)
          ],
        ),
      ),
    );
  }
}
