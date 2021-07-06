import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 12),
          child: Row(
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: Image.network('https://i.pinimg.com/736x/0a/53/c3/0a53c3bbe2f56a1ddac34ea04a26be98.jpg'),
              ),
              
              SizedBox(
                width: 20,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  Text('Mona Ann',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w100),),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 30,
        ),

        Text('Welcome to',style: TextStyle(fontSize: 16,color: Colors.redAccent,fontWeight: FontWeight.w100),),
        Text('Bank of America',style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight: FontWeight.bold),),

        Padding(
          padding: EdgeInsets.only(left: 20,top: 5,right: 20,bottom: 30),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.redAccent,Colors.red]),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Total Balance Sheet',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('\$ 4.65',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 40),),
                ],
              ),
            ),
          ),
        ),

        Text('Transactions History',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),

        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black,
                  ),

                  child: ListTile(
                    title: Text('Transaction $index',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                    subtitle: Text('Complete details about transactions no $index',style: TextStyle(color: Colors.white),),
                    contentPadding: EdgeInsets.only(left: 18,right: 18,bottom: 12),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
