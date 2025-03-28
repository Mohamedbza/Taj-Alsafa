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
                    _buildProfilePage(context),
                    _buildWorkPage(context),
                    _buildSettingsPage(context),
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
                color: ColorManager.editprofileappbarbackground
                
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(toolbar.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentPage = index;
                      });
                      pageController.jumpToPage(index); // Change the page
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: currentPage == index
                                ? ColorManager.bottomborderpageswipe
                                : Colors.transparent,
                            width: 5.0,
                          ),
                        ),
                          
                      ),
                      child: Text(
                        toolbar[index],textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'abel', 
                          color: Colors.black, // Text color for all items
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

  Widget _buildProfilePage(BuildContext context) {

    return Padding(padding: EdgeInsets.only(top: 100),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
        children: [ 
           
           
           
            
        ],
      ),
    );
  }

  Widget _buildWorkPage(BuildContext context) { 
     
    return   Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: SingleChildScrollView(
        child: Column(
          children: [ 
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsPage(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine the width and height of the available space 
        // ignore: unused_local_variable 

        return Padding(
          padding: const EdgeInsets.fromLTRB(20,100,20,20),
          child: Container(
            width: 250,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
              children: [ 
              ],
            ),
          ),
        );
      },
    );
  }
} 