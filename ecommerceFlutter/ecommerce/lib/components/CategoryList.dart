import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 110.0,
      
      child: ListView(
      
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            Category(
              img_caption: 'Shirt',
              img_location: 'images/shirt.jpg',
            ), 
            Category(
              img_caption: 'Jeans',
              img_location: 'images/jean.jpg',
            ),
            Category(
              img_caption: 'T-Shirt',
              img_location: 'images/tshirt.jpg',
            ),
            Category(
              img_caption: 'Bags',
              img_location: 'images/bag.jpg',
            ),
            Category(
              img_caption: 'Shoes',
              img_location: 'images/shoes.jpg',
            )

        ],),
        
    );
  }
}

class Category extends StatelessWidget {

  final String img_location;
  final String img_caption;

  Category(
    {this.img_caption,this.img_location}
    );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (){},
        child:Container(
        //constraints: new BoxConstraints.expand(height: 20),
          alignment: Alignment.bottomLeft,
      padding: new EdgeInsets.only(left: 30.0, bottom: 1.0),
        width: 100,  
        height: 100,
        // color: Colors.red,
        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.orange,
        image: DecorationImage(image: AssetImage(this.img_location),fit: BoxFit.fill)
          ),
          child:  new Text(this.img_caption,
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        )),                              
        
        // child: ListTile(  
        //   title: Image.asset(            
        //     this.img_location,
        //     width: 80.0,
        //     height: 70.0,
        //     fit: BoxFit.fill,
        //   ),
        //   subtitle: Text(this.img_caption, textAlign: TextAlign.center,),
          
        // ),
        ),
        )
        
      
    );
  }  
  
}
