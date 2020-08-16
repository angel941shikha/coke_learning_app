import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class OnGoing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: ListView(

          children: List.generate(6, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(

                  children: <Widget>[

                    Center(child: Image.asset("images/login/bar.png",height: 80,)),
                    Padding(
                      padding: EdgeInsets.fromLTRB(300,30,15,15),
                      child: Text('80%',style: TextStyle(color: Colors.red[900]),),
                    ),
//                                padding: EdgeInsets.fromLTRB(75,15,15,15),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,0,0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[


                            Padding(
                              padding: const EdgeInsets.fromLTRB(75,15,0,0),
                              child: LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width *0.6,
                                animation: true,
                                lineHeight: 8.0,
                                animationDuration: 2500,
                                percent: 0.8,
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Colors.white,
                                backgroundColor: Colors.grey,
                              ),
                            ),

                        ],),
                      ),
                    ),
                  ]
              ),
            );
          }),
        ),
      ),
    );
  }
}

