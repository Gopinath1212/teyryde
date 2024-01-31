import 'package:flutter/material.dart';

class ReferFriends extends StatefulWidget {
  const ReferFriends({super.key});

  @override
  State<ReferFriends> createState() => _ReferFriendsState();
}

class _ReferFriendsState extends State<ReferFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Invite Friends"),


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),

                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search contacts',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all()
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150.0),
                  child: Column(
                    children: [
                      Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Number")
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Member"),
              )
              ],
            ),
            Divider(thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all()
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150.0),
                  child: Column(
                    children: [
                      Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Number")
                    ],
                  ),
                ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("INVITE",style: TextStyle(fontWeight: FontWeight.bold),),
               ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void launch(String url) {}
}
