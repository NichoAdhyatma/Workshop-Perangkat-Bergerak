class TourismPlace {
  String name;
  String location;
  String imageAsset;
  String description;
  String openDays;
  String openHours;
  int price;
  double rating;
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
    required this.rating,
  });
}

