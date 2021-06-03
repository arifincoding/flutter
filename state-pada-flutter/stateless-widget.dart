// stateless widget dapat di artikan sebagai widget yang tidak dapat di rubah atau tidak akan pernah berubah(statis)

// misal kita mempunyai widget yang berisi text "buku yang dibaca: 1" maka mulai text itu dibuat sampai aplikasi berjalan pun text tersebut tetap "buku yang dibaca: 1"

// contoh sebenarnya dalam penggunaan stateless widget biasanya yaitu untuk halaman "tentang aplikasi" yang berisi informasi nama atau logo aplikasi, versi dan lainnya yang bersifat statis astu tidak perlu adanya perubahan

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('belajar dasar flutter'),
        ),
        body: Center(
          child: Text(
            'Buku yang dibaca : 1',
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
        )
      )
    );
  }
}