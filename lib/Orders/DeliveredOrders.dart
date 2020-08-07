import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class DeliveredOrders extends StatefulWidget {
  @override
  _DeliveredOrdersState createState() => _DeliveredOrdersState();
}

class _DeliveredOrdersState extends State<DeliveredOrders> {

  List<String> litems = ['potato','tomato','onion'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /*body:ListView.builder
        (
          itemCount: litems.length,
          itemBuilder: (BuildContext ctxt, int index) {
            final item = litems[index];

            return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
            // Remove the item from the data source.
              setState(() {
                litems.removeAt(index);
             });

            // Then show a snackbar.
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text("$item order denied.")));
            },
            child: Card(

            elevation: 7.0,
            shadowColor: Colors.lightGreenAccent,
            child: Container(
            margin: EdgeInsets.all(1.0),
            padding: EdgeInsets.all(1.0),
            child :ListTile(
              leading: Image.asset('assets/onion.jpg'),
              /*leading: CircleAvatar(
                backgroundImage: NetworkImage('https://femina.wwmindia.com/content/2019/nov/beetrootbenefits1574151766.jpg'),
              ),*/
              title: Text(litems[index]),
              subtitle: Text('1 kg '
                  'Rs 40'),
              trailing: Icon(Icons.clear),


            ),
            ),
            ),
            );
          }
      )*/
      body :ListView(
        scrollDirection: Axis.vertical,
          children: <Widget>[
            Card(

              elevation: 7.0,
              shadowColor: Colors.lightGreenAccent,
              child: Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(1.0),

                child: ListTile(

                 leading: Image(
                   image: NetworkImage('https://img.freepik.com/free-photo/fresh-yellow-orange-green-red-organic-bell-peppers-capsicum-display-sale-local-farmer-s-market_73110-4470.jpg?size=626&ext=jpg'),
                 ),
                  title: Text('Capscicum'),
                  subtitle: Text('1 kg '
                      'Rs 40'),
                ),

              ),
            ),
            Card(

              elevation: 7.0,
              shadowColor: Colors.lightGreenAccent,
              child: Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(1.0),

                child: ListTile(

                  leading: Image.asset('assets/lemon.jpg',
                    fit: BoxFit.cover,),
                  title: Text('Lemon'),
                  subtitle: Text('1 kg '
                      'Rs 35'),
                ),

              ),
            ),
            Card(

              elevation: 7.0,
              shadowColor: Colors.lightGreenAccent,
              child: Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(1.0),

                child: ListTile(

                  leading: Image.asset('assets/onion.jpg',
                    fit: BoxFit.cover,),
                  title: Text('Onion'),
                  subtitle: Text('2 kg '
                      'Rs 70'),
                ),

              ),
            ),
            Card(

              elevation: 7.0,
              shadowColor: Colors.lightGreenAccent,
              child: Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(1.0),

                child: ListTile(

                  leading: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                  ),
                  title: Text('Tomato'),
                  subtitle: Text('2 kg '
                      'Rs 80'),
                ),

              ),
            ),
            Card(

              elevation: 7.0,
              shadowColor: Colors.lightGreenAccent,
              child: Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(1.0),

                child: ListTile(

                  leading: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-ANIhnwqSqXN5wSvAdO-b8SxTTdXtmkAnIQ&usqp=CAU'),
                  ),

                  title: Text('Carrot'),
                  subtitle: Text('2 kg '
                      'Rs 80'),
                ),

              ),
            ),


          ],
      ),
    );
  }
}

