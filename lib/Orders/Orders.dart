import 'package:flutter/material.dart';

import 'AcceptedOrders.dart';
import 'DeliveredOrders.dart';
import 'PendingOrders.dart';
class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                  child: Text(
                    "Pending Orders",

                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.green,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Accepted Orders",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.green,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Delivered Orders",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height - 100.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                PendingOrders(),
                AcceptedOrders(),
                DeliveredOrders(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
