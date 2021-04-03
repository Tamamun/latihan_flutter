import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final int position;

  const HomePage({Key key, this.position}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List mahasiswa = [
    'Ahmad',
    'Tono',
    'Rian',
    'Budi',
    'caca',
    'Putri',
    'Rama',
  ];
  List nim = [
    '0123',
    '0123',
    '0123',
    '0123',
    '0123',
    '0123',
    '0123',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.all(3),
              child: Image.asset('images/logo unpam.png'),
            ),
            Text(
              mahasiswa[widget.position],
              style: TextStyle(fontSize: 100),
            ),
            Text(
              nim[widget.position],
              style: TextStyle(fontSize: 100),
            ),
          ],
        ),
      ),
    );
  }
}
