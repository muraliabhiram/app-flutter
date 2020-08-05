import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();  
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    // return Container(child: Text('Hiiiiiiiii',style:TextStyle(color: Colors.redAccent) , ),
    //height: 1000, color:Colors.white12, );
    var googleMap = GoogleMap(initialCameraPosition: CameraPosition(
            target: LatLng(17.5227, 78.3908),
            zoom:12), 
            mapType: MapType.normal,
          );


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
          body: Container(
            child:googleMap ,
            width: MediaQuery.of(context).size.width, 
            height: MediaQuery.of(context).size.height,
             ) 
      
    );
  }
}