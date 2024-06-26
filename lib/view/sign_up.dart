import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ooumph/view/homepage.dart';
import 'package:ooumph/view/profile.dart';
import 'package:graphql_flutter/graphql_flutter.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final TextEditingController emailController= TextEditingController();
  final TextEditingController passwordController= TextEditingController();
  String _result = '';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: SingleChildScrollView(
              child: Column(
                children: [
              
                  // Logo
                  Container(
                    child: Image(
                      image: AssetImage("assets/images/login_image.png"),
                    ),
                  ),
                        
                  SizedBox(
                    height: 12,
                  ),
                        
                  Center(
                    child: Text(
                      'Members Only', // Replace with your actual text
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        height: 1.2, // Line height equivalent to 24px/20px
                        letterSpacing: 1.96,
                        color: Color(0xFF666666),
                      ),
                    ),
                  ),
                        
                  SizedBox(
                    height: 18,
                  ),
              
                  // Icon Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildIconContainerFa(FontAwesomeIcons.facebook , "Facebook Comming Soon"),
                      SizedBox(
                        width: 12,
                      ),
                      buildIconContainerFa(FontAwesomeIcons.google , "Google Comming Soon"),
                      SizedBox(
                        width: 12,
                      ),
                      buildIconContainerFa(FontAwesomeIcons.apple, "Iphone Comming Soon")
                    ],
                  ),
                        
                  SizedBox(
                    height: 18,
                  ),
              
                  // Email field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFF8F8FC),
                            Color(0xFFE1E2E8),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Email/Username',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            height: 1.5,
                            letterSpacing: 0.0,
                            color: Color(0xFF575F6B).withOpacity(0.4),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 35, right: 10),
                            child: Icon(Icons.email,
                                color: Colors.black.withOpacity(0.4)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide
                                .none, // No border for the TextField itself
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide
                                .none, // No border for the TextField itself
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 15.0),
                        ),
                      ),
                    ),
                  ),
              
                  // Password field
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFF8F8FC),
                            Color(0xFFE1E2E8),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            height: 1.5,
                            letterSpacing: 0.0,
                            color: Color(0xFF575F6B).withOpacity(0.4),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 35, right: 10),
                            child: Icon(Icons.lock,
                                color: Colors.black.withOpacity(0.4)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide
                                .none, // No border for the TextField itself
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide
                                .none, // No border for the TextField itself
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 15.0),
                          // errorText: errorMessage,
                        ),
                        // onChanged: _validateInput,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                        
                  // Login Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(
                          3.0), // Adjust the padding to the desired border width
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFE1D02), // Color 1
                            Color(0xFF004CFF), // Color 2
                            Color(0xFF19A41A), // Color 3
                            Color(0xFFFFFB00), // Color 4
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius:
                            BorderRadius.circular(30.0), // Adjust as needed
                      ),
                      child: ElevatedButton(
                        onPressed: () async {
                          print("Logined");
                          print(emailController.text+" " + passwordController.text);
                          // await fetchData(emailController.text, passwordController.text);
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF5F5F5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30.0), // Match border radius of the container
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0,
                            height: 1.5,
                            letterSpacing: 0.36,
                            color: Color(0xFF666666),
                          ),
                        ),
                      ),
                    ),
                  ),
                        
                  SizedBox(
                    height: 15,
                  ),
                        
                  // Forgot Password
                  Center(
                      child: TextButton(
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: Text('Comming Soon'),
                        duration: Duration(seconds: 2),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                        height: 1.5,
                        letterSpacing: 0.36,
                        color: Color(0xFF666666),
                      ),
                    ),
                  )),
                        
                  SizedBox(
                    height: 30,
                  ),
                        
                  // Or
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xFF707070).withOpacity(0.5),
                            thickness: 1.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            'Or',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              height: 1.5,
                              letterSpacing: 0.32,
                              color: Color(0xFF666666),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xFF707070).withOpacity(0.5),
                            thickness: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                        
                  //   Continue Text Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFF8F8FC),
                            Color(0xFFE1E2E8),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Want to apply for an account?',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              height: 1.5,
                              letterSpacing: 0.28,
                              color: Color(0xFF666666),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              final snackBar = SnackBar(
                                content: Text('Comming Soon'),
                                duration: Duration(seconds: 2),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            },
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                height: 1.5,
                                letterSpacing: 0.28,
                                color: Color(0xFF666666),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIconContainerFa(IconData icon,String message) {
    return Container(
      width: 48.0,
      height: 48.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFF2F3F6),
            Color(0xFFE5E6EC),
          ],
          stops: [0.0, 1.0],
          transform: GradientRotation(319 * 3.1415927 / 180),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 10.0,
          ),
        ],
        borderRadius: BorderRadius.circular(29.0),
      ),
      child: IconButton(
        // icon: Icon(icon, color: Color(0xFF9F9F9F),size: 30,),
        icon: FaIcon(
          icon,
          color: Color(0xFF9F9F9F),
          size: 30,
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text(message),
            duration: Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          // Add your onPressed code here!
        },
      ),
    );
  }
}
