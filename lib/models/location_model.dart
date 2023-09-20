class LocationModel {
  String? address;
  String? city;
  double? lat;
  double? long;

  LocationModel();
}

LocationModel location1 = LocationModel()
  ..address = 'Da Nang '
  ..city = 'Da Nang'
  ..lat = 21.0
  ..long = 60.0;

LocationModel location2 = LocationModel()
  ..address = 'Quang Nam '
  ..city = 'Quang Nam'
  ..lat = 22.0
  ..long = 60.0;

LocationModel location3 = LocationModel()
  ..address = 'Thang Binh '
  ..city = 'Quang Nam'
  ..lat = 12.0
  ..long = 10.0;

LocationModel location4 = LocationModel()
  ..address = 'Ha Lam '
  ..city = 'Quang Nam'
  ..lat = 90.0
  ..long = 50.0;

