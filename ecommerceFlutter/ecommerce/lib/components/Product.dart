import 'package:ecommerce/model/User.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/ProductDetails.dart';
import 'package:http/http.dart' as http;
import 'package:goog';


class Product extends StatelessWidget {
  final product_name;
  final product_image;
  final product_oldPrice;
  final product_price;

  Product({this.product_name,this.product_image,this.product_price,this.product_oldPrice});

Future getValues()async{
   http.Response res = await http.get("https://reqres.in/api/users?page=2",headers: {"Accept":"application/json"});
   var resdata = json.decode(res.body);
   
  
  // print(resbody);
  return res;
}

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: this.product_name,
        child:Material(
          child:InkWell(
          onTap:()=>{
             //getValues()
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