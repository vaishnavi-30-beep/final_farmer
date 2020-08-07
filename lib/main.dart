
import 'package:final_farmer/Add_Product.dart';
import 'package:flutter/material.dart';
import'package:flutter/cupertino.dart';
import 'package:final_farmer/History.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'Orders/Orders.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin
{
  TabController tabController;
  @override
  void initState(){
    super.initState();
    tabController=TabController(vsync: this, length: 3);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('vegiFRESh'),
        backgroundColor: Colors.green,
      ),
    /*bottomNavigationBar: CurvedNavigationBar(
      buttonBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      color: Colors.green,
      height: 60.0,
      items: <Widget>[

        IconButton(
            icon:Icon(Icons.shopping_cart,
          color: Colors.black,),
            onPressed: (){PreviouslyOrder();}),
        Icon(Icons.add,
            color: Colors.black),
        Icon(Icons.history,
            color: Colors.black),

      ],

      animationCurve: Curves.bounceInOut,
      animationDuration: Duration(
        milliseconds: 200,
      ),
      index: 1,

    ),*/
      body: ListView(
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: TabBar(

              controller: tabController,
              indicatorColor: Colors.green,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.black.withOpacity(0.3),
              isScrollable: true,
              tabs: <Widget>[
                Tab(

                  child:Text(
                    "Orders",

                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                ),
                Tab(
                  child:Text(
                    "Add Product",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                ),
                Tab(
                  child:Text(
                    "History",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[

                Orders(),
                AddProduct(),
                History(),
              ],
            ),
          ),
        ],
      ),
     /*bottomNavigationBar: Material(
          child:Container(
            decoration:BoxDecoration(
              color: Colors.white,
            ),
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left:5.0,bottom: 5.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.green,
                  iconSize: 35.0,
                  onPressed:(){
                    PreviouslyOrder();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.green,
                  iconSize: 35.0,
                  onPressed:(){
                    AddProduct();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.history),
                  color: Colors.green,
                  iconSize: 35.0,
                  onPressed:(){},
                ),
              ],
            ),
          )
      ),*/
    );
  }
}


