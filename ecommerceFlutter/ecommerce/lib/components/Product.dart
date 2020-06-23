import 'package:flutter/material.dart';
import 'package:ecommerce/ProductDetails.dart';



class Product extends StatelessWidget {
  final product_name;
  final product_image;
  final product_oldPrice;
  final product_price;

  Product({this.product_name,this.product_image,this.product_price,this.product_oldPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: this.product_name,
        child:Material(
          child:InkWell(
          onTap:()=>{
            Navigator.push(context,
               MaterialPageRoute(builder: 
              (context)=>  new ProductDetails()
              )
            )
          },  
          child: GridTile(
          footer: Container(
            color: Colors.white70,                        
            child: ListTile(
              leading: Text(product_name,style: TextStyle(fontWeight: FontWeight.bold)
              ,),
            ) ,
          ),
          child: Image.asset(product_image,fit: BoxFit.cover),
           ),
        ) ,)
      
      )
    );
  }
}