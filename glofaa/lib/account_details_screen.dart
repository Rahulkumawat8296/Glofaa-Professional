import 'package:flutter/material.dart';
import 'package:glofaa/add_bank_details_screen.dart';

class AccountDetailsScreen extends StatefulWidget {
  @override
  const AccountDetailsScreen({super.key});

  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}



class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Account Details",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/account_details_image.png",
                width: 250,
                height: 250,
              )),

          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddBankDetailsScreen()));
              },
              style: OutlinedButton.styleFrom(
                  elevation: 3,
                  foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  side: const BorderSide(
                    color: Color.fromRGBO(147, 76, 234, 1),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle_outline_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Add Details",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(147, 76, 234, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
