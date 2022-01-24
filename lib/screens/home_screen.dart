import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show BottomSheet',textScaleFactor: 1.2, textAlign: TextAlign.center,),
          onPressed: (){
            Get.bottomSheet(
              Wrap(
                children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.wb_sunny_outlined),
                  title: const Text('Light Theme'),
                  onTap: ()=>Get.changeTheme(ThemeData.light())
                ),
                ListTile(
                  leading: const Icon(Icons.wb_sunny),
                  title: const Text('Dark Theme'),
                  onTap: ()=>Get.changeTheme(ThemeData.dark())
                ),
                ],
              ),
              // barrierColor: Colors.blue[100],
              backgroundColor: Colors.pink[50],
              isDismissible:false,//default value is true//closed to click outside the sheet//
              shape: const RoundedRectangleBorder(
                //using to chage the shape of the bottomsheet//
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0)
                ),
                side: BorderSide(
                  width: 3,
                  color: Colors.red,
                  style: BorderStyle.solid
                ),
              ),
              enableDrag: true, //default value is true. try false//
            );
          }, 
          ),
      ),
    );
  }
}