// listview adalah widget yang membuat content dapat di scroll

// ada ada 3 jenis

// 1. default listview
// ini berfungsi untuk widget dengan jumlah statis (jumlah widget tetap) misal detail berita yang isinya tetap 2 widget saja yaitu container title dan container deskripsi

// contoh

body: ListView(
  children: <Widget>[
    Container(
      padding:EdgeInsets.all(15),
      child:Text('FLutter Widget:penggunaan ListView Class',style:TextStyle(fontSize:30,fontWeight:FontWeight.bold)
      ),
    ),
    Container(
      padding:EdgeInsets.all(15),
      child: Text(
        "Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.
        
        Sudah merupakan fakta bahwa seorang pembaca akan terpengaruh oleh isi tulisan dari sebuah halaman saat ia melihat tata letaknya. Maksud penggunaan Lorem Ipsum adalah karena ia kurang lebih memiliki penyebaran huruf yang normal, ketimbang menggunakan kalimat seperti Bagian isi disini, bagian isi disini, sehingga ia seolah menjadi naskah Inggris yang bisa dibaca. Banyak paket Desktop Publishing dan editor situs web yang kini menggunakan Lorem Ipsum sebagai contoh teks. Karenanya pencarian terhadap kalimat Lorem Ipsum akan berujung pada banyak situs web yang masih dalam tahap pengembangan. Berbagai versi juga telah berubah dari tahun ke tahun, kadang karena tidak sengaja, kadang karena disengaja (misalnya karena dimasukkan unsur humor atau semacamnya)
        ",
        style:TextStyle(fontSize:16)
      ),
    ),
  ]
);

// 2 listview builder

// digunakan untuk jumlah widget yang dinamis (jumlahnya tidak tetap)
// misal menampilkan list data barang

// listview builder memiliki 2 properti utama yaitu :
// - itemCount: jumlah list item
// - itemBuilder: untuk membangun tampilan dari list item

// contoh

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarListView(),
    );
  }
}

class BelajarListView extends StatelessWidget{
  final List bulan = [
    "januari",
    "februari",
    "maret",
    "april",
    "mei",
    "juni",
    "juli",
    "agustus",
    "september",
    "oktober",
    "november",
    "desember"
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("belajar flutter"),
      ),
      body: ListView.builder(
        itemBuilder: (context,index){
          return Card(
            child:Padding(
              padding:const EdgeInsets.all(15.0),
              child:Text(bulan[index],style: TextStyle(fontSize:30)),
            ),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}

// penggunaan listview juga biasanya digabungkan dengan ListTile widget. widget ini umumnya digunakan untuk membuat kontak list atau layout yang membutuhkan thumnail beserta subtitle

// contoh

body: ListView.builder(
  itemBuilder:(context, index){
    return Card(
      child: ListTile(
        title: Text(bulan[index],style:TextStyle(fontSize:30),
        ),
        subtitle:Text('ini subtitle dari ' + bulan[index]),
        leading: CircleAvatar(
          child:Text(
            bulan[index][0], //ambil karakter  pertama text
            style:TextStyle(fontSize:20)
          ),
        )
      ),
    );
  },
  itemCount: bulan.length,
),

// 3. ListView.separated

// mirip dengan listview builder cuma memiliki berbedaan yaitu dengan widget ini kita dapat menyisipkan widget diantara item list

// contoh

body: ListView.separated(
  itemBuilder: (context, index){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(bulan[index],style:TextStyle(fontSize:30)),
      ),
    );
  },
  separatorBuilder:(context,position){
    return Container(
      color:Colors.greenAccent,
      child:Text('Ini contoh separator builder',
      style: TextStyle(fontSize:20)
      ),
    );
  },
  itemCount: bulan.length,
),

// listview.separated biasanya digunakan untuk memunculkan iklan di antara daftar berita

// contoh

body:ListView.separated(
  itemBuilder: (context, index){
    return Card(
      child: Padding(
        padding:const EdgeInsets.all(15.0),
        child: Text(bulan[index], style:TextStyle(fontSize:30)),
      ),
    );
  },
  separatorBuilder: (context, position){
    if(position % 5 == 0){
      return Container(
        height:60,
        color:Colors.greenAccent,
        child:Center(
          child:Text('space iklan-iklanan',style:TextStyle(fontSize:20))
        ),
      );
    }else{
      return Divider();//berfungsi untuk pemisah antar konten
    }
  },

  itemCount: bulan.length,
),


// secara default semua ListView widget memiliki padding antar widgetnya, jika ingin menghilangkannya silahkan set padding ke EdgeInsets.all(0.0).