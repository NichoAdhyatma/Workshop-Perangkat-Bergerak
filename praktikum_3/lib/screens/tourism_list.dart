import 'package:flutter/material.dart';
import 'package:praktikum_3/models/tourism_place.dart';
import 'package:praktikum_3/providers/done_tourism_provider.dart';
import 'package:praktikum_3/screens/detail_screen.dart';
import 'package:praktikum_3/widgets/list_item.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({super.key});

  @override
  State<TourismList> createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/kapal_selam.jpeg',
      description:
          'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota yaitu di Jalan Pemuda, tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen. Monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952. Kapal selam ini pernah dilibatkan dalam Pertempuran Laut Aru untuk membebaskan Irian Barat dari pendudukan Belanda.',
      gallery: [
        'assets/images/kapal_selam_2.jpeg',
        'assets/images/kapal_selam_3.jpeg',
        'assets/images/kapal_selam_4.jpeg',
      ],
      openDays: "Buka Setiap Hari",
      openHours: "08:00 - 16:00",
      price: 10000,
      rating: 4.76,
    ),

    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/klenteng_sanggar_agung.jpg',
      description:
          'Kelenteng Sanggar Agung atau Klenteng Hong San Tang adalah sebuah klenteng di Kota Surabaya. Alamatnya berada di Jalan Sukolilo Nomor 100, Pantai Ria Kenjeran, Surabaya. Kuil ini, selain menjadi tempat ibadah bagi pemeluk Tridharma, juga menjadi tempat tujuan wisata bagi para wisatawan. Klenteng ini dibuka pada tahun 1999.',
      gallery: [
        'assets/images/klenteng_sanggar_agung_2.jpg',
        'assets/images/klenteng_sanggar_agung_3.jpeg',
        'assets/images/klenteng_sanggar_agung_4.jpg',
      ],
      openDays: "Buka Setiap Hari",
      openHours: "08:00 - 16:00",
      price: 10000,
      rating: 4.34,
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/sampoerna.jpg',
      description:
          "The House of Sampoerna is a tobacco museum and headquarters of Sampoerna located in Surabaya. The main building's architectural style influenced by Dutch colonial-style compound was built in 1862, and is now a preserved historical site. Previously used as an orphanage managed by the Dutch‚ it was purchased in 1932, by Liem Seeng Tee‚ the founder of Sampoerna‚ with the intent of it being used as Sampoerna's first",
      gallery: [
        'assets/images/sampoerna_2.jpeg',
        'assets/images/sampoerna_3.jpg',
        'assets/images/sampoerna_4.jpeg',
      ],
      openDays: "Buka Setiap Hari",
      openHours: "09:00 - 17:00",
      price: 90000,
      rating: 4.64,
    ),

    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/tugu_pahlawan.jpg',
      gallery: [
        'assets/images/tugu_pahlawan_2.jpeg',
        'assets/images/tugu_pahlawan_3.jpg',
        'assets/images/tugu_pahlawan.jpg',
      ],
      openDays: "Buka Setiap Hari",
      openHours: "09:00 - 17:00",
      price: 90000,
      rating: 4.64,
      description:
          "Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan (canalures) sebanyak 10 lengkungan, dan terbagi atas 11 ruas. Tinggi, ruas dan canalures mengandung makna tanggal 10, bulan 11, tahun 1945. Suatu tanggal bersejarah, bukan hanya bagi penduduk Kota Surabaya, tetapi juga bagi seluruh Rakyat Indonesia",
    ),
    // TourismPlace(
    //   name: 'Patung Suro Boyo',
    //   location: 'Wonokromo',
    //   imageAsset: 'assets/images/sby.jpg',
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...tourismPlaceList.map(
        (place) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    place: place,
                  ),
                ),
              );
            },
            child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget) => ListItem(
                place: place,
                onCheckboxClick: (bool? value) {
                  data.complete(place, value!);
                },
                isDone: data.doneTourismList.contains(place),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
