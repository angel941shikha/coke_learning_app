import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          bottom: TabBar(
            unselectedLabelColor: Colors.redAccent,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent
            ),
            tabs: <Widget>[
              Tab(text: "ONGOING",),
              Tab(text: "COMPLETED",),
              Tab(text: "NEW DOC",),
            ],),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.apps),
            Icon(Icons.movie),
            Icon(Icons.games),
          ],
        ),
      ),
    ),

    );
  }
}
