import 'package:flutter/material.dart';
import 'package:glofaa/delivery_summary_screen.dart';
import 'package:glofaa/identity_section.dart';
import 'package:glofaa/personal_details_step_screen.dart';
import 'package:glofaa/verify_delivery_address_screen.dart';

class IdentityVerificationScreen extends StatefulWidget {
  const IdentityVerificationScreen({super.key});

  @override
  State<IdentityVerificationScreen> createState() =>
      _IdentityVerificationScreenState();
}

class _IdentityVerificationScreenState
    extends State<IdentityVerificationScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Identity Verification",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/verification_image.png",
                  width: 250,
                  height: 250,
                )),
            const SizedBox(
              height: 10,
            ),
            const Card(
              color: Color.fromRGBO(147, 76, 234, 1),
              elevation: 0,
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Thanks for the information. Once your profile goes live we will verify your details and current address through our agencies.",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stepper(
              currentStep: _currentIndex,
              onStepTapped: (newIndex) {
                setState(() {
                  _currentIndex = newIndex;
                });
              },
              onStepContinue: () {
                if (_currentIndex != 3) {
                  setState(() {
                    _currentIndex++;
                  });
                }
              },
              onStepCancel: () {
                if (_currentIndex != 0) {
                  setState(() {
                    _currentIndex--;
                  });
                }
              },
              steps: [
                Step(
                    isActive: (_currentIndex == 0),
                    title: Card(
                      color: const Color.fromRGBO(235, 235, 235, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Identity Proof",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const IdentitySectionScreen()));
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    content: const Text("")),
                Step(
                    isActive: (_currentIndex == 1),
                    title: Card(
                      color: const Color.fromRGBO(235, 235, 235, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Personal Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                            CircleAvatar(
                              radius:20,
                              backgroundColor: Colors.white ,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PersonalDetailsStepScreen()));
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    content: const Text("")),
                Step(
                    isActive: (_currentIndex == 2),
                    title: Card(
                      color: const Color.fromRGBO(235, 235, 235, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Current Address",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const VerifyDeliveryAddressScreen()));
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    content: const Text("")),
                Step(
                    isActive: (_currentIndex == 3),
                    title: Card(
                      color: const Color.fromRGBO(235, 235, 235, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Declaration",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                ),
                                onPressed: () {
                                  /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const OnBoardingDocumentsScreen()));*/
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    content: const Text("")),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 180,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DeliverySummaryScreen()));
                },
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Self Declaration",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
