import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tadjelsafa/resources/color_manager.dart';
import 'package:tadjelsafa/view/ui/carousel.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: ColorManager.homebackground,
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.menu_rounded , size: 36,),
              onPressed: () {},
            ),
           Padding(
             padding: const EdgeInsets.fromLTRB(0, 0, 0, 11),
             child: Image.asset(
              'assets/images/mainlogo.png',  
                       ),
           ),
            Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications , size: 39,),
                  onPressed: () {},
                ),
                Positioned(
                  right: 3,
                  top: 8,
                  child: Container(height: 20.65, width: 20.65,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: ColorManager.notificationsBackground,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: const Text(
                        '3',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 9,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 7),
              Carousel(),
              SizedBox(height: 17),
              Text( 'Choose Your Requirement',
                style: TextStyle(
                  fontFamily: 'Abel',
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                ),),
                SizedBox(height: 24),
                Center(
                  child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 49.0),
                  child: Text( 'typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus .',
                  style: TextStyle(
                    fontFamily: 'adamina',
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.3,
                  ),
                  textAlign: TextAlign.left,),
                  ),
                ),
                SizedBox(height: 90),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                    width: double.infinity, 
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.signinbackground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        
                      ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11.0),
                        child: const Text(
                        'My Tickets',
                        style: TextStyle(
                          fontFamily: 'Abel',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        ),
                      ),
                    ),
                    ),
                    Container(
                  padding: const EdgeInsets.symmetric(horizontal: 21,vertical: 10),
                    width: double.infinity, 
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.signinbackground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        
                      ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11.0),
                        child: const Text(
                        'My Requests',
                        style: TextStyle(
                          fontFamily: 'Abel',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        ),
                      ),
                    ),
                    ),
                    Container(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                    width: double.infinity, 
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.signinbackground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        
                      ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11.0),
                        child: const Text(
                        'Handing Over',
                        style: TextStyle(
                          fontFamily: 'Abel',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        ),
                      ),
                    ),
                    ),
                    SizedBox(height: 148),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 90.0),
                      child: Text('typesetting, remaining essentially  versions of ',textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'abel',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400, 
                      ),
                      ),
                    ), 
                    SizedBox(height: 29),
                    
            ],
          ),
        ),
      ),
    );
  }
}