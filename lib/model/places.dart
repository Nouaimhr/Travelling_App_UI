class Place {
  String img;
  String title;
  double rating;
  String location;

  Place({
    required this.img,
    required this.title,
    required this.rating,
    required this.location,
  });
}

List places = [
  Place(
      img: 'img2.jpg',
      title: 'St. Regis Bora Bora',
      rating: 4.8,
      location: 'French Polynesia'),
  Place(
      img: 'img1.jpg',
      title: 'Rialto Bridge',
      rating: 5.0,
      location: 'Venice, italy'),
];
