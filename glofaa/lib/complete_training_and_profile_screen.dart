

import 'package:flutter/material.dart';
import 'package:glofaa/bottom_new_page.dart';
import 'package:glofaa/bottom_profile_progress_screen.dart';
import 'package:glofaa/bottom_uc_arround_you_screen.dart';
import 'package:glofaa/permanent_address_screen.dart';

import 'current_address_screen.dart';
import 'identity_section.dart';

class CompleteTrainingAndProfileScreen extends StatefulWidget {
  const CompleteTrainingAndProfileScreen({super.key});

  @override
  State<CompleteTrainingAndProfileScreen> createState() =>
      _CompleteTrainingAndProfileScreenState();
}

class _CompleteTrainingAndProfileScreenState
    extends State<CompleteTrainingAndProfileScreen> {
  int _currentIndex = 0;

  List bottomPages = const [
    BottomNewScreen(),
    BottomProfileProgressScreen(),
    BottomUCAroundYouScreen()
  ];

  List complete =[
    "Onboarding document",
    "Watch training videos",
    "Bank details",
    "Award and certificate photos",
    "Verify vaccination",
    "About me",
    "Personal information",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.translate_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {
              /* Navigator.push(context, MaterialPageRoute(builder: (context) => LiveTrainingScreen()));*/
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: "New"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile Progress"),
          BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined), label: "UC Around You"),
        ],
        onTap: (selectedIndex) {
          setState(() {
            _currentIndex = selectedIndex;
          });
        },
      ),
      //body: bottomPages[_currentIndex],

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right:170.0),
              child: Text("Complete training and profile",style: TextStyle(fontSize: 20,color: Colors.black),),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 20.0),
                    child: ListTile(

                      onTap: () {
                        //onTap(index);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: const Color.fromRGBO(230, 210, 255, 1),

                      title: Text(

                        complete[index],
                        style: const TextStyle(
                            color: Color.fromRGBO(147, 76, 234, 1),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                      trailing:CircleAvatar(
                        radius:20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(

                            Icons.keyboard_arrow_right_outlined,
                            color: Color.fromRGBO(147, 76, 234, 1),

                          ),
                          onPressed: () {
                           // onTap(index);
                          },
                        ),
                      ),
                    ),

                  );


                },
              ),
            ),
          ],
        ),
    );
  }
}

// void onTap(int index){
//
// }