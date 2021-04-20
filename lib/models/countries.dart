class Countries {
  int id;
  String name;
  String photo;
  String description;
  int priceStart;
  int priceStop;
  int rate;
  int weather;
  String date;
  bool isPopular;

  Countries({
    this.id,
    this.name,
    this.photo,
    this.description,
    this.priceStart,
    this.priceStop,
    this.rate,
    this.weather,
    this.date,
    this.isPopular,
  });
}

List<Countries> mockCountries = [
  Countries(
    id: 1,
    name: "Bali",
    photo: "assets/popular1.png",
    description:
        "Bali is famous for beaches, countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture with colorfuls ceremonies and magnificent temples gifted artists the producing.",
    priceStart: 500,
    priceStop: 750,
    rate: 4,
    weather: 27,
    date: "9 Jan",
    isPopular: true,
  ),
  Countries(
    id: 2,
    name: "Paris",
    photo: "assets/popular2.png",
    description:
        "Bali is famous for beaches, countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture with colorfuls ceremonies and magnificent temples gifted artists the producing.",
    priceStart: 500,
    priceStop: 750,
    rate: 4,
    weather: 27,
    date: "9 Jan",
    isPopular: false,
  ),
  Countries(
    id: 3,
    name: "England",
    photo: "assets/popular3.png",
    description:
        "Bali is famous for beaches, countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture with colorfuls ceremonies and magnificent temples gifted artists the producing.",
    priceStart: 500,
    priceStop: 750,
    rate: 4,
    weather: 27,
    date: "9 Jan",
    isPopular: false,
  ),
];
