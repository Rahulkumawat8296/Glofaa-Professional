import 'package:flutter/material.dart';

class StarterKitScreen extends StatelessWidget {
  const StarterKitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(147, 76, 234, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        AssetImage("assets/images/tell_about_yourself.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Mrs. Beta",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "SPD-7892",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle,
                            color: Color.fromRGBO(242, 20, 20, 1),
                            size: 14,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 15),
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(221, 255, 216, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text(
                    "Your starter kit process successfully completed",
                    style: TextStyle(
                        color: Color.fromRGBO(32, 167, 10, 1),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: const Icon(
                        Icons.check_circle,
                        color: Color.fromRGBO(32, 167, 10, 1),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 110,
                  height: 30,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                        padding: const EdgeInsets.only(left: 10),
                        side: const BorderSide(
                            color: Color.fromRGBO(147, 76, 234, 1), width: 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "See Details",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 110,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7))),
                    child: const Text(
                      "Accepted",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const Card(
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Details Of Starter Kit",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "This Section Will Open When we click on See Details Btn",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
