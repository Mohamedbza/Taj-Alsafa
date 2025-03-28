import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tadjelsafa/resources/color_manager.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorManager.loginbackground,
    appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: Transform.translate(offset: const Offset(25,0),
                    child: ClipOval(
                      child: Container(
                      color: Colors.white.withOpacity(0.25),
                      child: IconButton(
                        onPressed: (){
                        Navigator.pop(context);
                        }, 
                        icon: SvgPicture.asset('assets/images/leftarrow.svg')
                      ),
                      ),
                    ),
                  ),
                  ),
      body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 54,), 
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
                
              const Text(
              'Please Enter Your Email To Retrieve Your Password.',
              style: TextStyle(
                fontFamily: 'Abel',
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
              ),
              SizedBox(height: 34),
                Container(
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                ), 
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 9),
                child: TextField(
                style: const TextStyle(
                fontFamily: 'abel',
                fontSize: 16,
                height: 1,
                ),
                decoration:  InputDecoration(
                border: InputBorder.none,
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                alignLabelWithHint: true,
                ),
                ),
                ),
                SizedBox(height: 62),
                 
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
                    'Recover Password',
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