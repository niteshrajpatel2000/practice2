import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../auth/google/googleloging.dart';
import '../getx/getx_first.dart';
import 'api_button/api_botton.dart';



class BottonPage extends StatefulWidget {
  const BottonPage({super.key});

  @override
  State<BottonPage> createState() => _BottonPageState();
}

class _BottonPageState extends State<BottonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Practice'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: ElevatedButton(onPressed: () {
                Get.to(const ApiButtons());
              }, child: const Text('API Methods')),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: ElevatedButton(onPressed: () {
                Get.to(const GoogleLogin());
              }, child: const Text('Google login method')),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: ElevatedButton(onPressed: () {
                Get.to(const GetX_First());
              }, child: const Text('GetX')),
            ),
          ],
        ),
      ),
    );
  }
}
