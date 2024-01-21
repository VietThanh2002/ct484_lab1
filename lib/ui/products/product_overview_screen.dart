import 'package:flutter/material.dart';
import 'products_grid.dart';

enum FilterOptions { favorites, all}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({super.key});

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
    var _showOnlyFavorites = false;

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text('MyShop'),
          backgroundColor: Colors.purple,
          actions: <Widget>[
            buildProductFilterMenu(),
            buildShoppingCartIcon(),
          ],
        ),
        body: ProductsGird(_showOnlyFavorites),
      );
    }


  Widget buildShoppingCartIcon() {
    return IconButton(
      icon: const Icon(
        Icons.shopping_cart,
      ),
      onPressed: () {
        print('Go to cart screen');
      },
    );
  }

  Widget buildProductFilterMenu() {
    return PopupMenuButton(
      onSelected: (FilterOptions onSelectedValue){
        setState(() {
          if(onSelectedValue == FilterOptions.favorites){
            _showOnlyFavorites = true;
          }else{
            _showOnlyFavorites = false;
          }
        });
      },
      icon: const Icon(
        Icons.more_vert,
      ),
      itemBuilder: (ctx) => [
        const PopupMenuItem(
          value: FilterOptions.favorites,
          child: Text('Only Favorites'),
        ),
        const PopupMenuItem(
          value: FilterOptions.all,
          child: Text('Show All'),
        ),
      ],
    );
  }
}