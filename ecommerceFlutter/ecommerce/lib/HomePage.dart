import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/components/CategoryList.dart';

class HomePage  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/model-agency.jpg'),
          AssetImage('images/00-VW-top-f19-models.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(seconds: 1),
        dotSize: 4,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.grey,
      ),
    );

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Royal Crazes'),
      //   backgroundColor: Colors.red ,
      //   actions: <Widget>[
      //      new IconButton(icon: Icon( Icons.search,color: Colors.white),onPressed: null,),
      //      new IconButton(icon: Icon( Icons.shopping_cart,color: Colors.white),onPressed: null,)
      //   ],
      //   ),
        drawer: new Drawer(              
          child:Container(
          color: Colors.red,
          child: new ListView(             
            children: <Widget>[
              //header
              new UserAccountsDrawerHeader(accountName: Text('Murali Tadi'),
               accountEmail: Text('muraliabhiram@gmail.com'),
               arrowColor: Colors.red,                                              
               currentAccountPicture: GestureDetector(
                 child: new CircleAvatar(
                   backgroundColor: Colors.grey,
                   child: Icon(Icons.person,color: Colors.lightGreen,),
                 ),
                 ),
                 decoration: new BoxDecoration(
                   color: Colors.red,
                   borderRadius : BorderRadius.only(
                     bottomRight: Radius.elliptical(50.0,50.0),
                   )
                 )
                  ,),
              
              Container(
              height: 800,
              decoration: BoxDecoration(
                color: Colors.red[50],
                borderRadius: BorderRadius.only(
                //topLeft: Radius.circular(50.0),
                topRight: Radius.elliptical(50, 50))
              ),
              child: ListView(children: <Widget>[
              Ink(child:InkWell(
                onTap: (){},
                child: ListTile(
                leading: Icon(Icons.home ),
                title: Text('Home')  ,                
              ),
              ),
              ),
              Ink(child:InkWell(
                onTap: (){},
                child: ListTile(
                leading: Icon(Icons.person ),
                title: Text('My Account')  ,                
              ),
              ),
              ),
               InkWell(
                onTap: (){},
                child: ListTile(
                leading: Icon(Icons.shopping_cart ),
                title: Text('My Orders')  ,                
              ),
              ),
               InkWell(
                onTap: (){},
                child: ListTile(
                leading: Icon(Icons.dashboard ),
                title: Text('Categeries')  ,                
              ),
              ),
               InkWell(
                onTap: (){},
                child: ListTile(
                leading: Icon(Icons.favorite ),
                title: Text('Favourites')  ,                
              ),
              ),
               InkWell(
                onTap: (){},
                child: ListTile(
                leading: Icon(Icons.settings ),
                title: Text('Settings')  ,                
              ),
              ),
               InkWell(
                onTap: (){},
                child: ListTile(
                leading: Icon(Icons.help,color:Colors.green , ),
                title: Text('Help')  ,                
              ),
              ),
              ],
              ),
              )
              
            ],
          )
        ),
        ),
        body: ListView(
          children: <Widget>[
            
            image_carousel,

            new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
            ),
           
           CategoryList()
            
            ],
        
          ),
    );
  }
}