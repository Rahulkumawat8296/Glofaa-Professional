import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glofaa/identity_section.dart';
import 'package:glofaa/permanent_address_screen.dart';

import 'current_address_screen.dart';

class LoansScreen extends StatefulWidget {
  const LoansScreen({super.key});

  @override
  State<LoansScreen> createState() => _LoansScreenState();
}

class _LoansScreenState extends State<LoansScreen> {
  List list = [
    "Aadhar Card",
    "PAN Card",
    "Permanent Address",
    "Current Address",
    "NACH",
    "Signed Cheque",
    "Bank Statement",
    "Passbook",
    "Relationship Proof",
    "Cancelled Cheque"
  ];
  List iconList = [
    Icons.looks_one_rounded,
    Icons.looks_two_rounded,
    Icons.looks_3_rounded,
    Icons.looks_4_rounded,
    Icons.looks_5_rounded,
    Icons.looks_6_rounded,
    FontAwesomeIcons.seven,
    FontAwesomeIcons.eight,
    FontAwesomeIcons.nine,
    FontAwesomeIcons.diceOne
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Loans",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 20),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 20.0),
                    child: ListTile(
                      onTap: () {
                        onTap(index);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: const Color.fromRGBO(230, 210, 255, 1),
                      leading: Icon(
                        iconList[index],
                        color: const Color.fromRGBO(147, 76, 234, 1),
                      ),
                      title: Text(
                        list[index],
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
                              onTap(index);
                            },
                          ),
                      ),
                      ),

                    );


                },
              ),
            ),
          ],
        ));
  }

  void onTap(int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      if (index == 0) {
        return const IdentitySectionScreen(isAadharScreen: true);
      } else if (index == 1) {
        return const IdentitySectionScreen(isPanCardScreen: true);
      } else if (index == 2) {
        return const PermanentAddressScreen();
      } else if (index == 3) {
        return const CurrentAddressScreen();
      } else if (index == 4) {
        return const IdentitySectionScreen(isNachScreen: true);
      } else if (index == 5) {
        return const IdentitySectionScreen(isSignedChequeScreen: true);
      } else if (index == 6) {
        return const IdentitySectionScreen(isBankStatementScreen: true);
      } else if (index == 7) {
        return const IdentitySectionScreen(isPassbookScreen: true);
      } else if (index == 8) {
        return const IdentitySectionScreen();
      }
      return const IdentitySectionScreen(isCancelledScreen: true);
    }));
  }
}
