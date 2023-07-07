import 'package:flutter/material.dart';
import 'package:newflutterapp/details.dart';

import 'package:provider/provider.dart';
import 'merchandise.dart';

class  OverwiewScreen extends StatelessWidget {
   const OverwiewScreen({super.key});
   @override
  Widget build(BuildContext context) {
    final goodsProvider = Provider.of<Products>(context);
    

    return Scaffold(
      appBar: AppBar(title: const  Text('CATALOG'),backgroundColor: Colors.deepOrange,
      actions: [
        IconButton(onPressed: (){}, icon: const  Icon(Icons.search)),
      IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_checkout)),
      
      IconButton(onPressed: (){}, icon: const Icon(Icons.manage_accounts_sharp))
      ],
      
      ),
      body: GridView.builder(
          padding:  const EdgeInsets.all(10.0),
          gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3.5 / 4,
              crossAxisSpacing: 9,
              mainAxisSpacing: 9),
          itemCount: goodsProvider.goods.length,
          itemBuilder: ((context, index) {
            final item = goodsProvider.goods[index];

            return ClipRRect(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailsPage(dataClassId: item.id,)));
                },
                child: GridTile(
                  footer: SizedBox(
                    
                     height: 40,
                    child: GridTileBar(
                      backgroundColor: Colors.white,
                      leading: IconButton(
                        icon: (const Icon(Icons.favorite)),
                        onPressed: () {},
                      color: Colors.black,),
                      trailing: IconButton(
                        icon: const Icon(Icons.shopping_cart,color: Colors.black,),
                        onPressed: () {},
                      ),
                      title: Text(item.title,style:const TextStyle(color: Colors.black),),
                      subtitle: Text(item.price,style: const TextStyle(color: Colors.black),),
                    ),
                  ),
                  child: Hero(
                    tag: item.id,
                    child: Image.network(
                      item.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
