import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();  
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    // return Container(child: Text('Hiiiiiiiii',style:TextStyle(color: Colors.redAccent) , ),
    //height: 1000, color:Colors.white12, );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: Text('Royal Crazes'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), 
              onPressed: ()=>{}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), 
              onPressed: ()=>{}),
        ],
      ),
      body: Container(height: 800, color: Colors.white ,), 
    );
  }
}