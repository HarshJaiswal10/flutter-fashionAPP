import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
	@override
	_Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
	var Products_on_the_cart = [
		
		{
			"name": "Blazer",
			"picture": "images/products/blazer1.jpeg",
			"price": 1100,
			"size": "M",
			"color": "Black",
			"quantity": 1,
		},
		{
			"name": "Red dress",
			"picture": "images/products/dress1.jpeg",
			"price": 1000,
			"size": "S",
			"color": "Red",
			"quantity": 1,
		},
	];
	@override
	Widget build(BuildContext context) {
		return ListView.builder(
			itemCount: Products_on_the_cart.length,
			itemBuilder: (context, index){
				return Single_cart_product(
					cart_prod_name: Products_on_the_cart[index]["name"],
					cart_prod_color: Products_on_the_cart[index]["color"],
					cart_prod_qty: Products_on_the_cart[index]["quantity"],
					cart_prod_size: Products_on_the_cart[index]["size"],
					cart_prod_price: Products_on_the_cart[index]["price"],
					cart_prod_picture: Products_on_the_cart[index]["picture"],
				);
			}
			);
	}
}

class Single_cart_product extends StatelessWidget {
	final cart_prod_name;
	final cart_prod_picture;
	final cart_prod_price;
	final cart_prod_size;
	final cart_prod_color;
	final cart_prod_qty;

  const Single_cart_product({Key key, this.cart_prod_name, this.cart_prod_picture, this.cart_prod_price, this.cart_prod_size, this.cart_prod_color, this.cart_prod_qty}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Card(
			child: ListTile(
				leading: Image.asset(cart_prod_picture, width: 80, height: 80,),
				title: Text(cart_prod_name),
				subtitle: Column(
					children: [
						Row(
							children: [
								Padding(
								  padding: const EdgeInsets.all(0.0),
								  child: Text("Size:"),
								),
								Padding(
								  padding: const EdgeInsets.all(4.0),
								  child: Text(cart_prod_size, style: TextStyle(color: Colors.redAccent),),
								),

								Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),child: Text("Color:"),),
								Padding(
								  padding: const EdgeInsets.all(4.0),
								  child: Text(cart_prod_color, style: TextStyle(color: Colors.redAccent)),
								),
							],
						),

						Container(
							alignment: Alignment.topLeft,
							child: Text("\$${cart_prod_price}", style: TextStyle(color: Colors.redAccent, fontSize: 17.0, fontWeight: FontWeight.bold),),
						),
						Padding(padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0)),
					],
				),
				// trailing: Column(
				//   	children: <Widget>[
				
				//   		IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
				//   		IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
				//   	],
				//   
				// ),
				trailing: new Column(
						verticalDirection: VerticalDirection.down,
						children: <Widget>[
								Flexible(
										child: new IconButton(
												icon: Icon(Icons.arrow_drop_up), onPressed: () {})),
												Padding(padding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0)),
								Flexible(child: Text("$cart_prod_qty")),
								Flexible(child: new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}))
  ],
),
			),
		);
	}

}

