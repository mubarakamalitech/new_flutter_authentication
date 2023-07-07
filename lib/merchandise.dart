import 'package:flutter/material.dart';
import 'package:newflutterapp/datamodel.dart';


class Products with ChangeNotifier {
 final  List<DataClass> _goods = [

  
    DataClass(
        id: '001',
        title: 'Retro 1',
        description: 'his Jordan 1 Retro High is composed of a white and grey leather upper with traditional Dior monogram print Swoosh. These shoes are made in Italy with premium materials. Co-branded icy translucent soles, Dior branded tongue and Wings logo, and a silver "Air Dior" hang tag completes the design. These sneakers released in April of 2020 and retailed for 2,000.',
        price: 'GHC900',
        imageUrl:
            'https://thesneakerbuzz.ca/wp-content/uploads/2020/01/thumbnail_Screenshot_20200123-145246.jpg'),
    DataClass(id: '002', title: 'Off-White', description: 'Urban streetwear collides with conventional high design at Off-White, this red cotton hoodie finished in the image of the brands offbeat aesthetic The design is finished with the classic drawstring hood, ribbed hem and cuffs, emblazoned by a contrast white logo print to the chest and to the rear. This item is true to fit.', price: 'GHC1000', imageUrl: 'https://th.bing.com/th/id/R.467cb4b019c72b3271df9aacb10c8b47?rik=92NCy7vbXmFbTA&pid=ImgRaw&r=0'),
    DataClass(id: '003', title: 'L5 Smart watch', description: 'Where most GMT timepieces indicate the second time zone with an additional hand, the Montblanc 1858 GMT features a GMT indication without hands that is very intuitive and highly legible. The Montblanc 1858 GMT indicates the second time zone with a red square that moves around the outside of the dial. This red square is positioned next to a fixed black anodized aluminum bezel with a 24-hour clock. This system also indicates half hours. Other functions include a date and central seconds hand. The timepiece is housed in a 42 mm stainless steel case and comes with a black sunray dial as well as an interchangeable black rubber strap with fine adjustment system. An engraving on the case back shows the continents, oceans, and names of cities in each of the 24 time zones, offering a world time indication.', price: 'GHS500', imageUrl: 'https://i5.walmartimages.com/asr/1edf3b18-21ae-4d74-93b5-96e695416811_1.af27fea45479a852a5f3d96213882eaf.jpeg'),
    DataClass(id: '004', title: 'Denim Bag', description: 'Characterised by its arching silhouette, Balenciagas Crush bag highlights the brands focus on contemporary design. This iteration is presented in faded mid-wash denim with diagonal quilting and topped with a signature B plaque and chain strap in matching silver-tone metal'

 ,price: 'GHC600', imageUrl: 'https://cdn-images.farfetch-contents.com/19/46/95/65/19469565_50025805_480.jpg'),
    DataClass(id: '005', title: 'Suit Blazer', description: 'Straight-fit blazer made of elasticated fabric. Notched lapel collar. Long sleeves with buttoned cuffs. Chest welt pocket and flap hip pockets. Inside pocket detail. Back vents. Buttoned front.', price: 'GHC2000', imageUrl: 'https://static.zara.net/photos///2023/W/0/2/p/0706/390/800/2/w/750/0706390800_2_1_1.jpg?ts=1683041043795'),
    DataClass(id: '006', title: 'Underwear', description: 'A pack of 3 Calvin Klein trunks made from comfortable cotton stretch fabric, featuring an elastic logo waistband and a contoured pouch.', price: 'GHC100', imageUrl: 'https://i5.walmartimages.com/asr/1da8ae57-3bdd-4316-87e8-a0ae6bee0d0d_1.d2643a2615474ddeee7c61626cc26c13.jpeg'),
    DataClass(id: '007', title: 'Sunglasses', description: 'Currently one of the most iconic sunglass models in the world, Ray-Ban Aviator Classic sunglasses were originally designed for U.S. aviators in 1937. Aviator Classic sunglasses are a timeless model that combines great aviator styling with exceptional quality, performance and comfort.', price: 'GHC124', imageUrl: 'https://images.ray-ban.com/is/image/RayBan/805289602057__002.png?impolicy=RB_Product&width=720&bgc=%23f2f2f2'),
    DataClass(id: '008', title: 'Native', description: ' Elegant and classy , this native wear will be a great aditon to your wardrobe.It takes away from the usual shirts and Trousers with its unique African design touch, its a perfectt fit for your figure  ', price: 'Ghc500', imageUrl: 'https://gh.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/64/162558/1.jpg?9816'),
  /*  dataClass(id: '009', title: '', description: '', price: '', imageUrl: ''),
    dataClass(id: '010', title: '', description: '', price: '', imageUrl: ''),
    dataClass(id: '011', title: '', description: '', price: '', imageUrl: ''),
    dataClass(id: '012', title: '', description: '', price: '', imageUrl: ''),
    dataClass(id: '013', title: '', description: '', price: '', imageUrl: ''),*/
  ];
  List<DataClass> get goods => _goods;

  DataClass getdataClassById(String id) {
    return _goods.firstWhere((product) => product.id == id);
  }
}
