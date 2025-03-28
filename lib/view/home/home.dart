import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tadjelsafa/resources/color_manager.dart';

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
      body: Center(
        child:Image.asset(
            'assets/images/mainlogo.png',  
          ),
      ),
    );
  }
}