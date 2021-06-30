import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:eshop_by_harsh/components/horizontal_listview.dart';
import 'package:eshop_by_harsh/components/products.dart';
import 'package:eshop_by_harsh/pages/cart.dart';
class HomePage extends StatefulWidget {
	@override
	_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
	@override
	Widget build(BuildContext context) {
		Widget image_carousel = new Container(
			height: 200.0,
			child: Carousel(
				boxFit: BoxFit.cover,
				images: [
					AssetImage('images/c1.jpg'),
					AssetImage('images/m1.jpeg'),
					AssetImage('images/m2.jpg'),
					AssetImage('images/w1.jpeg'),
					AssetImage('images/w3.jpeg'),
					AssetImage('images/w4.jpeg'),
				],
				autoplay: true,
				animationCurve: Curves.fastOutSlowIn,
				animationDuration: Duration(milliseconds: 1000),
				dotSize: 4.0,
				indicatorBgPadding: 2.0,
				dotBgColor: Colors.transparent,
			),
		);
		return Scaffold(
			appBar: new AppBar(
				elevation: 0.0,
				backgroundColor: Colors.redAccent,
				// centerTitle: true,
				title: Text('ShopApp'	),
				actions: [
					IconButton(icon: Icon(Icons.search), onPressed: (){}),
					IconButton(
						icon: Icon(Icons.shopping_cart), 
						onPressed: (){
							Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));  
						}
						),
				],
			),
			drawer: Drawer(
				child: ListView(
					children: [
						UserAccountsDrawerHeader(accountName: Text('Harsh Jaiswal'), accountEmail: Text('harsh123@gmail.com'),
						currentAccountPicture: GestureDetector(
							child: CircleAvatar(
								backgroundColor: Colors.grey,
								child: Icon(Icons.person, color: Colors.white,),
							),
						),
						decoration: BoxDecoration(
							color: Colors.redAccent,
						),
						),
						InkWell(
							onTap: () {},
							child: ListTile(
						  	title: Text('Home Page'),
						  	leading: Icon(Icons.home),
						  ),
						),
						InkWell(
							onTap: () {},
							child: ListTile(
						  	title: Text('My Account'),
						  	leading: Icon(Icons.person),
						  ),
						),
						InkWell(
							onTap: () {},
							child: ListTile(
						  	title: Text('My Order'),
						  	leading: Icon(Icons.shopping_basket),
						  ),
						),
						InkWell(
							onTap: () {
								Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
							},
							child: ListTile(
						  	title: Text('Shopping cart'),
						  	leading: Icon(Icons.shopping_cart)
						  ),
						),
						InkWell(
							onTap: () {},
							child: ListTile(
						  	title: Text('Favourites'),
						  	leading: Icon(Icons.favorite),
						  ),
						),

					Divider(),
					InkWell(
							onTap: () {},
							child: ListTile(
						  	title: Text('Settings'),
						  	leading: Icon(Icons.settings)
						  ),
						),
						InkWell(
							onTap: () {},
							child: ListTile(
						  	title: Text('About'),
						  	leading: Icon(Icons.help),
						  ),
						),
					],
				),
			),
			body: ListView(
				children: [
					image_carousel,
					Padding(padding: const EdgeInsets.all(8.0),
					child: Text('Categories'),),

					HorizontalList(),

					Padding(padding: const EdgeInsets.all(20.0),
					child: Text('Recent Products'),),

					Container(
						height: 320.0,
						child: Products(),                                      25
					)

				],
			),
		);
	}
}