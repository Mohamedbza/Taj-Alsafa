import 'package:flutter/material.dart';
import 'package:tadjelsafa/resources/color_manager.dart';
import 'package:tadjelsafa/resources/routes_manager.dart';
import 'package:tadjelsafa/view/introductory/video_background.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class Introductory extends StatefulWidget {
  const Introductory({super.key});

  @override
  State<Introductory> createState() => _IntroductoryState();
}

class _IntroductoryState extends State<Introductory> {
  /*// initializing video player
  final VideoPlayerController videoPlayerController =
      VideoPlayerController.asset("assets/videos/introductory.mp4");

  ChewieController? chewieController;

  // init State
  @override
  void initState() {
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 9 / 20,
      autoPlay: true,
      looping: true,
      autoInitialize: true,
      showControls: false,
    );
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
         /* Expanded(
              child: Chewie(
            controller: chewieController!,
          )),*/
          VideoBackground( videoPath: 'assets/videos/introductory.mp4', child: Container(),),
          Container(color: Colors.black54),
         
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[ 
                  Text(
                    'MAINTENANCE',textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'emeralde',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 0.5,
                      height: 1.2,
                      
                    ),
                  ),
                   
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child:  
                    SizedBox(
                    width: 127,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.loginbtn,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide(width: 2, color: ColorManager.loginbtnborder),
                      ),
                      
                      ),
                      onPressed: () { 
                        Navigator.pushNamedAndRemoveUntil(
  context, 
  Routes.loginRoute, 
  (route) => false, // This removes all previous routes
);
                      },
                      child: const Text(
                      'Login',
                      style: TextStyle(
                      fontFamily: 'abel',
                      color: Colors.black,
                      letterSpacing: 0.5,
                      ),
                      ),
                    ),
                    ),
                   
                
            ),
          )
        ],
      ),
    );
  }
}
