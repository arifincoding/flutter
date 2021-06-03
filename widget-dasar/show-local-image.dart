// menampilkan gambar lokal (biasanya digunakan untuk menyimpan gambar statis seperti logo)

// buat folder assets/images (posisi folder sejajar dengan pubspec.yaml)
// masukkan gambar kedalam folder tersebut
// registrasikan folder gambar dengan cara edit di file pubspec.yaml

flutter:
  assets:
    - assets/images/
// note: perhatikan tab dan spasinya tidak boleh sejajar dan terlalu menjorok karena menyebabkan error

// tampilkan asset image dengan widget
Image.asset('assets/images/namagambar.jpg');

// contoh

import 'package:flutter/material.dart';

void main() => runApp(BelajarImage());

class BelajarImage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("belajar flutter"),
        ),
        body: Image.asset("assets/images/images.jpg"),
      )
    );
  }
}

// mengatur tinggi dan lebar gambar

// property height = untuk mengatur tinggi
// property width = untuk mengatur lebar

// contoh

body: Image.asset(
  'assets/images/images.jpg',
  height:100,
  width:200,
),

// manipulasi warna gambar
// colorBlendMode digunakan untuk memanipulasi gambar

// contoh

body: Image.asset(
  'assets/images/images.jpg',
  color:Colors.grey,
  colorBlendMode: BlendMode.hue,
),

// membuat gambar menjadi bulat

// ada 2 cara untuk membuat gambar menjadi bulat

// cara 1 dengan BoxDecoration

body: Container(
  height: 300,
  width: 300,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/images.jpg'),
      fit: BoxFit.cover,
    ),
    shape: BoxShape.circle,
  )
),

// cara 2 dengan ClipOval widget

body: ClipOval(
  child: Image(
    width: 300,
    height: 300,
    image: AssetImage('assets/images/images.jpg'),
    fit: BoxFit.cover,
  ),
),
