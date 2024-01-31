import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Settings"),
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
      body:  const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Privacy Policy",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Divider(indent: 10,endIndent: 10,thickness: 2,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Terms and conditions",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Divider(indent: 10,endIndent: 10,thickness: 2,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("join the team",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Divider(indent: 10,endIndent: 10,thickness: 2,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Blog",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Divider(indent: 10,endIndent: 10,thickness: 2,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Software Licences",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
