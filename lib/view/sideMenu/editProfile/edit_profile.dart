import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tadjelsafa/resources/color_manager.dart'; 

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: ColorManager.editprofileappbarbackground,
        title: Text('Edit Profile', style: TextStyle(color: Colors.black , fontSize: 18,fontFamily: 'abel'),),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            icon:  Icon(Icons.arrow_back_ios,size: 26, color: ColorManager.returnarrow,),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 43),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
              children: [ 
                Center(
                  child: Stack(
                  children: [
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
                          maxHeight: 14
                        ),
                        icon: Icon(
                          Icons.file_upload_outlined,
                          size: 14,
                        ),
                        onPressed: () {
                          // Add upload functionality here
                        },
                        ),
                      ),
                    ),),
                    ),
                    
                  ],
                  ),
                ),
                SizedBox(height: 40.59),
                 Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 6,
                    offset: Offset(0, 0),
                    ),
                  ],
                  ),
                  
                  padding: const EdgeInsets.fromLTRB(19,6,0,10),
                  child: TextField(
                  style: const TextStyle(
                  fontFamily: 'abel',
                  fontSize: 16,
                  height: 1,
                  letterSpacing: 0.03
                  ),
                  decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Full Name',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  alignLabelWithHint: true,
                  ),
                  ),
                  ),
                  SizedBox(height: 17),
                   Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 6,
                    offset: Offset(0, 0),
                    ),
                  ],
                  ),
                  
                  padding: const EdgeInsets.fromLTRB(19,6,0,10),
                  child: TextField(
                  style: const TextStyle(
                  fontFamily: 'abel',
                  fontSize: 16,
                  height: 1,
                  letterSpacing: 0.03
                  ),
                  decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Contact Number',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  alignLabelWithHint: true,
                  ),
                  ),
                  ),
                  SizedBox(height: 17),
                   Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 6,
                    offset: Offset(0, 0),
                    ),
                  ],
                  ),
                  
                  padding: const EdgeInsets.fromLTRB(19,6,0,10),
                  child: TextField(
                  style: const TextStyle(
                  fontFamily: 'abel',
                  fontSize: 16,
                  height: 1,
                  letterSpacing: 0.03
                  ),
                  decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Alternate Contact Number',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  alignLabelWithHint: true,
                  ),
                  ),
                  ),
                  SizedBox(height: 17),
                   Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 6,
                    offset: Offset(0, 0),
                    ),
                  ],
                  ),
                  
                  padding: const EdgeInsets.fromLTRB(19,6,0,10),
                  child: TextField(
                  style: const TextStyle(
                  fontFamily: 'abel',
                  fontSize: 16,
                  height: 1,
                  letterSpacing: 0.03
                  ),
                  decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  alignLabelWithHint: true,
                  ),
                  ),
                  ),
                  SizedBox(height: 41),
          
                  Container( 
                    decoration: BoxDecoration(
                    ),
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
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const Text(
                            'Change Password',
                            style: TextStyle(
                              fontFamily: 'abel',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            ),
                          ),
                        ),
                        ),
                         
              ],
            ),
          ),
          Spacer(), 
                    Container( 
                      decoration: BoxDecoration(
                        color: ColorManager.savechangesborder,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          )
                        ]
                      ),
                    width: double.infinity, 
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(33.0, 26, 33.0, 26),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.signinbackground,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        ),
                         
                        ),
                        child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13.0),
                        child: const Text(
                        'Save Changes',
                        style: TextStyle(
                          fontFamily: 'abel',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        ),
                        ),
                      ),
                    ),
                    ),

        ],
      )
    );
  }
}