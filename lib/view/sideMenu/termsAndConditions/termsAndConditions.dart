import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; 
import 'package:tadjelsafa/resources/color_manager.dart'; 

class Termsandconditions extends StatelessWidget {
  const Termsandconditions({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: ColorManager.editprofileappbarbackground,
        title: Text('Terms and Conditions', style: TextStyle(color: Colors.black , fontSize: 18,fontFamily: 'abel'),),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            icon:  Icon(Icons.arrow_back_ios,size: 26, color: ColorManager.returnarrow,),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body:  
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24,33,24,100),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                children: [  
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                     style: TextStyle(color: Colors.black, fontSize: 15,fontFamily: 'abel'),),
                      const SizedBox(height: 30,),
                     Text("typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                     style: TextStyle(color: Colors.black, fontSize: 15,fontFamily: 'abel'),),
                     const SizedBox(height: 30,),
                     Text("typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                     style: TextStyle(color: Colors.black, fontSize: 15,fontFamily: 'abel' ),),
                   
                    
                    ]
                    )
                    ),
          ),
                   
              
             
 
    );
 
  }
} 
