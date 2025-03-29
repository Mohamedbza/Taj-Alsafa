// ignore_for_file: deprecated_member_use 
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:tadjelsafa/resources/color_manager.dart'; 

class PageSwipe extends StatefulWidget {
  const PageSwipe({super.key});

  @override
  State<PageSwipe> createState() => _PageSwipeState();
}

class _PageSwipeState extends State<PageSwipe> {
  int currentPage = 0;
  late PageController pageController; // PageController to manage page views

  @override
  void initState() {
    super.initState();
    pageController = PageController(); // Initialize PageController
  }

  @override
  void dispose() {
    pageController.dispose(); // Dispose of PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) { 

    final List<String> toolbar = [
      'Quotation', // Profile
      'Invoice',         // Work
      'Payment',     // Settings
    ];

    return Scaffold(backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 1,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  children: [
                    _quotatation(context),
                    _invoice(context),
                    _payment(context),
                  ],
                ),
              ),
            ],
          ),
          // Toolbar positioned at the top
          Positioned(
            top: 0,
            left: 0,
            right:  0,
            child: Container(
              decoration: BoxDecoration(
              color: ColorManager.editprofileappbarbackground,
              ),
              child: Row(
              children: List.generate(toolbar.length, (index) {
                return Expanded(
                child: GestureDetector(
                  onTap: () {
                  setState(() {
                    currentPage = index;
                  });
                  pageController.jumpToPage(index); // Change the page
                  },
                  child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  decoration: BoxDecoration(
                    border: Border(
                    bottom: BorderSide(
                      color: currentPage == index
                        ? ColorManager.bottomborderpageswipe
                        : Colors.white,
                      width: 3.0,
                    ),
                    ),
                  ),
                  child: Text(
                    toolbar[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'abel',
                    color: Colors.black,
                    ),
                  ),
                  ),
                ),
                );
              }),
              ),
            ),
            
          ),
        ],
      ),
    );
  }

  Widget _quotatation(BuildContext context) {

    return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 20,vertical:87 ),
     child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
       children: [  
           Container( width: double.infinity,
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
            
           child:  Padding(
             padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 23),
             child: Column( 
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Text('Quotation Number: 1', style: TextStyle(color: Colors.black, fontSize: 16,fontFamily: 'abel'),),
                                  SizedBox(height: 5),
                Text('Request Number: 1', style: TextStyle(color: Colors.black, fontSize: 16,fontFamily: 'abel'),),
              
                SizedBox(height: 18),
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
                )
               ],
             ),
           )),
           ]
           )
           );
  }

  Widget _invoice(BuildContext context) { 
     
    return   Center(
      child: Text('Invoice Screen', style: TextStyle(
                          fontFamily: 'abel',
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),),
    );
  }

  Widget _payment(BuildContext context) {
    return Center(
      child: Text('Payment Screen', style: TextStyle(
                          fontFamily: 'abel',
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),),
    );
  }
} 