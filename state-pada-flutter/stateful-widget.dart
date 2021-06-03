// stateful widget artinya widget yang dapat berubah (dinamis), stateful widget dapat mengupdate tampilan, merubah warna, mengubah tulisan, menambah baris dll

// jadi dapat disimpulkan bahwa apapun widget yang dapat berubah maka itulah stateful widget.

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    home: MyHomePage(),
  );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState()=> _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _jumlahBuku = 1;

  void _incrementCounter(){
    setState((){
      _jumlahBuku++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar flutter dasar'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Buku yang dibaca : $_jumlahBuku',
              style:TextStyle( fontSize: 40 ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tambah',
        child: Icon(Icons.add),
      ),
    );
  }
}

// dapat di lihat pada baris kode ke 29 yaitu penggunaan fungsi setState() yang akan bertugas untuk memberitahu widget bahwa ada object yang berubah pada State, sehingga akan melakukan build ulang pada widget tersebut

// setState() tidak bisa digunakan pada stateless widget