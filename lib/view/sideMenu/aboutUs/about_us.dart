import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; 
import 'package:tadjelsafa/resources/color_manager.dart'; 

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: ColorManager.editprofileappbarbackground,
        title: Text('About Us', style: TextStyle(color: Colors.black , fontSize: 18,fontFamily: 'abel'),),
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
              padding: const EdgeInsets.fromLTRB(29,32,29,100),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                children: [ 
                    Image.asset( 'assets/images/mainlogo.png',width: 195,height: 95,),
                    const SizedBox(height: 32,),
                    Text('Taj AL Safa Real Estate Development was established in Amman in 2014 by industry specialists with more than 20 years of expertise in the real estate business.',
                     style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'abel'),),
                      const SizedBox(height: 10,),
                     Text('We provide our customers with a diverse choice of outstanding high-end residential and commercial projects. We also offer our clients a unique array of services and professional guidance to assist them in making the finest property decisions. ',
                     style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'abel'),),
                     const SizedBox(height: 5,),
                     Text("We embrace change and constantly challenge tradition because we strongly desire to improve the construction method and raise the efficiency and quality of our projects to meet customer's needs, requirements, and well-being.",
                     style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'abel' ),),
                    const SizedBox(height: 33,),
                     _container('integrity', 'We uphold the highest ethical standards, ensuring transparency, trust, and accountability in all our dealings .'),
                      const SizedBox(height: 29,),
                      _container('excellence', 'We relentlessly pursue excellence in design, construction, and service, setting new benchmarks for luxury Living .'),
                      const SizedBox(height: 29,),
                      _container('innovation', 'We embrace innovation to create homes that harmonise modernity with timeless elegance, integrating the latest technology and sustainable practices .'),
                      const SizedBox(height: 29,),
                      _container('customer-centric', 'Our clients are at the heart of everything we do. We prioritise their needs, offering personalised experiences and solutions .'),
                      const SizedBox(height: 29,),
                      _container('sustainability', 'We are committed to environmental responsibility, designing properties that minimise our ecological footprint and contribute to a greener future .'),
                      const SizedBox(height: 29,),
                      _container("innovative designs, lasting quality","Taj Alsafa Real Estate Development was established in Amman in 2014 by industry specialists with more than 20 years of expertise in the real estate business. \n\nWe provide our customers with a diverse choice of outstanding high-end residential and commercial projects. We also offer our clients a unique array of services and professional guidance to assist them in making the finest property decisions. \n\nWe embrace change and constantly challenge tradition because we strongly desire to improve the construction method and raise the efficiency and quality of our projects to meet customers' needs, requirements, and well-being."),
                    ]
                    )
                    ),
          ),
                   
              
             
 
    );
  }
  Widget _container(String title , String description) {
    return Container(
                    width: double.infinity, 
                    padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 21), 
                    decoration: BoxDecoration(
            color: ColorManager.aboutusbackground,
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'abel',fontWeight: FontWeight.bold),),
                        const SizedBox(height: 17,),
                        Text( description,
                        style: TextStyle(color: Colors.black, fontSize: 16,fontFamily: 'abel'),),
                        const SizedBox(height: 29,)
                      ],
                    ),
                  );
                
  }
} 
