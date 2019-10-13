import 'package:flutter/material.dart';
import 'main.dart';
class solution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: MyAppBar(goBack: true,),
        ),
        body: new Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Your Diagnosis", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "hack", fontSize: 30,),),

              new Card(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text("Chronic Migrain", style: TextStyle (fontWeight: FontWeight.w500, fontSize: 20)),
                      new Text ("Speciality : Neurologiy"),
                      new Text("Danger : Normal"),
                    ],
                  ),
                ),
              ),

              Divider (),
              new Center( child: Text("Treatment", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20))),
              new Column(
                children: <Widget>[
                  new Text("Good Sleep"),
                  new Text("Pain killers"),
                  new Text("Screens"),
                ],
              ),
              Divider(),
              new Center( child: Text("Find Doctors in your area", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20))),
              new Expanded(
                  child: new ListView(
                    children: <Widget>[
                      Card (child:  doctor(nom: "Raiah Mohamed AMine", adr: "Tizi-ouzou",urlPhoto:"https://avatars3.githubusercontent.com/u/16825392?s=460&v=4") ),
                      Card (child:  doctor(nom: "Raiah Mohamed AMine", adr: "Tizi-ouzou",urlPhoto:"https://avatars3.githubusercontent.com/u/16825392?s=460&v=4") ),
                      Card (child:  doctor(nom: "Raiah Mohamed AMine", adr: "Tizi-ouzou",urlPhoto:"https://avatars3.githubusercontent.com/u/16825392?s=460&v=4") ),
                      Card (child:  doctor(nom: "Raiah Mohamed AMine", adr: "Tizi-ouzou",urlPhoto:"https://avatars3.githubusercontent.com/u/16825392?s=460&v=4") ),
                      Card (child:  doctor(nom: "Raiah Mohamed AMine", adr: "Tizi-ouzou",urlPhoto:"https://avatars3.githubusercontent.com/u/16825392?s=460&v=4") ),
                    ],
                  )
              )
            ],
          ),
        )
    );
  }
}

class doctor extends StatelessWidget {
  doctor({this.nom,this.adr,this.urlPhoto});
  String nom;
  String adr ;
  String urlPhoto ;
  @override
  Widget build(BuildContext context) {
    return new ListTile(
        leading: new CircleAvatar(
          backgroundImage: new NetworkImage(urlPhoto),
        ),
        title: new Text(nom),
        subtitle: new Text(adr),
        trailing: new IconButton(icon: Icon(Icons.send), onPressed: (){
          var s =new SnackBar(content: new Text("Rendez-vous taken"));
          Scaffold.of(context).showSnackBar(s);
        }),
        onTap: null
//          (){
//        var alert = new AlertDialog(
//            content: Card (child: Column(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      CircleAvatar (backgroundImage: new NetworkImage(urlPhoto),)
//                    ],
//                  ),
//                  Text ("Name : "+ this.nom),
//                  Text("Tel : +213554704401")
//                ],
//
//            ),
//        )
//
//        );
//
//        showDialog(context: context, child: alert);
//      }
    );
  }
}

