// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class api extends StatefulWidget {
//   const api({super.key});
//
//   @override
//
//   State<api> createState() => _apiState();
//
// }
//
//
// class _apiState extends State<api> {
//   Welcome? hotel;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchData().then((value){
//       hotel= value;
//       setState(() {
//
//       });
//     });
//     // getDataByPost();
//   }
//
//   Future<Welcome?> fetchData() async {
//     var res = await http.get(
//         Uri.parse("https://hotels4.p.rapidapi.com/locations/v3/search?q=new york&locale=en_US&langid=1033&siteid=300000001"),
//         headers: {
//           'content-type': 'application/json',
//           "X-RapidAPI-Key":"14b31495e0msh7ec1cc5210e71d1p110e8ejsnafb4ec8dbc13",
//           "X-RapidAPI-Host":"hotels4.p.rapidapi.com"
//         }
//     );
//
//     if (res.statusCode==200) {
//       final Map<String, dynamic> data = jsonDecode(res.body);
//       hotel = Welcome.fromJson(data);
//     }
//     return hotel;
//   }
//
//   Future<void> getDataByPost() async {
//     try {
//       Map<String, dynamic> requestData = {
//         "currency": "USD",
//         "eapid": 1,
//         "locale": "en_US",
//         "siteId": 300000001,
//         "propertyId": "9209612"
//       };
//       final response = await http.post(
//         Uri.parse("https://hotels4.p.rapidapi.com/properties/v2/get-content"),
//         headers: {
//           'content-type': 'application/json',
//           'X-RapidAPI-Key': 'f90f64bcf1msh7f483a61202a1dcp1898fejsn9742cc106284',
//           'X-RapidAPI-Host': 'hotels4.p.rapidapi.com',
//         },
//         body: jsonEncode(requestData),
//       );
//
//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         print(data);
//       } else {
//         print('Request failed with status: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//   }
//
//
//   // Future<void> fetchData() async {
//   //
//   //   final response = await http.get(
//   //       Uri.parse('https://hotels4.p.rapidapi.com/locations/v3/search?q=new york&locale=en_US&langid=1033&siteid=300000001'),
//   //
//   //       headers: {
//   //         "X-RapidAPI-Key":"14b31495e0msh7ec1cc5210e71d1p110e8ejsnafb4ec8dbc13",
//   //         "X-RapidAPI-Host":"hotels4.p.rapidapi.com"
//   //       }
//   //   );
//   //
//   //
//   //   if (response.statusCode == 200) {
//   //     final Map<String, dynamic> responseData = jsonDecode(response.body);
//   //     setState(() {
//   //       hotel = Welcome.fromJson(responseData);
//   //     });
//   //   } else {
//   //     throw Exception('failed to load');
//   //   }
//   // }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body:hotel != null?
//         ListView.builder(
//           itemCount: hotel!.sr.length,
//           itemBuilder: (context, index) {
//             final location =hotel!.sr[index];
//             return ListTile(
//               title:Text( location.regionNames.displayName),
//               subtitle: Text(location.regionNames.primaryDisplayName),
//               trailing: Icon(Icons.location_on),
//             );
//
//           },
//
//
//         )
//             :Center(child: CircularProgressIndicator())
//
//     );
//
//   }
// }