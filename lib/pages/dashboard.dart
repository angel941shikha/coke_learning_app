import 'package:coke_learning_app/pages/onGoingData.dart';
import 'package:flutter/material.dart';
import 'onGoingData.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {



  @override
  Widget build(BuildContext context) {


    double orjWidth = MediaQuery.of(context).size.width;
    double cameraWidth = orjWidth/24;
    double yourWidth = (orjWidth - cameraWidth)/5;

    return MaterialApp(
      debugShowCheckedModeBanner: false,

    home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
        flexibleSpace:Container(
          height: 80,
          color: Colors.white,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(child: Image.asset("images/login/profile-pic.png",height: 30,)),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("PROFILE",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w400),),
                              Text("Lincoln",style: TextStyle(color: Colors.red[900],fontSize: 15,fontWeight: FontWeight.bold),),

                            ],
                          )

                        ],
                      ),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => OnGoing()));
                    },
                    child: Image.asset(
                      "images/login/Dashboard-logo.png",
                      fit: BoxFit.cover,
                      height: 30,
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red[500],
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset("images/login/logout.png",height: 20,),
                            SizedBox(width: 5),
                            Text("Logout",style: TextStyle(color: Colors.white),)

                          ],
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
        ) ,


          backgroundColor: Colors.grey,

          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorSize: TabBarIndicatorSize.tab,


            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent
            ),
            tabs: <Widget>[
              Tab(text: "ONGOING"),
              Tab(text: "COMPLETED",),
              Tab(text: "NEW DOC",),
            ],),
        ),
        body: TabBarView(
          children: <Widget>[
            OnGoing(),
            Icon(Icons.movie),
            Icon(Icons.games),
          ],
        ),
      ),
    ),

    );
  }
}



