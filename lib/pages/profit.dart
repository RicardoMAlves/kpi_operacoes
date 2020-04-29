import 'package:flutter/material.dart';
import 'package:kpioperacoes/pages/home.dart';

class Profit extends StatefulWidget {
  @override
  _ProfitState createState() => _ProfitState();
}

class _ProfitState extends State<Profit> {

  int nvezes = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.3,
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Home();
            }));
          },
        ),
        title: Text(
          "Profit",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Arvo",
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Icon(
            Icons.menu,
            color: Colors.white,
          )
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: nvezes,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 90,
            color: Colors.white,
            child: Center(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.attach_money),
                      title: Text(
                        "FIDC VI",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Arvo",
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),
                      ),
                      subtitle: Text(
                        "Valor de Face BRL 17,5MM",
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Arvo",
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
