import 'dart:ui';
import 'package:eshop_by_harsh/pages/home.dart';
import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
	final product_detail_name;
	final product_detail_new_price;
	final product_detail_old_price;
	final product_detail_picture;

  const ProductDetails({Key key, this.product_detail_name, this.product_detail_new_price, this.product_detail_old_price, this.product_detail_picture}) : super(key: key);
	@override
	_ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: new AppBar(
				elevation: 0.1,
				backgroundColor: Colors.redAccent,
				// centerTitle: true,
				title: InkWell(
					onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()),);},
					child: Text('ShopApp'	),
				),
				actions: [
					IconButton(icon: Icon(Icons.search), onPressed: (){}),
				],
			),

			body: ListView(
				children: [
					Container(
						height: 300.0,
						child: GridTile(
								child: Container(
									color: Colors.white,
									child: Image.asset(widget.product_detail_picture),
								),footer: Container(
									color: Colors.white70,
									child: ListTile(
										leading: Text(
											widget.product_detail_name,
											style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
										),
										title: Row(
											children: [
												Expanded(
													child: Text(
														"\$${widget.product_detail_old_price}",
														style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),
														),
												),

												Expanded(
													child: Text(
														"\$${widget.product_detail_new_price}",
														style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
														),
												),
											],
										),
									),
								),

							),
					),

					Row(
						children: [
							Expanded(
								child: MaterialButton(
										onPressed: (){
											showDialog(
												context: context, 
												builder: (context){
													return AlertDialog(
														title: Text("Size"),
														content: Text("Choose the size"),
														actions: [
															MaterialButton(
																onPressed: (){
																	Navigator.of(context).pop(context);
																},
																child: Text("close"),
															)
														],
													);
												}
												);
										},
										color: Colors.white,
										textColor: Colors.grey,
										elevation: 0.2,
										child: Row(
											children: [
												Expanded(
													child: Text("Size")
												),
												Expanded(
													child: Icon(Icons.arrow_drop_down)
												),
											],
										),
								),
							),

							Expanded(
								child: MaterialButton(
										onPressed: (){
											showDialog(
												context: context, 
												builder: (context){
													return AlertDialog(
														title: Text("Colors"),
														content: Text("Choose a color"),
														actions: [
															MaterialButton(
																onPressed: (){
																	Navigator.of(context).pop(context);
																},
																child: Text("close"),
															)
														],
													);
												}
												);
										},
										color: Colors.white,
										textColor: Colors.grey,
										elevation: 0.2,
										child: Row(
											children: [
												Expanded(
													child: Text("Color")
												),
												Expanded(
													child: Icon(Icons.arrow_drop_down)
												),
											],
										),
								),
							),

							Expanded(
								child: MaterialButton(
										onPressed: (){
											showDialog(
												context: context, 
												builder: (context){
													return AlertDialog(
														title: Text("Quantity"),
														content: Text("Choose the quantity"),
														actions: [
															MaterialButton(
																onPressed: (){
																	Navigator.of(context).pop(context);
																},
																child: Text("close"),
															)
														],
													);
												}
												);
										},
										color: Colors.white,
										textColor: Colors.grey,
										elevation: 0.2,
										child: Row(
											children: [
												Expanded(
													child: Text("+Items")
												),
												Expanded(
													child: Icon(Icons.arrow_drop_down)
												),
											],
										),
								),
							),
						],
					),

					Row(
						children: [
							Expanded(
								child: MaterialButton(
										onPressed: (){},
										color: Colors.redAccent,
										textColor: Colors.white,
										elevation: 0.2,
										child: Text("Buy now")
								),
							),

							IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.redAccent,), onPressed: (){}),

							IconButton(icon: Icon(Icons.favorite_border),color: Colors.redAccent, onPressed: (){}),
						],
					),

					Divider(),
					ListTile(
						title: Text("Product details"),
						subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages."),
					),
					Divider(),
					Row(
						children: [
							Padding(
								padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
								child: Text("Product name", style: TextStyle(color: Colors.grey),),
							),
							Padding(
								padding: EdgeInsets.all(5.0),
								child: Text(widget.product_detail_name),
							),
						],
					),

					Row(
						children: [
							Padding(
								padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
								child: Text("Product brand", style: TextStyle(color: Colors.grey),),
							),
							Padding(
								padding: EdgeInsets.all(5.0),
								child: Text("Brand x"),
							),
						],
					),

					Row(
						children: [
							Padding(
								padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
								child: Text("Product condition", style: TextStyle(color: Colors.grey),),
							),
							Padding(
								padding: EdgeInsets.all(5.0),
								child: Text("New"),
							),
						],
					),

					Divider(),
					Padding(
					  padding: const EdgeInsets.all(8.0),
					  child: Text("Similar products", style: TextStyle(fontWeight: FontWeight.bold),),
					),
					Container(
						height: 340.0,
						child: Similar_products(),
					),
				],
			),
		);
	}
}

class Similar_products extends StatefulWidget {
	@override
	_Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

	var product_list = [
		{
			"name": "Blazer",
			"picture": "images/products/blazer1.jpeg",
			"old_price": 1500,
			"price": 1100,
		},
		{
			"name": "Red dress",
			"picture": "images/products/dress1.jpeg",
			"old_price": 1200,
			"price": 1000,
		},
		{
			"name": "hilles",
			"picture": "images/products/hills2.jpeg",
			"old_price": 990,
			"price": 799,
		},
		{
			"name": "Black dress",
			"picture": "images/products/dress2.jpeg",
			"old_price": 1050,
			"price": 900,
		},
		{
			"name": "Pants",
			"picture": "images/products/pants2.jpeg",
			"old_price": 1000,
			"price": 899,
		},
		{
			"name": "Shoes",
			"picture": "images/products/shoe1.jpg",
			"old_price": 1299,
			"price": 999,
		},
	];
	@override
	Widget build(BuildContext context) {
		return GridView.builder(
			itemCount: product_list.length,
			gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
				crossAxisCount: 2,
				), 
			itemBuilder: (BuildContext context, int index){
					return Similar_single_prod(
						prod_name: product_list[index]['name'],
						prod_picture: product_list[index]['picture'],
						prod_old_price: product_list[index]['old_price'],
						prod_price: product_list[index]['price'],
					);
			}
			);
	}
}

class Similar_single_prod extends StatelessWidget {
	final prod_name;
	final prod_picture;
	final prod_old_price;
	final prod_price;

  const Similar_single_prod({Key key, this.prod_name, this.prod_picture, this.prod_old_price, this.prod_price}) : super(key: key);

	// Single_prod({this.prod_name, this.prod_picture, this.prod_old_price, this.prod_price});

	@override
	Widget build(BuildContext context) {
		return Card(
			child: Hero(
					tag: prod_name, 
					// tag: Text("hero 1"),
					child: Material(
							child: InkWell(
									onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails(
													product_detail_name: prod_name,
													product_detail_new_price: prod_price,
													product_detail_old_price: prod_old_price,
													product_detail_picture: prod_picture,
													)),),
									child: GridTile(
											footer: Container(
												color: Colors.white,
												child: Row(
													children: [
														Expanded(
															child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
														),
														Text("\$${prod_price}", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),),
													],
												),
											),
										child: Image.asset(
												prod_picture,
												fit: BoxFit.cover,
											),
								
									),
							),
					),
			),
		);
	}
}