import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String selectedText = "";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
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
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              width: 120, // 2 * radius
                              height: 120, // 2 * radius
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFF2F3F6), // #F2F3F6 color
                                    Color(0xFFE5E6EC), // #E5E6EC color
                                  ],
                                  transform: GradientRotation(
                                      311 * 3.141592653589793 / 180),
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(
                                        0xFFFFFFFF), // #FFFFFF color for shadow
                                    offset: Offset(-4, -4),
                                    blurRadius: 12,
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.transparent,
                                // Add any child widget here if needed
                                child: CircleAvatar(
                                  radius: 50,
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/image.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            customRowWidget(
                                iconData: Icons.work, text: "CEO,Ooumph"),
                            customRowWidget(
                                iconData: Icons.home, text: "Lucknow,India"),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: ListTile(
                                  title: Text(
                                    'Charlotte Nolan',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.0,
                                      height: 1.5,
                                      letterSpacing: 0.14,
                                      color: Color(0xFF666666),
                                    ),
                                  ),
                                  subtitle: Text(
                                    '@charlottenolan880',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.0,
                                      height: 1.5,
                                      letterSpacing: 0.08,
                                      color: Color(0x80000000),
                                    ),
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      final snackBar = SnackBar(
                                        backgroundColor: Colors.grey,
                                        content:
                                            Text('Comming Soon Profile Edit'),
                                        duration: Duration(seconds: 2),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    },
                                    child: Container(
                                      // width: 50,
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xFFF2F3F6), // #F2F3F6 color
                                            Color(0xFFE5E6EC), // #E5E6EC color
                                          ],
                                          transform: GradientRotation(311 *
                                              3.141592653589793 /
                                              180), // 311 degrees to radians
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(
                                                0x80000000), // #00000080 color for shadow
                                            offset: Offset(-4, -4),
                                            blurRadius: 12,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                      child: Text(
                                        'Edit Profile',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.0,
                                          height: 1.5,
                                          letterSpacing: 0.08,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  'Things may come to those who wait, but only the things left by those who hustle. Things may come to those who wait.',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10.0,
                                    height: 1.5,
                                    letterSpacing: 0.18,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Row(
                                children: [
                                  Text(
                                    'Vibers: 5.2K',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10.0,
                                      height: 1.5,
                                      letterSpacing: 0.14,
                                      color: Color(0xFF666666),
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    'Posts: 25',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10.0,
                                      height: 1.5,
                                      letterSpacing: 0.14,
                                      color: Color(0xFF666666),
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                // width: 300,
                                padding: EdgeInsets.only(
                                    left: 20,
                                    top: 10,
                                    right:
                                        5), // Adjust the padding to the desired border width
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFFFFFFF), // Color 1
                                      Color(0xFFE5E6EC), // Color 4
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomLeft,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      30.0), // Adjust as needed
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 20),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFFFFFFF), // Color 1
                                                Color(0xFFE5E6EC), // Color 4
                                              ],
                                              // begin: Alignment.topCenter,
                                              end: Alignment.bottomLeft,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                                30.0), // Adjust as needed
                                          ),
                                          child: Text(
                                            '15',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17.0,
                                              height: 1.5,
                                              letterSpacing: 0,
                                              color: Color(0xFF0B173D),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Inner',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 13.0,
                                            height: 1.5,
                                            letterSpacing: 0,
                                            color: Color(0xFF0B173D),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 20),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFFFFFFF), // Color 1
                                                Color(0xFFE5E6EC), // Color 4
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomLeft,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                                30.0), // Adjust as needed
                                          ),
                                          child: Text(
                                            '2.3K',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17.0,
                                              height: 1.5,
                                              letterSpacing: 0,
                                              color: Color(0xFF0B173D)
                                                  .withOpacity(0.6),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Outer',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 17.0,
                                            height: 1.5,
                                            letterSpacing: 0,
                                            color: Color(0xFF0B173D)
                                                .withOpacity(0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 20),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFFFFFFF), // Color 1
                                                Color(0xFFE5E6EC), // Color 4
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomLeft,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                                30.0), // Adjust as needed
                                          ),
                                          child: Text(
                                            '2.3K',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17.0,
                                              height: 1.5,
                                              letterSpacing: 0,
                                              color: Color(0xFF0B173D)
                                                  .withOpacity(0.6),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Universe',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 17.0,
                                            height: 1.5,
                                            letterSpacing: 0,
                                            color: Color(0xFF0B173D)
                                                .withOpacity(0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomContainer(
                            imagedata: "assets/images/peoplegrey.png",
                            // icon: Icons.work,
                            text: "People",
                            isSelected: selectedText == "People",
                            onTap: () {
                              setState(() {
                                selectedText = "People";
                              });
                            },
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomContainer(
                            imagedata: "assets/images/subscription-1.png",
                            // icon: Icons.work,
                            text: "Content",
                            isSelected: selectedText == "Content",
                            onTap: () {
                              setState(() {
                                selectedText = "Content";
                              });
                            },
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomContainer(
                            imagedata: "assets/images/social-care.png",
                            // icon: Icons.work,
                            text: "Community",
                            isSelected: selectedText == "Community",
                            onTap: () {
                              setState(() {
                                selectedText = "Community";
                              });
                            },
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomContainer(
                            imagedata: "assets/images/box.png",
                            // icon: Icons.work,
                            text: "Shop",
                            isSelected: selectedText == "Shop",
                            onTap: () {
                              setState(() {
                                selectedText = "Shop";
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  // TabBar widget
                  Column(
                    children: [
                      TabBar(
                        isScrollable: true, // Set to true if you have many tabs
                        labelColor: Color(0xFFFF0064),
                        unselectedLabelColor: Colors.black,
                        indicatorColor: Color(0xFFFF0064),
                        tabs: [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/truth_tab.png'),
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(width: 8),
                                Text('Truth'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/fun.png'),
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(width: 8),
                                Text('Fun'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/debate.png'),
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(width: 8),
                                Text('Debate'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/require.png'),
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(width: 8),
                                Text('Opportunity'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      // TabBarView widget
                      Container(
                        height: 300, // Height of the TabBarView container
                        child: TabBarView(
                          children: [
                            Container(
                              child: Center(child: Text('Comming Soon')),
                            ),
                            MyTabBar(),
                            Container(
                              child: Center(child: Text('Comming Soon')),
                            ),
                            Container(
                              child: Center(child: Text('Comming Soon')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customRowWidget({required IconData iconData, required String text}) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Color(0xCC000000).withOpacity(0.8),
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.normal,
            fontSize: 11.0,
            height: 1.5,
            letterSpacing: 0.08,
            color: Color(0xDE000000),
          ),
        ),
      ],
    );
  }

  Widget CustomContainers({required IconData icon, required String text}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF8F8FC),
              Color(0xFFE1E2E8),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
                height: 1.5,
                letterSpacing: 0,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String imagedata;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomContainer({
    Key? key,
    required this.imagedata,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Expanded(
        child: Container(
          width: 80, // Fixed width for each CustomContainer
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF8F8FC),
                Color(0xFFE1E2E8),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagedata,
                height: 40, // Adjust image height as needed
              ),
              SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: isSelected ? 12.0 : 10.0,
                  height: 1.5,
                  letterSpacing: 0,
                  color: isSelected ? Colors.red : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TabBox(
                    imagePath: "assets/images/search-24px.png", text: "Search"),
                SizedBox(
                  width: 10,
                ),
                TabBox(
                    imagePath: "assets/images/person_image.png",
                    text: "Outer Circle"),
                SizedBox(
                  width: 10,
                ),
                TabBox(
                    imagePath: "assets/images/person_image.png",
                    text: "UNIVERSE")
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomImageContainer(
                  mainImagePath: 'assets/images/image3.png',
                  leftIconPath: 'assets/images/Group-left.png',
                  rightIconPath: 'assets/images/Group-right.png',
                  overlayText: '3.2',
                ),
                SizedBox(width: 10,),
                CustomImageContainer(
                  mainImagePath: 'assets/images/image4.png',
                  leftIconPath: 'assets/images/Group-left.png',
                  rightIconPath: 'assets/images/Group-right.png',
                  overlayText: '3.2',
                ),
                SizedBox(width: 10,),
                CustomImageContainer(
                  mainImagePath: 'assets/images/image2.jpg',
                  leftIconPath: 'assets/images/Group-left.png',
                  rightIconPath: 'assets/images/Group-right.png',
                  overlayText: '3.2',
                ),

              ],
            ),
          ),
        ),
      ],
    ));
  }

  Widget TabBox({required String imagePath, required String text}) {
    return Container(
      // padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFF8F8FC), Color(0xFFE1E2E8)],
        ),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            width: 34,
            height: 34,
          ),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 12.0,
                height: 1.2, // Line height equivalent to 24px/20px
                letterSpacing: 0,
                color: Color(0xFF666666),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget CustomImageContainer({
    required String mainImagePath,
    required String leftIconPath,
    required String rightIconPath,
    required String overlayText,
  }) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0), // Border radius of 12 pixels
            child: Image(
              image: AssetImage(mainImagePath),
              width: 140,
              height: 140,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 10,
            right: 0,
            child: Row(
              children: [
                Image(
                  image: AssetImage(leftIconPath),
                  width: 20,
                  color: Colors.white,
                ),
                SizedBox(width: 4), // Spacing between the icon and text
                Text(
                  overlayText, // Replace with your actual text
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                    height: 1.2, // Line height equivalent to 24px/20px
                    letterSpacing: 1.96,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 4), // Spacing between the text and the next icon
                Image(
                  image: AssetImage(rightIconPath),
                  width: 20,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
