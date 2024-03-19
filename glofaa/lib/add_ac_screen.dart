import 'package:flutter/material.dart';
import 'package:glofaa/fill_ac_details_screen.dart';

class AddAcScreen extends StatefulWidget {
  const AddAcScreen({super.key});

  @override
  State<AddAcScreen> createState() => _AddAcScreenState();
}

enum ACType { option1, option2 }

class _AddAcScreenState extends State<AddAcScreen> {
  ACType? _acType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
        title: const Text(
          'Add AC',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: const Text(
              'TYPE',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 2,
                  ),
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: RadioListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Window AC",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      value: ACType.option1,
                      groupValue: _acType,
                      onChanged: (value) {
                        setState(() {
                          _acType = value;
                        });
                      }),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: RadioListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Split AC",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      value: ACType.option2,
                      groupValue: _acType,
                      onChanged: (value) {
                        setState(() {
                          _acType = value;
                        });
                      }),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20.0, bottom: 50),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FillACDetailsScreen()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                "Continue",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
