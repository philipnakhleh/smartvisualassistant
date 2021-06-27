import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:smartvisualassistant/HomeScreen.dart';


List<CameraDescription>cameras;

Future<Null> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  try{
    cameras= await availableCameras();
  } on CameraException catch(e){
    print("No Cameras Found\n");
  }

  runApp(new MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(cameras),
    );
  }
}

