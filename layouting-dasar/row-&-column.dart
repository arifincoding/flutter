// row dan column pada flutter merupakan widget yang dapat memiliki lebih dari 1 turunan widget

// row dan column widget tidak bisa scrolling, jadi apabila row dan column widget telah melebihi ukuran layar akan muncul error

// row widget (horizontal)

return Scaffold(
  appBar:AppBar(
    title: Text("belajar layouting"),
  ),
  body: Row(
    children:[
      Container(
        color: Colors.greenAccent,
        child: FlutterLogo(
          size:60.0,
        ),
      ),
      Container(
        color: Colors.orangeAccent,
        child: FlutterLogo(
          size: 60.0,
        ),
      ),
      Container(
        color: Colors.purpleAccent,
        child: FlutterLogo(
          size:60.0,
        ),
      ),
    ]
  ),
);

// column (vertikal)

return Scaffold(
  appBar:AppBar(
    title: Text("belajar layouting"),
  ),
  body: Column(
    children:[
      Container(
        color: Colors.greenAccent,
        child: FlutterLogo(
          size:60.0,
        ),
      ),
      Container(
        color: Colors.orangeAccent,
        child: FlutterLogo(
          size: 60.0,
        ),
      ),
      Container(
        color: Colors.purpleAccent,
        child: FlutterLogo(
          size:60.0,
        ),
      ),
    ]
  ),
);

// property mainAxisAlignment
// property column dan row yang berfungsi untuk mengatur posisi widget didalamnya

Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children:[
    continer(
      ...
    )
  ]
)

Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children:[
    continer(
      ...
    )
  ]
)

// Berikut pilihan mainAxisAlignment beserta keterangannya

// MainAxisAlignment.center = Memposisikan widget pada tengah layar
// MainAxisAlignment.start = Memposisikan widget mengikuti posisi widget pertama
// MainAxisAlignment.end = Memposisikan widget mengikuti posisi widget terakhir
// MainAxisAlignment.spaceEvenly = Memberi jarak antara masing-masing child secara merata pada ruang yang tersedia
// MainAxisAlignment.spaceAround = Memberi jarak antar widget secara merata namun hanya memberikan setengah jarak pada awal dan akhir widget