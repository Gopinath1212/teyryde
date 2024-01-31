import 'package:flutter/material.dart';

class SafetyNeedTrusted extends StatefulWidget {
  const SafetyNeedTrusted({super.key});

  @override
  State<SafetyNeedTrusted> createState() => _SafetyNeedTrustedState();
}

class _SafetyNeedTrustedState extends State<SafetyNeedTrusted> {
  bool isChecked0 = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Emergency Contacts"),
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
              Icon(Icons.help),
              Text("Help")
            ],
          ),
        )],

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
            Padding(
              padding: const EdgeInsets.only(right: 100.0),
              child: Text("You can add upto 4 contacts only"),
            ),
            Row(
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Number")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Checkbox(
                    tristate: true,
                    value: isChecked0,
                    checkColor: Colors.green,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked0 = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Divider(thickness: 2,),
            Row(
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Number")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Checkbox(
                    tristate: true,
                    value: isChecked1,
                    checkColor: Colors.green,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked1 = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Divider(thickness: 2,),
            Row(
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Number")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Checkbox(
                    tristate: true,
                    value: isChecked2,
                    checkColor: Colors.green,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked2 = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Divider(thickness: 2,)

          ],
        ),
      ),
    );
  }
}
