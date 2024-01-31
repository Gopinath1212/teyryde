import 'package:flutter/material.dart';

class PaymentAndWallet extends StatefulWidget {
  const PaymentAndWallet({super.key});

  @override
  State<PaymentAndWallet> createState() => _PaymentAndWalletState();
}

class _PaymentAndWalletState extends State<PaymentAndWallet> {
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
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text("Payment & Wallet",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Payment & Wallets?",
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
                    child: Text("TYRYDE Coins?",
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
