enum PlaceType {
  owned, guest, specialVehicle, forRent
}

extension PlaceTypeX on PlaceType {
  String get name {
    switch (this) {
      case PlaceType.guest:
        return "Гостевое";
      case PlaceType.owned:
        return "Частное";
      case PlaceType.specialVehicle:
        return "Для спец. машин";
      case PlaceType.forRent:
        return "Арендное";
    }
  }
}