class Fish {
  final String name;
  final String category;
  final int price;
  final String location;
  final String imagePath;
  final double age;
  final String size;
  final String condition;
  final String grade;
  final String description;
  final String sellerName;
  final double sellerRating;
  final String sellerLocation;
  final bool isFavorite;
  final bool isBestSeller;

  const Fish({
    required this.name,
    required this.category,
    required this.price,
    required this.location,
    required this.imagePath,
    this.age = 4.5,
    this.size = 'M+',
    this.condition = 'Very Fit',
    this.grade = 'Grade A++',
    this.description =
        'Personal collection Betta fish with perfect and symmetrical fin form. Multi color is very bright and high contrast. Fish in prime condition, active, and ready to ship throughout Indonesia with a live arrival guarantee.',
    this.sellerName = 'Samudra Betta Farm',
    this.sellerRating = 4.9,
    this.sellerLocation = 'South Jakarta',
    this.isFavorite = false,
    this.isBestSeller = false,
  });
}

final List<Fish> fishList = [
  const Fish(
    name: 'High Quality Blue Rim Plakat',
    category: 'PLAKAT',
    price: 450000,
    location: 'East Jakarta',
    imagePath: 'assets/img/blue rim plakat.jpg',
    age: 5.0,
    size: 'L',
    condition: 'Very Fit',
    grade: 'Grade A++',
    isFavorite: true,
    sellerName: 'Samudra Betta Farm',
    sellerRating: 4.9,
    sellerLocation: 'East Jakarta',
  ),
  const Fish(
    name: 'Halfmoon Copper Red',
    category: 'HALFMOON',
    price: 275000,
    location: 'Bandung',
    imagePath: 'assets/img/halfmoon super red.jpg',
    age: 4.0,
    size: 'M+',
    condition: 'Fit',
    grade: 'Grade A+',
    sellerName: 'Bandung Betta House',
    sellerRating: 4.7,
    sellerLocation: 'Bandung',
  ),
  const Fish(
    name: 'Black Orchid Crowntail',
    category: 'CROWNTAIL',
    price: 150000,
    location: 'Surabaya',
    imagePath: 'assets/img/black orchid crowntail.jpg',
    age: 3.5,
    size: 'M',
    condition: 'Very Fit',
    grade: 'Grade A',
    isBestSeller: true,
    sellerName: 'Surabaya Betta Center',
    sellerRating: 4.8,
    sellerLocation: 'Surabaya',
  ),
  const Fish(
    name: 'Avatar Galaxy Plakat',
    category: 'PLAKAT',
    price: 850000,
    location: 'Tangerang',
    imagePath: 'assets/img/halfmoon multi color.jpg',
    age: 4.5,
    size: 'L',
    condition: 'Very Fit',
    grade: 'Grade A++',
    sellerName: 'Galaxy Betta Farm',
    sellerRating: 4.9,
    sellerLocation: 'Tangerang',
  ),
  const Fish(
    name: 'Lavender Dumbo Ear',
    category: 'DUMBO EAR',
    price: 320000,
    location: 'Medan',
    imagePath: 'assets/img/dumbo ear halfmoon.jpg',
    age: 4.0,
    size: 'M+',
    condition: 'Fit',
    grade: 'Grade A+',
    sellerName: 'Medan Betta Shop',
    sellerRating: 4.6,
    sellerLocation: 'Medan',
  ),
  const Fish(
    name: 'Multi Color Koi Nemo',
    category: 'KOI',
    price: 550000,
    location: 'Sleman, DIY',
    imagePath: 'assets/img/koi.jpg',
    age: 5.0,
    size: 'L',
    condition: 'Very Fit',
    grade: 'Grade A++',
    sellerName: 'Jogja Koi Betta',
    sellerRating: 4.8,
    sellerLocation: 'Sleman, DIY',
  ),
];

final List<String> categories = [
  'Halfmoon',
  'Plakat',
  'Crowntail',
  'Giant',
  'Others',
];
