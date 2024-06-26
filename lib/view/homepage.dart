import 'package:flutter/material.dart';
import 'package:ooumph/view/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          ProfilePage(),
          SearchScreen(),
          PostScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add_box),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: "",
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   unselectedItemColor: Colors.grey,
      //   onTap: _onItemTapped,
      // ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomNavItem(
              imagePath: 'assets/images/home (1).png',
              isSelected: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            CustomBottomNavItem(
              imagePath: 'assets/images/search-24px.png',
              isSelected: _selectedIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
            CustomBottomNavItem(
              imagePath: 'assets/images/black_plus.png',
              isSelected: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),

            CustomBottomNavItem(
              imagePath: 'assets/images/Group 2134.png',
              isSelected: _selectedIndex == 3,
              onTap: () => _onItemTapped(3),
            ),
            GestureDetector(
              onTap: ()=> _onItemTapped(4),
              child: Container(
                padding: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFF8F8FC),
                      Color(0xFFE1E2E8)
                    ], // Replace with your desired gradient colors
                    // Optional: Define stops for each color
                    // stops: [0.0, 0.7],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                      child: Column(
                        children: [
                          Text(
                            'Repo', // Replace with your actual text
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 12.0,
                              height: 1.2, // Line height equivalent to 24px/20px
                              letterSpacing: 1.96,
                              color: Color(0xFFE5B01E),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            '999k', // Replace with your actual text
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                              height: 1.2, // Line height equivalent to 24px/20px
                              letterSpacing: 1.96,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      child: Image(image: AssetImage("assets/images/person_image.png"),fit: BoxFit.cover,),
                    ),
                  ],
                )
              ),
            )
          ],
        ),
      ),

    );
  }
}

class CustomBottomNavItem extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomBottomNavItem({
    Key? key,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: isSelected ? BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF8F8FC),
              Color(0xFFE1E2E8)
            ], // Replace with your desired gradient colors
            
          ),
          borderRadius: BorderRadius.all(Radius.circular(70))
        ) : null,
        child: Image.asset(
          imagePath,
          color: isSelected ? Colors.black : Colors.grey,
          height: 30,
          width: 30,
        ),
      ),
    );
  }
}


class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search Screen Comming Soon',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Post Screen Comming Soon',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Screen Comming Soon',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Screen Comming Soon',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}



