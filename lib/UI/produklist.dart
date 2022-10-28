import 'package:flutter/material.dart';
// ignore: unused_import
import './detail_produk.dart';

// ignore: camel_case_types
class produklist extends StatelessWidget {
  const produklist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(title: const Text("PPRODUCK MAKEUP")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const DetailProduk(
                  name: "Loreal Powder",
                  description: "LOREAL Infallebel Oil Killer High Coverage Powder yang tahan lama 24 jam",
                  price: 210000,
                  image: "Powder.jpg",
                  star: 5,
                ),
              ));
            },
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name: "Loreal Powder",
              description: 
              "LOREAL Infallebel Oil Killer High Coverage Powder yang tahan lama 24 jam ",
              price: 210000,
              image: "Powder.jpg",
              star: 5,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Make Over",
                      description:
                          " Make Over Lash Impulse Waterproof Mascara ",
                      price: 120000,
                      image: "mascara.jpg",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "Make Over",
                description: " Make Over Lash Impulse Waterproof Mascara",
                price: 120000,
                image: "mascara.jpg",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Make Over Mascara",
                      description:
                          "Mascara waterproof  tahan 8 jam",
                      price: 110000,
                      image: "mascara1.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "Make Over Mascara",
                description: "Mascara waterproof  tahan 8 jam",
                price: 110000,
                image: "mascara1.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "L'OREAL Lipstick",
                      description:
                          "Lisptick matte Lip gols",
                      price: 105000,
                      image: "Lipstick.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "L'OREAL Lipstick",
                description: "Lisptick matte Lip gols",
                price: 105000,
                image: "Lipstick.jpg",
                star: 5),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "L'OREAL FOUNDETION",
                      description:
                          "Foundetion L'oreal matte waterproof ",
                      price: 250000,
                      image: "foundation.jpg",
                      star: 2),
                ),
              );
            },
            child: ProductBox(
                name: "L'OREAL FOUNDETION",
                description: "Foundetion L'oreal matte waterproof",
                price: 250000,
                image: "foundation.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}