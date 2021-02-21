import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Otel {
  final image;
  final name;
  final number;
  final distance;

  Otel(this.image, this.name, this.number, this.distance);
}

class Konaklama extends StatefulWidget {
  @override
  _KonaklamaState createState() => _KonaklamaState();
}

class _KonaklamaState extends State<Konaklama> {
  List oteller = [
    Otel(
      'https://img.otelz.com/s3/turkiye/antalya/kas/phellos-hotel-21a4b7c5.jpg',
      'Phellos Otel',
      '0(242) 836 19 53',
      '150 mt uzaklıkta',
    ),
    Otel(
      'https://imagessl.etstur.com/files/images/hotelImages/TR/50846/l/Ekici-Hotel-Genel-259833.jpg',
      'Ekici Otel',
      '0(242) 836 14 17',
      '500 mt uzaklıkta',
    ),
    Otel(
      'http://www.muhafazakarotelim.com/urunresim/26634_b.jpg',
      'Kekova Otel',
      '0(242) 836 19 50',
      '1 km uzaklıkta',
    ),
    Otel(
      'https://imagessl.etstur.com/files/images/hotelImages/integration/TR/194991/l/hmxlfbb4va2xkrp2c49s.jpg',
      'Hadriyan Otel',
      '0(242) 836 13 86',
      '2 km uzaklıkta',
    ),
    Otel(
      'https://imagessl.etstur.com/files/images/hotelImages/integration/TR/52064/l/u9yxgxwqlgcpr0aqfsy8.jpg',
      'Bilgin Otel',
      '0(242) 836 45 10',
      '3 km uzaklıkta',
    ),
    Otel(
      'https://media-cdn.tripadvisor.com/media/photo-s/08/14/ad/22/happy-hotel-kalkan.jpg',
      'Harpy Otel',
      '0(242) 844 11 33',
      '150 mt uzaklıkta',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f7f9),
      appBar: AppBar(
        title: Center(
          child: Text('Konaklama'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: <Widget>[
          Container(),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: oteller
                .map(
                  (e) => Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 70.0,
                                  height: 70.0,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(e.image),
                                  ),
                                ),
                                SizedBox(width: 7.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      e.name,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      e.number,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      e.distance,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Column()
                              ],
                            ),
                            Container(
                              //alignment: Alignment.center,
                              // padding: EdgeInsets.symmetric(
                              // horizontal: 10.0, vertical: 10.0),
                              alignment: Alignment.topRight,
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: [
                                      FlatButton(
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.call,
                                          color: Colors.white,
                                        ),
                                        color: Colors.indigo,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Icon(Icons.location_on,
                                            color: Colors.white),
                                        color: Colors.indigo,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////
/*
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(

                        ),
                    ],
                  ),
                  Container(),
                ],
              ),
            ),
          ),
 */
/*
                          ButtonTheme.bar(
                            child: new ButtonBar(
                              alignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                FlatButton(
                                  child: Icon(
                                    Icons.add_call,
                                    color: Colors.white,
                                  ),
                                  color: Color.fromRGBO(68, 153, 213, 1.0),
                                  shape: CircleBorder(),
                                  onPressed: () {},
                                ),
                                FlatButton(
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                  color: Color.fromRGBO(68, 153, 213, 1.0),
                                  shape: CircleBorder(),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
 */
