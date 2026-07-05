import 'package:flutter/foundation.dart';
import 'fish_data.dart';

class CartItem {
  final Fish fish;
  int quantity;

  CartItem({required this.fish, this.quantity = 1});
}

class CartManager extends ChangeNotifier {
  static final CartManager _instance = CartManager._internal();
  factory CartManager() => _instance;

  CartManager._internal() {
    _initDefaults();
  }

  final List<CartItem> _items = [];
  List<CartItem> get items => _items;

  void _initDefaults() {
    _items.addAll([
      CartItem(
        fish: const Fish(
          name: 'Royal Sapphire',
          category: 'HALFMOON',
          price: 450000,
          location: 'South Jakarta',
          imagePath: 'assets/img/dumbo ear halfmoon.jpg',
        ),
        quantity: 1,
      ),
      CartItem(
        fish: const Fish(
          name: 'Crimson King',
          category: 'CROWNTAIL',
          price: 380000,
          location: 'Bandung',
          imagePath: 'assets/img/halfmoon super red.jpg',
        ),
        quantity: 1,
      ),
      CartItem(
        fish: const Fish(
          name: 'Marble Koi Zen',
          category: 'PLAKAT',
          price: 520000,
          location: 'Sleman, DIY',
          imagePath: 'assets/img/koi.jpg',
        ),
        quantity: 1,
      ),
    ]);
  }

  void addFish(Fish fish) {
    final index = _items.indexWhere((item) => item.fish.name == fish.name);
    if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(CartItem(fish: fish));
    }
    notifyListeners();
  }

  void removeFish(Fish fish) {
    _items.removeWhere((item) => item.fish.name == fish.name);
    notifyListeners();
  }

  void incrementQuantity(CartItem item) {
    item.quantity++;
    notifyListeners();
  }

  void decrementQuantity(CartItem item) {
    if (item.quantity > 1) {
      item.quantity--;
      notifyListeners();
    }
  }

  int get subtotal {
    int sum = 0;
    for (var item in _items) {
      sum += item.fish.price * item.quantity;
    }
    return sum;
  }

  int get shipping => _items.isEmpty ? 0 : 15000;

  int get total => subtotal + shipping;
}

