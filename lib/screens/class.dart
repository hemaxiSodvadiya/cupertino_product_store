import 'package:cupertino_store/global.dart';

class Global {
  // static late int id;
  // static late String name;
  // static late int price;
  // static String? image;
  static List<AddList> addList = [];
  static List<Product> allProduct = [
    Product(
        id: 0,
        name: "Vagabond sack",
        price: 120,
        image: 'https://m.media-amazon.com/images/I/6184nPOq99L._UL1001_.jpg'),
    Product(
        id: 0,
        name: "Stella sunglasses",
        price: 58,
        image:
            'https://media.glamour.com/photos/60a2c1b287a99206efddd3cf/1:1/w_2000,h_2000,c_limit/sunglasses.jpeg'),
    Product(
        id: 0,
        name: "Whitney belt",
        price: 35,
        image:
            'https://www.babastyles.com/store/2345/gucci-guccissima-monogram-interlocking-g-leather-belt.jpg'),
    Product(
        id: 0,
        name: "Garden strand",
        price: 98,
        image:
            'https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/j/w/jwj984_1_9ec25a94.jpg?rnd=20200526195200'),
    Product(
        id: 0,
        name: "Strut earrings",
        price: 34,
        image:
            'https://thumbs.dreamstime.com/b/triangle-shape-gold-earrings-pearls-blue-background-geometric-figures-minimalist-jewelry-advertising-product-still-life-174177817.jpg'),
    Product(
        id: 0,
        name: "Varsity socks",
        price: 12,
        image:
            'https://www.accessorize.com/dw/image/v2/BDLV_PRD/on/demandware.static/-/Sites-accessorize-master-catalog/default/dwcdfde088/images/large/01_79604210_1.jpg?sw=500&sh=640&sm=cut'),
    Product(
        id: 0,
        name: "Weave keyring",
        price: 16,
        image:
            'https://rukminim1.flixcart.com/image/850/850/jteoosw0/key-chain/n/s/d/braided-leather-rope-rainsound-original-imaferuupur4j9jz.jpeg?q=90'),
  ];
  static List<Search> allSearch = [
    Search(
        name: "White printstripe shirt",
        price: 70,
        image: 'https://m.media-amazon.com/images/I/41vSqcGHweL._UY445_.jpg'),
    Search(
        name: "Chambray shirt",
        price: 70,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI30lG1zaJq60tvqPGm-zRBEiKdGt2ETEenA&usqp=CAU'),
    Search(
        name: "Surf and perf shirt",
        price: 48,
        image:
            'https://my-test-11.slatic.net/p/c56f32dcd98a2dae48797b72957989d6.jpg'),
    Search(
        name: "Chambray shirt",
        price: 38,
        image:
            'https://i.pinimg.com/originals/47/75/c4/4775c459c59c4f8063bc8d3b39b88967.jpg'),
    Search(
        name: "Sunshirt dress",
        price: 58,
        image:
            'https://cdn.shopify.com/s/files/1/2030/0075/products/58-MARY-WHL-SIMONE_8195_v1_sRGB.jpg?v=1640273244'),
  ];
  static List<Count> allCount = [];
}
