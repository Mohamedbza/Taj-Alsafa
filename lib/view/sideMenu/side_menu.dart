import 'package:flutter/material.dart';
import 'package:tadjelsafa/resources/color_manager.dart';
import 'package:tadjelsafa/resources/routes_manager.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero, // Ensures no extra spacing
        children: [ 
        
          // Drawer Header
          Container(
  height: 200, // Ensures fixed height
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/coverdrawer.png'),
      fit: BoxFit.cover,
    ),
  ),
  child: Stack(
    children: [
      Positioned.fill(
        child: Container(color: ColorManager.drawerbackground),
      ),
      Positioned(
        bottom: 20,
        left: 20,
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures Column takes only needed space
          children: [
            // Profile Picture Stack
            SizedBox(
              width: 105,
              height: 105,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Profile Picture Background
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.profilepicturebackground,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: ColorManager.editprofileappbarbackground,
                        width: 2,
                      ),
                    ),
                    width: 105,
                    height: 105,
                  ),
                  // Profile Picture
                  Positioned(
                    left: 5,
                    top: 5,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/profilepicture.png',
                        width: 95,
                        height: 95,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Edit Button
                  Positioned(
                    right: 5,
                    bottom: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(
                              minWidth: 14,
                              minHeight: 14,
                              maxWidth: 14,
                              maxHeight: 14,
                            ),
                            icon: Icon(
                              Icons.edit,
                              size: 14,
                            ),
                            onPressed: () {Navigator.pushNamed(context, Routes.editProfileRoute);
                              // Add upload functionality here
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8), // Space between profile picture and text
            // User Name
            Text(
              "Moamen Qudah",
              style: TextStyle(
                fontFamily: 'abel',
                fontSize: 16,
                color: Colors.black,
                letterSpacing: 0.3,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),     
SizedBox(height: 5,),
_button("About Us", () {
   Navigator.pushNamed(context, Routes.aboutUsRoute);
}),
SizedBox(height: 5,),
_button("Property Info", () {Navigator.pushNamed(context, Routes.propertyInfoRoute);}),
SizedBox(height: 5,),
_button("Terms And Conditions", () {Navigator.pushNamed(context, Routes.termsAndConditionsRoute);}),
SizedBox(height: 5,),
Divider(
  color: ColorManager.dividertwo,
  thickness: 1,
  indent:25,
  endIndent: 240,
),
SizedBox(height: 5,),
_button("Contact Us", () {Navigator.pushNamed(context, Routes.contactUsRoute);}),
SizedBox(height: 5,),
_button("My documents", () {Navigator.pushNamed(context, Routes.myDocumentsRoute);}),
SizedBox(height: 5,),
_button("Log Out", () {Navigator.pushNamedAndRemoveUntil(
  context, 
  Routes.loginRoute, 
  (route) => false, // This removes all previous routes
);
}),

        ],
      ),
    );
  }
  Widget  _button(String title, VoidCallback onPressed) {
    return Container(
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),
                          
                          ),
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(elevation: 0,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                     
                  ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        Text(
                          title,
                          style: const TextStyle(
                            fontFamily: 'abel',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                          Image.asset(
                          'assets/images/arrow-right.png',
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                
    );
  }
}
