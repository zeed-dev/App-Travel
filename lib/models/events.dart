class Events {
  int id;
  String title;
  String address;
  String photo;

  Events({
    this.id,
    this.title,
    this.address,
    this.photo,
  });
}

List<Events> mockEvents = [
  Events(
    id: 1,
    title: "Rio Carnival, Rio de Janiro",
    address: "Brazil",
    photo: "assets/events1.png",
  ),
  Events(
    id: 2,
    title: "Sapporo Snow Festival",
    address: "Japan",
    photo: "assets/events2.png",
  ),
];
