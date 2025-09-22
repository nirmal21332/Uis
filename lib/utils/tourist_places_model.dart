class TouristPlacesModel {
  String image, place;

  TouristPlacesModel({required this.image, required this.place});
}

List<TouristPlacesModel> placesModel = [
  TouristPlacesModel(image: 'assets/icons/beach.png', place: 'Beach'),
  TouristPlacesModel(image: 'assets/icons/city.png', place: 'City'),
  TouristPlacesModel(image: 'assets/icons/desert.png', place: 'Desert'),
  TouristPlacesModel(image: 'assets/icons/forest.png', place: 'Forest'),
  TouristPlacesModel(image: 'assets/icons/mountain.png', place:'Mountain'),
];
