class Highlight {
  String name;
  String location;
  String imageAsset;
  double rating;

  Highlight({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.rating,
  });
}

var highLight_items = [
  Highlight(
    name: "Japan Castle",
    location: "Tokyo, Japan",
    imageAsset: "assets/images/japan.jpg",
    rating: 4.67,
  ),
  Highlight(
    name: "House of Japan",
    location: "Shibuya, Japan",
    imageAsset: "assets/images/japan_2.jpg",
    rating: 4.77,
  ),
  Highlight(
    name: "Hotel Japan",
    location: "Konoha, Japan",
    imageAsset: "assets/images/japan_3.jpg",
    rating: 4.8,
  ),
];
