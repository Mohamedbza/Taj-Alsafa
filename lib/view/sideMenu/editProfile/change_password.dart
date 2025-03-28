import 'package:flutter/material.dart'; 
import 'package:tadjelsafa/resources/color_manager.dart'; 

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: ColorManager.editprofileappbarbackground,
        title: Text('Change Password', style: TextStyle(color: Colors.black , fontSize: 18,fontFamily: 'abel'),),
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
                 
                SizedBox(height: 42),
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
                  hintText: 'Current Password',
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
                  hintText: 'New Password',
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
                  hintText: 'Confirm New Password',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  alignLabelWithHint: true,
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
                    ),

        ],
      )
    );
  }
}