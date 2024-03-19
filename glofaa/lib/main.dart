// import 'package:flutter/material.dart';
// import 'package:glofaa/delivery_summary_screen.dart';
// import 'package:glofaa/services_status_screen.dart';
// import 'package:glofaa/sign_up_screen.dart';
// import 'package:glofaa/utils/resource/color_resource.dart';
// import 'package:glofaa/utils/resource/dimensions_resource.dart';
// import 'package:glofaa/utils/resource/style_resource.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Glofaa',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//             seedColor: const Color.fromRGBO(147, 76, 234, 1)),
//         useMaterial3: true,
//       ),
//       home: const SelectLanguagePage(),
//       // home: const CalculateEarningsScreen(),
//     );
//   }
// }
//
//
// class SelectLanguagePage extends StatefulWidget {
//   const SelectLanguagePage({super.key});
//
//   @override
//   State<SelectLanguagePage> createState() => _SelectLanguagePageState();
// }
//
// class _SelectLanguagePageState extends State<SelectLanguagePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [ Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical:48),
//             child: Column(
//               children: [
//                 Image.asset("assets/images/welcome_man.png",height: 206,width: 230,),
//                 SizedBox(height: MediaQuery.of(context).size.height *0.05,),
//                 Image.asset("assets/images/welcom_professional.png",height: 102,width: 290,),
//                 const Text("to",style: TextStyle(fontFamily: 'InknutAntiqua',fontSize:30,),),
//                 SizedBox(height: MediaQuery.of(context).size.height *0.01,),
//                 const  Text("Glofaa Technology",style: TextStyle(fontFamily: 'InknutAntiqua',fontSize:28,),textAlign: TextAlign.center,),
//                 SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
//                 InkWell(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=> LanguageScreen()));}, child: _selectButton()),
//               ],
//             ),
//           ),
//         ),
//         ],
//       ),
//     );
//   }
// }
//
// Widget _selectButton(){
//   return Container(
//     height: 56,
//     width: 259,
//     decoration: BoxDecoration(
//       color: ColorResource.selectLanguageButton,
//       borderRadius: BorderRadius.circular(5),
//     ),
//     child: Center(
//       child: Text("Select Language",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeOverLarge, ColorResource.white),),
//     ),
//   );
// }
//
//
// class LanguageScreen extends StatefulWidget {
//   const LanguageScreen({super.key});
//
//   @override
//   State<LanguageScreen> createState() => _LanguageScreenState();
// }
//
// class _LanguageScreenState extends State<LanguageScreen> {
//   int? selectedIndex;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: Container(
//           height: 82,
//           width: double.infinity,
//           decoration: BoxDecoration(
//               border: Border.all(color: ColorResource.grey_2)
//           ),
//           child: Center(
//             child: InkWell(
//               onTap:() {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => SignUpPage()));},
//               child: Center(
//                 child: Container(
//                   height: 58,
//                   width: 341,
//                   decoration: BoxDecoration(
//                     color: ColorResource.selectLanguageButton,
//                     borderRadius: BorderRadius.circular(75),
//                   ),
//                   child: Center(
//                     child: Text("Continue",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.white),),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         body : ListView.builder(
//           padding: const EdgeInsets.symmetric(vertical:50),
//           itemCount: 10,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Text("English$index",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),),
//               trailing: Container(
//                 height: 26,
//                 width: 27,
//                 decoration: BoxDecoration(
//                   color: selectedIndex == index ? ColorResource.selectLanguageButton : ColorResource.white,
//                   borderRadius: BorderRadius.circular(50),
//                   border: Border.all(color: ColorResource.grey_3,width: 2),
//                 ),
//                 child: Center(
//                   child: selectedIndex == index ? const Icon(Icons.check,color: ColorResource.white,) : null,
//                 ),
//               ),
//               onTap: (){
//                 setState(() {
//                   selectedIndex = index;
//                 });
//               },
//             );
//           },
//         )
//     );
//   }
// }
//
//
// Widget languageTile1(BuildContext context, String text,){
//   int? selectedIndex;
//   return ListView.builder(
//       itemCount: 10,
//       itemBuilder: (context, index){
//         return ListTile(
//           leading: Text("text:$index",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),),
//           trailing: Container(
//             height: 26,
//             width: 27,
//             decoration: BoxDecoration(
//               color: ColorResource.selectLanguageButton,
//               borderRadius: BorderRadius.circular(50),
//               border: Border.all(color: ColorResource.grey_3,width: 2),
//             ),
//             child: Center(
//               child: selectedIndex == index ? Icon(Icons.check,color: ColorResource.white,) : null,
//             ),
//           ),
//         );
//       });
// }
//
// Widget languageTile(BuildContext context, String text,){
//   int selectedIndex;
//   return ListTile(
//     leading: Text(text,style: StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),),
//     trailing: InkWell(
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => const MyStartPage()));
//       },
//       child: Container(
//         height: 26,
//         width: 27,
//         decoration: BoxDecoration(
//           color: ColorResource.selectLanguageButton,
//           borderRadius: BorderRadius.circular(50),
//           border: Border.all(color: ColorResource.grey_3,width: 2),
//         ),
//         child: Center(
//           child: Icon(Icons.check,color: ColorResource.white,),
//         ),
//       ),
//     ),
//   );
// }
//
//
//
// class MyStartPage extends StatefulWidget {
//   const MyStartPage({super.key});
//
//   @override
//   State<MyStartPage> createState() => _MyStartPageState();
// }
//
// class _MyStartPageState extends State<MyStartPage> {
//   @override
//   Widget build(BuildContext context) {
//     preloadImage();
//     return Scaffold(
//         body: Column(children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 100.0),
//             child: RichText(
//               text: const TextSpan(
//                   text: "G",
//                   style: TextStyle(
//                       fontSize: 36,
//                       color: Color.fromRGBO(147, 76, 234, 1),
//                       fontWeight: FontWeight.w600,
//                       fontFamily: 'Poppins'),
//                   children: <InlineSpan>[
//                     TextSpan(
//                         text: "lofaa",
//                         style: TextStyle(
//                             fontSize: 36,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w500,
//                             fontFamily: 'Poppins')),
//                   ]),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//             child: Image.asset("assets/images/signIn.png"),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 20.0),
//                 child: SizedBox(
//                   width: 145,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const DeliverySummaryScreen()));
//                     },
//                     style: ElevatedButton.styleFrom(
//                         elevation: 5,
//                         backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10))),
//                     child: const Text(
//                       "LOGIN",
//                       style: TextStyle(
//                           fontSize: 12.9,
//                           color: Colors.white,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 20.0),
//                 child: SizedBox(
//                   width: 145,
//                   child: OutlinedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const ServicesStatusScreen()));
//                     },
//                     style: OutlinedButton.styleFrom(
//                         elevation: 5,
//                         foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
//                         side: const BorderSide(
//                             color: Color.fromRGBO(147, 76, 234, 1), width: 1.1),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10))),
//                     child: const Text(
//                       "NEW ACCOUNT",
//                       maxLines: 1,
//                       style: TextStyle(
//                           fontSize: 12.9,
//                           color: Color.fromRGBO(147, 76, 234, 1),
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 20.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: Container(
//                     width: 135,
//                     height: 1,
//                     color: Colors.black38,
//                   ),
//                 ),
//                 const Text(
//                   "Or",
//                   style:
//                   TextStyle(color: Colors.black38, fontWeight: FontWeight.w600),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 20.0),
//                   child: Container(
//                     width: 135,
//                     height: 1,
//                     color: Colors.black38,
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ]));
//   }
//
//   Future<void> preloadImage() async {
//     await precacheImage(const AssetImage("assets/images/signIn.png"), context);
//   }
// }

import 'package:flutter/material.dart';
import 'package:glofaa/rating_screen.dart';

import 'add_ac_screen.dart';
import 'fill_ac_details2_problems_screen.dart';
import 'fill_ac_details3_services_screen.dart';
import 'loans_screen.dart';
import 'onboarding_documents_screen.dart';


void main()
{
  runApp(Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddAcScreen(),
    );
  }
}
