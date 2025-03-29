import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tadjelsafa/resources/color_manager.dart'; 
import 'package:tadjelsafa/view/ui/static_carousel.dart';

class PropertyInfo extends StatefulWidget {
  const PropertyInfo({super.key});

  @override
  State<PropertyInfo> createState() => _PropertyInfoState();
}

class _PropertyInfoState extends State<PropertyInfo> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: ColorManager.notificationpicturebackground,
        title: Text('Real Estate Info', style: TextStyle(color: Colors.black , fontSize: 18,fontFamily: 'abel'),),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            icon:  Icon(Icons.arrow_back_ios,size: 26, color: ColorManager.returnarrow,),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: double.infinity,   
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    color:ColorManager.notificationpicturebackground,
                    child: Container(padding: const EdgeInsets.fromLTRB(20.0, 35, 20.0, 35),
                    width: double.infinity,   
                    child: Container( 
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),
                       border: Border.all( 
                                          color:   Colors.white,  
                                          width: 1.0, 
                                        ),
                      ),
                                    width: double.infinity, 
                                    child: ElevatedButton(
                                      onPressed: () { 
                                      },
                                      style: ElevatedButton.styleFrom(elevation: 0,
                                      
                                      backgroundColor: ColorManager.realestatebtn,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                         
                                      ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 5.0 ),
                                        child: const  Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [ 
                                            Text('Abdoun Project',style: TextStyle(color: Colors.black, fontSize: 16,fontFamily: 'abel'),),
                    Icon(Icons.keyboard_arrow_down_rounded,size: 18,color: Colors.black,)
                                          ],
                                        ),
                                      ),
                                    ),
                                    ),
                  ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0 ),
              child: Container(width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 27),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 12,
                      offset: Offset(0, 0),
                    ),
                  ],
                ), 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,spacing: 5,
                  children: [
                    Text('Property Address: Abdoun ', style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'abel')),
                    Text('Property Type: Villa', style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'abel')),
                    Text('Purchase Date: 22 / 5 / 2025', style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'abel')),
                    Text('Warranty Expiration Date: 22 / 5 / 2026', style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'abel')),
                    Text('Year Of Property Construction: 2026', style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'abel')),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 43.0,vertical: 47.0), 
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Plans", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'abel')),
                  SizedBox(height: 30),
                  Container(
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
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/pdf.svg', 
                          height: 19,
                        ),
                        SizedBox(width: 10),
                        const Text(
                        'View File',
                        style: TextStyle(
                          fontFamily: 'abel',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                ),
                SizedBox(height: 81),
                Text("Profiles And Presentations", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'abel')),
                  SizedBox(height: 30),
                  Container(
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
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/pdf.svg', 
                          height: 19,
                        ),
                        SizedBox(width: 10),
                        const Text(
                        'View File',
                        style: TextStyle(
                          fontFamily: 'abel',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                ),
                SizedBox(height: 59),
                   
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0,right: 23,bottom: 23),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Images", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'abel')),
                SizedBox(height: 23),
               StaticCarousel(),],
              ),
            ),
            SizedBox(height: 23),
              
          ],
        ),
      ),
    );
  }
}