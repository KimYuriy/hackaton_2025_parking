enum PlaceType {
  owned, guest, special, rent
}

extension PlaceTypeX on PlaceType {
  
  String get typeName {
    switch (this) {
      case PlaceType.guest:
        return "Гостевое";
      case PlaceType.owned:
        return "Частное";
      case PlaceType.special:
        return "Для спец. машин";
      case PlaceType.rent:
        return "Арендное";
    }
  }
}