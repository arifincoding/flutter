
// jika ingin menambahkan padding,margin,border dan warna background bisa menggunakan container widget

// container widget merupakan single child widget yang berarti hanya dapat memiliki 1 child saja, akan tetapi dalam sebuah sebuah container dapat menempatkan row,column, text atau bahkan container lain.

// penerapan fungsi property di widget container

// 1 property child

// property ini berfungsi untuk memuat anakan / turunan dari container, yang dapat memuat widget lainnya seperti Text, Column, listView dll

// contoh

body:Container(
  child:Text(//child memuat widget Text
    'Ayo Belajar flutter',
  ),
)


// 2 property alignment

// berfungsi untuk mengatur posisi child widget

// bottomCenter untuk memindahakan kebawah bagian tengah.
// bottomLeft untuk memindahkan ke bawah bagian Kiri.
// bottomRight untuk memindahkan ke bawah bagian Kanan.
// center untuk untuk memindahkan ke posisi tengah.
// centerLeft untuk memindahkan ke tengah bagian Kiri.
// centerRight untuk memindahkan ke tengah bagian Kanan.
// topCenter untuk memindahkan ke atas bagian Tengah.
// topLeft untuk memindahkan ke atas bagian Kiri.
// topRight untuk memindahkan ke atas bagian Kanan.

// contoh

body:Container(
  alignment: Alignment.bottomCenter,
  child: Text(
    'ayo belajar flutter',
    style: TextStyle(
      fontSize: 20,
    ),
  )
),

// 3 property color

// untuk memberi warna background pada container

body: Container(
  alignment: Alignment.center,
  color:Colors.purple,
  child:Text(
    'ayo belajar flutter',
    style: TextStyle(
      fontSize: 20,
      color:Colors.white
    ),
  )
)

// Apabila Anda menginginkan warna dengan custom bisa menggunakan kode berikut :

// color: Color(0xFF42A5F5);
// color: Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5);
// color: Color.fromARGB(255, 66, 165, 245);
// color: Color.fromRGBO(66, 165, 245, 1.0);

// 4 property height dan width

// karena secara default ukuran container akan menyesuaikan dengan body layar aplikasinya maka diperlukan property height dan width

body: Container(
  alignment: Alignment.center,
  color:Colors.purple,
  height: 200,
  width:200,
  child:Text(
    'ayo belajar flutter',
    style: TextStyle(
      fontSize: 20,
      color:Colors.white
    ),
  )
)

// 5 property margin

// margin digunakan untuk menbuat jarak d antara sis container dengan widget lainnya sehingga container akan menjorok ke bagian dalam.Property margin bisa digunakan sekaligus kepada 4 sisi wadah dengan menggunakan fungsi EdgeInsets.all() dan untuk margin sisi tertentu saja menggunakan fungsi EdgeInsets.only(left:20). margin menggunakan satuan pixel

// contoh

body: Container(
  margin:EdgeInsets.all(20),
  height: 200,
  width:200,
  alignment: Alignment.topLeft,
  color:Colors.purple,
  child: Text(
    'ayo belajar flutter',
    style: TextStyle(
      fontSize:20,
      color: Colors.white
    ),
  )
),

// 6 property padding

// digunakan untuk menambah jarak antara container dengan widget yang ada di dalamnya.Sama dengan margin penggunaannya bisa dengan menambahakan fungsi EdgeInsets.all() untuk mengatur ukuran padding sama di ke-empat sisinya.

// contoh

body: Container(
  padding: EdgeInsets.only(left:20),
  margin:EdgeInsets.all(20),
  height: 200,
  width:200,
  alignment: Alignment.topLeft,
  color:Colors.purple,
  child: Text(
    'ayo belajar flutter',
    style: TextStyle(
      fontSize:20,
      color: Colors.white
    ),
  )
),

// 7 property transform

// digunakan untuk melakukan rotasi pada container yang dapat dilakukan dengan melakukan dari berbagai sumbu putar misalnya X,Y dan Z yang dimana kita menggunakan fungsi Matrix4 untuk melakukan rotasinya.

// contoh

body: Container(
  transform: Matrix4.rotationZ(0.1),
  padding: EdgeInsets.only(left:20),
  margin:EdgeInsets.all(20),
  height: 200,
  width:200,
  alignment: Alignment.topLeft,
  color:Colors.purple,
  child: Text(
    'ayo belajar flutter',
    style: TextStyle(
      fontSize:20,
      color: Colors.white
    ),
  )
),

// Dalam fungsi diatas menyatakan bahwa Container diputar pada sumbu Z di titik 0.1
// Untuk Mengganti sumbu putarnya tinggal ubah pada bagian rotationZ menjadi rotationX atau rotationY.

// 8 property decoration

// menghias kotak container dengan efek dekorasi misal : warna border, gambar, efek shadow

// Ada banyak efek lainnya yang bisa anda tambahkan di sini yang menggunakan fungsi decoration: BoxDecoration()

// contoh

body: Container(
  decoration: BoxDecoration(
    color: const Color(0xff7c94b6),
    image: const DecorationImage(
      image: NetworkImage('https://i.pinimg.com/236x/26/ad/7e/26ad7eb7c5fffd0fb780af5a1693b417.jpg'),
      fit: BoxFit.cover,
    ),
    border:Border.all(
      color: Colors.black,
      width:8,
    ),
    borderRadius: BorderRadius.circular(12),
  )
  transform: Matrix4.rotationZ(0.1),
  padding: EdgeInsets.only(left:20),
  margin:EdgeInsets.all(20),
  height: 200,
  width:200,
  alignment: Alignment.topLeft,
  color:Colors.purple,
  child: Text(
    'ayo belajar flutter',
    style: TextStyle(
      fontSize:20,
      color: Colors.white
    ),
  )
),

// Dari kode diatas ada beberapa penambahan efek dekorasi pada Container diantaranya yaitu pemberian warna border dan menginputkan gambar kedalam Container. Dimana gambar tersebut bersumber dari link gambar di internet yang dimana dibutuhkan fungsi NetworkImage sebagai pemanggilan.