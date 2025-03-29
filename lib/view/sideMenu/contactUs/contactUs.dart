import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; 
import 'package:tadjelsafa/resources/color_manager.dart';
import 'package:url_launcher/url_launcher.dart'; 

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});
Future<void> _openLink(String url) async {
  debugPrint('Attempting to open URL: $url');
  
  try {
    final uri = Uri.parse(url);
    debugPrint('Parsed URI: $uri');

    // Check if URL can be launched
    final canLaunch = await canLaunchUrl(uri);
    debugPrint('canLaunchUrl result: $canLaunch');

    if (!canLaunch) {
      debugPrint('No handler found for URL');
      throw 'No web browser available to handle the URL';
    }

    // Force open in browser
    debugPrint('Launching URL in external browser...');
    final launched = await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
    
    debugPrint('launchUrl result: $launched');
    
    if (!launched) {
      throw 'Browser failed to open the URL';
    }
  } catch (e, stack) {
    debugPrint('Error opening URL: $e');
    debugPrint('Stack trace: $stack');
     
  }
}
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: ColorManager.editprofileappbarbackground,
        title: Text('Contact Us', style: TextStyle(color: Colors.black , fontSize: 18,fontFamily: 'abel'),),
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
              padding: const EdgeInsets.fromLTRB(0,0,0,0),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                children: [ 
                    Container(width: double.infinity, height: 95,
                      color:ColorManager.editprofileappbarbackground,
                      child: Image.asset( 'assets/images/mainlogo.png',width: 195,height: 95,)),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 24),
                       child: Column(
                         children: [
                           _container("Phone Number", "00962799263003"), 
                            const SizedBox(height: 13,),
                           _container("Site", "Prince Rashid District, King Abdullah\nStreet next to Zain, Amman, Jordan"),
                           const SizedBox(height: 13,),
                           _container("E-mail", "info@tajalsafa.com"),
                           const SizedBox(height: 13,),
                            SizedBox(
                    width: double.infinity,  
                     
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Follow Us", style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'abel'  ),),
                        const SizedBox(height: 9,),
                       Row(
                         children: [
                          
                            IconButton(
                              padding: const EdgeInsets.all(8),
                              icon: Image.asset('assets/images/fb.png', width: 18, height: 18),
                              onPressed: () {_openLink('https://www.facebook.com/TajAlSafa');
                              // Add Facebook link/action here
                              },
                            ),
                             
                            const SizedBox(width: 19),
                            
                            IconButton(
                              padding: const EdgeInsets.all(8),
                              icon: Image.asset('assets/images/ig.png', width: 18, height: 18),
                              onPressed: () {_openLink("https://www.instagram.com/tajalsafa/");
                              // Add Instagram link/action here
                              },
                            ),
                             
                            const SizedBox(width: 19),
                            
                            IconButton(
                              padding: const EdgeInsets.all(8),
                              icon: Image.asset('assets/images/x.png', width: 18, height: 18),
                              onPressed: () { _openLink("https://x.com/tajalsafaCo");
                              // Add Twitter/X link/action here
                              },
                            ),
                             
                            const SizedBox(width: 19),
                            
                            IconButton(
                              padding: const EdgeInsets.all(8),
                              icon: Image.asset('assets/images/yt.png', width: 18, height: 18),
                              onPressed: () {_openLink("https://www.youtube.com/@TajAlSafa");
                              // Add YouTube link/action here
                              },
                            ),
                             
                            const SizedBox(width: 19),
                            
                            IconButton(
                              padding: const EdgeInsets.all(8),
                              icon: Image.asset('assets/images/in.png', width: 18, height: 18),
                              onPressed: () {_openLink("https://www.linkedin.com/company/tajalsafa/");
                              // Add LinkedIn link/action here
                              },
                            ),
                         ],
                      ),  
                       const SizedBox(height: 10,),
                        Divider(thickness: 1,color: ColorManager.divider,), 
                      ],
                    ),
                  ),
                            const SizedBox(height: 13,),
                           SizedBox(
                    width: double.infinity,  
                     
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Website", style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'amiri',fontWeight: FontWeight.w700 ),),
                        const SizedBox(height: 9,),
                        Text( "www.Tajalsafa.com",
                        style: TextStyle(color: ColorManager.infoscontainer, fontSize: 16,fontFamily: 'abeezee'),),
                        const SizedBox(height: 10,),
                        Divider(thickness: 1,color: ColorManager.divider,), 
                      ],
                    ),
                  ),
                  const SizedBox(height: 13,),
                           SizedBox(
                    width: double.infinity,  
                     
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your Suggestions", style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'abel' ),),
                        const SizedBox(height: 9,),
                        Container(
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),
                           border: Border(
                    bottom: BorderSide(
                      color:   ColorManager.yoursuggestionsborder ,
                      width: 4.0,
                    ),
                    ),
                          ),
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          backgroundColor: Colors.white,
                          title: Padding(
                          padding: const EdgeInsets.symmetric( vertical: 41),
                          child: const Text('Your Suggestions',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'abel', )),
                          ),
                            content: Padding(
                            padding: EdgeInsets.all(16),
                            child: TextField(
                              
                              maxLines: 5,
                              decoration: InputDecoration(
                              hintText: 'Write Here ...',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'abel',
                              ),
                              filled: true,
                              fillColor: ColorManager.editprofileappbarbackground,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none,
                              ),
                              ),
                            ),
                            ),
                          actions: [
                           SizedBox(
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.yoursuggestionstext,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), 
                  ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.5),
                    child: const Text(
                    'Send',
                    style: TextStyle(
                      fontFamily: 'abel',
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    ),
                  ),
                ),
                )
                          ],
                        );
                      },
                    );

                  },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.yoursuggestionsbackground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                     
                  ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: const  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [ 
                        Icon(Icons.arrow_forward_rounded,color: Colors.black,)
                      ],
                    ),
                  ),
                ),
                ),
                         
                      ],
                    ),
                  ),

                         ],
                       ),
                     )
                     ]
                    )
                    ),
          ),
                   
              
             
 
    );
  }
  Widget _container(String title , String description) {
    return SizedBox(
                    width: double.infinity,  
                     
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'abel', ),),
                        const SizedBox(height: 9,),
                        Text( description,
                        style: TextStyle(color: ColorManager.infoscontainer, fontSize: 16,fontFamily: 'abeezee'),),
                        const SizedBox(height: 12,),
                        Divider(thickness: 1,color: ColorManager.divider,), 
                      ],
                    ),
                  );
                
  }
} 
