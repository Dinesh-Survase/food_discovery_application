import 'package:flutter/material.dart';

class FoodItem {
  final String image;
  final String name;
  final int price;

  FoodItem({required this.image, required this.name, required this.price});
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<FoodItem> foodList = [
      FoodItem(image: 'assets/im1.jpg', name: 'Dum Biryani', price: 200),
      FoodItem(image: 'assets/im2.jpg', name: 'Paneer Tikka', price: 180),
      FoodItem(image: 'assets/im3.jpg', name: 'Chicken Curry', price: 200),
      FoodItem(image: 'assets/im4.jpg', name: 'Veg Pulao', price: 150),
      FoodItem(image: 'assets/im5.jpg', name: 'Muttun Biryani', price: 250),
      FoodItem(image: 'assets/im6.jpg', name: 'Butter Chicken', price: 150),
      FoodItem(image: 'assets/im7.jpg', name: 'Mutton Curry', price: 300),
      FoodItem(image: 'assets/im8.jpg', name: 'Fried Rice', price: 150),
      FoodItem(image: 'assets/im9.png', name: 'Noodles', price: 140),
      FoodItem(image: 'assets/im10.jpg', name: 'Chicken Lolipop', price: 200)
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        actionsIconTheme: IconThemeData(color: Colors.white),
        centerTitle: false,
        title: Text(
          'Home',
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.deepOrange,
            child: Icon(Icons.search, size: 30, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.deepOrange,
              child: Icon(Icons.shop, size: 30, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/ho.jpg'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 320, bottom: 5),
                            child: Container(
                              height: 60,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Chavishta',
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.white,
                                     shadows: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 10,
                                        offset: Offset(3, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              '30% off on all foods',
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                //overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 10),
            
            Text(
                'Top-Rated Dishes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),

              SizedBox(height: 10),
          
            ...foodList.map((food)=> Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(food.image),
                        fit: BoxFit.cover,
                        onError: (exception, stackTrace) {},
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.6),
                                  Colors.transparent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 12,
                          left: 12,
                          right: 12,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                food.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 5)
                                  ],
                                ),
                              ),
                              Text(
                                '₹${food.price}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 5),
                                  ],
                                ),
                              ),
                            ],

                          ),
                        ),
                      ],
                    ),
              )).toList(),
          ],
        ),
      ),
    );
  }
}