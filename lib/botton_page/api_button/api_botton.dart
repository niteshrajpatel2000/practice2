import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../api_methods/get_methods.dart';

class ApiButtons extends StatefulWidget {
  const ApiButtons({super.key});

  @override
  State<ApiButtons> createState() => _ApiButtonsState();
}

class _ApiButtonsState extends State<ApiButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Calls Methods'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: ElevatedButton(onPressed: () {
                Get.to(HotelScreen());
              }, child: const Text('Get Methods')),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: ElevatedButton(onPressed: () {
                Get.to(HotelScreen());
              }, child: const Text('Post Methods')),
            ),
          ],
        ),
      ),
    );
  }
}
