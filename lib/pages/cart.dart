import 'package:flutter/material.dart';
import 'package:eshop_by_harsh/components/cart_products.dart';
class Cart extends StatefulWidget {
	@override
	_CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: new AppBar(
				elevation: 0.1,
				backgroundColor: Colors.redAccent,
				// centerTitle: true,
				title: Text('cart'),
				actions: [
					IconButton(icon: Icon(Icons.search), onPressed: (){}),
				],
			),

			body: Cart_products(),

			bottomNavigationBar: Container(
				color: Colors.white,
				child: Row(
					children: [
						Expanded(child: ListTile(
							title: Text("Total"),
							subtitle: Text("\$${230}"),
						)),

						Expanded(
							child: MaterialButton(
								onPressed: (){},
								child: Text("Check out", style: TextStyle(color: Colors.white),),
								color: Colors.redAccent,
							)
						),
					],
				),
			),
		);
	}
}