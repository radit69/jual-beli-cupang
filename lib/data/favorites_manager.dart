import 'fish_data.dart';

class FavoritesManager {
  static final FavoritesManager _instance = FavoritesManager._internal();
  factory FavoritesManager() => _instance;

  FavoritesManager._internal() {
    _initDefaults();
  }

  final Set<String> _favoritedFishNames = {};

  Set<String> get favoritedNames => _favoritedFishNames;

  void _initDefaults() {
    // Seed default favorites based on fishList's initial isFavorite fields
    for (var fish in fishList) {
      if (fish.isFavorite) {
        _favoritedFishNames.add(fish.name);
      }
    }
  }

  bool isFavorite(Fish fish) {
    return _favoritedFishNames.contains(fish.name);
  }

  void toggleFavorite(Fish fish) {
    if (_favoritedFishNames.contains(fish.name)) {
      _favoritedFishNames.remove(fish.name);
    } else {
      _favoritedFishNames.add(fish.name);
    }
  }

  List<Fish> getFavoriteFish(List<Fish> allFish) {
    return allFish.where((fish) => _favoritedFishNames.contains(fish.name)).toList();
  }

  int get favoritesCount => _favoritedFishNames.length;
}
