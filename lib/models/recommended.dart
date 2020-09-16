class Recommended {
  String imageUrl;
  String location;
  String starTimes;
  double rating;
  int price;

  Recommended({
    this.imageUrl,
    this.location,
    this.starTimes,
    this.rating,
    this.price,
  });
}

List<Recommended> recommended_destinations = [
  Recommended(
    imageUrl: 'assets/images/philippines.jpg',
    location: 'Philippines',
    starTimes: '⭐⭐⭐⭐',
    rating: 4.5,
    price: 550,
  ),
  Recommended(
    imageUrl: 'assets/images/greece.jpg',
    location: 'Greece',
    starTimes: '⭐⭐⭐⭐',
    rating: 4.5,
    price: 650,
  ),
];
