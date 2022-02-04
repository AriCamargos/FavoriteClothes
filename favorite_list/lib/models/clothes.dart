enum SizeClothes {
  small,
  medium,
  large,
  extraLarge,
}

enum ColorsClothes {
  white,
  black,
  green,
  beige,
}

class Clothes {
  final String id;
  final List<String> categories;
  final String title;
  final double value;
  final SizeClothes sizeClothes;
  final ColorsClothes colorClothes;
  final String imageUrl;

  const Clothes({
    required this.id,
    required this.categories,
    required this.title,
    required this.value,
    required this.sizeClothes,
    required this.colorClothes,
    required this.imageUrl,
  });

  String get sizesClothesText {
    switch (sizeClothes) {
      case SizeClothes.small:
        return 'P';
      case SizeClothes.medium:
        return 'M';
      case SizeClothes.large:
        return 'G';
      case SizeClothes.extraLarge:
        return 'GG';
      default:
        return 'Desconhecido';
    }
  }

  String get colorsClothesText {
    switch (colorClothes) {
      case ColorsClothes.black:
        return 'Preto';
      case ColorsClothes.white:
        return 'Branco';
      case ColorsClothes.beige:
        return 'Bege';
      case ColorsClothes.green:
        return 'Verde';
      default:
        return 'Desconhecido';
    }
  }
}
