import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
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
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child:Container(
        width: 100,              
        child: ListTile(                    
          title: Image.asset(            
            this.img_location,
            width: 70.0,
            height: 50.0,
          ),
          subtitle: Text(this.img_caption, textAlign: TextAlign.center,),
        ),),
        )
        
      
    );
  }  
  
}
