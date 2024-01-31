import 'package:flutter/material.dart';

class MyRewards extends StatefulWidget {
  const MyRewards({super.key});

  @override
  State<MyRewards> createState() => _MyRewardsState();
}

class _MyRewardsState extends State<MyRewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("My Rewards"),
        actions: [Container(
          height: 40,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all()
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.help),
              Text("Help")
            ],
          ),
        )],

      ),
      body: Column(
        children: [
          Card(
            child: Container(
              height: 120,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Center(child:Text("Coin rewards",style: TextStyle(fontSize: 18),) )),
                      VerticalDivider(width: 1.0,color: Colors.red,),
                      Expanded(child: Center(child: Text("vouchers",style: TextStyle(fontSize: 18),))),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
