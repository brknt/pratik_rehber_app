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
                    height: 100,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[200],
                              blurRadius: 5,
                              spreadRadius: 3,
                              offset: Offset(3, 4))
                        ]),
                    child: ListTile(
                      leading: Image.network(
                        e.image,
                        fit: BoxFit.cover,
                        width: 90,
                        height: 100,
                      ),
                      title: Text(
                        e.name,
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(e.number.toString()),
                          Text(e.distance.toString()),
                        ],
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
