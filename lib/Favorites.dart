import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Favourites"),


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Center(child: Image.asset("assets/map_place.png",scale: 5,)),
            Text("Add location that you frequently\n"
                "visit for quik access",style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
            SizedBox(height: 200,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all()
              ),
              child: Center(child: Text("Add Favourites",style: TextStyle(fontSize: 16),)),
            )
          ],
        ),
      ),
    );
  }
}
