class TourismPlace {
  String name;
  String location;
  String imageAsset;
  String description;
  String openDays;
  String openHours;
  int price;
  List<String> gallery;

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.description,
    required this.openDays,
    required this.openHours,
    required this.price,
    required this.gallery,
  });
}

var tourismPlaceList = [
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
  ),

  // TourismPlace(
  //   name: 'Kelenteng Sanggar Agung',
  //   location: 'Kenjeran',
  //   imageAsset: 'assets/images/klenteng.jpg',
  // ),
  // TourismPlace(
  //   name: 'House of Sampoerna',
  //   location: 'Krembangan Utara',
  //   imageAsset: 'assets/images/sampoerna.jpg',
  // ),
  // TourismPlace(
  //   name: 'Tugu Pahlawan',
  //   location: 'Alun-alun contong',
  //   imageAsset: 'assets/images/pahlawan.jpg',
  // ),
  // TourismPlace(
  //   name: 'Patung Suro Boyo',
  //   location: 'Wonokromo',
  //   imageAsset: 'assets/images/sby.jpg',
  // ),
];
