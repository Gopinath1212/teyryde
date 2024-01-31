import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("FAQs"),
        actions: [Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all()
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.airplane_ticket),
              Text("Tickets")
            ],
          ),
        )],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 228.0),
              child: Text("Account & App",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("How can I book a ride?",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("How can I schedule a ride in advance?",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("How do I turn off the Notification?",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("How do I turn on/off picture-in-picture\nfeature?",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("How do I update my mobile number?",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("How do I update my email ID?",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("How do I update the lanuage on\nmy app?",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("How to update my work/home or\nfavorite location?",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
