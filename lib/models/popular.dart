class Popular {
  String imageUrl;
  String location;
  String starTimes;
  double rating;
  int price;

  Popular({
    this.imageUrl,
    this.location,
    this.starTimes,
    this.rating,
    this.price,
  });
}

final List<Popular> popular_destinations = [
  Popular(
    imageUrl: 'assets/images/tahiti.jpg',
    location: 'Tahiti',
    starTimes: '⭐⭐⭐⭐',
    rating: 4.5,
    price: 750,
  ),
  Popular(
    imageUrl: 'assets/images/polynesia.jpg',
    location: 'Polynesia',
    starTimes: '⭐⭐⭐⭐',
    rating: 4.5,
    price: 650,
  ),
];
