// untuk menampilkan gambar dari internet menggunakan widget
Image.network("url dari gambar");

// kelemahan menggunakan gambar dari internet adalah
// setiap load image harus menggunakan kouta internet
// jika internet terputus maka gambar akan blank dan error

// Untuk mengurangi permintaan download image secara berulang pada gambar yang sudah pernah di load maka gunakan cache. Cache berguna untuk menyimpan gambar yang sudah di load secara temporary atau sementara.

// cara menggunakan cache network image

// install package cached_network_image dengan cara tambahkan di pupspec.yaml

dependencies:
  cached_network_image: ^2.2.0+1

// import package

import 'package:cached_network_image/cached_network_image.dart';

// tambahkan CachedNetworkImage pada image widget

child:Image(
  image:CachedNetworkImage("url image")
)

// tambahkan placeholder dan tampilan error jika terjadi kesalahan

CachedNetworkImage(
  imageUrl:"https://pbs.twimg.com/profile_images/1357389750370406401/ciutmtZ4_400x400.jpg",
  placeholder: (context, url) => CircularProgressIndicator(),
  errorWidget: (context, url, error) => Text("Koneksi error"),
),

// Dengan menggunakan kode diatas maka saat image belum ter-load maka akan muncul progress bar. Dan apabila terjadi error akan menampilkan text “Koneksi Error”. Baik progress bar maupun errorWidget kita dapat mengganti dengan image, icon atau widget lainnya.

// contoh kode lengkap

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main(){
  runApp(MaterialApp(
    title: "belajar flutter",
    home: BelajarGambarNetwork(),
  ));
}

class BelajarGambarNetwork extends StatelessWidget{
  @override
  Widget build(Context context){
    return Scaffold(
      appBar: AppBar(
        title: Text("belajar flutter"),
      ),
      body: Center(
        child:CachedNetworkImage(
          imageUrl:"https://pbs.twimg.com/profile_images/1357389750370406401/ciutmtZ4_400x400.jpg",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Text("Koneksi error"),
        ),
      ),
    );
  }
}

// mengatur tinggi dan lebar gambar

// property height = untuk mengatur tinggi
// property width = untuk mengatur lebar

// contoh

CachedNetworkImage(
          imageUrl: "https://pbs.twimg.com/profile_images/1357389750370406401/ciutmtZ4_400x400.jpg",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Text("Koneksi error"),
          height:100,
          width:200,
        ),