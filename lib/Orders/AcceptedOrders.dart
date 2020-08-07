import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AcceptedOrders extends StatefulWidget {
  @override
  _AcceptedOrdersState createState() => _AcceptedOrdersState();
}

class _AcceptedOrdersState extends State<AcceptedOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[

          Card(

            elevation: 7.0,
            shadowColor: Colors.lightGreenAccent,
            child: Container(
              margin: EdgeInsets.all(1.0),
              padding: EdgeInsets.all(1.0),
              child: ListTile(

                contentPadding: EdgeInsets.all(9.0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://imgix.ranker.com/user_node_img/35/686332/original/cauliflower-foods-photo-u2?w=650&q=50&fm=jpg&fit=crop&crop=faces'),
                ),// Image.asset('assets/tomato.jpg'),
                title: Text('Cauliflower'),
                subtitle: Text('1 kg'),
                trailing: Icon(Icons.clear),
                onTap: (){
                  deleteItem(context);
                },
              ),
            ),
          ),
          Card(

            elevation: 7.0,
            shadowColor: Colors.lightGreenAccent,
            child: Container(
              margin: EdgeInsets.all(1.0),
              padding: EdgeInsets.all(1.0),
              child: ListTile(

                contentPadding: EdgeInsets.all(9.0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://beed.mezbanservice.com/wp-content/uploads/2018/11/gulabi-2.jpg'),
                ),// Image.asset('assets/tomato.jpg'),
                title: Text('Pumpkin'),
                subtitle: Text('2 kg'),
                trailing: Icon(Icons.clear),
                onTap: (){
                  deleteItem(context);
                },
              ),
            ),
          ),
          Card(

            elevation: 7.0,
            shadowColor: Colors.lightGreenAccent,
            child: Container(
              margin: EdgeInsets.all(1.0),
              padding: EdgeInsets.all(1.0),
              child: ListTile(

                contentPadding: EdgeInsets.all(9.0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.pkagro.com/wp-content/uploads/2020/01/fresh-brinjal-500x500-1.jpg'),
                ),// Image.asset('assets/tomato.jpg'),
                title: Text('Brinjal'),
                subtitle: Text('2 kg'),
                trailing: Icon(Icons.clear),
                onTap: (){
                  deleteItem(context);
                },
              ),
            ),
          ),
          Card(

            elevation: 7.0,
            shadowColor: Colors.lightGreenAccent,
            child: Container(
              margin: EdgeInsets.all(1.0),
              padding: EdgeInsets.all(1.0),
              child: ListTile(

                contentPadding: EdgeInsets.all(9.0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://hindi.boldsky.com/img/2013/05/15-x14-capcisum.jpg'),
                ),// Image.asset('assets/tomato.jpg'),
                title: Text('Capcisum'),
                subtitle: Text('2 kg'),
                trailing: Icon(Icons.clear),
                onTap: (){
                  deleteItem(context);
                },
              ),
            ),
          ),

          Card(

            elevation: 7.0,
            shadowColor: Colors.lightGreenAccent,
            child: Container(
              margin: EdgeInsets.all(1.0),
              padding: EdgeInsets.all(1.0),
              child: ListTile(

                contentPadding: EdgeInsets.all(9.0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.ndtvimg.com/i/2015-07/garlic-625_625x350_71437817264.jpg'),
                ),// Image.asset('assets/tomato.jpg'),
                title: Text('Garlic'),
                subtitle: Text('1 kg'),
                trailing: Icon(Icons.add),
                onTap: (){
                  deleteItem(context);
                },
              ),
            ),
          ),
]
      )
    );
  }

  void deleteItem(BuildContext context) {
    Widget YesButton = FlatButton(
      child: Text("Yes"),
      onPressed:  () {
        Fluttertoast.showToast(msg: "Item deleted",
            backgroundColor: Colors.lightGreenAccent,
            textColor: Colors.white);
      },
    );
    Widget NoButton = FlatButton(
      child: Text("No"),
      onPressed:  () {

        Fluttertoast.showToast(msg: "Cancelled",
            backgroundColor:Colors.redAccent,
            textColor: Colors.white);
      },
    );
    var alert = AlertDialog(
      title: Text("Do you want to delete this order?\nCustomer name : abc\nAddress : Chandani Chouk, Pune ",
      style: TextStyle(
        fontSize: 20.0,
      ),),


      actions: [

        NoButton,
        YesButton,
      ],
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}

