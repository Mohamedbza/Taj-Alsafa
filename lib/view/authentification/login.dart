import 'package:flutter/material.dart';
import 'package:tadjelsafa/resources/color_manager.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override

  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: ColorManager.loginbackground,
      body: Padding(
          padding: const EdgeInsets.all(20), 
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
              'Sign In',
              style: TextStyle(
                fontFamily: 'Abel',
                fontSize: 24,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 52),
                Container(
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                ),
                
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 9),
                child: TextField(
                style: const TextStyle(
                fontFamily: 'ABeeZee',
                fontSize: 16,
                height: 1,
                ),
                decoration:  InputDecoration(
                border: InputBorder.none,
                hintText: 'User Name',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                alignLabelWithHint: true,
                ),
                ),
                ),
                SizedBox(height: 15),
                Container(
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                ),
                
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 9),
                child: TextField(
                style: const TextStyle(
                fontFamily: 'ABeeZee',
                fontSize: 16,
                height: 1,
                ),
                decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                alignLabelWithHint: true,
                ),
                ),
                ),
              SizedBox(height: 15),
              Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                'Forget Password?',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ABeeZee',
                  fontSize: 16,
                  height: 1,
                ),
                ),
              ),
              ),
              SizedBox(height: 15),
                Container(
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.signinbackground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.white, width: 1),
                  ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontFamily: 'Abel',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    ),
                  ),
                ),
                )
            ],
          ),
        ),
      
    );
  }
}