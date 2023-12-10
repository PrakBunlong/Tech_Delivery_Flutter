class ProductModel {
  final int id;
  final String name;
  final double price;
  final String image;
  late bool favorite;
  final String description;
  final List<String> size;
  late int counter;

  ProductModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.favorite,
      required this.description,
      required this.size,
      required this.counter});
}

final List<ProductModel> listProduct = [
  ProductModel(
    id: 1,
    name: 'Iphone 14',
    price: 1200,
    image: 'asset/image/iphone14.jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 2,
    name: 'Airpod Pro 2',
    price: 15,
    image: 'asset/image/airpod.jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 3,
    name: 'Macbook Pro M2 13',
    price: 10,
    image: 'asset/image/macbook.jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 4,
    name: 'camera1',
    price: 20,
    image: 'asset/image/camera1.webp',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 4,
    name: 'camera1',
    price: 20,
    image: 'asset/image/camera1.webp',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 4,
    name: 'camera1',
    price: 20,
    image: 'asset/image/camera1.webp',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 4,
    name: 'camera1',
    price: 20,
    image: 'asset/image/camera1.webp',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 4,
    name: 'camera1',
    price: 20,
    image: 'asset/image/camera1.webp',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
];
