import 'package:flutter/material.dart';
import 'package:restorant/core/configs/theme/app_colors.dart';
import 'package:restorant/presentation/dashboard/screens/dashboard_screen.dart';
import 'package:restorant/presentation/menu/screens/category_screen.dart';
import 'package:restorant/presentation/more/screens/more_screen.dart';
import 'package:restorant/presentation/orders/screens/order_screen.dart';
import 'package:restorant/presentation/reports/screens/report_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;
  final List<String> _tabsName = ["Menu", "Orders","Dashboard", "Report", "More"];
  
  _updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    final List<Widget> tabs = [
      CategoryScreen(),
      OrderScreen(),
      DashboardScreen(),
      ReportScreen(),
      MoreScreen()
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(_tabsName[_selectedIndex]),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle, size: 42,)
            )
          ],
        ),
        body: tabs.elementAt(_selectedIndex),
        extendBody: true,
        floatingActionButton: Container(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            shape: CircleBorder(),
            onPressed: (){_updateIndex(2);},
            child: Icon(Icons.home, size: 40, color: _selectedIndex == 2 ? AppColors.primary : AppColors.placeholder),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){_updateIndex(0);}, icon: Icon(Icons.grid_view, size: 32, color: _selectedIndex == 0 ? AppColors.primary : AppColors.placeholder)),
              IconButton(onPressed: (){_updateIndex(1);}, icon: Icon(Icons.reorder, size: 32, color: _selectedIndex == 1 ? AppColors.primary : AppColors.placeholder)),
              SizedBox(height: 40, width: 40,),
              IconButton(onPressed: (){_updateIndex(3);}, icon: Icon(Icons.report, size: 32, color: _selectedIndex == 3 ? AppColors.primary : AppColors.placeholder)),
              IconButton(onPressed: (){_updateIndex(4);}, icon: Icon(Icons.more_horiz, size: 32, color: _selectedIndex == 4 ? AppColors.primary : AppColors.placeholder)),
             ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryCard(String categoryName, String imagePath) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imagePath),
            radius: 30,
          ),
          SizedBox(height: 8,),
          Text(categoryName)
        ],
      ),
    );
  }

  Widget buildRestaurantCard(String name, String description, String imagePath, double rating, int reviews) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imagePath, width: double.infinity, height: 150, fit: BoxFit.cover,),
          SizedBox(height: 10,),
          Text(
              name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
          SizedBox(height: 10,),
          Text(description),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.star, color: AppColors.primary,),
              Text('$rating'),
              Text("(${reviews} ratings)")
            ],
          )
        ],
      ),
    );
  }

  Widget _homePage() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          floating: true,
          pinned: true,
          // snap: true,
          // expandedHeight: 300,

          title: Text(
            "Good Morning Akila!",
            style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 18
            ),
          ),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.shopping_cart)
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(130),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 20,),
                      SizedBox(width: 5,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivered To",
                            style: TextStyle(
                                color: AppColors.textSecondary,
                                fontSize: 14
                            ),
                          ),
                          Text("Current Location",
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 7,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10,),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search food",
                                border: InputBorder.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12,)
                ],
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 20,),
              SizedBox(height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    buildCategoryCard("Cat 1","https://img.freepik.com/free-photo/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.jpg?semt=ais_hybrid"),
                    buildCategoryCard("Cat 2","https://img.freepik.com/free-photo/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.jpg?semt=ais_hybrid"),
                    buildCategoryCard("Cat 3","https://img.freepik.com/free-photo/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.jpg?semt=ais_hybrid"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Restaurents",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                          "View all"
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //   TODO: Resto Card
              buildRestaurantCard(
                  "Food 1",
                  "Its a tasty food",
                  "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
                  4.5,
                  200
              ),
              buildRestaurantCard(
                  "Food 2",
                  "Its a tasty food",
                  "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
                  4.5,
                  200
              ),
              buildRestaurantCard(
                  "Food 3",
                  "Its a tasty food",
                  "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
                  4.5,
                  200
              ),
              buildRestaurantCard(
                  "Food 3",
                  "Its a tasty food",
                  "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
                  4.5,
                  200
              ),
              buildRestaurantCard(
                  "Food 3",
                  "Its a tasty food",
                  "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
                  4.5,
                  200
              ),
            ]
            )
        )
      ],
    );
  }

  Widget _dashBoard() {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Row(
                  children: [], //Order Count
                ),
                // O
                Container(), //New Order
                Container(),// in progress
                Container() //completed
              ],
            ),
          ),
        )
    );
  }

  Widget _menu() {
    return Center(child: Text("Menu"),);
  }

  Widget _orders() {
    return Center(child: Text("Orders"),);
  }

  Widget _profile() {
    return Center(child: Text("Dashboard"),);

  }
}
