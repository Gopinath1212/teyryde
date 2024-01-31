import 'package:flutter/material.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({super.key});

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Add Money"),


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              // enabledBorder: const OutlineInputBorder(
                              //   // width: 0.0 produces a thin "hairline" border
                              //   borderSide: const BorderSide(color: Colors.black, width: 1.0),
                              // ),


                              labelText: '',
                              // focusedBorder: OutlineInputBorder(
                              //     borderSide: BorderSide(
                              //         color: Colors.blue
                              //     )
                              // )

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all()
                    ),
                    child: Center(child: Text("\u{20B9}100",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all()
                    ),
                    child: Center(child: Text("\u{20B9}200",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all()
                    ),
                    child: Center(child: Text("\u{20B9}500",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                )
              ],
            ),
            SizedBox(height: 100,),
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all()
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  Text("Add Money")
                ],
              )
            ),

          ],
        ),
      ),
    );
  }
}
