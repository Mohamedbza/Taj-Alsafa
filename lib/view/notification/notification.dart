import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; 
import 'package:tadjelsafa/resources/color_manager.dart'; 

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: ColorManager.editprofileappbarbackground,
        title: Text('Notifications', style: TextStyle(color: Colors.black , fontSize: 18,fontFamily: 'abel'),),
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
            padding: const EdgeInsets.fromLTRB(21,20,21,0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
              children: [ 
                  
                  Container( 
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 6,
                    offset: Offset(0, 1),
                    ),
                  ],
                  ),
                   
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text('25 - 5 - 2024', style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'abeezee'),),
                        
                        Text('9:45 AM', style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'abeezee'),),
                      ],
                    ),
                    Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 9.0, 17, 4.0),
      child: Container(
        width: 68,
        height: 68,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ColorManager.notificationpicturebackground,
        ),
        child: SvgPicture.asset('assets/images/logo.svg'),
      ),
    ),
    Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ticket No.10',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'janna',
            ),
          ),
          Text(
            'Maintenance work was carried out and completed required. All the mentioned problems were fixed.',
            softWrap: true, // enables wrapping
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'abeezee',
            ),
          ),
        ],
      ),
    ),
  ],
),

                      ],
                    ),
                  )),
                  ]
                  )
                  ),
                  SizedBox(height: 10),
                   Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
              children: [ 
                  
                  Container( 
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 6,
                    offset: Offset(0, 1),
                    ),
                  ],
                  ),
                   
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text('25 - 5 - 2024', style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'abeezee'),),
                        
                        Text('9:45 AM', style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'abeezee'),),
                      ],
                    ),
                    Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 9.0, 17, 4.0),
      child: Container(
        width: 68,
        height: 68,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ColorManager.notificationpicturebackground,
        ),
        child: SvgPicture.asset('assets/images/logo.svg'),
      ),
    ),
    Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ticket No.10',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'janna',
            ),
          ),
          Text(
            'Maintenance work was carried out and completed required. All the mentioned problems were fixed.',
            softWrap: true, // enables wrapping
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'abeezee',
            ),
          ),
        ],
      ),
    ),
  ],
),

                      ],
                    ),
                  )),
                  ]
                  )
                  ),
              
             

        ],
      )
    );
  }
}