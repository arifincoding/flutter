// Text() widget adalah widget untuk menampilkan text pada aplikasi

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:MyHomePage(),
    );//MaterialApp
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(//wadah dari semua widget
      appBar: AppBar(//standalone widget
        title: Text('Belajar Flutter'),
      ),
      body:Center(//single child widget
        child: Text('Ini Text Pertama Saya')
      ),
    );
  }
}

// Struktur Dari Text Widget

// Text Widget dibagi menjadi 2 properties yaitu string yang merupakan data yang nantinya akan ditampilkan ke layar, lalu properti ke 2 yaitu argument yang berfungsi untuk memanipulasi tampilan seperti warna, ukuran, posisi (styling) yang bersifat obsional

Text(
  'isi yang akan ditampilkan',
    // dibawah  merupakan list semua manipulasi yang dapat di pakai
    key:Key(),
    style: TextStyle(),
    strutStyle: StrutStyle(), 
    textAlign: TextAlign(), 
    textDirection:TextDirection(), 
    locale:Locale(), 
    softWrap:bool(), 
    overflow:TextOverflow(), 
    textScaleFactor: 2.9, 
    maxLines: 1, 
    semanticsLabel: 'oy oy', 
    textWidthBasis: TextWidthBasis(), 
    textHeightBehavior:TextHeightBehavior()
)

// contoh

// textStyle
// berfungsi untuk memanipulasi jenis font, ukuran, warna,jenis font dll

child:Text(
  'Ini Text pertama saya',
  style:TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.red
  ),
)

// fontstyle
// untuk mengganti jenis font kita perlu menginstallnya terlebih dulu

// download font
// extract lalu simpan ke dalam flutter project ./assets/fonts
// buka file pubspec.yaml lalu tambahkan kode path font dibawah flutter: sehingga seperti ini


flutter:   fonts:     - family: DancingScript       fonts:       - asset: assets/fonts/DancingScript-Regular.ttf

// lalu pada text widget

Text(
  'ini text pertama saya',
  style:TextStyle(
    fontSize:40,
    fontFamily: 'DancingScript'
  ),
)

// textalign

// opsi : TextAlign.left, TextAlign.center, TextAlign.right, TextAlign.justify, TextAlign.start, TextAlign.end

Text(
  'ini text pertama saya',
  style:TextStyle(
    fontSize:40,
    fontFamily: 'DancingScript'
  ),
  textAlign: TextAlign.right,
)

// overflow text

// overflow akan terlihat ketika panjang text melebihi batas maksimal line (maxLines)

// opsi:
// clip = Memotong Text sesuai dengan maxLines
// ellipsis = Memotong Text sesuai dengan maxLines dan diakhiri dengan tanda titik-titik. Apabila parameter maxlines tidak ditemukan maka akan memotong text menjadi satu baris saja
// fade = Memotong text sesuai dengan maxLines dengan efek fade pada perpotongan textnya
// visible = Memunculkan text meskipun melewati ukuran dari container

Text(
  'contoh lor',
  overflow: TextOverflow.ellipsis,
  maxLines: 2,
)