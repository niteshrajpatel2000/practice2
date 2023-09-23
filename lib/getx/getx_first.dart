import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetX_First extends StatefulWidget {
  const GetX_First({super.key});

  @override
  State<GetX_First> createState() => _GetX_FirstState();
}

class _GetX_FirstState extends State<GetX_First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(

          children: [
            ElevatedButton(onPressed: () {
              Get.snackbar(
                "Snackbar Tile",
                "hello this is a snackbar",
                snackPosition: SnackPosition.BOTTOM,
                // backgroundColor: Colors.blue,
                animationDuration: const Duration(milliseconds: 3000),
                backgroundGradient: const LinearGradient(
                    colors: [Colors.blue,Colors.blueAccent,Colors.blue,]),
                // isDismissible: true,
                // dismissDire ,

              );
            }, child: const Text('Show Snackbar'),)
          ],
        ),
      ),
    );
  }
}


