import 'package:flutter/material.dart';
import 'merchandise.dart';
import 'package:provider/provider.dart';

 class DetailsPage extends StatelessWidget {
  final String dataClassId;
 const  DetailsPage({required this.dataClassId,super.key});
  @override
  Widget build(BuildContext context) {
    final goodsProvider = Provider.of<Products>(context);
    final goods = goodsProvider.getdataClassById(dataClassId);
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon:  const Icon(Icons.shopping_cart_checkout_outlined))
        ],
        title: Text(goods.title),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Hero(
              // ignore: sort_child_properties_last
              child: Image.network(
                goods.imageUrl,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
              tag: goods.id,
            ),
          ),
          Card(
            // ignore: sized_box_for_whitespace
            child: Container(
              width: double.infinity,
              child:  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Price:"),
                    Chip(
                        label: Text(
                      goods.price,
                      style:
                        const   TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                goods.description,
                style:  const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          TextButton.icon(
              onPressed: () => {},
              icon:  const Icon(
                Icons.add_shopping_cart,
                size: 55,
                color: Colors.black,
              ),
              label: const Text(
                'Add to cart',
                style: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }
}
