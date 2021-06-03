// berbeda dengan ListView widget yang menampilkan list secara menurun, GridView widget akan menampilkan list secara menyamping ke kanan

// penggunaan GridView di flutter seperti penggabungan antara ListView widget serta row dan column widget

// contoh sederhana

body:GridView.count(
  crossAxisCount: 3,//nilai jumlah column pada grid
  children: <Widget>[
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo()
  ],
)

// children merupakan widget turunan yanf akan ditampilkan berjumlah 5 logo



// GridView pada dasarnya merupakan CustomScrollView widget yang dapat di scroll sehingga tidak perlu khawatir jika jumlah dari widget grid melebihi ukuran layar.

// di gridview kita dapat menggunakan List.generate untuk membuat anakan widget sesuai dengan jumlah data array

// contoh

class BelajarGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text('belajar flutter'),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9,(index){
            return Container(
              child:Card(
                color:Colors.deepPurpleAccent,
              ),
            );
          }),
        )
      ),
    );
  }
}


// terdapat lima cara yang dapat digunakan dalam penggunaan gridview di flutter :

// 1. GridView.count

body:GridView.count(
  crossAxisCount:2,
  children: <Widget>[
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo()
  ],
)

// 2.GridView.builder

// pada method builder, jumlah items yang akan ditampilkan pada grid mengikuti nilai dari properti itemCount

body:GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
  itemBuilder:(_, index) => FlutterLogo(),
  itemCount:4,
)

// 3. GridView.custom

body: GridView.custom(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
  childrenDelegate: SliverChildListDelegate(
    [
      FlutterLogo(),
      FlutterLogo(),
      FlutterLogo(),
      FlutterLogo(),
    ],
  ),
)

// 4. GridView.extent

body: GridView.extent(
  maxCrossAxisExtent:200,//menetukan besar dari content
  children:<Widget>[
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
  ],
)

// 5. GridView

// kita juga dapat membuat GridView tanpa method apapun, penggunaannya seperti gabungan antara GridView.count dengan builder. Dimana untuk menentukan jumlah column grid harus menggunakan delegate tetap untuk item grid menggunaan properti children

body: GridView(
  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
  children: <Widget>[
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
  ],
)

// saran
// jika jumlah grid < 16 gunakan GridView.count
// jika > 16 gunakan GridView.builder


// properti pada GridView

// - crossAxisCount = Berfungsi untuk menentukan jumlah kolom (hanya tersedia untuk GridView.count)

// - gridDelegate = Untuk mendelegasikan grid item, biasanya digabungkan dengan penggunaan SliverGrid. Hanya tersedi di method costum dan builder

// - childAspectRatio	= Menentukan rasio dari grid item. Contoh childAspectRatio: 16 / 9

// - scrollDirection = Menentukan arah scroll. Secara default bernilai Axis.vertical Dapat dirubah menjadi : Axis.horizontal

// - crossAxisSpacing = Menentukan jarak spasi antar grid item secara sejajar dengan scrollDirection

// - mainAxisSpacing = Menentukan jarak spasi antar grid item secara berlawanan dengan scrollDirection

// - reverse = Membalik arah srollDirection. Bernilai Boolean dengan default value false

// - padding = Memberi jarak GridView dengan Widget lain yang bersinggungan



// menampilkan grid di dalam grid

import 'package:flutter/material.dart';

void main() => runApp(BelajarGridView());

class BelajarGridView extends StatelessWidget{
  final List alphabet = [
    "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
  ];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:Text('belajar flutter'),
        ),
        body:GridView(
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:1),
          children:<Widget>[
            GridView.count(
              crossAxisCount:3,
              scrollDirection:Axis.horizontal,
              padding: EdgeInsets.all(20),
              children: List.generate(alphabet.length,(index){
                return Container(
                  height:100,
                  child:Card(
                    child:Center(
                      child:Text(alphabet[index],style:TextStyle(color:Colors.white,fontSize:20))
                    ),
                    color:Colors.deepPurpleAccent,
                  ),
                );
              }),
            ),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        )
      ),
    );
  }
}