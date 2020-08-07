import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PendingOrders extends StatelessWidget {

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
              backgroundImage: NetworkImage('https://i.ndtvimg.com/i/2015-07/garlic-625_625x350_71437817264.jpg'),
            ),// Image.asset('assets/tomato.jpg'),
            title: Text('Garlic'),
            subtitle: Text('1 kg'),
            trailing: Icon(Icons.add),
            onTap: (){
              addItem(context);
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
                  backgroundImage: NetworkImage('https://cdn.shopify.com/s/files/1/0284/2450/products/INDAM_9821_1024x.jpg?v=1568985753'),
                ),// Image.asset('assets/tomato.jpg'),
                title: Text('Ladyfinger'),
                subtitle: Text('1 kg'),
                trailing: Icon(Icons.add),
                onTap: (){
                  addItem(context);
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
                  backgroundImage: NetworkImage('https://images.financialexpress.com/2020/01/1-186.jpg'),
                ),// Image.asset('assets/tomato.jpg'),
                title: Text('Onion'),
                subtitle: Text('2 kg'),
                trailing: Icon(Icons.add),
                onTap: (){
                  addItem(context);
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRqOuTTiIN5mIPj8gY3IixsPYl_KI-n1xX89w&usqp=CAU'),
                ),// Image.asset('assets/tomato.jpg'),
                title: Text('Carrot'),
                subtitle: Text('2 kg'),
                trailing: Icon(Icons.add),
                onTap: (){
                  addItem(context);
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
                  backgroundImage: NetworkImage('https://femina.wwmindia.com/content/2019/nov/beetrootbenefits1574151766.jpg'),
                ),// Image.asset('assets/tomato.jpg'),
                title: Text('Beet'),
                subtitle: Text('2 kg'),
                trailing: Icon(Icons.add),
                onTap: (){
                  addItem(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }


}


void addItem(BuildContext context) {
  Widget YesButton = FlatButton(
    child: Text("Yes"),
    onPressed:  () {
      Fluttertoast.showToast(msg: "Request Accepted",
        backgroundColor: Colors.lightGreenAccent,
      textColor: Colors.white);
    },
  );
  Widget NoButton = FlatButton(
    child: Text("No"),
    onPressed:  () {

      Fluttertoast.showToast(msg: "Request denied",
          backgroundColor:Colors.redAccent,
          textColor: Colors.white);
    },
  );
  var alert = AlertDialog(
    title: Text("Do you want to accept this order?\nCustomer name : abc\nAddress : Chandani Chouk, Pune ",
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


