import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:food_app/screen/home_screen/home_screen.dart';


class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/bg.jpg')
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Sign in to continue',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    ),
                    ),

                    SizedBox(height:17),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                 child: Text('Chavishta',
                  style: TextStyle(
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4CAF50), 
                    shadows: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.black54,
                        offset: Offset(3,3)
                      ),
                    ],
                    ),
                    ),
                    ),
                    

                    SizedBox(height: 17),

                    Column(
                      children: [
                        SignInButton(
                        Buttons.Apple,
                        text: "Sign in with Apple",
                        onPressed: () {},
                        ),
                         SignInButton(
                      Buttons.Google,
                      text: "Sign in with Google",
                      onPressed: () {},
                    ),
                      ],
                    ),


                    SizedBox(height: 20),

                    Column(
                      children: [
                        Text('By signing in you are agreeing to our',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                        ),
                        Text('Terms and Privacy Policy',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    )),
                      ],
                    ),
                    
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}