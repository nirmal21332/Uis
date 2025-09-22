class RecommendedPlacesModel{
  String image;
  double rating;
  String location;
  RecommendedPlacesModel({required this.location,required this.image,required this.rating});
}

List<RecommendedPlacesModel> recommendedPlaces=[
  RecommendedPlacesModel(location:'St.Regis Bora Bora', image:'assets/places/place1.jpg', rating:4.2),
  RecommendedPlacesModel(location:'St.Regis Bora Bora', image:'assets/places/place2.jpg', rating:4.0),
  RecommendedPlacesModel(location:'St.Regis Bora Bora', image:'assets/places/place3.jpg', rating:3.9),
  RecommendedPlacesModel(location:'St.Regis Bora Bora', image:'assets/places/place4.jpg', rating:4.1),
  RecommendedPlacesModel(location:'St.Regis Bora Bora', image:'assets/places/place5.jpg', rating:4.9),
];