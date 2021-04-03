import 'package:flutter/material.dart';
import 'package:latihan_login/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(3),
            child: Image.asset('images/logo unpam.png'),
          ),
          Text(
            '06TPLE010',
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 400,
            child: ListView.builder(
              itemCount: mahasiswa.length,
              itemBuilder: (context, position) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage(position: position);
                      }));
                    },
                    title: Text(mahasiswa[position]),
                    subtitle: Text(nim[position]),
                    trailing: position == 0 ? Icon(Icons.star) : null,
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
