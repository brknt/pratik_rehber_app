import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratik_rehber_app/Konaklama.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<MyCard> mycard = [
      MyCard(1, Colors.indigo, Icons.airline_seat_flat, 'Konaklama', false),
      MyCard(2, Colors.red, Icons.directions, 'Acenteler', false),
      MyCard(3, Colors.green, Icons.restaurant, 'Restoranlar', false),
      MyCard(4, Colors.blueAccent, Icons.museum, 'Müzeler', false),
      MyCard(5, Colors.black38, Icons.directions_boat, 'Tekne Turları', false),
      MyCard(6, Colors.deepPurple, Icons.local_hospital, 'Hastane', false),
      MyCard(7, Colors.deepOrange, Icons.money, 'Bankalar', false),
      MyCard(8, Colors.yellow, Icons.business, 'Kamu Kurumları', false),
    ];

    return Scaffold(
      backgroundColor: Color(0xfff6f7f9),
      appBar: AppBar(
        title: Center(
          child: Text('Pratik Rehber'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.count(
                crossAxisCount: 2,

                crossAxisSpacing:
                    14, // cardlar arası yatay uzaklık (bir nevi padding)
                mainAxisSpacing: 14,
                padding:
                    const EdgeInsets.all(10), // cardlar arası dikey uzaklık
                children: mycard
                    .map(
                      (e) => InkWell(
                        onTap: () {
                          if (e.id == 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Konaklama()),
                            );
                          } else {}
                        },
                        child: Card(
                          elevation: 10.0, //gölgelendirme
                          color: e.isActive ? Colors.indigo : null,
                          //elevation: 3, //gölgelendirme
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment.center, // widgetları ortalar

                            children: <Widget>[
                              Icon(
                                e.icon,
                                size: 50,
                                color:
                                    e.isActive ? Colors.white : Colors.indigo,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                e.title,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: e.isActive
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyCard {
  final id;
  final color;
  final icon;
  final title;
  bool isActive;

  MyCard(this.id, this.color, this.icon, this.title, this.isActive);
}
