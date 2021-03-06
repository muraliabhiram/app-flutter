import 'package:ecommerce/components/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductList extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ProductList> {
  var product_List =
  [
    {
      "product_name":'Shirt1',
      "product_image":'images/products/shirt1.jpg',
      "product_oldPrice":'3333',
      "product_price":'2340'

    },
    {
      "product_name":'Jeans1',
      "product_image":'images/products/jeans1.jpg',
      "product_oldPrice":'3333',
      "product_price":'2340'

    },
    {
      "product_name":'Shirt2',
      "product_image":'images/products/shirt2.jpg',
      "product_oldPrice":'3333',
      "product_price":'2340'

    },
    {
      "product_name":'Jean2',
      "product_image":'images/products/jean2.jpg',
      "product_oldPrice":'3333',
      "product_price":'2340'

    },
    {
      "product_name":'Shirt3',
      "product_image":'images/products/shirt3.jpg',
      "product_oldPrice":'3333',
      "product_price":'2340'

    },
    {
      "product_name":'Shirt5',
      "product_image":'images/products/shirt3.jpg',
      "product_oldPrice":'3333',
      "product_price":'2340'

    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    scrollDirection: Axis.vertical,
    children: product_List.map((imageDetail) =>  Product(
          product_name: imageDetail["product_name"],
          product_image: imageDetail["product_image"],
          product_oldPrice: imageDetail["product_oldPrice"],
          product_price: imageDetail["product_price"],
        ),
        ).toList()
    
    
    // <Widget>[
    //   Product(
    //       product_name: product_List[0]["product_name"],
    //       product_image: product_List[0]["product_image"],
    //       product_oldPrice: product_List[0]["product_oldPrice"],
    //       product_price: product_List[0]["product_price"],
    //     ),
    //     Product(
    //       product_name: product_List[1]["product_name"],
    //       product_image: product_List[1]["product_image"],
    //       product_oldPrice: product_List[1]["product_oldPrice"],
    //       product_price: product_List[1]["product_price"],
    //     ),
    //     Product(
    //       product_name: product_List[2]["product_name"],
    //       product_image: product_List[2]["product_image"],
    //       product_oldPrice: product_List[2]["product_oldPrice"],
    //       product_price: product_List[2]["product_price"],
    //     ),
    //     Product(
    //       product_name: product_List[3]["product_name"],
    //       product_image: product_List[3]["product_image"],
    //       product_oldPrice: product_List[3]["product_oldPrice"],
    //       product_price: product_List[3]["product_price"],
    //     ),
    //     Product(
    //       product_name: product_List[4]["product_name"],
    //       product_image: product_List[4]["product_image"],
    //       product_oldPrice: product_List[4]["product_oldPrice"],
    //       product_price: product_List[4]["product_price"],
    //     ),
    //     Product(
    //       product_name: product_List[5]["product_name"],
    //       product_image: product_List[5]["product_image"],
    //       product_oldPrice: product_List[5]["product_oldPrice"],
    //       product_price: product_List[5]["product_price"],
    //     ),
    //     ]
    );
    // return  GridView.builder(      
    //   itemCount: product_List.length ,
    //   scrollDirection:Axis.vertical,      
    //   //gridDelegate:  
    //   //SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      
    //   itemBuilder: (BuildContext context, int index)
    //   {
    //     return Product(
    //       product_name: product_List[index]["product_name"],
    //       product_image: product_List[index]["product_image"],
    //       product_oldPrice: product_List[index]["product_oldPrice"],
    //       product_price: product_List[index]["product_price"],
    //     );
    //   }
      
    //   );
  }
}