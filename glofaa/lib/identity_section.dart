import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class IdentitySectionScreen extends StatefulWidget {
  final bool isAadharScreen,
      isPanCardScreen,
      isNachScreen,
      isSignedChequeScreen,
      isBankStatementScreen,
      isCancelledScreen,
      isPassbookScreen;

  const IdentitySectionScreen(
      {super.key,
      this.isAadharScreen = false,
      this.isPanCardScreen = false,
      this.isNachScreen = false,
      this.isSignedChequeScreen = false,
      this.isBankStatementScreen = false,
      this.isCancelledScreen = false,
      this.isPassbookScreen = false});

  @override
  State<IdentitySectionScreen> createState() => _IdentitySectionScreenState();
}

class _IdentitySectionScreenState extends State<IdentitySectionScreen> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          setText(),
          style: const TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
                child: Image.asset(
              "assets/images/award_image.png",
              width: 280,
              height: 260,
            )),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.topLeft,
              child: const Text(
                "Type of ID",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(230, 210, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerifyVaccinationScreen()));*/
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 220,
                        child: Text(
                          setText(),
                          style: const TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 15),
                        ),
                      ),
                      CircleAvatar(
                        radius:20,backgroundColor: Colors.white,
                        child: const Icon(

                          Icons.expand_more_rounded,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  _pickImageFromGallery();
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Browse",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 120,
              width: 150,
              margin: const EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(230, 210, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: /*Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.close_outlined,
                        color: Color.fromRGBO(147, 76, 234, 1),
                      )),
                  (_selectedImage != null)
                      ? Image.file(
                          _selectedImage!,
                          fit: BoxFit.none,
                        )
                      : Text("no selected"),
                ],
              ),*/
                  (_selectedImage != null)
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(
                            _selectedImage!,
                            fit: BoxFit.fitWidth,
                            width: 150,
                            height: 120,
                          ),
                        )
                      : const Text("no selected"),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PermanentAddressScreen()));*/
                },
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Save Details",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage.path);
    });

    //  Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInformationScreen()));
  }

  String setText() {
    if (widget.isAadharScreen == true) {
      return "Aadhar Card";
    } else if (widget.isPanCardScreen == true) {
      return "Pan Card";
    } else if (widget.isNachScreen == true) {
      return "NACH";
    } else if (widget.isSignedChequeScreen == true) {
      return "Signed Cheque";
    } else if (widget.isBankStatementScreen == true) {
      return "Bank Statement";
    } else if (widget.isPassbookScreen == true) {
      return "Passbook";
    } else if (widget.isCancelledScreen == true) {
      return "Cancelled Cheque";
    } else {
      return "Identity Section";
    }
  }
}
